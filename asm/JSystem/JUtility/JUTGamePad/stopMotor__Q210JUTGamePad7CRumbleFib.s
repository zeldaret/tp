lbl_802E168C:
/* 802E168C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E1690  7C 08 02 A6 */	mflr r0
/* 802E1694  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E1698  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E169C  7C 7F 1B 78 */	mr r31, r3
/* 802E16A0  80 CD 8F 68 */	lwz r6, mEnabled__Q210JUTGamePad7CRumble(r13)
/* 802E16A4  54 60 10 3A */	slwi r0, r3, 2
/* 802E16A8  3C A0 80 3D */	lis r5, sChannelMask__Q210JUTGamePad7CRumble@ha /* 0x803CC5F0@ha */
/* 802E16AC  38 A5 C5 F0 */	addi r5, r5, sChannelMask__Q210JUTGamePad7CRumble@l /* 0x803CC5F0@l */
/* 802E16B0  7C 05 00 2E */	lwzx r0, r5, r0
/* 802E16B4  7C C0 00 39 */	and. r0, r6, r0
/* 802E16B8  41 82 00 2C */	beq lbl_802E16E4
/* 802E16BC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802E16C0  20 00 00 00 */	subfic r0, r0, 0
/* 802E16C4  7C 80 01 10 */	subfe r4, r0, r0
/* 802E16C8  38 00 00 02 */	li r0, 2
/* 802E16CC  7C 00 20 38 */	and r0, r0, r4
/* 802E16D0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802E16D4  48 06 DA CD */	bl PADControlMotor
/* 802E16D8  38 00 00 00 */	li r0, 0
/* 802E16DC  38 6D 8F 64 */	la r3, mStatus__Q210JUTGamePad7CRumble(r13) /* 804514E4-_SDA_BASE_ */
/* 802E16E0  7C 03 F9 AE */	stbx r0, r3, r31
lbl_802E16E4:
/* 802E16E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E16E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E16EC  7C 08 03 A6 */	mtlr r0
/* 802E16F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E16F4  4E 80 00 20 */	blr 
