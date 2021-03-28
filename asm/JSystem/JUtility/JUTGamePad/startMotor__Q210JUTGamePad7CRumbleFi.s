lbl_802E1634:
/* 802E1634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E1638  7C 08 02 A6 */	mflr r0
/* 802E163C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E1640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E1644  7C 7F 1B 78 */	mr r31, r3
/* 802E1648  80 AD 8F 68 */	lwz r5, mEnabled__Q210JUTGamePad7CRumble(r13)
/* 802E164C  54 60 10 3A */	slwi r0, r3, 2
/* 802E1650  3C 80 80 3D */	lis r4, sChannelMask__Q210JUTGamePad7CRumble@ha
/* 802E1654  38 84 C5 F0 */	addi r4, r4, sChannelMask__Q210JUTGamePad7CRumble@l
/* 802E1658  7C 04 00 2E */	lwzx r0, r4, r0
/* 802E165C  7C A0 00 39 */	and. r0, r5, r0
/* 802E1660  41 82 00 18 */	beq lbl_802E1678
/* 802E1664  38 80 00 01 */	li r4, 1
/* 802E1668  48 06 DB 39 */	bl PADControlMotor
/* 802E166C  38 00 00 01 */	li r0, 1
/* 802E1670  38 6D 8F 64 */	la r3, mStatus__Q210JUTGamePad7CRumble(r13) /* 804514E4-_SDA_BASE_ */
/* 802E1674  7C 03 F9 AE */	stbx r0, r3, r31
lbl_802E1678:
/* 802E1678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E167C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E1680  7C 08 03 A6 */	mtlr r0
/* 802E1684  38 21 00 10 */	addi r1, r1, 0x10
/* 802E1688  4E 80 00 20 */	blr 
