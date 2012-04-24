<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="workflow" uri="http://www.jahia.org/tags/workflow" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %>

${fn:escapeXml(currentNode.properties['jcr:title'].string)}
<%=System.currentTimeMillis()%>

<%
    System.out.println("--------> testObject script was called.");

    if (session.getAttribute("sessionAttr") == null) {
        session.setAttribute("sessionAttr", "sessionAttr" + System.currentTimeMillis());
    }
%>