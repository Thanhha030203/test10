import org.apache.struts.action.ActionForm;

public class SettingHeaderForm extends ActionForm {
    private String[] boxLeftValues;
    private String[] boxRightValues;

    public String[] getBoxLeftValues() {
        return boxLeftValues;
    }

    public void setBoxLeftValues(String[] boxLeftValues) {
        this.boxLeftValues = boxLeftValues;
    }

    public String[] getBoxRightValues() {
        return boxRightValues;
    }

    public void setBoxRightValues(String[] boxRightValues) {
        this.boxRightValues = boxRightValues;
    }
}
