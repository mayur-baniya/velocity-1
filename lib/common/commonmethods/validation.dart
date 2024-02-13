validateForm(List fields) {
  bool flag = true;
  for (int i = 0; i < fields.length; i++) {
    if (!fields[i].currentState!.validate()) {
      flag = false;
      return flag;
    }
  }
  return flag;
}
