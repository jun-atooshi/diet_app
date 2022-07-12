module HealthsHelper
    def choose_new_or_edit
        if action_name == 'new' || action_name == 'confirm'
            confirm_healths_path
        elsif action_name == 'edit'
            health_path
        end
    end
end
