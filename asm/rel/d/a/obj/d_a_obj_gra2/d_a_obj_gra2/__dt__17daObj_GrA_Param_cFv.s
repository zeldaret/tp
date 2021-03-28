lbl_80C04B1C:
/* 80C04B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04B20  7C 08 02 A6 */	mflr r0
/* 80C04B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04B28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C04B2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C04B30  41 82 00 1C */	beq lbl_80C04B4C
/* 80C04B34  3C A0 80 C1 */	lis r5, __vt__17daObj_GrA_Param_c@ha
/* 80C04B38  38 05 08 88 */	addi r0, r5, __vt__17daObj_GrA_Param_c@l
/* 80C04B3C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C04B40  7C 80 07 35 */	extsh. r0, r4
/* 80C04B44  40 81 00 08 */	ble lbl_80C04B4C
/* 80C04B48  4B 6C A1 F4 */	b __dl__FPv
lbl_80C04B4C:
/* 80C04B4C  7F E3 FB 78 */	mr r3, r31
/* 80C04B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C04B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04B58  7C 08 03 A6 */	mtlr r0
/* 80C04B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04B60  4E 80 00 20 */	blr 
