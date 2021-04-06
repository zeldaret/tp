lbl_80B6B4B0:
/* 80B6B4B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6B4B4  7C 08 02 A6 */	mflr r0
/* 80B6B4B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6B4BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6B4C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6B4C4  41 82 00 1C */	beq lbl_80B6B4E0
/* 80B6B4C8  3C A0 80 B7 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B6BF90@ha */
/* 80B6B4CC  38 05 BF 90 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B6BF90@l */
/* 80B6B4D0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80B6B4D4  7C 80 07 35 */	extsh. r0, r4
/* 80B6B4D8  40 81 00 08 */	ble lbl_80B6B4E0
/* 80B6B4DC  4B 76 38 61 */	bl __dl__FPv
lbl_80B6B4E0:
/* 80B6B4E0  7F E3 FB 78 */	mr r3, r31
/* 80B6B4E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6B4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6B4EC  7C 08 03 A6 */	mtlr r0
/* 80B6B4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6B4F4  4E 80 00 20 */	blr 
