class PagesController < ApplicationController
  def show
    path = request.path
    redirection = redirect?(path)
    if redirection
      redirect_to(redirection["to"], status: redirection["status"])
    else
      @url = path
    end
  end

  private

  def redirect?(path)
    content = File.read(Rails.root.join("config/redirections.yml"))
    redirects = YAML.load(content)
    found = redirects[path]
    return unless found

    found["status"] ||= 302
    found
  end
end
