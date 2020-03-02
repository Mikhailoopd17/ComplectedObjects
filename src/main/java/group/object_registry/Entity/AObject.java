package group.object_registry.Entity;

public class AObject {
    private EntityObject entityObject;
    private String custom;

    public EntityObject getEntityObject() {
        return entityObject;
    }

    public void setEntityObject(EntityObject entityObject) {
        this.entityObject = entityObject;
    }

    public String getCustom() {
        return custom;
    }

    public void setCustom(String custom) {
        this.custom = custom;
    }
    public int getIdCustomer(){
        String [] name = custom.split("-");
        return Integer.parseInt(name[0]);
    }
}
