lbl_8014D0C0:
/* 8014D0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014D0C4  7C 08 02 A6 */	mflr r0
/* 8014D0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014D0CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014D0D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8014D0D4  41 82 00 1C */	beq lbl_8014D0F0
/* 8014D0D8  3C A0 80 3B */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 8014D0DC  38 05 3B 3C */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 8014D0E0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8014D0E4  7C 80 07 35 */	extsh. r0, r4
/* 8014D0E8  40 81 00 08 */	ble lbl_8014D0F0
/* 8014D0EC  48 18 1C 51 */	bl __dl__FPv
lbl_8014D0F0:
/* 8014D0F0  7F E3 FB 78 */	mr r3, r31
/* 8014D0F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014D0F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014D0FC  7C 08 03 A6 */	mtlr r0
/* 8014D100  38 21 00 10 */	addi r1, r1, 0x10
/* 8014D104  4E 80 00 20 */	blr 
