lbl_802A0A8C:
/* 802A0A8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A0A90  7C 08 02 A6 */	mflr r0
/* 802A0A94  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A0A98  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0A9C  48 0C 17 3D */	bl _savegpr_28
/* 802A0AA0  7C 7D 1B 78 */	mr r29, r3
/* 802A0AA4  7C 9E 23 78 */	mr r30, r4
/* 802A0AA8  7C BF 2B 78 */	mr r31, r5
/* 802A0AAC  48 00 18 4D */	bl __ct__8JAISoundFv
/* 802A0AB0  38 7D 00 98 */	addi r3, r29, 0x98
/* 802A0AB4  7F A4 EB 78 */	mr r4, r29
/* 802A0AB8  48 03 B3 45 */	bl __ct__10JSUPtrLinkFPv
/* 802A0ABC  3C 60 80 3D */	lis r3, __vt__6JAISeq@ha /* 0x803C98F4@ha */
/* 802A0AC0  38 03 98 F4 */	addi r0, r3, __vt__6JAISeq@l /* 0x803C98F4@l */
/* 802A0AC4  90 1D 00 00 */	stw r0, 0(r29)
/* 802A0AC8  3B 9D 00 A8 */	addi r28, r29, 0xa8
/* 802A0ACC  7F 83 E3 78 */	mr r3, r28
/* 802A0AD0  4B FF 07 59 */	bl __ct__8JASTrackFv
/* 802A0AD4  C0 42 BD 98 */	lfs f2, lit_642(r2)
/* 802A0AD8  D0 5C 02 C8 */	stfs f2, 0x2c8(r28)
/* 802A0ADC  C0 22 BD 9C */	lfs f1, lit_643(r2)
/* 802A0AE0  D0 3C 02 CC */	stfs f1, 0x2cc(r28)
/* 802A0AE4  38 80 00 00 */	li r4, 0
/* 802A0AE8  90 9C 02 D4 */	stw r4, 0x2d4(r28)
/* 802A0AEC  D0 3C 02 D0 */	stfs f1, 0x2d0(r28)
/* 802A0AF0  D0 5C 02 D8 */	stfs f2, 0x2d8(r28)
/* 802A0AF4  D0 5C 02 E0 */	stfs f2, 0x2e0(r28)
/* 802A0AF8  D0 3C 02 DC */	stfs f1, 0x2dc(r28)
/* 802A0AFC  C0 02 BD A0 */	lfs f0, lit_644(r2)
/* 802A0B00  D0 1C 02 E4 */	stfs f0, 0x2e4(r28)
/* 802A0B04  D0 3C 02 E8 */	stfs f1, 0x2e8(r28)
/* 802A0B08  90 9C 02 EC */	stw r4, 0x2ec(r28)
/* 802A0B0C  90 9C 02 F0 */	stw r4, 0x2f0(r28)
/* 802A0B10  93 DD 03 A0 */	stw r30, 0x3a0(r29)
/* 802A0B14  93 FD 03 A4 */	stw r31, 0x3a4(r29)
/* 802A0B18  D0 5D 03 80 */	stfs f2, 0x380(r29)
/* 802A0B1C  D0 5D 03 88 */	stfs f2, 0x388(r29)
/* 802A0B20  D0 3D 03 84 */	stfs f1, 0x384(r29)
/* 802A0B24  D0 1D 03 8C */	stfs f0, 0x38c(r29)
/* 802A0B28  D0 3D 03 90 */	stfs f1, 0x390(r29)
/* 802A0B2C  7C 83 23 78 */	mr r3, r4
/* 802A0B30  38 00 00 20 */	li r0, 0x20
/* 802A0B34  7C 09 03 A6 */	mtctr r0
lbl_802A0B38:
/* 802A0B38  38 03 02 F0 */	addi r0, r3, 0x2f0
/* 802A0B3C  7C 9D 01 2E */	stwx r4, r29, r0
/* 802A0B40  38 63 00 04 */	addi r3, r3, 4
/* 802A0B44  42 00 FF F4 */	bdnz lbl_802A0B38
/* 802A0B48  7F A3 EB 78 */	mr r3, r29
/* 802A0B4C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0B50  48 0C 16 D5 */	bl _restgpr_28
/* 802A0B54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A0B58  7C 08 03 A6 */	mtlr r0
/* 802A0B5C  38 21 00 20 */	addi r1, r1, 0x20
/* 802A0B60  4E 80 00 20 */	blr 
