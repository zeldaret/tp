lbl_802AB4A0:
/* 802AB4A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB4A4  7C 08 02 A6 */	mflr r0
/* 802AB4A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB4AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB4B0  93 C1 00 08 */	stw r30, 8(r1)
/* 802AB4B4  7C 9E 23 78 */	mr r30, r4
/* 802AB4B8  83 E3 00 00 */	lwz r31, 0(r3)
/* 802AB4BC  48 00 00 28 */	b lbl_802AB4E4
lbl_802AB4C0:
/* 802AB4C0  80 7F 00 00 */	lwz r3, 0(r31)
/* 802AB4C4  28 03 00 00 */	cmplwi r3, 0
/* 802AB4C8  41 82 00 18 */	beq lbl_802AB4E0
/* 802AB4CC  80 63 00 00 */	lwz r3, 0(r3)
/* 802AB4D0  28 03 00 00 */	cmplwi r3, 0
/* 802AB4D4  41 82 00 0C */	beq lbl_802AB4E0
/* 802AB4D8  7F C4 F3 78 */	mr r4, r30
/* 802AB4DC  4B FF 70 01 */	bl stop__8JAISoundFUl
lbl_802AB4E0:
/* 802AB4E0  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802AB4E4:
/* 802AB4E4  28 1F 00 00 */	cmplwi r31, 0
/* 802AB4E8  40 82 FF D8 */	bne lbl_802AB4C0
/* 802AB4EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB4F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AB4F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB4F8  7C 08 03 A6 */	mtlr r0
/* 802AB4FC  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB500  4E 80 00 20 */	blr 
