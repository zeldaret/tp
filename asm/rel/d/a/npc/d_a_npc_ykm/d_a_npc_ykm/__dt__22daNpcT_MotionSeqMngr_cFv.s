lbl_80B5CDC0:
/* 80B5CDC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5CDC4  7C 08 02 A6 */	mflr r0
/* 80B5CDC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5CDCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5CDD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5CDD4  41 82 00 1C */	beq lbl_80B5CDF0
/* 80B5CDD8  3C A0 80 B6 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B5CDDC  38 05 EC 08 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B5CDE0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80B5CDE4  7C 80 07 35 */	extsh. r0, r4
/* 80B5CDE8  40 81 00 08 */	ble lbl_80B5CDF0
/* 80B5CDEC  4B 77 1F 50 */	b __dl__FPv
lbl_80B5CDF0:
/* 80B5CDF0  7F E3 FB 78 */	mr r3, r31
/* 80B5CDF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5CDF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5CDFC  7C 08 03 A6 */	mtlr r0
/* 80B5CE00  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5CE04  4E 80 00 20 */	blr 
