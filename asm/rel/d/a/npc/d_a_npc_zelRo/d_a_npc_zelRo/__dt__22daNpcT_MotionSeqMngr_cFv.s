lbl_80B744B8:
/* 80B744B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B744BC  7C 08 02 A6 */	mflr r0
/* 80B744C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B744C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B744C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B744CC  41 82 00 1C */	beq lbl_80B744E8
/* 80B744D0  3C A0 80 B7 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B74F0C@ha */
/* 80B744D4  38 05 4F 0C */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B74F0C@l */
/* 80B744D8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80B744DC  7C 80 07 35 */	extsh. r0, r4
/* 80B744E0  40 81 00 08 */	ble lbl_80B744E8
/* 80B744E4  4B 75 A8 59 */	bl __dl__FPv
lbl_80B744E8:
/* 80B744E8  7F E3 FB 78 */	mr r3, r31
/* 80B744EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B744F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B744F4  7C 08 03 A6 */	mtlr r0
/* 80B744F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B744FC  4E 80 00 20 */	blr 
