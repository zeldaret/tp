lbl_802E3A08:
/* 802E3A08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E3A0C  7C 08 02 A6 */	mflr r0
/* 802E3A10  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E3A14  39 61 00 20 */	addi r11, r1, 0x20
/* 802E3A18  48 07 E7 C1 */	bl _savegpr_28
/* 802E3A1C  7C 7C 1B 78 */	mr r28, r3
/* 802E3A20  3C 60 80 3D */	lis r3, GXNtsc480Int@ha /* 0x803D2484@ha */
/* 802E3A24  38 03 24 84 */	addi r0, r3, GXNtsc480Int@l /* 0x803D2484@l */
/* 802E3A28  7C 1F 03 78 */	mr r31, r0
/* 802E3A2C  48 05 78 61 */	bl OSGetArenaHi
/* 802E3A30  3C 80 80 3D */	lis r4, GXNtsc480Int@ha /* 0x803D2484@ha */
/* 802E3A34  38 A4 24 84 */	addi r5, r4, GXNtsc480Int@l /* 0x803D2484@l */
/* 802E3A38  A0 85 00 04 */	lhz r4, 4(r5)
/* 802E3A3C  38 04 00 0F */	addi r0, r4, 0xf
/* 802E3A40  54 04 04 36 */	rlwinm r4, r0, 0, 0x10, 0x1b
/* 802E3A44  A0 05 00 08 */	lhz r0, 8(r5)
/* 802E3A48  7C 04 01 D6 */	mullw r0, r4, r0
/* 802E3A4C  54 07 08 3C */	slwi r7, r0, 1
/* 802E3A50  7C 07 18 50 */	subf r0, r7, r3
/* 802E3A54  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 802E3A58  38 1E FF EC */	addi r0, r30, -20
/* 802E3A5C  54 1D 00 35 */	rlwinm. r29, r0, 0, 0, 0x1a
/* 802E3A60  41 82 00 18 */	beq lbl_802E3A78
/* 802E3A64  7F A3 EB 78 */	mr r3, r29
/* 802E3A68  7F E4 FB 78 */	mr r4, r31
/* 802E3A6C  38 A0 00 01 */	li r5, 1
/* 802E3A70  7F C6 F3 78 */	mr r6, r30
/* 802E3A74  48 00 06 59 */	bl __ct__13JUTExternalFBFP16_GXRenderModeObj8_GXGammaPvUl
lbl_802E3A78:
/* 802E3A78  80 7C 00 80 */	lwz r3, 0x80(r28)
/* 802E3A7C  7F C4 F3 78 */	mr r4, r30
/* 802E3A80  A0 BF 00 04 */	lhz r5, 4(r31)
/* 802E3A84  A0 DF 00 06 */	lhz r6, 6(r31)
/* 802E3A88  48 00 0A E5 */	bl changeFrameBuffer__14JUTDirectPrintFPvUsUs
/* 802E3A8C  7F E3 FB 78 */	mr r3, r31
/* 802E3A90  48 06 93 FD */	bl VIConfigure
/* 802E3A94  7F C3 F3 78 */	mr r3, r30
/* 802E3A98  48 06 9D 2D */	bl VISetNextFrameBuffer
/* 802E3A9C  38 60 00 00 */	li r3, 0
/* 802E3AA0  48 06 9D A1 */	bl VISetBlack
/* 802E3AA4  48 06 9B F1 */	bl VIFlush
/* 802E3AA8  48 06 9B ED */	bl VIFlush
/* 802E3AAC  3B C0 00 00 */	li r30, 0
lbl_802E3AB0:
/* 802E3AB0  48 06 9E 0D */	bl VIGetRetraceCount
/* 802E3AB4  7C 7F 1B 78 */	mr r31, r3
lbl_802E3AB8:
/* 802E3AB8  48 06 9E 05 */	bl VIGetRetraceCount
/* 802E3ABC  7C 1F 18 40 */	cmplw r31, r3
/* 802E3AC0  41 82 FF F8 */	beq lbl_802E3AB8
/* 802E3AC4  3B DE 00 01 */	addi r30, r30, 1
/* 802E3AC8  2C 1E 00 03 */	cmpwi r30, 3
/* 802E3ACC  41 80 FF E4 */	blt lbl_802E3AB0
/* 802E3AD0  93 BC 00 7C */	stw r29, 0x7c(r28)
/* 802E3AD4  39 61 00 20 */	addi r11, r1, 0x20
/* 802E3AD8  48 07 E7 4D */	bl _restgpr_28
/* 802E3ADC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E3AE0  7C 08 03 A6 */	mtlr r0
/* 802E3AE4  38 21 00 20 */	addi r1, r1, 0x20
/* 802E3AE8  4E 80 00 20 */	blr 
