const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");


module.exports = buildModule("Student_DataBase_Module", (m) => {
  const student_demo = m.contract("students");

  return { student_demo };
});
