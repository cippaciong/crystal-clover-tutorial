abstract class AuthLayout
  include Lucky::HTMLPage

  abstract def content
  abstract def page_title

  YEAR = Time.utc.year

  # The default page title. It is passed to `Shared::LayoutHead`.
  #
  # Add a `page_title` method to pages to override it. You can also remove
  # This method so every page is required to have its own page title.
  def page_title
    "Welcome"
  end

  def render
    html_doctype

    html class: "h-100", lang: "en" do
      mount Shared::LayoutHead, page_title: page_title

      body class: "d-flex flex-column h-100" do
        mount Shared::FlashMessages, context.flash
        main class: "flex-shrink-0" do
          content
        end
      end

      footer class: "footer mt-auto py-3 bg-light" do
        div class: "container" do
          div class: "row" do
            div class: "col text-muted text-start" do
              text "CloverApp"
            end
            div class: "col text-muted text-end" do
              text "© #{YEAR} cippaciong"
            end
          end
        end
      end
    end
  end
end
