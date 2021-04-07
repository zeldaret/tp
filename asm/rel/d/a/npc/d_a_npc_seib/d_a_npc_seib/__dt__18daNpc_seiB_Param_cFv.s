lbl_80AC6FB8:
/* 80AC6FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC6FBC  7C 08 02 A6 */	mflr r0
/* 80AC6FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC6FC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC6FC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC6FCC  41 82 00 1C */	beq lbl_80AC6FE8
/* 80AC6FD0  3C A0 80 AC */	lis r5, __vt__18daNpc_seiB_Param_c@ha /* 0x80AC7428@ha */
/* 80AC6FD4  38 05 74 28 */	addi r0, r5, __vt__18daNpc_seiB_Param_c@l /* 0x80AC7428@l */
/* 80AC6FD8  90 1F 00 00 */	stw r0, 0(r31)
/* 80AC6FDC  7C 80 07 35 */	extsh. r0, r4
/* 80AC6FE0  40 81 00 08 */	ble lbl_80AC6FE8
/* 80AC6FE4  4B 80 7D 59 */	bl __dl__FPv
lbl_80AC6FE8:
/* 80AC6FE8  7F E3 FB 78 */	mr r3, r31
/* 80AC6FEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC6FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6FF4  7C 08 03 A6 */	mtlr r0
/* 80AC6FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC6FFC  4E 80 00 20 */	blr 
