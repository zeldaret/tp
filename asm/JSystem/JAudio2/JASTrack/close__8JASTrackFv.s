lbl_80291AC8:
/* 80291AC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80291ACC  7C 08 02 A6 */	mflr r0
/* 80291AD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80291AD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80291AD8  48 0D 06 F9 */	bl _savegpr_26
/* 80291ADC  7C 7A 1B 78 */	mr r26, r3
/* 80291AE0  3B 80 00 00 */	li r28, 0
/* 80291AE4  3B E0 00 00 */	li r31, 0
/* 80291AE8  7F FE FB 78 */	mr r30, r31
lbl_80291AEC:
/* 80291AEC  3B BF 01 30 */	addi r29, r31, 0x130
/* 80291AF0  7F 7A E8 2E */	lwzx r27, r26, r29
/* 80291AF4  28 1B 00 00 */	cmplwi r27, 0
/* 80291AF8  41 82 00 28 */	beq lbl_80291B20
/* 80291AFC  7F 63 DB 78 */	mr r3, r27
/* 80291B00  4B FF FF C9 */	bl close__8JASTrackFv
/* 80291B04  88 1B 02 16 */	lbz r0, 0x216(r27)
/* 80291B08  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80291B0C  41 82 00 14 */	beq lbl_80291B20
/* 80291B10  7F 63 DB 78 */	mr r3, r27
/* 80291B14  38 80 00 01 */	li r4, 1
/* 80291B18  4B FF F8 05 */	bl __dt__8JASTrackFv
/* 80291B1C  7F DA E9 2E */	stwx r30, r26, r29
lbl_80291B20:
/* 80291B20  3B 9C 00 01 */	addi r28, r28, 1
/* 80291B24  2C 1C 00 10 */	cmpwi r28, 0x10
/* 80291B28  3B FF 00 04 */	addi r31, r31, 4
/* 80291B2C  41 80 FF C0 */	blt lbl_80291AEC
/* 80291B30  3B 60 00 00 */	li r27, 0
/* 80291B34  3B E0 00 00 */	li r31, 0
/* 80291B38  48 00 00 20 */	b lbl_80291B58
lbl_80291B3C:
/* 80291B3C  38 1F 01 70 */	addi r0, r31, 0x170
/* 80291B40  7C 7A 00 2E */	lwzx r3, r26, r0
/* 80291B44  28 03 00 00 */	cmplwi r3, 0
/* 80291B48  41 82 00 08 */	beq lbl_80291B50
/* 80291B4C  48 00 16 65 */	bl releaseAll__Q28JASTrack11TChannelMgrFv
lbl_80291B50:
/* 80291B50  3B 7B 00 01 */	addi r27, r27, 1
/* 80291B54  3B FF 00 04 */	addi r31, r31, 4
lbl_80291B58:
/* 80291B58  80 1A 01 D0 */	lwz r0, 0x1d0(r26)
/* 80291B5C  7C 1B 00 40 */	cmplw r27, r0
/* 80291B60  41 80 FF DC */	blt lbl_80291B3C
/* 80291B64  38 00 00 00 */	li r0, 0
/* 80291B68  90 1A 01 2C */	stw r0, 0x12c(r26)
/* 80291B6C  38 00 00 02 */	li r0, 2
/* 80291B70  98 1A 02 15 */	stb r0, 0x215(r26)
/* 80291B74  39 61 00 20 */	addi r11, r1, 0x20
/* 80291B78  48 0D 06 A5 */	bl _restgpr_26
/* 80291B7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80291B80  7C 08 03 A6 */	mtlr r0
/* 80291B84  38 21 00 20 */	addi r1, r1, 0x20
/* 80291B88  4E 80 00 20 */	blr 
