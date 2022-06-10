#
# Copyright (C) [2020] Futurewei Technologies, Inc.
#
# FORCE-RISCV is licensed under the Apache License, Version 2.0
#  (the "License"); you may not use this file except in compliance
#  with the License.  You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES
# OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
# NON-INFRINGEMENT, MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.
# See the License for the specific language governing permissions and
# limitations under the License.
#
from riscv.EnvRISCV import EnvRISCV
from riscv.GenThreadRISCV import GenThreadRISCV
from base.Sequence import Sequence

Only_BranchJump_instructions = {
    "BEQ##RISCV": 10,
    "BGE##RISCV": 10,
    "BGEU##RISCV": 10,
    "BLT##RISCV": 10,
    "BLTU##RISCV": 10,
    "BNE##RISCV": 10,
}
RV32I_instructions = {
    "ADD##RISCV": 10,
    "ADDI##RISCV": 10,
    "AND##RISCV": 10,
    "ANDI##RISCV": 10,
    "AUIPC##RISCV": 10,
    "BEQ##RISCV": 10,
    "BGE##RISCV": 10,
    "BGEU##RISCV": 10,
    "BLT##RISCV": 10,
    "BLTU##RISCV": 10,
    "BNE##RISCV": 10,
    "EBREAK##RISCV": 0,  # disabled for now - set weight to 0
    "ECALL##RISCV": 0,  # disabled for now - set weight to 0
    "FENCE##RISCV": 10,
    "JAL##RISCV": 10,
    "JALR##RISCV": 10,
    "LB##RISCV": 10,
    "LBU##RISCV": 10,
    "LH##RISCV": 10,
    "LHU##RISCV": 10,
    "LUI##RISCV": 10,
    "LW##RISCV": 10,
    "OR##RISCV": 10,
    "ORI##RISCV": 10,
    "SB##RISCV": 10,
    "SH##RISCV": 10,
    "SLL##RISCV": 10,
    "SLLI#RV32I#RISCV": 10,
    "SLT##RISCV": 10,
    "SLTI##RISCV": 10,
    "SLTIU##RISCV": 10,
    "SLTU##RISCV": 10,
    "SRA##RISCV": 10,
    "SRAI#RV32I#RISCV": 10,
    "SRL##RISCV": 10,
    "SRLI#RV32I#RISCV": 10,
    "SUB##RISCV": 10,
    "SW##RISCV": 10,
    "XOR##RISCV": 10,
    "XORI##RISCV": 10,
}

class MainSequence(Sequence):
    def generate(self, **kargs):

          for _ in range(100):
             B_instruction = self.pickWeighted(Only_BranchJump_instructions)
             I_instruction = self.pickWeighted(RV32I_instructions)
             self.genInstruction(I_instruction)
             self.genInstruction(B_instruction)
             self.genInstruction(I_instruction)


#  Points to the MainSequence defined in this file
MainSequenceClass = MainSequence

#  Using GenThreadRISCV by default, can be overriden with extended classes
GenThreadClass = GenThreadRISCV

#  Using EnvRISCV by default, can be overriden with extended classes
EnvClass = EnvRISCV
