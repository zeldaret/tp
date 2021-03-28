lbl_80B6E19C:
/* 80B6E19C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6E1A0  7C 08 02 A6 */	mflr r0
/* 80B6E1A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6E1A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6E1AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6E1B0  41 82 00 1C */	beq lbl_80B6E1CC
/* 80B6E1B4  3C A0 80 B7 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B6E1B8  38 05 EC 10 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B6E1BC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80B6E1C0  7C 80 07 35 */	extsh. r0, r4
/* 80B6E1C4  40 81 00 08 */	ble lbl_80B6E1CC
/* 80B6E1C8  4B 76 0B 74 */	b __dl__FPv
lbl_80B6E1CC:
/* 80B6E1CC  7F E3 FB 78 */	mr r3, r31
/* 80B6E1D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6E1D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6E1D8  7C 08 03 A6 */	mtlr r0
/* 80B6E1DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6E1E0  4E 80 00 20 */	blr 
