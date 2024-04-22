<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Setting Header</title>
    <script>
        function selectLabel(label) {
            var selectedLabels = document.getElementsByClassName("selected");
            for (var i = 0; i < selectedLabels.length; i++) {
                selectedLabels[i].classList.remove('selected');
            }
            label.classList.add('selected');
        }

        function updateForm() {
            var boxLeft = document.getElementById("boxLeft");
            var boxRight = document.getElementById("boxRight");

            var selectedLeftValues = [];
            for (var i = 0; i < boxLeft.children.length; i++) {
                selectedLeftValues.push(boxLeft.children[i].textContent);
            }
            document.getElementById("boxLeftValues").value = selectedLeftValues.join(",");

            var selectedRightValues = [];
            for (var i = 0; i < boxRight.children.length; i++) {
                selectedRightValues.push(boxRight.children[i].textContent);
            }
            document.getElementById("boxRightValues").value = selectedRightValues.join(",");
        }
    </script>
</head>
<body>
    <html:form action="/settingHeaderAction">
        <div>
            <h2>Setting Header</h2>
            <div style="float: left;">
                <h3>Box Left</h3>
                <div id="boxLeft">
                    <logic:iterate id="leftValue" name="settingHeaderForm" property="boxLeftValues">
                        <label onclick="selectLabel(this)"><bean:write name="leftValue" /></label><br>
                    </logic:iterate>
                </div>
            </div>
            <div style="float: left; margin-left: 20px;">
                <button type="button" onclick="moveToRight()">To Right</button><br>
                <button type="button" onclick="moveToLeft()">To Left</button><br>
                <button type="button" onclick="moveUp()">Up</button><br>
                <button type="button" onclick="moveDown()">Down</button><br>
            </div>
            <div style="float: left; margin-left: 20px;">
                <h3>Box Right</h3>
                <div id="boxRight">
                    <logic:iterate id="rightValue" name="settingHeaderForm" property="boxRightValues">
                        <label onclick="selectLabel(this)"><bean:write name="rightValue" /></label><br>
                    </logic:iterate>
                </div>
            </div>
        </div>
        <input type="hidden" id="boxLeftValues" name="boxLeftValues"/>
        <input type="hidden" id="boxRightValues" name="boxRightValues"/>
        <input type="submit" value="Submit" onclick="updateForm()">
    </html:form>
</body>
</html>
