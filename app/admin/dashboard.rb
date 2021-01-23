ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Guests" do
          ul do
            li "# of invited guests: #{Guest.all.count}"
            li "# of child guests: #{Guest.where(child: true).count}"
            li "# of participating guests: #{Guest.where(participate: true).count}"
            li "# of spaces for shuttle to venue: #{Guest.where(shuttle_to: true).count}"
            li "# of spaces for return shuttle to hotel: #{Guest.where(shuttle_from: true).count}"
          end
        end
      end

      column do
        panel "Financials" do
          "Total value of Honeymoon Gifts: #{User.joins(:registries).sum('registries.value')} €"
        end
        panel "Users" do
          ul do
            li "Total number of invited users: #{User.all.count}"
            li "# of Users that have never logged_in: #{User.where(sign_in_count: 0).count}"
          end
        end
      end
    end
  end # content
end
