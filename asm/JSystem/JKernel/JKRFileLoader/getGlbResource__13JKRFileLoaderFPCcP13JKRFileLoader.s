lbl_802D4270:
/* 802D4270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D4274  7C 08 02 A6 */	mflr r0
/* 802D4278  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D427C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4280  93 C1 00 08 */	stw r30, 8(r1)
/* 802D4284  7C 7E 1B 78 */	mr r30, r3
/* 802D4288  38 60 00 00 */	li r3, 0
/* 802D428C  28 04 00 00 */	cmplwi r4, 0
/* 802D4290  41 82 00 24 */	beq lbl_802D42B4
/* 802D4294  7C 83 23 78 */	mr r3, r4
/* 802D4298  38 80 00 00 */	li r4, 0
/* 802D429C  7F C5 F3 78 */	mr r5, r30
/* 802D42A0  81 83 00 00 */	lwz r12, 0(r3)
/* 802D42A4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802D42A8  7D 89 03 A6 */	mtctr r12
/* 802D42AC  4E 80 04 21 */	bctrl 
/* 802D42B0  48 00 00 40 */	b lbl_802D42F0
lbl_802D42B4:
/* 802D42B4  3C 80 80 43 */	lis r4, sVolumeList__13JKRFileLoader@ha /* 0x80434354@ha */
/* 802D42B8  83 E4 43 54 */	lwz r31, sVolumeList__13JKRFileLoader@l(r4)  /* 0x80434354@l */
/* 802D42BC  48 00 00 2C */	b lbl_802D42E8
lbl_802D42C0:
/* 802D42C0  80 7F 00 00 */	lwz r3, 0(r31)
/* 802D42C4  38 80 00 00 */	li r4, 0
/* 802D42C8  7F C5 F3 78 */	mr r5, r30
/* 802D42CC  81 83 00 00 */	lwz r12, 0(r3)
/* 802D42D0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802D42D4  7D 89 03 A6 */	mtctr r12
/* 802D42D8  4E 80 04 21 */	bctrl 
/* 802D42DC  28 03 00 00 */	cmplwi r3, 0
/* 802D42E0  40 82 00 10 */	bne lbl_802D42F0
/* 802D42E4  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802D42E8:
/* 802D42E8  28 1F 00 00 */	cmplwi r31, 0
/* 802D42EC  40 82 FF D4 */	bne lbl_802D42C0
lbl_802D42F0:
/* 802D42F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D42F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D42F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D42FC  7C 08 03 A6 */	mtlr r0
/* 802D4300  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4304  4E 80 00 20 */	blr 
