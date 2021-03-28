lbl_80BEEDE4:
/* 80BEEDE4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BEEDE8  7C 08 02 A6 */	mflr r0
/* 80BEEDEC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BEEDF0  39 61 00 60 */	addi r11, r1, 0x60
/* 80BEEDF4  4B 77 33 DC */	b _savegpr_26
/* 80BEEDF8  7C 7A 1B 78 */	mr r26, r3
/* 80BEEDFC  80 63 0D 50 */	lwz r3, 0xd50(r3)
/* 80BEEE00  38 81 00 30 */	addi r4, r1, 0x30
/* 80BEEE04  38 A1 00 08 */	addi r5, r1, 8
/* 80BEEE08  4B 46 C4 F0 */	b dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf
/* 80BEEE0C  38 61 00 18 */	addi r3, r1, 0x18
/* 80BEEE10  38 81 00 30 */	addi r4, r1, 0x30
/* 80BEEE14  4B 67 81 34 */	b normalizeZP__4cXyzFv
/* 80BEEE18  38 61 00 30 */	addi r3, r1, 0x30
/* 80BEEE1C  7C 64 1B 78 */	mr r4, r3
/* 80BEEE20  C0 21 00 08 */	lfs f1, 8(r1)
/* 80BEEE24  C0 1A 0D 88 */	lfs f0, 0xd88(r26)
/* 80BEEE28  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BEEE2C  4B 75 82 AC */	b PSVECScale
/* 80BEEE30  3B FA 05 40 */	addi r31, r26, 0x540
/* 80BEEE34  3B DA 07 00 */	addi r30, r26, 0x700
/* 80BEEE38  7F DD F3 78 */	mr r29, r30
/* 80BEEE3C  3B 9A 0B A0 */	addi r28, r26, 0xba0
/* 80BEEE40  3B 60 00 00 */	li r27, 0
lbl_80BEEE44:
/* 80BEEE44  38 61 00 0C */	addi r3, r1, 0xc
/* 80BEEE48  7F 44 D3 78 */	mr r4, r26
/* 80BEEE4C  7F E5 FB 78 */	mr r5, r31
/* 80BEEE50  7F C6 F3 78 */	mr r6, r30
/* 80BEEE54  38 E1 00 30 */	addi r7, r1, 0x30
/* 80BEEE58  7F 68 DB 78 */	mr r8, r27
/* 80BEEE5C  48 00 04 1D */	bl calcFlagFactor__12FlagCloth2_cFP4cXyzP4cXyzP4cXyzi
/* 80BEEE60  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BEEE64  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BEEE68  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BEEE6C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BEEE70  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BEEE74  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BEEE78  7F 83 E3 78 */	mr r3, r28
/* 80BEEE7C  38 81 00 24 */	addi r4, r1, 0x24
/* 80BEEE80  7F 85 E3 78 */	mr r5, r28
/* 80BEEE84  4B 75 82 0C */	b PSVECAdd
/* 80BEEE88  7F 83 E3 78 */	mr r3, r28
/* 80BEEE8C  7F 84 E3 78 */	mr r4, r28
/* 80BEEE90  C0 3A 0D 8C */	lfs f1, 0xd8c(r26)
/* 80BEEE94  4B 75 82 44 */	b PSVECScale
/* 80BEEE98  3B 7B 00 01 */	addi r27, r27, 1
/* 80BEEE9C  2C 1B 00 24 */	cmpwi r27, 0x24
/* 80BEEEA0  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80BEEEA4  41 80 FF A0 */	blt lbl_80BEEE44
/* 80BEEEA8  3B DA 0B A0 */	addi r30, r26, 0xba0
/* 80BEEEAC  3B 60 00 00 */	li r27, 0
lbl_80BEEEB0:
/* 80BEEEB0  7F E3 FB 78 */	mr r3, r31
/* 80BEEEB4  7F C4 F3 78 */	mr r4, r30
/* 80BEEEB8  7F E5 FB 78 */	mr r5, r31
/* 80BEEEBC  4B 75 81 D4 */	b PSVECAdd
/* 80BEEEC0  3B 7B 00 01 */	addi r27, r27, 1
/* 80BEEEC4  2C 1B 00 24 */	cmpwi r27, 0x24
/* 80BEEEC8  3B FF 00 0C */	addi r31, r31, 0xc
/* 80BEEECC  3B DE 00 0C */	addi r30, r30, 0xc
/* 80BEEED0  41 80 FF E0 */	blt lbl_80BEEEB0
/* 80BEEED4  3B 60 00 00 */	li r27, 0
lbl_80BEEED8:
/* 80BEEED8  7F 43 D3 78 */	mr r3, r26
/* 80BEEEDC  7F A4 EB 78 */	mr r4, r29
/* 80BEEEE0  7F 65 DB 78 */	mr r5, r27
/* 80BEEEE4  48 00 00 91 */	bl calcFlagNormal__12FlagCloth2_cFP4cXyzi
/* 80BEEEE8  3B 7B 00 01 */	addi r27, r27, 1
/* 80BEEEEC  2C 1B 00 24 */	cmpwi r27, 0x24
/* 80BEEEF0  3B BD 00 0C */	addi r29, r29, 0xc
/* 80BEEEF4  41 80 FF E4 */	blt lbl_80BEEED8
/* 80BEEEF8  38 9A 07 00 */	addi r4, r26, 0x700
/* 80BEEEFC  38 7A 08 C0 */	addi r3, r26, 0x8c0
/* 80BEEF00  38 00 00 24 */	li r0, 0x24
/* 80BEEF04  7C 09 03 A6 */	mtctr r0
lbl_80BEEF08:
/* 80BEEF08  C0 04 00 08 */	lfs f0, 8(r4)
/* 80BEEF0C  FC 40 00 50 */	fneg f2, f0
/* 80BEEF10  C0 04 00 04 */	lfs f0, 4(r4)
/* 80BEEF14  FC 20 00 50 */	fneg f1, f0
/* 80BEEF18  C0 04 00 00 */	lfs f0, 0(r4)
/* 80BEEF1C  FC 00 00 50 */	fneg f0, f0
/* 80BEEF20  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BEEF24  D0 23 00 04 */	stfs f1, 4(r3)
/* 80BEEF28  D0 43 00 08 */	stfs f2, 8(r3)
/* 80BEEF2C  38 84 00 0C */	addi r4, r4, 0xc
/* 80BEEF30  38 63 00 0C */	addi r3, r3, 0xc
/* 80BEEF34  42 00 FF D4 */	bdnz lbl_80BEEF08
/* 80BEEF38  38 7A 05 40 */	addi r3, r26, 0x540
/* 80BEEF3C  38 80 01 B0 */	li r4, 0x1b0
/* 80BEEF40  4B 74 C6 F8 */	b DCStoreRangeNoSync
/* 80BEEF44  38 7A 07 00 */	addi r3, r26, 0x700
/* 80BEEF48  38 80 01 B0 */	li r4, 0x1b0
/* 80BEEF4C  4B 74 C6 EC */	b DCStoreRangeNoSync
/* 80BEEF50  38 7A 08 C0 */	addi r3, r26, 0x8c0
/* 80BEEF54  38 80 01 B0 */	li r4, 0x1b0
/* 80BEEF58  4B 74 C6 E0 */	b DCStoreRangeNoSync
/* 80BEEF5C  39 61 00 60 */	addi r11, r1, 0x60
/* 80BEEF60  4B 77 32 BC */	b _restgpr_26
/* 80BEEF64  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BEEF68  7C 08 03 A6 */	mtlr r0
/* 80BEEF6C  38 21 00 60 */	addi r1, r1, 0x60
/* 80BEEF70  4E 80 00 20 */	blr 
