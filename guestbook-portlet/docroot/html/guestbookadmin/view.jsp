<%@include file="/html/init.jsp"%>

<aui:button-row cssClass="guestbook-admin-buttons">
        <c:if test='<%= GuestbookModelPermission.contains(permissionChecker, scopeGroupId, "ADD_GUESTBOOK") %>'>
                <portlet:renderURL var="addGuestbookURL">
                        <portlet:param name="mvcPath" value="/html/guestbookadmin/edit_guestbook.jsp" />
                </portlet:renderURL>

                <aui:button onClick="<%= addGuestbookURL.toString() %>" value="Add Guestbook" />
        </c:if>
</aui:button-row>

<liferay-ui:search-container>
	java.lang.Integer deprecatedTotal = (java.lang.Integer) pageContext.getAttribute("deprecatedTotal");

	<liferay-ui:search-container-row
                className="com.liferay.docs.guestbook.model.Guestbook" modelVar="guestbook">

                <liferay-ui:search-container-column-text property="name" />

                <liferay-ui:search-container-column-jsp path="/html/guestbookadmin/guestbook_actions.jsp" align="right" />

        </liferay-ui:search-container-row>

        <liferay-ui:search-iterator />
</liferay-ui:search-container>