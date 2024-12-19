{
  lib,
  fetchPypi,
  buildPythonPackage,
}:

buildPythonPackage rec {
  pname = "onnxscript";
  version = "0.1.0.dev20241219";
  format = "setuptools";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-alOIYtM85n2ZdCnRSZgxDh2/2my32bv795nEcJhH/s4=";
  };

  doCheck = false;

  pythonImportsCheck = [ "onnxscript" ];

  meta = with lib; {
    description = "ONNX Script enables developers to naturally author ONNX functions and models using a subset of Python.";
    homepage = "https://github.com/microsoft/onnxscript";
    license = licenses.mit;
    maintainers = with maintainers; [ PedroAntunes178 ];
  };
}
