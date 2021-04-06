lbl_80D4B7BC:
/* 80D4B7BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4B7C0  7C 08 02 A6 */	mflr r0
/* 80D4B7C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4B7C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4B7CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4B7D0  41 82 00 1C */	beq lbl_80D4B7EC
/* 80D4B7D4  3C A0 80 D5 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80D4C6E4@ha */
/* 80D4B7D8  38 05 C6 E4 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80D4C6E4@l */
/* 80D4B7DC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80D4B7E0  7C 80 07 35 */	extsh. r0, r4
/* 80D4B7E4  40 81 00 08 */	ble lbl_80D4B7EC
/* 80D4B7E8  4B 58 35 55 */	bl __dl__FPv
lbl_80D4B7EC:
/* 80D4B7EC  7F E3 FB 78 */	mr r3, r31
/* 80D4B7F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4B7F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4B7F8  7C 08 03 A6 */	mtlr r0
/* 80D4B7FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4B800  4E 80 00 20 */	blr 
