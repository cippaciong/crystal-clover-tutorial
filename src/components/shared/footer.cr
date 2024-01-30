class Shared::Footer < BaseComponent
  YEAR = Time.utc.year

  def render
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
