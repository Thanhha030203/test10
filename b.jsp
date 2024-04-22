<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Table</title>
</head>
<body>
    <h2>Customer Table</h2>
    <table border="1">
        <thead>
            <tr>
                <logic:iterate id="header" name="settingHeaderForm" property="boxRightValues">
                    <th><bean:write name="header" /></th>
                </logic:iterate>
            </tr>
        </thead>
        <tbody>
            <logic:iterate id="customer" name="customerList" property="customers">
                <tr>
                    <logic:iterate id="header" name="settingHeaderForm" property="boxRightValues">
                        <td><bean:write name="customer" property="${header}" /></td>
                    </logic:iterate>
                </tr>
            </logic:iterate>
        </tbody>
    </table>
    <logic:iterate id="customer" name="customerList" property="customers">
    <tr>
        <logic:iterate id="header" name="settingHeaderForm" property="boxRightValues">
            <td><bean:write name="customer" property="getProperty" param="${header}" /></td>
        </logic:iterate>
    </tr>
</logic:iterate>

</body>
</html>
