Before do |feature|
    page.driver.browser.manage.window.maximize
end
  
After do |scenario|
    if scenario.failed?
      $encoded_img = page.driver.browser.screenshot_as(:base64)
      embed("data:image/png;base64,#{$encoded_img}",'image/png')
    end
end