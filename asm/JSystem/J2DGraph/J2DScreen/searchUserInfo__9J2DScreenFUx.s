lbl_802F90E0:
/* 802F90E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F90E4  7C 08 02 A6 */	mflr r0
/* 802F90E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F90EC  38 E0 00 00 */	li r7, 0
/* 802F90F0  7C C4 3A 78 */	xor r4, r6, r7
/* 802F90F4  7C A0 3A 78 */	xor r0, r5, r7
/* 802F90F8  7C 80 03 79 */	or. r0, r4, r0
/* 802F90FC  40 82 00 08 */	bne lbl_802F9104
/* 802F9100  48 00 00 0C */	b lbl_802F910C
lbl_802F9104:
/* 802F9104  4B FF E2 85 */	bl searchUserInfo__7J2DPaneFUx
/* 802F9108  7C 67 1B 78 */	mr r7, r3
lbl_802F910C:
/* 802F910C  7C E3 3B 78 */	mr r3, r7
/* 802F9110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F9114  7C 08 03 A6 */	mtlr r0
/* 802F9118  38 21 00 10 */	addi r1, r1, 0x10
/* 802F911C  4E 80 00 20 */	blr 
