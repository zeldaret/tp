lbl_80A630D4:
/* 80A630D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A630D8  7C 08 02 A6 */	mflr r0
/* 80A630DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A630E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A630E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A630E8  41 82 00 1C */	beq lbl_80A63104
/* 80A630EC  3C A0 80 A6 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A64100@ha */
/* 80A630F0  38 05 41 00 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A64100@l */
/* 80A630F4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80A630F8  7C 80 07 35 */	extsh. r0, r4
/* 80A630FC  40 81 00 08 */	ble lbl_80A63104
/* 80A63100  4B 86 BC 3D */	bl __dl__FPv
lbl_80A63104:
/* 80A63104  7F E3 FB 78 */	mr r3, r31
/* 80A63108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6310C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A63110  7C 08 03 A6 */	mtlr r0
/* 80A63114  38 21 00 10 */	addi r1, r1, 0x10
/* 80A63118  4E 80 00 20 */	blr 
