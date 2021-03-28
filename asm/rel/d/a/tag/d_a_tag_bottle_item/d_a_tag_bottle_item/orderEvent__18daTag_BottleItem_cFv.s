lbl_80D56384:
/* 80D56384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D56388  7C 08 02 A6 */	mflr r0
/* 80D5638C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D56390  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D56394  7C 7F 1B 78 */	mr r31, r3
/* 80D56398  48 00 00 81 */	bl makeSoup__18daTag_BottleItem_cFv
/* 80D5639C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D563A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D563A4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80D563A8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80D563AC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80D563B0  40 82 00 20 */	bne lbl_80D563D0
/* 80D563B4  88 1F 05 76 */	lbz r0, 0x576(r31)
/* 80D563B8  28 00 00 60 */	cmplwi r0, 0x60
/* 80D563BC  41 82 00 14 */	beq lbl_80D563D0
/* 80D563C0  3C 60 20 00 */	lis r3, 0x2000 /* 0x20000008@ha */
/* 80D563C4  38 03 00 08 */	addi r0, r3, 0x0008 /* 0x20000008@l */
/* 80D563C8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D563CC  48 00 00 0C */	b lbl_80D563D8
lbl_80D563D0:
/* 80D563D0  38 00 00 00 */	li r0, 0
/* 80D563D4  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80D563D8:
/* 80D563D8  80 7F 05 5C */	lwz r3, 0x55c(r31)
/* 80D563DC  3C 03 E0 00 */	addis r0, r3, 0xe000
/* 80D563E0  28 00 00 08 */	cmplwi r0, 8
/* 80D563E4  40 82 00 1C */	bne lbl_80D56400
/* 80D563E8  38 00 00 60 */	li r0, 0x60
/* 80D563EC  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80D563F0  98 1F 05 47 */	stb r0, 0x547(r31)
/* 80D563F4  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80D563F8  60 00 00 01 */	ori r0, r0, 1
/* 80D563FC  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80D56400:
/* 80D56400  38 60 00 01 */	li r3, 1
/* 80D56404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D56408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5640C  7C 08 03 A6 */	mtlr r0
/* 80D56410  38 21 00 10 */	addi r1, r1, 0x10
/* 80D56414  4E 80 00 20 */	blr 
