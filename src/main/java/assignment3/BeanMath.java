package assignment3;

public class BeanMath {
  private String operation;
  private float var1;
  private float var2;

  public BeanMath() {
    super();
  }

  public void setOperation(String operation) {
    this.operation = operation;
  }

  public void setVar1(float var1) {
    this.var1 = var1;
  }

  public void setVar2(float var2) {
    this.var2 = var2;
  }

  public String getOperation() {
    return operation;
  }

  public float getVar1() {
    return var1;
  }

  public float getVar2() {
    return var2;
  }

  public float operate() {
    if (this.operation.equalsIgnoreCase("add")) {
      return var1 + var2;
    }
    return var1 - var2;
  }
}
