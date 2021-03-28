lbl_802EC124:
/* 802EC124  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EC128  7C 08 02 A6 */	mflr r0
/* 802EC12C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EC130  39 61 00 20 */	addi r11, r1, 0x20
/* 802EC134  48 07 60 A9 */	bl _savegpr_29
/* 802EC138  7C 7D 1B 78 */	mr r29, r3
/* 802EC13C  7C 9E 23 79 */	or. r30, r4, r4
/* 802EC140  40 82 00 0C */	bne lbl_802EC14C
/* 802EC144  38 60 00 00 */	li r3, 0
/* 802EC148  48 00 00 78 */	b lbl_802EC1C0
lbl_802EC14C:
/* 802EC14C  38 60 00 70 */	li r3, 0x70
/* 802EC150  4B FE 2A FD */	bl __nw__FUl
/* 802EC154  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EC158  41 82 00 14 */	beq lbl_802EC16C
/* 802EC15C  7F C4 F3 78 */	mr r4, r30
/* 802EC160  38 A0 00 00 */	li r5, 0
/* 802EC164  4B FF 2E 31 */	bl __ct__10JUTResFontFPC7ResFONTP7JKRHeap
/* 802EC168  7C 7F 1B 78 */	mr r31, r3
lbl_802EC16C:
/* 802EC16C  28 1F 00 00 */	cmplwi r31, 0
/* 802EC170  40 82 00 0C */	bne lbl_802EC17C
/* 802EC174  38 60 00 00 */	li r3, 0
/* 802EC178  48 00 00 48 */	b lbl_802EC1C0
lbl_802EC17C:
/* 802EC17C  88 1D 00 5C */	lbz r0, 0x5c(r29)
/* 802EC180  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802EC184  41 82 00 24 */	beq lbl_802EC1A8
/* 802EC188  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 802EC18C  28 03 00 00 */	cmplwi r3, 0
/* 802EC190  41 82 00 18 */	beq lbl_802EC1A8
/* 802EC194  38 80 00 01 */	li r4, 1
/* 802EC198  81 83 00 00 */	lwz r12, 0(r3)
/* 802EC19C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EC1A0  7D 89 03 A6 */	mtctr r12
/* 802EC1A4  4E 80 04 21 */	bctrl 
lbl_802EC1A8:
/* 802EC1A8  93 FD 00 58 */	stw r31, 0x58(r29)
/* 802EC1AC  88 1D 00 5C */	lbz r0, 0x5c(r29)
/* 802EC1B0  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802EC1B4  60 00 00 80 */	ori r0, r0, 0x80
/* 802EC1B8  98 1D 00 5C */	stb r0, 0x5c(r29)
/* 802EC1BC  38 60 00 01 */	li r3, 1
lbl_802EC1C0:
/* 802EC1C0  39 61 00 20 */	addi r11, r1, 0x20
/* 802EC1C4  48 07 60 65 */	bl _restgpr_29
/* 802EC1C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EC1CC  7C 08 03 A6 */	mtlr r0
/* 802EC1D0  38 21 00 20 */	addi r1, r1, 0x20
/* 802EC1D4  4E 80 00 20 */	blr 
