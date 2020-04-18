class ImputValidate {
  String validateName(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Nome é obrigatório";
    } else if (!regExp.hasMatch(value)) {
      return "O nome deve ser a-z e A-Z";
    }
    return null;
  }

  String validateEge(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = RegExp(patttern);
    if (value.length == 0) {
      return "A idade é obrigatória";
    } else if (value.length > 3) {
      return "Idade inadequada";
    } else if (!regExp.hasMatch(value)) {
      return 'Digite apenas números';
    }
    return null;
  }

  String validateMobile(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "O celular é obrigatório";
    } else if (value.length != 16) {
      return "O número do celular deve ter 11 dígitos";
    }
    /*  else if (!regExp.hasMatch(value)) {
      return "O número do celular deve ter mais dígitos";
    } */
    return null;
  }

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "O Email obrigatório";
    } else if (!regExp.hasMatch(value)) {
      return "Email inválido";
    } else {
      return null;
    }
  }
}
