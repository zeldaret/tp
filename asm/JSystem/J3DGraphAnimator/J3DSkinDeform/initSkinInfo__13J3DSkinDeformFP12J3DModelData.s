lbl_8032C9B0:
/* 8032C9B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032C9B4  7C 08 02 A6 */	mflr r0
/* 8032C9B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032C9BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8032C9C0  48 03 58 19 */	bl _savegpr_28
/* 8032C9C4  7C 7C 1B 78 */	mr r28, r3
/* 8032C9C8  7C 9D 23 78 */	mr r29, r4
/* 8032C9CC  A0 04 00 2E */	lhz r0, 0x2e(r4)
/* 8032C9D0  80 E4 00 34 */	lwz r7, 0x34(r4)
/* 8032C9D4  81 04 00 38 */	lwz r8, 0x38(r4)
/* 8032C9D8  39 20 00 00 */	li r9, 0
/* 8032C9DC  39 40 00 00 */	li r10, 0
/* 8032C9E0  38 60 00 00 */	li r3, 0
/* 8032C9E4  3C 80 80 43 */	lis r4, sWorkArea_WEvlpMixMtx__13J3DSkinDeform@ha
/* 8032C9E8  38 C4 72 18 */	addi r6, r4, sWorkArea_WEvlpMixMtx__13J3DSkinDeform@l
/* 8032C9EC  3C 80 80 44 */	lis r4, sWorkArea_WEvlpMixWeight__13J3DSkinDeform@ha
/* 8032C9F0  38 A4 82 18 */	addi r5, r4, sWorkArea_WEvlpMixWeight__13J3DSkinDeform@l
/* 8032C9F4  7C 09 03 A6 */	mtctr r0
/* 8032C9F8  2C 00 00 00 */	cmpwi r0, 0
/* 8032C9FC  40 81 00 38 */	ble lbl_8032CA34
lbl_8032CA00:
/* 8032CA00  55 20 08 3C */	slwi r0, r9, 1
/* 8032CA04  7C 07 02 14 */	add r0, r7, r0
/* 8032CA08  7C 06 19 2E */	stwx r0, r6, r3
/* 8032CA0C  55 20 10 3A */	slwi r0, r9, 2
/* 8032CA10  7C 08 02 14 */	add r0, r8, r0
/* 8032CA14  7C 05 19 2E */	stwx r0, r5, r3
/* 8032CA18  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 8032CA1C  55 40 04 3E */	clrlwi r0, r10, 0x10
/* 8032CA20  7C 04 00 AE */	lbzx r0, r4, r0
/* 8032CA24  7D 29 02 14 */	add r9, r9, r0
/* 8032CA28  39 4A 00 01 */	addi r10, r10, 1
/* 8032CA2C  38 63 00 04 */	addi r3, r3, 4
/* 8032CA30  42 00 FF D0 */	bdnz lbl_8032CA00
lbl_8032CA34:
/* 8032CA34  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 8032CA38  28 00 00 00 */	cmplwi r0, 0
/* 8032CA3C  41 82 00 30 */	beq lbl_8032CA6C
/* 8032CA40  54 1E 04 3E */	clrlwi r30, r0, 0x10
/* 8032CA44  1C 7E 00 14 */	mulli r3, r30, 0x14
/* 8032CA48  38 63 00 10 */	addi r3, r3, 0x10
/* 8032CA4C  4B FA 22 79 */	bl __nwa__FUl
/* 8032CA50  3C 80 80 33 */	lis r4, __ct__12J3DSkinNListFv@ha
/* 8032CA54  38 84 C6 E4 */	addi r4, r4, __ct__12J3DSkinNListFv@l
/* 8032CA58  38 A0 00 00 */	li r5, 0
/* 8032CA5C  38 C0 00 14 */	li r6, 0x14
/* 8032CA60  7F C7 F3 78 */	mr r7, r30
/* 8032CA64  48 03 54 B1 */	bl __construct_new_array
/* 8032CA68  90 7C 00 24 */	stw r3, 0x24(r28)
lbl_8032CA6C:
/* 8032CA6C  38 60 00 00 */	li r3, 0
/* 8032CA70  38 80 00 00 */	li r4, 0
/* 8032CA74  48 00 00 AC */	b lbl_8032CB20
lbl_8032CA78:
/* 8032CA78  80 BC 00 04 */	lwz r5, 4(r28)
/* 8032CA7C  7C C5 22 2E */	lhzx r6, r5, r4
/* 8032CA80  28 06 FF FF */	cmplwi r6, 0xffff
/* 8032CA84  41 82 00 94 */	beq lbl_8032CB18
/* 8032CA88  80 BD 00 48 */	lwz r5, 0x48(r29)
/* 8032CA8C  7C 05 30 AE */	lbzx r0, r5, r6
/* 8032CA90  28 00 00 00 */	cmplwi r0, 0
/* 8032CA94  40 82 00 2C */	bne lbl_8032CAC0
/* 8032CA98  80 BD 00 4C */	lwz r5, 0x4c(r29)
/* 8032CA9C  54 C0 08 3C */	slwi r0, r6, 1
/* 8032CAA0  7C 05 02 2E */	lhzx r0, r5, r0
/* 8032CAA4  80 FC 00 24 */	lwz r7, 0x24(r28)
/* 8032CAA8  1C A0 00 14 */	mulli r5, r0, 0x14
/* 8032CAAC  38 C5 00 10 */	addi r6, r5, 0x10
/* 8032CAB0  7C A7 32 2E */	lhzx r5, r7, r6
/* 8032CAB4  38 05 00 01 */	addi r0, r5, 1
/* 8032CAB8  7C 07 33 2E */	sthx r0, r7, r6
/* 8032CABC  48 00 00 5C */	b lbl_8032CB18
lbl_8032CAC0:
/* 8032CAC0  80 BD 00 4C */	lwz r5, 0x4c(r29)
/* 8032CAC4  54 C0 08 3C */	slwi r0, r6, 1
/* 8032CAC8  7C 05 02 2E */	lhzx r0, r5, r0
/* 8032CACC  80 BD 00 30 */	lwz r5, 0x30(r29)
/* 8032CAD0  7C C5 00 AE */	lbzx r6, r5, r0
/* 8032CAD4  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8032CAD8  3C A0 80 43 */	lis r5, sWorkArea_WEvlpMixMtx__13J3DSkinDeform@ha
/* 8032CADC  38 A5 72 18 */	addi r5, r5, sWorkArea_WEvlpMixMtx__13J3DSkinDeform@l
/* 8032CAE0  7D 25 00 2E */	lwzx r9, r5, r0
/* 8032CAE4  38 A0 00 00 */	li r5, 0
/* 8032CAE8  7C C9 03 A6 */	mtctr r6
/* 8032CAEC  2C 06 00 00 */	cmpwi r6, 0
/* 8032CAF0  40 81 00 28 */	ble lbl_8032CB18
lbl_8032CAF4:
/* 8032CAF4  81 1C 00 24 */	lwz r8, 0x24(r28)
/* 8032CAF8  7C 09 2A 2E */	lhzx r0, r9, r5
/* 8032CAFC  1C C0 00 14 */	mulli r6, r0, 0x14
/* 8032CB00  38 E6 00 10 */	addi r7, r6, 0x10
/* 8032CB04  7C C8 3A 2E */	lhzx r6, r8, r7
/* 8032CB08  38 06 00 01 */	addi r0, r6, 1
/* 8032CB0C  7C 08 3B 2E */	sthx r0, r8, r7
/* 8032CB10  38 A5 00 02 */	addi r5, r5, 2
/* 8032CB14  42 00 FF E0 */	bdnz lbl_8032CAF4
lbl_8032CB18:
/* 8032CB18  38 63 00 01 */	addi r3, r3, 1
/* 8032CB1C  38 84 00 02 */	addi r4, r4, 2
lbl_8032CB20:
/* 8032CB20  80 1D 00 88 */	lwz r0, 0x88(r29)
/* 8032CB24  7C 03 00 40 */	cmplw r3, r0
/* 8032CB28  41 80 FF 50 */	blt lbl_8032CA78
/* 8032CB2C  38 60 00 00 */	li r3, 0
/* 8032CB30  38 80 00 00 */	li r4, 0
/* 8032CB34  48 00 00 AC */	b lbl_8032CBE0
lbl_8032CB38:
/* 8032CB38  80 BC 00 08 */	lwz r5, 8(r28)
/* 8032CB3C  7C C5 22 2E */	lhzx r6, r5, r4
/* 8032CB40  28 06 FF FF */	cmplwi r6, 0xffff
/* 8032CB44  41 82 00 94 */	beq lbl_8032CBD8
/* 8032CB48  80 BD 00 48 */	lwz r5, 0x48(r29)
/* 8032CB4C  7C 05 30 AE */	lbzx r0, r5, r6
/* 8032CB50  28 00 00 00 */	cmplwi r0, 0
/* 8032CB54  40 82 00 2C */	bne lbl_8032CB80
/* 8032CB58  80 BD 00 4C */	lwz r5, 0x4c(r29)
/* 8032CB5C  54 C0 08 3C */	slwi r0, r6, 1
/* 8032CB60  7C 05 02 2E */	lhzx r0, r5, r0
/* 8032CB64  80 FC 00 24 */	lwz r7, 0x24(r28)
/* 8032CB68  1C A0 00 14 */	mulli r5, r0, 0x14
/* 8032CB6C  38 C5 00 12 */	addi r6, r5, 0x12
/* 8032CB70  7C A7 32 2E */	lhzx r5, r7, r6
/* 8032CB74  38 05 00 01 */	addi r0, r5, 1
/* 8032CB78  7C 07 33 2E */	sthx r0, r7, r6
/* 8032CB7C  48 00 00 5C */	b lbl_8032CBD8
lbl_8032CB80:
/* 8032CB80  80 BD 00 4C */	lwz r5, 0x4c(r29)
/* 8032CB84  54 C0 08 3C */	slwi r0, r6, 1
/* 8032CB88  7C 05 02 2E */	lhzx r0, r5, r0
/* 8032CB8C  80 BD 00 30 */	lwz r5, 0x30(r29)
/* 8032CB90  7C C5 00 AE */	lbzx r6, r5, r0
/* 8032CB94  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8032CB98  3C A0 80 43 */	lis r5, sWorkArea_WEvlpMixMtx__13J3DSkinDeform@ha
/* 8032CB9C  38 A5 72 18 */	addi r5, r5, sWorkArea_WEvlpMixMtx__13J3DSkinDeform@l
/* 8032CBA0  7D 25 00 2E */	lwzx r9, r5, r0
/* 8032CBA4  38 A0 00 00 */	li r5, 0
/* 8032CBA8  7C C9 03 A6 */	mtctr r6
/* 8032CBAC  2C 06 00 00 */	cmpwi r6, 0
/* 8032CBB0  40 81 00 28 */	ble lbl_8032CBD8
lbl_8032CBB4:
/* 8032CBB4  81 1C 00 24 */	lwz r8, 0x24(r28)
/* 8032CBB8  7C 09 2A 2E */	lhzx r0, r9, r5
/* 8032CBBC  1C C0 00 14 */	mulli r6, r0, 0x14
/* 8032CBC0  38 E6 00 12 */	addi r7, r6, 0x12
/* 8032CBC4  7C C8 3A 2E */	lhzx r6, r8, r7
/* 8032CBC8  38 06 00 01 */	addi r0, r6, 1
/* 8032CBCC  7C 08 3B 2E */	sthx r0, r8, r7
/* 8032CBD0  38 A5 00 02 */	addi r5, r5, 2
/* 8032CBD4  42 00 FF E0 */	bdnz lbl_8032CBB4
lbl_8032CBD8:
/* 8032CBD8  38 63 00 01 */	addi r3, r3, 1
/* 8032CBDC  38 84 00 02 */	addi r4, r4, 2
lbl_8032CBE0:
/* 8032CBE0  80 1D 00 8C */	lwz r0, 0x8c(r29)
/* 8032CBE4  7C 03 00 40 */	cmplw r3, r0
/* 8032CBE8  41 80 FF 50 */	blt lbl_8032CB38
/* 8032CBEC  3B C0 00 00 */	li r30, 0
/* 8032CBF0  48 00 00 BC */	b lbl_8032CCAC
lbl_8032CBF4:
/* 8032CBF4  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 8032CBF8  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8032CBFC  1F E0 00 14 */	mulli r31, r0, 0x14
/* 8032CC00  38 1F 00 10 */	addi r0, r31, 0x10
/* 8032CC04  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032CC08  28 00 00 00 */	cmplwi r0, 0
/* 8032CC0C  41 82 00 44 */	beq lbl_8032CC50
/* 8032CC10  54 03 0B FC */	rlwinm r3, r0, 1, 0xf, 0x1e
/* 8032CC14  4B FA 20 B1 */	bl __nwa__FUl
/* 8032CC18  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 8032CC1C  7C 64 F9 2E */	stwx r3, r4, r31
/* 8032CC20  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 8032CC24  38 1F 00 10 */	addi r0, r31, 0x10
/* 8032CC28  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032CC2C  54 03 10 3A */	slwi r3, r0, 2
/* 8032CC30  4B FA 20 95 */	bl __nwa__FUl
/* 8032CC34  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 8032CC38  38 1F 00 08 */	addi r0, r31, 8
/* 8032CC3C  7C 64 01 2E */	stwx r3, r4, r0
/* 8032CC40  38 80 00 00 */	li r4, 0
/* 8032CC44  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 8032CC48  38 1F 00 10 */	addi r0, r31, 0x10
/* 8032CC4C  7C 83 03 2E */	sthx r4, r3, r0
lbl_8032CC50:
/* 8032CC50  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 8032CC54  38 1F 00 12 */	addi r0, r31, 0x12
/* 8032CC58  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032CC5C  28 00 00 00 */	cmplwi r0, 0
/* 8032CC60  41 82 00 48 */	beq lbl_8032CCA8
/* 8032CC64  54 03 0B FC */	rlwinm r3, r0, 1, 0xf, 0x1e
/* 8032CC68  4B FA 20 5D */	bl __nwa__FUl
/* 8032CC6C  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 8032CC70  38 1F 00 04 */	addi r0, r31, 4
/* 8032CC74  7C 64 01 2E */	stwx r3, r4, r0
/* 8032CC78  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 8032CC7C  38 1F 00 12 */	addi r0, r31, 0x12
/* 8032CC80  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032CC84  54 03 10 3A */	slwi r3, r0, 2
/* 8032CC88  4B FA 20 3D */	bl __nwa__FUl
/* 8032CC8C  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 8032CC90  38 1F 00 0C */	addi r0, r31, 0xc
/* 8032CC94  7C 64 01 2E */	stwx r3, r4, r0
/* 8032CC98  38 80 00 00 */	li r4, 0
/* 8032CC9C  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 8032CCA0  38 1F 00 12 */	addi r0, r31, 0x12
/* 8032CCA4  7C 83 03 2E */	sthx r4, r3, r0
lbl_8032CCA8:
/* 8032CCA8  3B DE 00 01 */	addi r30, r30, 1
lbl_8032CCAC:
/* 8032CCAC  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 8032CCB0  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 8032CCB4  7C 03 00 40 */	cmplw r3, r0
/* 8032CCB8  41 80 FF 3C */	blt lbl_8032CBF4
/* 8032CCBC  38 60 00 00 */	li r3, 0
/* 8032CCC0  38 80 00 00 */	li r4, 0
/* 8032CCC4  48 00 01 20 */	b lbl_8032CDE4
lbl_8032CCC8:
/* 8032CCC8  80 BC 00 04 */	lwz r5, 4(r28)
/* 8032CCCC  7C C5 22 2E */	lhzx r6, r5, r4
/* 8032CCD0  28 06 FF FF */	cmplwi r6, 0xffff
/* 8032CCD4  41 82 01 08 */	beq lbl_8032CDDC
/* 8032CCD8  80 BD 00 48 */	lwz r5, 0x48(r29)
/* 8032CCDC  7C 05 30 AE */	lbzx r0, r5, r6
/* 8032CCE0  28 00 00 00 */	cmplwi r0, 0
/* 8032CCE4  40 82 00 54 */	bne lbl_8032CD38
/* 8032CCE8  80 BD 00 4C */	lwz r5, 0x4c(r29)
/* 8032CCEC  54 C0 08 3C */	slwi r0, r6, 1
/* 8032CCF0  7C 05 02 2E */	lhzx r0, r5, r0
/* 8032CCF4  80 FC 00 24 */	lwz r7, 0x24(r28)
/* 8032CCF8  1D 00 00 14 */	mulli r8, r0, 0x14
/* 8032CCFC  38 A8 00 10 */	addi r5, r8, 0x10
/* 8032CD00  7C C7 2A 2E */	lhzx r6, r7, r5
/* 8032CD04  38 06 00 01 */	addi r0, r6, 1
/* 8032CD08  7C 07 2B 2E */	sthx r0, r7, r5
/* 8032CD0C  80 BC 00 24 */	lwz r5, 0x24(r28)
/* 8032CD10  7C A5 40 2E */	lwzx r5, r5, r8
/* 8032CD14  54 C0 0B FC */	rlwinm r0, r6, 1, 0xf, 0x1e
/* 8032CD18  7C 65 03 2E */	sthx r3, r5, r0
/* 8032CD1C  C0 02 CA 68 */	lfs f0, lit_1110(r2)
/* 8032CD20  80 BC 00 24 */	lwz r5, 0x24(r28)
/* 8032CD24  38 08 00 08 */	addi r0, r8, 8
/* 8032CD28  7C A5 00 2E */	lwzx r5, r5, r0
/* 8032CD2C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8032CD30  7C 05 05 2E */	stfsx f0, r5, r0
/* 8032CD34  48 00 00 A8 */	b lbl_8032CDDC
lbl_8032CD38:
/* 8032CD38  80 BD 00 4C */	lwz r5, 0x4c(r29)
/* 8032CD3C  54 C0 08 3C */	slwi r0, r6, 1
/* 8032CD40  7C 05 02 2E */	lhzx r0, r5, r0
/* 8032CD44  80 BD 00 30 */	lwz r5, 0x30(r29)
/* 8032CD48  7C E5 00 AE */	lbzx r7, r5, r0
/* 8032CD4C  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8032CD50  3C A0 80 43 */	lis r5, sWorkArea_WEvlpMixMtx__13J3DSkinDeform@ha
/* 8032CD54  38 A5 72 18 */	addi r5, r5, sWorkArea_WEvlpMixMtx__13J3DSkinDeform@l
/* 8032CD58  7D 45 00 2E */	lwzx r10, r5, r0
/* 8032CD5C  3C A0 80 44 */	lis r5, sWorkArea_WEvlpMixWeight__13J3DSkinDeform@ha
/* 8032CD60  38 A5 82 18 */	addi r5, r5, sWorkArea_WEvlpMixWeight__13J3DSkinDeform@l
/* 8032CD64  7D 65 00 2E */	lwzx r11, r5, r0
/* 8032CD68  38 A0 00 00 */	li r5, 0
/* 8032CD6C  38 C0 00 00 */	li r6, 0
/* 8032CD70  7C E9 03 A6 */	mtctr r7
/* 8032CD74  2C 07 00 00 */	cmpwi r7, 0
/* 8032CD78  40 81 00 64 */	ble lbl_8032CDDC
lbl_8032CD7C:
/* 8032CD7C  81 1C 00 24 */	lwz r8, 0x24(r28)
/* 8032CD80  7C 0A 32 2E */	lhzx r0, r10, r6
/* 8032CD84  1C E0 00 14 */	mulli r7, r0, 0x14
/* 8032CD88  38 E7 00 10 */	addi r7, r7, 0x10
/* 8032CD8C  7D 28 3A 2E */	lhzx r9, r8, r7
/* 8032CD90  38 09 00 01 */	addi r0, r9, 1
/* 8032CD94  7C 08 3B 2E */	sthx r0, r8, r7
/* 8032CD98  80 FC 00 24 */	lwz r7, 0x24(r28)
/* 8032CD9C  7C 0A 32 2E */	lhzx r0, r10, r6
/* 8032CDA0  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8032CDA4  7C E7 00 2E */	lwzx r7, r7, r0
/* 8032CDA8  55 20 0B FC */	rlwinm r0, r9, 1, 0xf, 0x1e
/* 8032CDAC  7C 67 03 2E */	sthx r3, r7, r0
/* 8032CDB0  7C 0B 2C 2E */	lfsx f0, r11, r5
/* 8032CDB4  81 1C 00 24 */	lwz r8, 0x24(r28)
/* 8032CDB8  7C 0A 32 2E */	lhzx r0, r10, r6
/* 8032CDBC  1C E0 00 14 */	mulli r7, r0, 0x14
/* 8032CDC0  38 07 00 08 */	addi r0, r7, 8
/* 8032CDC4  7C E8 00 2E */	lwzx r7, r8, r0
/* 8032CDC8  55 20 13 BA */	rlwinm r0, r9, 2, 0xe, 0x1d
/* 8032CDCC  7C 07 05 2E */	stfsx f0, r7, r0
/* 8032CDD0  38 A5 00 04 */	addi r5, r5, 4
/* 8032CDD4  38 C6 00 02 */	addi r6, r6, 2
/* 8032CDD8  42 00 FF A4 */	bdnz lbl_8032CD7C
lbl_8032CDDC:
/* 8032CDDC  38 63 00 01 */	addi r3, r3, 1
/* 8032CDE0  38 84 00 02 */	addi r4, r4, 2
lbl_8032CDE4:
/* 8032CDE4  80 1D 00 88 */	lwz r0, 0x88(r29)
/* 8032CDE8  7C 03 00 40 */	cmplw r3, r0
/* 8032CDEC  41 80 FE DC */	blt lbl_8032CCC8
/* 8032CDF0  38 60 00 00 */	li r3, 0
/* 8032CDF4  38 A0 00 00 */	li r5, 0
/* 8032CDF8  48 00 01 28 */	b lbl_8032CF20
lbl_8032CDFC:
/* 8032CDFC  80 9C 00 08 */	lwz r4, 8(r28)
/* 8032CE00  7C C4 2A 2E */	lhzx r6, r4, r5
/* 8032CE04  28 06 FF FF */	cmplwi r6, 0xffff
/* 8032CE08  41 82 01 10 */	beq lbl_8032CF18
/* 8032CE0C  80 9D 00 48 */	lwz r4, 0x48(r29)
/* 8032CE10  7C 04 30 AE */	lbzx r0, r4, r6
/* 8032CE14  28 00 00 00 */	cmplwi r0, 0
/* 8032CE18  40 82 00 58 */	bne lbl_8032CE70
/* 8032CE1C  80 9D 00 4C */	lwz r4, 0x4c(r29)
/* 8032CE20  54 C0 08 3C */	slwi r0, r6, 1
/* 8032CE24  7C 04 02 2E */	lhzx r0, r4, r0
/* 8032CE28  80 FC 00 24 */	lwz r7, 0x24(r28)
/* 8032CE2C  1D 00 00 14 */	mulli r8, r0, 0x14
/* 8032CE30  38 88 00 12 */	addi r4, r8, 0x12
/* 8032CE34  7C C7 22 2E */	lhzx r6, r7, r4
/* 8032CE38  38 06 00 01 */	addi r0, r6, 1
/* 8032CE3C  7C 07 23 2E */	sthx r0, r7, r4
/* 8032CE40  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 8032CE44  38 08 00 04 */	addi r0, r8, 4
/* 8032CE48  7C 84 00 2E */	lwzx r4, r4, r0
/* 8032CE4C  54 C0 0B FC */	rlwinm r0, r6, 1, 0xf, 0x1e
/* 8032CE50  7C 64 03 2E */	sthx r3, r4, r0
/* 8032CE54  C0 02 CA 68 */	lfs f0, lit_1110(r2)
/* 8032CE58  80 9C 00 24 */	lwz r4, 0x24(r28)
/* 8032CE5C  38 08 00 0C */	addi r0, r8, 0xc
/* 8032CE60  7C 84 00 2E */	lwzx r4, r4, r0
/* 8032CE64  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8032CE68  7C 04 05 2E */	stfsx f0, r4, r0
/* 8032CE6C  48 00 00 AC */	b lbl_8032CF18
lbl_8032CE70:
/* 8032CE70  80 9D 00 4C */	lwz r4, 0x4c(r29)
/* 8032CE74  54 C0 08 3C */	slwi r0, r6, 1
/* 8032CE78  7C 04 02 2E */	lhzx r0, r4, r0
/* 8032CE7C  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 8032CE80  7D 04 00 AE */	lbzx r8, r4, r0
/* 8032CE84  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8032CE88  3C 80 80 43 */	lis r4, sWorkArea_WEvlpMixMtx__13J3DSkinDeform@ha
/* 8032CE8C  38 84 72 18 */	addi r4, r4, sWorkArea_WEvlpMixMtx__13J3DSkinDeform@l
/* 8032CE90  7C 84 00 2E */	lwzx r4, r4, r0
/* 8032CE94  3C C0 80 44 */	lis r6, sWorkArea_WEvlpMixWeight__13J3DSkinDeform@ha
/* 8032CE98  38 C6 82 18 */	addi r6, r6, sWorkArea_WEvlpMixWeight__13J3DSkinDeform@l
/* 8032CE9C  7D 66 00 2E */	lwzx r11, r6, r0
/* 8032CEA0  38 C0 00 00 */	li r6, 0
/* 8032CEA4  38 E0 00 00 */	li r7, 0
/* 8032CEA8  7D 09 03 A6 */	mtctr r8
/* 8032CEAC  2C 08 00 00 */	cmpwi r8, 0
/* 8032CEB0  40 81 00 68 */	ble lbl_8032CF18
lbl_8032CEB4:
/* 8032CEB4  81 3C 00 24 */	lwz r9, 0x24(r28)
/* 8032CEB8  7C 04 3A 2E */	lhzx r0, r4, r7
/* 8032CEBC  1D 00 00 14 */	mulli r8, r0, 0x14
/* 8032CEC0  39 08 00 12 */	addi r8, r8, 0x12
/* 8032CEC4  7D 49 42 2E */	lhzx r10, r9, r8
/* 8032CEC8  38 0A 00 01 */	addi r0, r10, 1
/* 8032CECC  7C 09 43 2E */	sthx r0, r9, r8
/* 8032CED0  81 3C 00 24 */	lwz r9, 0x24(r28)
/* 8032CED4  7C 04 3A 2E */	lhzx r0, r4, r7
/* 8032CED8  1D 00 00 14 */	mulli r8, r0, 0x14
/* 8032CEDC  38 08 00 04 */	addi r0, r8, 4
/* 8032CEE0  7D 09 00 2E */	lwzx r8, r9, r0
/* 8032CEE4  55 40 0B FC */	rlwinm r0, r10, 1, 0xf, 0x1e
/* 8032CEE8  7C 68 03 2E */	sthx r3, r8, r0
/* 8032CEEC  7C 0B 34 2E */	lfsx f0, r11, r6
/* 8032CEF0  81 3C 00 24 */	lwz r9, 0x24(r28)
/* 8032CEF4  7C 04 3A 2E */	lhzx r0, r4, r7
/* 8032CEF8  1D 00 00 14 */	mulli r8, r0, 0x14
/* 8032CEFC  38 08 00 0C */	addi r0, r8, 0xc
/* 8032CF00  7D 09 00 2E */	lwzx r8, r9, r0
/* 8032CF04  55 40 13 BA */	rlwinm r0, r10, 2, 0xe, 0x1d
/* 8032CF08  7C 08 05 2E */	stfsx f0, r8, r0
/* 8032CF0C  38 C6 00 04 */	addi r6, r6, 4
/* 8032CF10  38 E7 00 02 */	addi r7, r7, 2
/* 8032CF14  42 00 FF A0 */	bdnz lbl_8032CEB4
lbl_8032CF18:
/* 8032CF18  38 63 00 01 */	addi r3, r3, 1
/* 8032CF1C  38 A5 00 02 */	addi r5, r5, 2
lbl_8032CF20:
/* 8032CF20  80 1D 00 8C */	lwz r0, 0x8c(r29)
/* 8032CF24  7C 03 00 40 */	cmplw r3, r0
/* 8032CF28  41 80 FE D4 */	blt lbl_8032CDFC
/* 8032CF2C  39 61 00 20 */	addi r11, r1, 0x20
/* 8032CF30  48 03 52 F5 */	bl _restgpr_28
/* 8032CF34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032CF38  7C 08 03 A6 */	mtlr r0
/* 8032CF3C  38 21 00 20 */	addi r1, r1, 0x20
/* 8032CF40  4E 80 00 20 */	blr 
