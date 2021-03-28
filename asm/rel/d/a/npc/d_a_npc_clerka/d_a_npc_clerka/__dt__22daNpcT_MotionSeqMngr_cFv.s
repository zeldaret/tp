lbl_80994F78:
/* 80994F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80994F7C  7C 08 02 A6 */	mflr r0
/* 80994F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80994F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80994F88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80994F8C  41 82 00 1C */	beq lbl_80994FA8
/* 80994F90  3C A0 80 99 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80994F94  38 05 5D 00 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80994F98  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80994F9C  7C 80 07 35 */	extsh. r0, r4
/* 80994FA0  40 81 00 08 */	ble lbl_80994FA8
/* 80994FA4  4B 93 9D 98 */	b __dl__FPv
lbl_80994FA8:
/* 80994FA8  7F E3 FB 78 */	mr r3, r31
/* 80994FAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80994FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80994FB4  7C 08 03 A6 */	mtlr r0
/* 80994FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80994FBC  4E 80 00 20 */	blr 
