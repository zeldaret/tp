lbl_8031C0AC:
/* 8031C0AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8031C0B0  7C 08 02 A6 */	mflr r0
/* 8031C0B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8031C0B8  39 61 00 30 */	addi r11, r1, 0x30
/* 8031C0BC  48 04 61 0D */	bl _savegpr_24
/* 8031C0C0  7C 7A 1B 78 */	mr r26, r3
/* 8031C0C4  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031C0C8  80 64 00 00 */	lwz r3, 0(r4)
/* 8031C0CC  80 1A 00 04 */	lwz r0, 4(r26)
/* 8031C0D0  7C 03 02 14 */	add r0, r3, r0
/* 8031C0D4  90 04 00 08 */	stw r0, 8(r4)
/* 8031C0D8  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C0DC  83 C3 00 08 */	lwz r30, 8(r3)
/* 8031C0E0  8B 9A 00 D0 */	lbz r28, 0xd0(r26)
/* 8031C0E4  3B 00 00 00 */	li r24, 0
/* 8031C0E8  3B 20 00 00 */	li r25, 0
lbl_8031C0EC:
/* 8031C0EC  38 99 00 08 */	addi r4, r25, 8
/* 8031C0F0  7C 9A 22 14 */	add r4, r26, r4
/* 8031C0F4  A0 04 00 00 */	lhz r0, 0(r4)
/* 8031C0F8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031C0FC  41 82 00 0C */	beq lbl_8031C108
/* 8031C100  7F 03 C3 78 */	mr r3, r24
/* 8031C104  48 00 7E 91 */	bl loadTexNo__FUlRCUs
lbl_8031C108:
/* 8031C108  3B 18 00 01 */	addi r24, r24, 1
/* 8031C10C  28 18 00 08 */	cmplwi r24, 8
/* 8031C110  3B 39 00 02 */	addi r25, r25, 2
/* 8031C114  41 80 FF D8 */	blt lbl_8031C0EC
/* 8031C118  3B 60 00 00 */	li r27, 0
/* 8031C11C  3B 20 00 00 */	li r25, 0
/* 8031C120  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha /* 0x80434C2C@ha */
/* 8031C124  3B E3 4C 2C */	addi r31, r3, sTexCoordScaleTable__6J3DSys@l /* 0x80434C2C@l */
/* 8031C128  48 00 00 CC */	b lbl_8031C1F4
lbl_8031C12C:
/* 8031C12C  38 1B 00 01 */	addi r0, r27, 1
/* 8031C130  54 00 10 3A */	slwi r0, r0, 2
/* 8031C134  7F BA 02 14 */	add r29, r26, r0
/* 8031C138  7F 1A CA 14 */	add r24, r26, r25
/* 8031C13C  7F 63 DB 78 */	mr r3, r27
/* 8031C140  88 98 00 18 */	lbz r4, 0x18(r24)
/* 8031C144  88 B8 00 19 */	lbz r5, 0x19(r24)
/* 8031C148  88 D8 00 1A */	lbz r6, 0x1a(r24)
/* 8031C14C  88 FD 00 18 */	lbz r7, 0x18(r29)
/* 8031C150  89 1D 00 19 */	lbz r8, 0x19(r29)
/* 8031C154  89 3D 00 1A */	lbz r9, 0x1a(r29)
/* 8031C158  4B FF 2F B1 */	bl J3DGDSetTevOrder__F13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 8031C15C  88 18 00 19 */	lbz r0, 0x19(r24)
/* 8031C160  54 00 1E B8 */	rlwinm r0, r0, 3, 0x1a, 0x1c
/* 8031C164  7D 1F 02 14 */	add r8, r31, r0
/* 8031C168  88 18 00 18 */	lbz r0, 0x18(r24)
/* 8031C16C  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031C170  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031C174  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031C178  20 00 00 01 */	subfic r0, r0, 1
/* 8031C17C  7C 00 00 34 */	cntlzw r0, r0
/* 8031C180  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031C184  38 C0 00 00 */	li r6, 0
/* 8031C188  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031C18C  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031C190  20 00 00 01 */	subfic r0, r0, 1
/* 8031C194  7C 00 00 34 */	cntlzw r0, r0
/* 8031C198  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031C19C  39 20 00 00 */	li r9, 0
/* 8031C1A0  4B FF 20 95 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031C1A4  88 1D 00 19 */	lbz r0, 0x19(r29)
/* 8031C1A8  54 00 1E B8 */	rlwinm r0, r0, 3, 0x1a, 0x1c
/* 8031C1AC  7D 1F 02 14 */	add r8, r31, r0
/* 8031C1B0  88 1D 00 18 */	lbz r0, 0x18(r29)
/* 8031C1B4  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031C1B8  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031C1BC  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031C1C0  20 00 00 01 */	subfic r0, r0, 1
/* 8031C1C4  7C 00 00 34 */	cntlzw r0, r0
/* 8031C1C8  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031C1CC  38 C0 00 00 */	li r6, 0
/* 8031C1D0  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031C1D4  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031C1D8  20 00 00 01 */	subfic r0, r0, 1
/* 8031C1DC  7C 00 00 34 */	cntlzw r0, r0
/* 8031C1E0  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031C1E4  39 20 00 00 */	li r9, 0
/* 8031C1E8  4B FF 20 4D */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031C1EC  3B 7B 00 02 */	addi r27, r27, 2
/* 8031C1F0  3B 39 00 08 */	addi r25, r25, 8
lbl_8031C1F4:
/* 8031C1F4  7C 1B E0 40 */	cmplw r27, r28
/* 8031C1F8  41 80 FF 34 */	blt lbl_8031C12C
/* 8031C1FC  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C200  80 03 00 08 */	lwz r0, 8(r3)
/* 8031C204  7F C3 F3 78 */	mr r3, r30
/* 8031C208  7C 9E 00 50 */	subf r4, r30, r0
/* 8031C20C  48 01 F3 D1 */	bl DCStoreRange
/* 8031C210  39 61 00 30 */	addi r11, r1, 0x30
/* 8031C214  48 04 60 01 */	bl _restgpr_24
/* 8031C218  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8031C21C  7C 08 03 A6 */	mtlr r0
/* 8031C220  38 21 00 30 */	addi r1, r1, 0x30
/* 8031C224  4E 80 00 20 */	blr 
