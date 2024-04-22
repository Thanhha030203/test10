public class SettingHeaderAction extends Action {
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        SettingHeaderForm settingHeaderForm = (SettingHeaderForm) form;

        // Lấy giá trị từ input hidden
        String boxLeftValues = request.getParameter("boxLeftValues");
        String boxRightValues = request.getParameter("boxRightValues");

        // Thực hiện các xử lý cần thiết với các giá trị này

        return mapping.findForward("success");
    }
}
