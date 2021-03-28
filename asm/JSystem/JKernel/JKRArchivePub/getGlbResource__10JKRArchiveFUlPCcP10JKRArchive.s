lbl_802D5B38:
/* 802D5B38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D5B3C  7C 08 02 A6 */	mflr r0
/* 802D5B40  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D5B44  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5B48  48 08 C6 95 */	bl _savegpr_29
/* 802D5B4C  7C 7D 1B 78 */	mr r29, r3
/* 802D5B50  7C 9E 23 78 */	mr r30, r4
/* 802D5B54  38 C0 00 00 */	li r6, 0
/* 802D5B58  28 05 00 00 */	cmplwi r5, 0
/* 802D5B5C  41 82 00 24 */	beq lbl_802D5B80
/* 802D5B60  7C A3 2B 78 */	mr r3, r5
/* 802D5B64  7F A4 EB 78 */	mr r4, r29
/* 802D5B68  7F C5 F3 78 */	mr r5, r30
/* 802D5B6C  81 83 00 00 */	lwz r12, 0(r3)
/* 802D5B70  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802D5B74  7D 89 03 A6 */	mtctr r12
/* 802D5B78  4E 80 04 21 */	bctrl 
/* 802D5B7C  48 00 00 54 */	b lbl_802D5BD0
lbl_802D5B80:
/* 802D5B80  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha
/* 802D5B84  83 E3 43 54 */	lwz r31, sVolumeList__13JKRFileLoader@l(r3)
/* 802D5B88  48 00 00 3C */	b lbl_802D5BC4
lbl_802D5B8C:
/* 802D5B8C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802D5B90  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802D5B94  3C 04 AD BF */	addis r0, r4, 0xadbf
/* 802D5B98  28 00 52 43 */	cmplwi r0, 0x5243
/* 802D5B9C  40 82 00 24 */	bne lbl_802D5BC0
/* 802D5BA0  7F A4 EB 78 */	mr r4, r29
/* 802D5BA4  7F C5 F3 78 */	mr r5, r30
/* 802D5BA8  81 83 00 00 */	lwz r12, 0(r3)
/* 802D5BAC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802D5BB0  7D 89 03 A6 */	mtctr r12
/* 802D5BB4  4E 80 04 21 */	bctrl 
/* 802D5BB8  7C 66 1B 79 */	or. r6, r3, r3
/* 802D5BBC  40 82 00 10 */	bne lbl_802D5BCC
lbl_802D5BC0:
/* 802D5BC0  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802D5BC4:
/* 802D5BC4  28 1F 00 00 */	cmplwi r31, 0
/* 802D5BC8  40 82 FF C4 */	bne lbl_802D5B8C
lbl_802D5BCC:
/* 802D5BCC  7C C3 33 78 */	mr r3, r6
lbl_802D5BD0:
/* 802D5BD0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D5BD4  48 08 C6 55 */	bl _restgpr_29
/* 802D5BD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D5BDC  7C 08 03 A6 */	mtlr r0
/* 802D5BE0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D5BE4  4E 80 00 20 */	blr 
