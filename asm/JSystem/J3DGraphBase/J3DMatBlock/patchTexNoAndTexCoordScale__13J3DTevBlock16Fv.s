lbl_8031CB7C:
/* 8031CB7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8031CB80  7C 08 02 A6 */	mflr r0
/* 8031CB84  90 01 00 34 */	stw r0, 0x34(r1)
/* 8031CB88  39 61 00 30 */	addi r11, r1, 0x30
/* 8031CB8C  48 04 56 3D */	bl _savegpr_24
/* 8031CB90  7C 7A 1B 78 */	mr r26, r3
/* 8031CB94  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031CB98  80 64 00 00 */	lwz r3, 0(r4)
/* 8031CB9C  80 1A 00 04 */	lwz r0, 4(r26)
/* 8031CBA0  7C 03 02 14 */	add r0, r3, r0
/* 8031CBA4  90 04 00 08 */	stw r0, 8(r4)
/* 8031CBA8  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031CBAC  83 C3 00 08 */	lwz r30, 8(r3)
/* 8031CBB0  8B 9A 00 58 */	lbz r28, 0x58(r26)
/* 8031CBB4  3B 00 00 00 */	li r24, 0
/* 8031CBB8  3B 20 00 00 */	li r25, 0
lbl_8031CBBC:
/* 8031CBBC  38 99 00 08 */	addi r4, r25, 8
/* 8031CBC0  7C 9A 22 14 */	add r4, r26, r4
/* 8031CBC4  A0 04 00 00 */	lhz r0, 0(r4)
/* 8031CBC8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031CBCC  41 82 00 0C */	beq lbl_8031CBD8
/* 8031CBD0  7F 03 C3 78 */	mr r3, r24
/* 8031CBD4  48 00 73 C1 */	bl loadTexNo__FUlRCUs
lbl_8031CBD8:
/* 8031CBD8  3B 18 00 01 */	addi r24, r24, 1
/* 8031CBDC  28 18 00 08 */	cmplwi r24, 8
/* 8031CBE0  3B 39 00 02 */	addi r25, r25, 2
/* 8031CBE4  41 80 FF D8 */	blt lbl_8031CBBC
/* 8031CBE8  3B 60 00 00 */	li r27, 0
/* 8031CBEC  3B 20 00 00 */	li r25, 0
/* 8031CBF0  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha /* 0x80434C2C@ha */
/* 8031CBF4  3B E3 4C 2C */	addi r31, r3, sTexCoordScaleTable__6J3DSys@l /* 0x80434C2C@l */
/* 8031CBF8  48 00 00 CC */	b lbl_8031CCC4
lbl_8031CBFC:
/* 8031CBFC  38 1B 00 01 */	addi r0, r27, 1
/* 8031CC00  54 00 10 3A */	slwi r0, r0, 2
/* 8031CC04  7F BA 02 14 */	add r29, r26, r0
/* 8031CC08  7F 1A CA 14 */	add r24, r26, r25
/* 8031CC0C  7F 63 DB 78 */	mr r3, r27
/* 8031CC10  88 98 00 18 */	lbz r4, 0x18(r24)
/* 8031CC14  88 B8 00 19 */	lbz r5, 0x19(r24)
/* 8031CC18  88 D8 00 1A */	lbz r6, 0x1a(r24)
/* 8031CC1C  88 FD 00 18 */	lbz r7, 0x18(r29)
/* 8031CC20  89 1D 00 19 */	lbz r8, 0x19(r29)
/* 8031CC24  89 3D 00 1A */	lbz r9, 0x1a(r29)
/* 8031CC28  4B FF 24 E1 */	bl J3DGDSetTevOrder__F13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 8031CC2C  88 18 00 19 */	lbz r0, 0x19(r24)
/* 8031CC30  54 00 1E B8 */	rlwinm r0, r0, 3, 0x1a, 0x1c
/* 8031CC34  7D 1F 02 14 */	add r8, r31, r0
/* 8031CC38  88 18 00 18 */	lbz r0, 0x18(r24)
/* 8031CC3C  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031CC40  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031CC44  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031CC48  20 00 00 01 */	subfic r0, r0, 1
/* 8031CC4C  7C 00 00 34 */	cntlzw r0, r0
/* 8031CC50  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031CC54  38 C0 00 00 */	li r6, 0
/* 8031CC58  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031CC5C  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031CC60  20 00 00 01 */	subfic r0, r0, 1
/* 8031CC64  7C 00 00 34 */	cntlzw r0, r0
/* 8031CC68  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031CC6C  39 20 00 00 */	li r9, 0
/* 8031CC70  4B FF 15 C5 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031CC74  88 1D 00 19 */	lbz r0, 0x19(r29)
/* 8031CC78  54 00 1E B8 */	rlwinm r0, r0, 3, 0x1a, 0x1c
/* 8031CC7C  7D 1F 02 14 */	add r8, r31, r0
/* 8031CC80  88 1D 00 18 */	lbz r0, 0x18(r29)
/* 8031CC84  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031CC88  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031CC8C  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031CC90  20 00 00 01 */	subfic r0, r0, 1
/* 8031CC94  7C 00 00 34 */	cntlzw r0, r0
/* 8031CC98  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031CC9C  38 C0 00 00 */	li r6, 0
/* 8031CCA0  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031CCA4  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031CCA8  20 00 00 01 */	subfic r0, r0, 1
/* 8031CCAC  7C 00 00 34 */	cntlzw r0, r0
/* 8031CCB0  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031CCB4  39 20 00 00 */	li r9, 0
/* 8031CCB8  4B FF 15 7D */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031CCBC  3B 7B 00 02 */	addi r27, r27, 2
/* 8031CCC0  3B 39 00 08 */	addi r25, r25, 8
lbl_8031CCC4:
/* 8031CCC4  7C 1B E0 40 */	cmplw r27, r28
/* 8031CCC8  41 80 FF 34 */	blt lbl_8031CBFC
/* 8031CCCC  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031CCD0  80 03 00 08 */	lwz r0, 8(r3)
/* 8031CCD4  7F C3 F3 78 */	mr r3, r30
/* 8031CCD8  7C 9E 00 50 */	subf r4, r30, r0
/* 8031CCDC  48 01 E9 01 */	bl DCStoreRange
/* 8031CCE0  39 61 00 30 */	addi r11, r1, 0x30
/* 8031CCE4  48 04 55 31 */	bl _restgpr_24
/* 8031CCE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8031CCEC  7C 08 03 A6 */	mtlr r0
/* 8031CCF0  38 21 00 30 */	addi r1, r1, 0x30
/* 8031CCF4  4E 80 00 20 */	blr 
