
Handlebars.registerHelper 'projectColor', (project)->
  window.projects[project]

Handlebars.registerHelper 'formatPrerequisites', (prerequisites)->
  return '' unless prerequisites.length
  
  tickets = _.compact(Scheduler.tickets.get(id) for id in prerequisites)
  return '' unless tickets.length
  
  links = for ticket in tickets
    "<a href=\"#{ticket.get('ticketUrl')}\" target=\"_blank\" rel=\"tooltip\" data-tooltip-placement=\"right\" data-original-title=\"View in #{ticket.get('ticketSystem')}\">##{ticket.get('number')}</a>"
  
  "<span class=\"ticket-prerequisites label\">Requires: #{links.join(", ")}</span>"
