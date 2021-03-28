lbl_802E15D8:
/* 802E15D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E15DC  7C 08 02 A6 */	mflr r0
/* 802E15E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E15E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E15E8  7C 7F 1B 78 */	mr r31, r3
/* 802E15EC  A8 04 00 7C */	lha r0, 0x7c(r4)
/* 802E15F0  7C 05 07 35 */	extsh. r5, r0
/* 802E15F4  41 80 00 24 */	blt lbl_802E1618
/* 802E15F8  2C 05 00 04 */	cmpwi r5, 4
/* 802E15FC  40 80 00 1C */	bge lbl_802E1618
/* 802E1600  38 00 00 00 */	li r0, 0
/* 802E1604  38 6D 8F 64 */	la r3, mStatus__Q210JUTGamePad7CRumble(r13) /* 804514E4-_SDA_BASE_ */
/* 802E1608  7C 03 29 AE */	stbx r0, r3, r5
/* 802E160C  A8 64 00 7C */	lha r3, 0x7c(r4)
/* 802E1610  38 80 00 01 */	li r4, 1
/* 802E1614  48 00 00 79 */	bl stopMotor__Q210JUTGamePad7CRumbleFib
lbl_802E1618:
/* 802E1618  7F E3 FB 78 */	mr r3, r31
/* 802E161C  4B FF FF 99 */	bl clear__Q210JUTGamePad7CRumbleFv
/* 802E1620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E1624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E1628  7C 08 03 A6 */	mtlr r0
/* 802E162C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E1630  4E 80 00 20 */	blr 
