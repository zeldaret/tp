lbl_8053DDB8:
/* 8053DDB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DDBC  7C 08 02 A6 */	mflr r0
/* 8053DDC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DDC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053DDC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8053DDCC  41 82 00 1C */	beq lbl_8053DDE8
/* 8053DDD0  3C A0 80 54 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 8053DDD4  38 05 FD 5C */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 8053DDD8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8053DDDC  7C 80 07 35 */	extsh. r0, r4
/* 8053DDE0  40 81 00 08 */	ble lbl_8053DDE8
/* 8053DDE4  4B D9 0F 58 */	b __dl__FPv
lbl_8053DDE8:
/* 8053DDE8  7F E3 FB 78 */	mr r3, r31
/* 8053DDEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053DDF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DDF4  7C 08 03 A6 */	mtlr r0
/* 8053DDF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DDFC  4E 80 00 20 */	blr 
