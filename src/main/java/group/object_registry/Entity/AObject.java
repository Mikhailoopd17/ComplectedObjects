package group.object_registry.Entity;

public class AObject {
    private Contract entityObject;
    private String custom;

    public Contract getEntityObject() {
        return entityObject;
    }

    public void setEntityObject(Contract entityObject) {
        this.entityObject = entityObject;
    }

    public String getCustom() {
        return custom;
    }

    public void setCustom(String custom) {
        this.custom = custom;
    }

    public Long getIdCustomer(){
        String [] name = custom.split("-");
        return Long.parseLong(name[0]);
    }
}
