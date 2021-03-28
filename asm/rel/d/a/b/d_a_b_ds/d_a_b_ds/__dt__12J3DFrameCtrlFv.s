lbl_805DB90C:
/* 805DB90C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DB910  7C 08 02 A6 */	mflr r0
/* 805DB914  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DB918  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DB91C  7C 7F 1B 79 */	or. r31, r3, r3
/* 805DB920  41 82 00 1C */	beq lbl_805DB93C
/* 805DB924  3C A0 80 5E */	lis r5, __vt__12J3DFrameCtrl@ha
/* 805DB928  38 05 DA 50 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 805DB92C  90 1F 00 00 */	stw r0, 0(r31)
/* 805DB930  7C 80 07 35 */	extsh. r0, r4
/* 805DB934  40 81 00 08 */	ble lbl_805DB93C
/* 805DB938  4B CF 34 04 */	b __dl__FPv
lbl_805DB93C:
/* 805DB93C  7F E3 FB 78 */	mr r3, r31
/* 805DB940  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DB944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DB948  7C 08 03 A6 */	mtlr r0
/* 805DB94C  38 21 00 10 */	addi r1, r1, 0x10
/* 805DB950  4E 80 00 20 */	blr 
