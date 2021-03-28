lbl_802DE2A8:
/* 802DE2A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE2AC  7C 08 02 A6 */	mflr r0
/* 802DE2B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE2B4  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE2B8  48 08 3F 25 */	bl _savegpr_29
/* 802DE2BC  7C 7F 1B 78 */	mr r31, r3
/* 802DE2C0  28 04 00 00 */	cmplwi r4, 0
/* 802DE2C4  41 82 01 70 */	beq lbl_802DE434
/* 802DE2C8  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802DE2CC  28 00 00 10 */	cmplwi r0, 0x10
/* 802DE2D0  40 80 01 64 */	bge lbl_802DE434
/* 802DE2D4  90 9F 00 20 */	stw r4, 0x20(r31)
/* 802DE2D8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE2DC  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802DE2E0  7C 03 02 14 */	add r0, r3, r0
/* 802DE2E4  90 1F 00 24 */	stw r0, 0x24(r31)
/* 802DE2E8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE2EC  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802DE2F0  28 00 00 00 */	cmplwi r0, 0
/* 802DE2F4  40 82 00 0C */	bne lbl_802DE300
/* 802DE2F8  38 03 00 20 */	addi r0, r3, 0x20
/* 802DE2FC  90 1F 00 24 */	stw r0, 0x24(r31)
lbl_802DE300:
/* 802DE300  38 00 00 00 */	li r0, 0
/* 802DE304  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 802DE308  98 1F 00 3A */	stb r0, 0x3a(r31)
/* 802DE30C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE310  88 03 00 06 */	lbz r0, 6(r3)
/* 802DE314  98 1F 00 30 */	stb r0, 0x30(r31)
/* 802DE318  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE31C  88 03 00 07 */	lbz r0, 7(r3)
/* 802DE320  98 1F 00 31 */	stb r0, 0x31(r31)
/* 802DE324  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE328  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802DE32C  98 1F 00 32 */	stb r0, 0x32(r31)
/* 802DE330  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE334  88 03 00 15 */	lbz r0, 0x15(r3)
/* 802DE338  98 1F 00 33 */	stb r0, 0x33(r31)
/* 802DE33C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE340  88 03 00 16 */	lbz r0, 0x16(r3)
/* 802DE344  7C 00 07 74 */	extsb r0, r0
/* 802DE348  B0 1F 00 34 */	sth r0, 0x34(r31)
/* 802DE34C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE350  88 03 00 17 */	lbz r0, 0x17(r3)
/* 802DE354  7C 00 07 74 */	extsb r0, r0
/* 802DE358  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 802DE35C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802DE360  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 802DE364  B0 1F 00 38 */	sth r0, 0x38(r31)
/* 802DE368  81 1F 00 20 */	lwz r8, 0x20(r31)
/* 802DE36C  A0 E8 00 0A */	lhz r7, 0xa(r8)
/* 802DE370  28 07 00 00 */	cmplwi r7, 0
/* 802DE374  40 82 00 10 */	bne lbl_802DE384
/* 802DE378  7F E3 FB 78 */	mr r3, r31
/* 802DE37C  48 00 02 DD */	bl initTexObj__10JUTTextureFv
/* 802DE380  48 00 00 B4 */	b lbl_802DE434
lbl_802DE384:
/* 802DE384  28 07 01 00 */	cmplwi r7, 0x100
/* 802DE388  40 81 00 24 */	ble lbl_802DE3AC
/* 802DE38C  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 802DE390  54 A0 F0 02 */	slwi r0, r5, 0x1e
/* 802DE394  54 63 0F FE */	srwi r3, r3, 0x1f
/* 802DE398  7C 03 00 50 */	subf r0, r3, r0
/* 802DE39C  54 00 10 3E */	rotlwi r0, r0, 2
/* 802DE3A0  7C 60 1A 14 */	add r3, r0, r3
/* 802DE3A4  3B A3 00 10 */	addi r29, r3, 0x10
/* 802DE3A8  48 00 00 08 */	b lbl_802DE3B0
lbl_802DE3AC:
/* 802DE3AC  54 BD 06 3E */	clrlwi r29, r5, 0x18
lbl_802DE3B0:
/* 802DE3B0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 802DE3B4  28 03 00 00 */	cmplwi r3, 0
/* 802DE3B8  41 82 00 10 */	beq lbl_802DE3C8
/* 802DE3BC  88 1F 00 3B */	lbz r0, 0x3b(r31)
/* 802DE3C0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802DE3C4  40 82 00 4C */	bne lbl_802DE410
lbl_802DE3C8:
/* 802DE3C8  38 60 00 18 */	li r3, 0x18
/* 802DE3CC  4B FF 08 81 */	bl __nw__FUl
/* 802DE3D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DE3D4  41 82 00 24 */	beq lbl_802DE3F8
/* 802DE3D8  81 1F 00 20 */	lwz r8, 0x20(r31)
/* 802DE3DC  7F A4 EB 78 */	mr r4, r29
/* 802DE3E0  88 A8 00 09 */	lbz r5, 9(r8)
/* 802DE3E4  88 C8 00 01 */	lbz r6, 1(r8)
/* 802DE3E8  A0 E8 00 0A */	lhz r7, 0xa(r8)
/* 802DE3EC  80 08 00 0C */	lwz r0, 0xc(r8)
/* 802DE3F0  7D 08 02 14 */	add r8, r8, r0
/* 802DE3F4  48 00 05 29 */	bl storeTLUT__10JUTPaletteF7_GXTlut10_GXTlutFmt15JUTTransparencyUsPv
lbl_802DE3F8:
/* 802DE3F8  93 DF 00 28 */	stw r30, 0x28(r31)
/* 802DE3FC  88 1F 00 3B */	lbz r0, 0x3b(r31)
/* 802DE400  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 802DE404  60 00 00 02 */	ori r0, r0, 2
/* 802DE408  98 1F 00 3B */	stb r0, 0x3b(r31)
/* 802DE40C  48 00 00 1C */	b lbl_802DE428
lbl_802DE410:
/* 802DE410  7F A4 EB 78 */	mr r4, r29
/* 802DE414  88 A8 00 09 */	lbz r5, 9(r8)
/* 802DE418  88 C8 00 01 */	lbz r6, 1(r8)
/* 802DE41C  80 08 00 0C */	lwz r0, 0xc(r8)
/* 802DE420  7D 08 02 14 */	add r8, r8, r0
/* 802DE424  48 00 04 F9 */	bl storeTLUT__10JUTPaletteF7_GXTlut10_GXTlutFmt15JUTTransparencyUsPv
lbl_802DE428:
/* 802DE428  7F E3 FB 78 */	mr r3, r31
/* 802DE42C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 802DE430  48 00 01 81 */	bl attachPalette__10JUTTextureFP10JUTPalette
lbl_802DE434:
/* 802DE434  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE438  48 08 3D F1 */	bl _restgpr_29
/* 802DE43C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE440  7C 08 03 A6 */	mtlr r0
/* 802DE444  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE448  4E 80 00 20 */	blr 
