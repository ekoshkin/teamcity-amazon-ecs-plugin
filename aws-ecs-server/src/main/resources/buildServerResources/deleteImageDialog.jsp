<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/include.jsp" %>

<%--
  ~ Copyright 2000-2020 JetBrains s.r.o.
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~ http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  --%>

<jsp:useBean id="instances" scope="request" type="java.util.Collection<jetbrains.buildServer.clouds.CloudInstance>"/>

<p>Are you sure you want to remove the image?</p>
<c:if test="${not empty instances}">
    Following cloud instance(s) will be terminated
    <ul>
        <c:forEach var="instance" items="${instances}">
            <li><c:out value="${instance.name}" /></li>
        </c:forEach>
    </ul>
</c:if>