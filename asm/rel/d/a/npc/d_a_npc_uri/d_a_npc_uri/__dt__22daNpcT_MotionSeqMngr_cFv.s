lbl_80B2C56C:
/* 80B2C56C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2C570  7C 08 02 A6 */	mflr r0
/* 80B2C574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2C578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2C57C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2C580  41 82 00 1C */	beq lbl_80B2C59C
/* 80B2C584  3C A0 80 B3 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B2C588  38 05 DB F4 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B2C58C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80B2C590  7C 80 07 35 */	extsh. r0, r4
/* 80B2C594  40 81 00 08 */	ble lbl_80B2C59C
/* 80B2C598  4B 7A 27 A4 */	b __dl__FPv
lbl_80B2C59C:
/* 80B2C59C  7F E3 FB 78 */	mr r3, r31
/* 80B2C5A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2C5A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2C5A8  7C 08 03 A6 */	mtlr r0
/* 80B2C5AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2C5B0  4E 80 00 20 */	blr 
