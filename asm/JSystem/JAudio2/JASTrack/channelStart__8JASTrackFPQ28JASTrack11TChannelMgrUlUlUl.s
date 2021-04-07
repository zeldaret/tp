lbl_80291DF8:
/* 80291DF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80291DFC  7C 08 02 A6 */	mflr r0
/* 80291E00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80291E04  39 61 00 20 */	addi r11, r1, 0x20
/* 80291E08  48 0D 03 CD */	bl _savegpr_27
/* 80291E0C  7C 7F 1B 78 */	mr r31, r3
/* 80291E10  7C 9B 23 78 */	mr r27, r4
/* 80291E14  7C BE 2B 78 */	mr r30, r5
/* 80291E18  7C DD 33 78 */	mr r29, r6
/* 80291E1C  7C FC 3B 78 */	mr r28, r7
/* 80291E20  38 00 00 00 */	li r0, 0
/* 80291E24  80 63 01 D4 */	lwz r3, 0x1d4(r3)
/* 80291E28  28 03 00 00 */	cmplwi r3, 0
/* 80291E2C  41 82 00 1C */	beq lbl_80291E48
/* 80291E30  A0 9F 02 2C */	lhz r4, 0x22c(r31)
/* 80291E34  81 83 00 00 */	lwz r12, 0(r3)
/* 80291E38  81 8C 00 08 */	lwz r12, 8(r12)
/* 80291E3C  7D 89 03 A6 */	mtctr r12
/* 80291E40  4E 80 04 21 */	bctrl 
/* 80291E44  7C 60 1B 78 */	mr r0, r3
lbl_80291E48:
/* 80291E48  7C 03 03 78 */	mr r3, r0
/* 80291E4C  A0 9F 02 2E */	lhz r4, 0x22e(r31)
/* 80291E50  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 80291E54  57 A6 06 3E */	clrlwi r6, r29, 0x18
/* 80291E58  88 FF 02 31 */	lbz r7, 0x231(r31)
/* 80291E5C  88 1F 02 32 */	lbz r0, 0x232(r31)
/* 80291E60  50 07 44 2E */	rlwimi r7, r0, 8, 0x10, 0x17
/* 80291E64  54 E7 04 3E */	clrlwi r7, r7, 0x10
/* 80291E68  3D 00 80 29 */	lis r8, channelUpdateCallback__8JASTrackFUlP10JASChannelPQ26JASDsp8TChannelPv@ha /* 0x80292CA4@ha */
/* 80291E6C  39 08 2C A4 */	addi r8, r8, channelUpdateCallback__8JASTrackFUlP10JASChannelPQ26JASDsp8TChannelPv@l /* 0x80292CA4@l */
/* 80291E70  7F 69 DB 78 */	mr r9, r27
/* 80291E74  48 00 5A BD */	bl noteOn__7JASBankFPC7JASBankiUcUcUsPFUlP10JASChannelPQ26JASDsp8TChannelPv_vPv
/* 80291E78  7C 7D 1B 79 */	or. r29, r3, r3
/* 80291E7C  40 82 00 0C */	bne lbl_80291E88
/* 80291E80  38 60 00 00 */	li r3, 0
/* 80291E84  48 00 00 9C */	b lbl_80291F20
lbl_80291E88:
/* 80291E88  93 9D 00 14 */	stw r28, 0x14(r29)
/* 80291E8C  80 1F 02 20 */	lwz r0, 0x220(r31)
/* 80291E90  90 1D 00 D8 */	stw r0, 0xd8(r29)
/* 80291E94  A0 1F 01 F0 */	lhz r0, 0x1f0(r31)
/* 80291E98  B0 1D 00 70 */	sth r0, 0x70(r29)
/* 80291E9C  A0 1F 01 F2 */	lhz r0, 0x1f2(r31)
/* 80291EA0  B0 1D 00 88 */	sth r0, 0x88(r29)
/* 80291EA4  C0 1B 00 20 */	lfs f0, 0x20(r27)
/* 80291EA8  D0 1D 00 9C */	stfs f0, 0x9c(r29)
/* 80291EAC  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 80291EB0  D0 1D 00 A0 */	stfs f0, 0xa0(r29)
/* 80291EB4  C0 1B 00 28 */	lfs f0, 0x28(r27)
/* 80291EB8  D0 1D 00 A4 */	stfs f0, 0xa4(r29)
/* 80291EBC  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80291EC0  D0 1D 00 A8 */	stfs f0, 0xa8(r29)
/* 80291EC4  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 80291EC8  D0 1D 00 AC */	stfs f0, 0xac(r29)
/* 80291ECC  C0 1B 00 34 */	lfs f0, 0x34(r27)
/* 80291ED0  D0 1D 00 B0 */	stfs f0, 0xb0(r29)
/* 80291ED4  3B 80 00 00 */	li r28, 0
/* 80291ED8  3B C0 00 00 */	li r30, 0
lbl_80291EDC:
/* 80291EDC  7F A3 EB 78 */	mr r3, r29
/* 80291EE0  7F 84 E3 78 */	mr r4, r28
/* 80291EE4  38 1E 02 34 */	addi r0, r30, 0x234
/* 80291EE8  7C BF 02 2E */	lhzx r5, r31, r0
/* 80291EEC  48 00 8C AD */	bl setMixConfig__10JASChannelFUlUs
/* 80291EF0  3B 9C 00 01 */	addi r28, r28, 1
/* 80291EF4  28 1C 00 06 */	cmplwi r28, 6
/* 80291EF8  3B DE 00 02 */	addi r30, r30, 2
/* 80291EFC  41 80 FF E0 */	blt lbl_80291EDC
/* 80291F00  7F E3 FB 78 */	mr r3, r31
/* 80291F04  7F A4 EB 78 */	mr r4, r29
/* 80291F08  48 00 03 65 */	bl overwriteOsc__8JASTrackFP10JASChannel
/* 80291F0C  A0 1F 02 24 */	lhz r0, 0x224(r31)
/* 80291F10  28 00 00 00 */	cmplwi r0, 0
/* 80291F14  41 82 00 08 */	beq lbl_80291F1C
/* 80291F18  B0 1D 00 32 */	sth r0, 0x32(r29)
lbl_80291F1C:
/* 80291F1C  7F A3 EB 78 */	mr r3, r29
lbl_80291F20:
/* 80291F20  39 61 00 20 */	addi r11, r1, 0x20
/* 80291F24  48 0D 02 FD */	bl _restgpr_27
/* 80291F28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80291F2C  7C 08 03 A6 */	mtlr r0
/* 80291F30  38 21 00 20 */	addi r1, r1, 0x20
/* 80291F34  4E 80 00 20 */	blr 
