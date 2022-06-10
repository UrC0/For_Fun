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
ALU_Int32_instructions = {
    "ADD##RISCV": 10,
    "ADDI##RISCV": 10,
    "AND##RISCV": 10,
    "ANDI##RISCV": 10,
    "AUIPC##RISCV": 10,
    "LUI##RISCV": 10,
    "OR##RISCV": 10,
    "ORI##RISCV": 10,
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
    "XOR##RISCV": 10,
    "XORI##RISCV": 10,
}

class MainSequence(Sequence):
    def generate(self, **kargs):

          for _ in range(100):
             B_instruction = self.pickWeighted(Only_BranchJump_instructions)
             A_instruction = self.pickWeighted(ALU_Int32_instructions)
             # request the id of an available GPR – avoid “x0”
             reg_id = 0
             reg_id1 = 0
             while(reg_id ==0):
             	reg_id = self.getRandomGPR()
             	reg_id1 = self.getRandomGPR()
# generate the instructions using that register
             instr_rec_id0 = self.genInstruction(A_instruction,{"rd":reg_id1})
             instr_rec_id1 = self.genInstruction(A_instruction,{"rd":reg_id})
             instr_rec_id2 = self.genInstruction(B_instruction,{"rs2":reg_id,"rs1":reg_id1})
# check the results: instr1 rd should = instr2 rs2
             instr_obj0 = self.queryInstructionRecord(instr_rec_id0) 
             instr_obj1 = self.queryInstructionRecord(instr_rec_id1)
             instr_obj2 = self.queryInstructionRecord(instr_rec_id2)
             
             instr1_rd_index = instr_obj1["Dests"]["rd"]
             instr2_rs2_index = instr_obj2["Srcs"]["rs2"]
             
             if instr1_rd_index == instr2_rs2_index:
             	self.notice(">>>>>>>>>> It worked. ")
             else:
             	self.error(">>>>>>>>>> FAIL – reg indexes \ did not match.")


#  Points to the MainSequence defined in this file
MainSequenceClass = MainSequence

#  Using GenThreadRISCV by default, can be overriden with extended classes
GenThreadClass = GenThreadRISCV

#  Using EnvRISCV by default, can be overriden with extended classes
EnvClass = EnvRISCV
