<cfif not StructKeyExists(Application,"PgtTicketStore") OR not IsInstanceOf(Application.PgtTicketStore,"PgtTicketStore")>
  <cfset Application.PgtTicketStore = CreateObject("component","PgtTicketStore").init() />
</cfif>

<cfinvoke component="#Application.PgtTicketStore#" method="receive" urlParameters="#URL#" />

<cfinvoke component="#Application.PgtTicketStore#" method="dump" />
  