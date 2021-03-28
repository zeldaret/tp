lbl_8024F0E0:
/* 8024F0E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024F0E4  7C 08 02 A6 */	mflr r0
/* 8024F0E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024F0EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024F0F0  7C 7F 1B 78 */	mr r31, r3
/* 8024F0F4  88 63 02 A8 */	lbz r3, 0x2a8(r3)
/* 8024F0F8  88 1F 02 A6 */	lbz r0, 0x2a6(r31)
/* 8024F0FC  1C 00 00 05 */	mulli r0, r0, 5
/* 8024F100  7C 03 02 14 */	add r0, r3, r0
/* 8024F104  54 00 10 3A */	slwi r0, r0, 2
/* 8024F108  7C 7F 02 14 */	add r3, r31, r0
/* 8024F10C  80 63 00 74 */	lwz r3, 0x74(r3)
/* 8024F110  88 9F 02 A4 */	lbz r4, 0x2a4(r31)
/* 8024F114  3C A0 80 43 */	lis r5, g_nmHIO@ha
/* 8024F118  38 A5 07 34 */	addi r5, r5, g_nmHIO@l
/* 8024F11C  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 8024F120  C0 42 B3 C0 */	lfs f2, lit_3820(r2)
/* 8024F124  38 A0 00 00 */	li r5, 0
/* 8024F128  48 00 56 A5 */	bl scaleAnime__8CPaneMgrFsffUc
/* 8024F12C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024F130  28 00 00 01 */	cmplwi r0, 1
/* 8024F134  40 82 00 1C */	bne lbl_8024F150
/* 8024F138  7F E3 FB 78 */	mr r3, r31
/* 8024F13C  48 00 08 59 */	bl selectCursorMove__7dName_cFv
/* 8024F140  38 00 00 00 */	li r0, 0
/* 8024F144  98 1F 02 AB */	stb r0, 0x2ab(r31)
/* 8024F148  88 1F 02 AB */	lbz r0, 0x2ab(r31)
/* 8024F14C  98 1F 02 AD */	stb r0, 0x2ad(r31)
lbl_8024F150:
/* 8024F150  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024F154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024F158  7C 08 03 A6 */	mtlr r0
/* 8024F15C  38 21 00 10 */	addi r1, r1, 0x10
/* 8024F160  4E 80 00 20 */	blr 
