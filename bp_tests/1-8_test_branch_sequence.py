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

class MainSequence(Sequence):
    def generate(self, **kargs):

          for _ in range(100):
             the_instruction = self.pickWeighted(Only_BranchJump_instructions)
             self.genInstruction(the_instruction)

#  Points to the MainSequence defined in this file
MainSequenceClass = MainSequence

#  Using GenThreadRISCV by default, can be overriden with extended classes
GenThreadClass = GenThreadRISCV

#  Using EnvRISCV by default, can be overriden with extended classes
EnvClass = EnvRISCV
