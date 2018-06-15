require 'test_helper'

class FontIoniconsRailsTest < ActionDispatch::IntegrationTest
  teardown { clean_sprockets_cache }

  test 'engine is loaded' do
    assert_equal ::Rails::Engine, FontIonicons::Rails::Engine.superclass
  end

  test 'fonts are served' do
    get '/assets/ionicons.eot'
    assert_response :success
    get '/assets/ionicons.woff'
    assert_response :success
    get '/assets/ionicons.ttf'
    assert_response :success
    get '/assets/ionicons.svg'
    assert_response :success
  end

  test 'stylesheets are served' do
    get '/assets/ionicons.css'
    assert_ionicons(response)
  end

  test 'stylesheets contain asset pipeline references to fonts' do
    get '/assets/ionicons.css'
    v = FontIonicons::Rails::FI_VERSION
    assert_match "/assets/ionicons.eot?v=#{v}",  response.body
    assert_match "/assets/ionicons.eot?#iefix&v=#{v}", response.body
    assert_match "/assets/ionicons.woff?v=#{v}", response.body
    assert_match "/assets/ionicons.ttf?v=#{v}",  response.body
    assert_match "/assets/ionicons.svg?v=#{v}#ioniconsregular", response.body
  end

  test 'stylesheet is available in a css sprockets require' do
    get '/assets/sprockets-require.css'
    assert_ionicons(response)
  end

  test 'stylesheet is available in a sass import' do
    get '/assets/sass-import.css'
    assert_ionicons(response)
  end

  test 'stylesheet is available in a scss import' do
    get '/assets/scss-import.css'
    assert_ionicons(response)
  end

  test 'helpers should be available in the view' do
    get '/icons'
    assert_response :success
    assert_select 'i.ion-flag'
  end

  private

  def clean_sprockets_cache
    FileUtils.rm_rf File.expand_path('../dummy/tmp',  __FILE__)
  end

  def assert_ionicons(response)
    assert_response :success
    assert_match(/font-family:\s*'Ionicons';/, response.body)
  end
end
