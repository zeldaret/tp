lbl_8045A52C:
/* 8045A52C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045A530  7C 08 02 A6 */	mflr r0
/* 8045A534  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045A538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045A53C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8045A540  41 82 00 1C */	beq lbl_8045A55C
/* 8045A544  3C A0 80 46 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 8045A548  38 05 CD F4 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 8045A54C  90 1F 00 00 */	stw r0, 0(r31)
/* 8045A550  7C 80 07 35 */	extsh. r0, r4
/* 8045A554  40 81 00 08 */	ble lbl_8045A55C
/* 8045A558  4B E7 47 E4 */	b __dl__FPv
lbl_8045A55C:
/* 8045A55C  7F E3 FB 78 */	mr r3, r31
/* 8045A560  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045A564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045A568  7C 08 03 A6 */	mtlr r0
/* 8045A56C  38 21 00 10 */	addi r1, r1, 0x10
/* 8045A570  4E 80 00 20 */	blr 
