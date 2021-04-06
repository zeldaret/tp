lbl_802D43A0:
/* 802D43A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D43A4  7C 08 02 A6 */	mflr r0
/* 802D43A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D43AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D43B0  93 C1 00 08 */	stw r30, 8(r1)
/* 802D43B4  7C 7E 1B 78 */	mr r30, r3
/* 802D43B8  28 04 00 00 */	cmplwi r4, 0
/* 802D43BC  41 82 00 20 */	beq lbl_802D43DC
/* 802D43C0  7C 83 23 78 */	mr r3, r4
/* 802D43C4  7F C4 F3 78 */	mr r4, r30
/* 802D43C8  81 83 00 00 */	lwz r12, 0(r3)
/* 802D43CC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802D43D0  7D 89 03 A6 */	mtctr r12
/* 802D43D4  4E 80 04 21 */	bctrl 
/* 802D43D8  48 00 00 48 */	b lbl_802D4420
lbl_802D43DC:
/* 802D43DC  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha /* 0x80434354@ha */
/* 802D43E0  83 E3 43 54 */	lwz r31, sVolumeList__13JKRFileLoader@l(r3)  /* 0x80434354@l */
/* 802D43E4  48 00 00 30 */	b lbl_802D4414
lbl_802D43E8:
/* 802D43E8  80 7F 00 00 */	lwz r3, 0(r31)
/* 802D43EC  7F C4 F3 78 */	mr r4, r30
/* 802D43F0  81 83 00 00 */	lwz r12, 0(r3)
/* 802D43F4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802D43F8  7D 89 03 A6 */	mtctr r12
/* 802D43FC  4E 80 04 21 */	bctrl 
/* 802D4400  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D4404  41 82 00 0C */	beq lbl_802D4410
/* 802D4408  38 60 00 01 */	li r3, 1
/* 802D440C  48 00 00 14 */	b lbl_802D4420
lbl_802D4410:
/* 802D4410  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802D4414:
/* 802D4414  28 1F 00 00 */	cmplwi r31, 0
/* 802D4418  40 82 FF D0 */	bne lbl_802D43E8
/* 802D441C  38 60 00 00 */	li r3, 0
lbl_802D4420:
/* 802D4420  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D4424  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D4428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D442C  7C 08 03 A6 */	mtlr r0
/* 802D4430  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4434  4E 80 00 20 */	blr 
