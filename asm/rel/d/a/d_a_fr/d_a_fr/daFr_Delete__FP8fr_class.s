lbl_8051B35C:
/* 8051B35C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B360  7C 08 02 A6 */	mflr r0
/* 8051B364  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B368  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B36C  7C 7F 1B 78 */	mr r31, r3
/* 8051B370  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8051B374  3C 80 80 52 */	lis r4, stringBase0@ha
/* 8051B378  38 84 BA 88 */	addi r4, r4, stringBase0@l
/* 8051B37C  4B B1 1C 8C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8051B380  88 1F 09 E4 */	lbz r0, 0x9e4(r31)
/* 8051B384  28 00 00 00 */	cmplwi r0, 0
/* 8051B388  41 82 00 10 */	beq lbl_8051B398
/* 8051B38C  38 00 00 00 */	li r0, 0
/* 8051B390  3C 60 80 52 */	lis r3, data_8051BC10@ha
/* 8051B394  98 03 BC 10 */	stb r0, data_8051BC10@l(r3)
lbl_8051B398:
/* 8051B398  38 60 00 01 */	li r3, 1
/* 8051B39C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051B3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B3A4  7C 08 03 A6 */	mtlr r0
/* 8051B3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B3AC  4E 80 00 20 */	blr 
