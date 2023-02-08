lbl_8032E3BC:
/* 8032E3BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032E3C0  7C 08 02 A6 */	mflr r0
/* 8032E3C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032E3C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8032E3CC  48 03 3E 05 */	bl _savegpr_26
/* 8032E3D0  7C 7C 1B 78 */	mr r28, r3
/* 8032E3D4  7C 9D 23 78 */	mr r29, r4
/* 8032E3D8  7C BE 2B 78 */	mr r30, r5
/* 8032E3DC  3B E0 00 00 */	li r31, 0
/* 8032E3E0  80 03 00 04 */	lwz r0, 4(r3)
/* 8032E3E4  28 00 00 00 */	cmplwi r0, 0
/* 8032E3E8  41 82 00 A4 */	beq lbl_8032E48C
/* 8032E3EC  38 A0 00 00 */	li r5, 0
/* 8032E3F0  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8032E3F4  48 00 00 24 */	b lbl_8032E418
lbl_8032E3F8:
/* 8032E3F8  80 7C 00 00 */	lwz r3, 0(r28)
/* 8032E3FC  80 83 00 08 */	lwz r4, 8(r3)
/* 8032E400  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 8032E404  1C 63 00 24 */	mulli r3, r3, 0x24
/* 8032E408  7C 64 1A 14 */	add r3, r4, r3
/* 8032E40C  A0 63 00 10 */	lhz r3, 0x10(r3)
/* 8032E410  7F FF 1A 14 */	add r31, r31, r3
/* 8032E414  38 A5 00 01 */	addi r5, r5, 1
lbl_8032E418:
/* 8032E418  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 8032E41C  7C 03 00 40 */	cmplw r3, r0
/* 8032E420  41 80 FF D8 */	blt lbl_8032E3F8
/* 8032E424  80 7C 00 00 */	lwz r3, 0(r28)
/* 8032E428  80 63 00 08 */	lwz r3, 8(r3)
/* 8032E42C  1C 00 00 24 */	mulli r0, r0, 0x24
/* 8032E430  7C 63 02 14 */	add r3, r3, r0
/* 8032E434  A3 63 00 10 */	lhz r27, 0x10(r3)
/* 8032E438  3B 40 00 00 */	li r26, 0
/* 8032E43C  48 00 00 30 */	b lbl_8032E46C
lbl_8032E440:
/* 8032E440  80 7C 00 04 */	lwz r3, 4(r28)
/* 8032E444  7F E4 FB 78 */	mr r4, r31
/* 8032E448  81 83 00 00 */	lwz r12, 0(r3)
/* 8032E44C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8032E450  7D 89 03 A6 */	mtctr r12
/* 8032E454  3B FF 00 01 */	addi r31, r31, 1
/* 8032E458  4E 80 04 21 */	bctrl 
/* 8032E45C  80 7C 00 08 */	lwz r3, 8(r28)
/* 8032E460  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 8032E464  7C 23 05 2E */	stfsx f1, r3, r0
/* 8032E468  3B 5A 00 01 */	addi r26, r26, 1
lbl_8032E46C:
/* 8032E46C  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 8032E470  7C 00 D8 40 */	cmplw r0, r27
/* 8032E474  41 80 FF CC */	blt lbl_8032E440
/* 8032E478  7F 83 E3 78 */	mr r3, r28
/* 8032E47C  7F A4 EB 78 */	mr r4, r29
/* 8032E480  7F C5 F3 78 */	mr r5, r30
/* 8032E484  80 DC 00 08 */	lwz r6, 8(r28)
/* 8032E488  48 00 06 2D */	bl deform__11J3DDeformerFP15J3DVertexBufferUsPf
lbl_8032E48C:
/* 8032E48C  39 61 00 20 */	addi r11, r1, 0x20
/* 8032E490  48 03 3D 8D */	bl _restgpr_26
/* 8032E494  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032E498  7C 08 03 A6 */	mtlr r0
/* 8032E49C  38 21 00 20 */	addi r1, r1, 0x20
/* 8032E4A0  4E 80 00 20 */	blr 
