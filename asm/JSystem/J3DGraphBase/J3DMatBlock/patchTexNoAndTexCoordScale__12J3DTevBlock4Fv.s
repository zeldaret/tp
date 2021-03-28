lbl_8031C854:
/* 8031C854  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8031C858  7C 08 02 A6 */	mflr r0
/* 8031C85C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8031C860  39 61 00 30 */	addi r11, r1, 0x30
/* 8031C864  48 04 59 65 */	bl _savegpr_24
/* 8031C868  7C 7A 1B 78 */	mr r26, r3
/* 8031C86C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031C870  80 64 00 00 */	lwz r3, 0(r4)
/* 8031C874  80 1A 00 04 */	lwz r0, 4(r26)
/* 8031C878  7C 03 02 14 */	add r0, r3, r0
/* 8031C87C  90 04 00 08 */	stw r0, 8(r4)
/* 8031C880  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C884  83 C3 00 08 */	lwz r30, 8(r3)
/* 8031C888  8B 9A 00 20 */	lbz r28, 0x20(r26)
/* 8031C88C  3B 00 00 00 */	li r24, 0
/* 8031C890  3B 20 00 00 */	li r25, 0
lbl_8031C894:
/* 8031C894  38 99 00 08 */	addi r4, r25, 8
/* 8031C898  7C 9A 22 14 */	add r4, r26, r4
/* 8031C89C  A0 04 00 00 */	lhz r0, 0(r4)
/* 8031C8A0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031C8A4  41 82 00 0C */	beq lbl_8031C8B0
/* 8031C8A8  7F 03 C3 78 */	mr r3, r24
/* 8031C8AC  48 00 76 E9 */	bl loadTexNo__FUlRCUs
lbl_8031C8B0:
/* 8031C8B0  3B 18 00 01 */	addi r24, r24, 1
/* 8031C8B4  28 18 00 04 */	cmplwi r24, 4
/* 8031C8B8  3B 39 00 02 */	addi r25, r25, 2
/* 8031C8BC  41 80 FF D8 */	blt lbl_8031C894
/* 8031C8C0  3B 60 00 00 */	li r27, 0
/* 8031C8C4  3B 20 00 00 */	li r25, 0
/* 8031C8C8  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha
/* 8031C8CC  3B E3 4C 2C */	addi r31, r3, sTexCoordScaleTable__6J3DSys@l
/* 8031C8D0  48 00 00 CC */	b lbl_8031C99C
lbl_8031C8D4:
/* 8031C8D4  38 1B 00 01 */	addi r0, r27, 1
/* 8031C8D8  54 00 10 3A */	slwi r0, r0, 2
/* 8031C8DC  7F BA 02 14 */	add r29, r26, r0
/* 8031C8E0  7F 1A CA 14 */	add r24, r26, r25
/* 8031C8E4  7F 63 DB 78 */	mr r3, r27
/* 8031C8E8  88 98 00 10 */	lbz r4, 0x10(r24)
/* 8031C8EC  88 B8 00 11 */	lbz r5, 0x11(r24)
/* 8031C8F0  88 D8 00 12 */	lbz r6, 0x12(r24)
/* 8031C8F4  88 FD 00 10 */	lbz r7, 0x10(r29)
/* 8031C8F8  89 1D 00 11 */	lbz r8, 0x11(r29)
/* 8031C8FC  89 3D 00 12 */	lbz r9, 0x12(r29)
/* 8031C900  4B FF 28 09 */	bl J3DGDSetTevOrder__F13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 8031C904  88 18 00 11 */	lbz r0, 0x11(r24)
/* 8031C908  54 00 1E B8 */	rlwinm r0, r0, 3, 0x1a, 0x1c
/* 8031C90C  7D 1F 02 14 */	add r8, r31, r0
/* 8031C910  88 18 00 10 */	lbz r0, 0x10(r24)
/* 8031C914  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031C918  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031C91C  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031C920  20 00 00 01 */	subfic r0, r0, 1
/* 8031C924  7C 00 00 34 */	cntlzw r0, r0
/* 8031C928  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031C92C  38 C0 00 00 */	li r6, 0
/* 8031C930  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031C934  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031C938  20 00 00 01 */	subfic r0, r0, 1
/* 8031C93C  7C 00 00 34 */	cntlzw r0, r0
/* 8031C940  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031C944  39 20 00 00 */	li r9, 0
/* 8031C948  4B FF 18 ED */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031C94C  88 1D 00 11 */	lbz r0, 0x11(r29)
/* 8031C950  54 00 1E B8 */	rlwinm r0, r0, 3, 0x1a, 0x1c
/* 8031C954  7D 1F 02 14 */	add r8, r31, r0
/* 8031C958  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 8031C95C  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031C960  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031C964  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031C968  20 00 00 01 */	subfic r0, r0, 1
/* 8031C96C  7C 00 00 34 */	cntlzw r0, r0
/* 8031C970  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031C974  38 C0 00 00 */	li r6, 0
/* 8031C978  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031C97C  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031C980  20 00 00 01 */	subfic r0, r0, 1
/* 8031C984  7C 00 00 34 */	cntlzw r0, r0
/* 8031C988  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031C98C  39 20 00 00 */	li r9, 0
/* 8031C990  4B FF 18 A5 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031C994  3B 7B 00 02 */	addi r27, r27, 2
/* 8031C998  3B 39 00 08 */	addi r25, r25, 8
lbl_8031C99C:
/* 8031C99C  7C 1B E0 40 */	cmplw r27, r28
/* 8031C9A0  41 80 FF 34 */	blt lbl_8031C8D4
/* 8031C9A4  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C9A8  80 03 00 08 */	lwz r0, 8(r3)
/* 8031C9AC  7F C3 F3 78 */	mr r3, r30
/* 8031C9B0  7C 9E 00 50 */	subf r4, r30, r0
/* 8031C9B4  48 01 EC 29 */	bl DCStoreRange
/* 8031C9B8  39 61 00 30 */	addi r11, r1, 0x30
/* 8031C9BC  48 04 58 59 */	bl _restgpr_24
/* 8031C9C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8031C9C4  7C 08 03 A6 */	mtlr r0
/* 8031C9C8  38 21 00 30 */	addi r1, r1, 0x30
/* 8031C9CC  4E 80 00 20 */	blr 
