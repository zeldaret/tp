/* 80056EA8 00053DE8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80056EAC 00053DEC  7C 08 02 A6 */ mflr r0
/* 80056EB0 00053DF0  90 01 00 14 */ stw r0, 0x14(r1)
/* 80056EB4 00053DF4  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80056EB8 00053DF8  7C 7F 1B 79 */ or. r31, r3, r3
/* 80056EBC 00053DFC  41 82 00 10 */ beq lbl_80056ECC
/* 80056EC0 00053E00  7C 80 07 35 */ extsh. r0, r4
/* 80056EC4 00053E04  40 81 00 08 */ ble lbl_80056ECC
/* 80056EC8 00053E08  48 27 7E 75 */ bl __dl__FPv
lbl_80056ECC:
/* 80056ECC 00053E0C  7F E3 FB 78 */ mr r3, r31
/* 80056ED0 00053E10  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80056ED4 00053E14  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80056ED8 00053E18  7C 08 03 A6 */ mtlr r0
/* 80056EDC 00053E1C  38 21 00 10 */ addi r1, r1, 0x10
/* 80056EE0 00053E20  4E 80 00 20 */ blr