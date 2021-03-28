lbl_80BECD98:
/* 80BECD98  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BECD9C  7C 08 02 A6 */	mflr r0
/* 80BECDA0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BECDA4  39 61 00 60 */	addi r11, r1, 0x60
/* 80BECDA8  4B 77 54 28 */	b _savegpr_26
/* 80BECDAC  7C 7A 1B 78 */	mr r26, r3
/* 80BECDB0  80 63 09 38 */	lwz r3, 0x938(r3)
/* 80BECDB4  38 81 00 30 */	addi r4, r1, 0x30
/* 80BECDB8  38 A1 00 08 */	addi r5, r1, 8
/* 80BECDBC  4B 46 E5 3C */	b dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf
/* 80BECDC0  38 61 00 18 */	addi r3, r1, 0x18
/* 80BECDC4  38 81 00 30 */	addi r4, r1, 0x30
/* 80BECDC8  4B 67 A1 80 */	b normalizeZP__4cXyzFv
/* 80BECDCC  38 61 00 30 */	addi r3, r1, 0x30
/* 80BECDD0  7C 64 1B 78 */	mr r4, r3
/* 80BECDD4  C0 21 00 08 */	lfs f1, 8(r1)
/* 80BECDD8  C0 1A 09 74 */	lfs f0, 0x974(r26)
/* 80BECDDC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BECDE0  4B 75 A2 F8 */	b PSVECScale
/* 80BECDE4  3B FA 05 40 */	addi r31, r26, 0x540
/* 80BECDE8  3B DA 06 40 */	addi r30, r26, 0x640
/* 80BECDEC  7F DD F3 78 */	mr r29, r30
/* 80BECDF0  3B 9A 08 3C */	addi r28, r26, 0x83c
/* 80BECDF4  3B 60 00 00 */	li r27, 0
lbl_80BECDF8:
/* 80BECDF8  38 61 00 0C */	addi r3, r1, 0xc
/* 80BECDFC  7F 44 D3 78 */	mr r4, r26
/* 80BECE00  7F E5 FB 78 */	mr r5, r31
/* 80BECE04  7F C6 F3 78 */	mr r6, r30
/* 80BECE08  38 E1 00 30 */	addi r7, r1, 0x30
/* 80BECE0C  7F 68 DB 78 */	mr r8, r27
/* 80BECE10  4B FF F9 BD */	bl calcFlagFactor__11FlagCloth_cFP4cXyzP4cXyzP4cXyzi
/* 80BECE14  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BECE18  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BECE1C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BECE20  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BECE24  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BECE28  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BECE2C  7F 83 E3 78 */	mr r3, r28
/* 80BECE30  38 81 00 24 */	addi r4, r1, 0x24
/* 80BECE34  7F 85 E3 78 */	mr r5, r28
/* 80BECE38  4B 75 A2 58 */	b PSVECAdd
/* 80BECE3C  7F 83 E3 78 */	mr r3, r28
/* 80BECE40  7F 84 E3 78 */	mr r4, r28
/* 80BECE44  C0 3A 09 78 */	lfs f1, 0x978(r26)
/* 80BECE48  4B 75 A2 90 */	b PSVECScale
/* 80BECE4C  3B 7B 00 01 */	addi r27, r27, 1
/* 80BECE50  2C 1B 00 15 */	cmpwi r27, 0x15
/* 80BECE54  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80BECE58  41 80 FF A0 */	blt lbl_80BECDF8
/* 80BECE5C  3B DA 08 3C */	addi r30, r26, 0x83c
/* 80BECE60  3B 60 00 00 */	li r27, 0
lbl_80BECE64:
/* 80BECE64  7F E3 FB 78 */	mr r3, r31
/* 80BECE68  7F C4 F3 78 */	mr r4, r30
/* 80BECE6C  7F E5 FB 78 */	mr r5, r31
/* 80BECE70  4B 75 A2 20 */	b PSVECAdd
/* 80BECE74  3B 7B 00 01 */	addi r27, r27, 1
/* 80BECE78  2C 1B 00 15 */	cmpwi r27, 0x15
/* 80BECE7C  3B FF 00 0C */	addi r31, r31, 0xc
/* 80BECE80  3B DE 00 0C */	addi r30, r30, 0xc
/* 80BECE84  41 80 FF E0 */	blt lbl_80BECE64
/* 80BECE88  3B 60 00 00 */	li r27, 0
lbl_80BECE8C:
/* 80BECE8C  7F 43 D3 78 */	mr r3, r26
/* 80BECE90  7F A4 EB 78 */	mr r4, r29
/* 80BECE94  7F 65 DB 78 */	mr r5, r27
/* 80BECE98  4B FF FC 49 */	bl calcFlagNormal__11FlagCloth_cFP4cXyzi
/* 80BECE9C  3B 7B 00 01 */	addi r27, r27, 1
/* 80BECEA0  2C 1B 00 15 */	cmpwi r27, 0x15
/* 80BECEA4  3B BD 00 0C */	addi r29, r29, 0xc
/* 80BECEA8  41 80 FF E4 */	blt lbl_80BECE8C
/* 80BECEAC  38 9A 06 40 */	addi r4, r26, 0x640
/* 80BECEB0  38 7A 07 40 */	addi r3, r26, 0x740
/* 80BECEB4  38 00 00 15 */	li r0, 0x15
/* 80BECEB8  7C 09 03 A6 */	mtctr r0
lbl_80BECEBC:
/* 80BECEBC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80BECEC0  FC 40 00 50 */	fneg f2, f0
/* 80BECEC4  C0 04 00 04 */	lfs f0, 4(r4)
/* 80BECEC8  FC 20 00 50 */	fneg f1, f0
/* 80BECECC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80BECED0  FC 00 00 50 */	fneg f0, f0
/* 80BECED4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BECED8  D0 23 00 04 */	stfs f1, 4(r3)
/* 80BECEDC  D0 43 00 08 */	stfs f2, 8(r3)
/* 80BECEE0  38 84 00 0C */	addi r4, r4, 0xc
/* 80BECEE4  38 63 00 0C */	addi r3, r3, 0xc
/* 80BECEE8  42 00 FF D4 */	bdnz lbl_80BECEBC
/* 80BECEEC  7F 43 D3 78 */	mr r3, r26
/* 80BECEF0  4B FF FD F5 */	bl setCcSphere__11FlagCloth_cFv
/* 80BECEF4  38 7A 05 40 */	addi r3, r26, 0x540
/* 80BECEF8  38 80 00 FC */	li r4, 0xfc
/* 80BECEFC  4B 74 E7 3C */	b DCStoreRangeNoSync
/* 80BECF00  38 7A 06 40 */	addi r3, r26, 0x640
/* 80BECF04  38 80 00 FC */	li r4, 0xfc
/* 80BECF08  4B 74 E7 30 */	b DCStoreRangeNoSync
/* 80BECF0C  38 7A 07 40 */	addi r3, r26, 0x740
/* 80BECF10  38 80 00 FC */	li r4, 0xfc
/* 80BECF14  4B 74 E7 24 */	b DCStoreRangeNoSync
/* 80BECF18  39 61 00 60 */	addi r11, r1, 0x60
/* 80BECF1C  4B 77 53 00 */	b _restgpr_26
/* 80BECF20  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BECF24  7C 08 03 A6 */	mtlr r0
/* 80BECF28  38 21 00 60 */	addi r1, r1, 0x60
/* 80BECF2C  4E 80 00 20 */	blr 
