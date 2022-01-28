connection: "cms_healthcare_ga_sessions"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: hc_accounts_kpi_dashboard {}
explore: illegal_character_errors
{join: accounts_key_pages {
   type: left_outer
   relationship: one_to_one
   sql_on: ${illegal_character_errors.date} = ${accounts_key_pages.date};;
  }
}
explore: fa_session_completions {}
