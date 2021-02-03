# css等、フロント部分のファイルを作成する際にassetsをtrueにしておく

Rails.application.config.generators do |g|
    g.skip_routes true
    g.assets false
    g.helper false
end