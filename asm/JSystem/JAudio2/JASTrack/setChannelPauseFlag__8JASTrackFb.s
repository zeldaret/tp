lbl_802929A0:
/* 802929A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802929A4  7C 08 02 A6 */	mflr r0
/* 802929A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802929AC  39 61 00 20 */	addi r11, r1, 0x20
/* 802929B0  48 0C F8 29 */	bl _savegpr_28
/* 802929B4  7C 7C 1B 78 */	mr r28, r3
/* 802929B8  7C 9D 23 78 */	mr r29, r4
/* 802929BC  3B C0 00 00 */	li r30, 0
/* 802929C0  3B E0 00 00 */	li r31, 0
/* 802929C4  48 00 00 24 */	b lbl_802929E8
lbl_802929C8:
/* 802929C8  38 1F 01 70 */	addi r0, r31, 0x170
/* 802929CC  7C 7C 00 2E */	lwzx r3, r28, r0
/* 802929D0  28 03 00 00 */	cmplwi r3, 0
/* 802929D4  41 82 00 0C */	beq lbl_802929E0
/* 802929D8  7F A4 EB 78 */	mr r4, r29
/* 802929DC  48 00 08 C5 */	bl setPauseFlag__Q28JASTrack11TChannelMgrFb
lbl_802929E0:
/* 802929E0  3B DE 00 01 */	addi r30, r30, 1
/* 802929E4  3B FF 00 04 */	addi r31, r31, 4
lbl_802929E8:
/* 802929E8  80 1C 01 D0 */	lwz r0, 0x1d0(r28)
/* 802929EC  7C 1E 00 40 */	cmplw r30, r0
/* 802929F0  41 80 FF D8 */	blt lbl_802929C8
/* 802929F4  3B C0 00 00 */	li r30, 0
/* 802929F8  3B E0 00 00 */	li r31, 0
lbl_802929FC:
/* 802929FC  38 1F 01 30 */	addi r0, r31, 0x130
/* 80292A00  7C 7C 00 2E */	lwzx r3, r28, r0
/* 80292A04  28 03 00 00 */	cmplwi r3, 0
/* 80292A08  41 82 00 0C */	beq lbl_80292A14
/* 80292A0C  7F A4 EB 78 */	mr r4, r29
/* 80292A10  4B FF FF 91 */	bl setChannelPauseFlag__8JASTrackFb
lbl_80292A14:
/* 80292A14  3B DE 00 01 */	addi r30, r30, 1
/* 80292A18  2C 1E 00 10 */	cmpwi r30, 0x10
/* 80292A1C  3B FF 00 04 */	addi r31, r31, 4
/* 80292A20  41 80 FF DC */	blt lbl_802929FC
/* 80292A24  39 61 00 20 */	addi r11, r1, 0x20
/* 80292A28  48 0C F7 FD */	bl _restgpr_28
/* 80292A2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80292A30  7C 08 03 A6 */	mtlr r0
/* 80292A34  38 21 00 20 */	addi r1, r1, 0x20
/* 80292A38  4E 80 00 20 */	blr 
