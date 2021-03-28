lbl_8003BE38:
/* 8003BE38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8003BE3C  7C 08 02 A6 */	mflr r0
/* 8003BE40  90 01 00 44 */	stw r0, 0x44(r1)
/* 8003BE44  39 61 00 40 */	addi r11, r1, 0x40
/* 8003BE48  48 32 63 85 */	bl _savegpr_25
/* 8003BE4C  7C 7C 1B 78 */	mr r28, r3
/* 8003BE50  7C 9D 23 78 */	mr r29, r4
/* 8003BE54  3C 60 80 38 */	lis r3, d_d_resorce__stringBase0@ha
/* 8003BE58  38 63 98 B8 */	addi r3, r3, d_d_resorce__stringBase0@l
/* 8003BE5C  38 63 01 80 */	addi r3, r3, 0x180
/* 8003BE60  7F 84 E3 78 */	mr r4, r28
/* 8003BE64  7F A5 EB 78 */	mr r5, r29
/* 8003BE68  4C C6 31 82 */	crclr 6
/* 8003BE6C  48 2A C7 5D */	bl JUTReportConsole_f
/* 8003BE70  3C 60 80 38 */	lis r3, d_d_resorce__stringBase0@ha
/* 8003BE74  38 63 98 B8 */	addi r3, r3, d_d_resorce__stringBase0@l
/* 8003BE78  38 63 01 9B */	addi r3, r3, 0x19b
/* 8003BE7C  4C C6 31 82 */	crclr 6
/* 8003BE80  48 2A C7 49 */	bl JUTReportConsole_f
/* 8003BE84  3B E0 00 00 */	li r31, 0
/* 8003BE88  3B C0 00 00 */	li r30, 0
/* 8003BE8C  3B 20 00 00 */	li r25, 0
/* 8003BE90  48 00 00 A8 */	b lbl_8003BF38
lbl_8003BE94:
/* 8003BE94  A0 1C 00 0C */	lhz r0, 0xc(r28)
/* 8003BE98  2C 00 00 00 */	cmpwi r0, 0
/* 8003BE9C  41 82 00 94 */	beq lbl_8003BF30
/* 8003BEA0  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8003BEA4  4B FF FB F9 */	bl getArcHeader__FP10JKRArchive
/* 8003BEA8  38 80 00 00 */	li r4, 0
/* 8003BEAC  48 29 28 05 */	bl getSize__7JKRHeapFPvP7JKRHeap
/* 8003BEB0  7C 7B 1B 78 */	mr r27, r3
/* 8003BEB4  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 8003BEB8  38 80 00 00 */	li r4, 0
/* 8003BEBC  48 29 27 F5 */	bl getSize__7JKRHeapFPvP7JKRHeap
/* 8003BEC0  7C 7A 1B 78 */	mr r26, r3
/* 8003BEC4  3C 60 80 38 */	lis r3, d_d_resorce__stringBase0@ha
/* 8003BEC8  38 63 98 B8 */	addi r3, r3, d_d_resorce__stringBase0@l
/* 8003BECC  38 63 01 D1 */	addi r3, r3, 0x1d1
/* 8003BED0  7F 24 CB 78 */	mr r4, r25
/* 8003BED4  C8 62 83 F8 */	lfd f3, lit_4277(r2)
/* 8003BED8  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 8003BEDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003BEE0  3C C0 43 30 */	lis r6, 0x4330
/* 8003BEE4  90 C1 00 08 */	stw r6, 8(r1)
/* 8003BEE8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8003BEEC  EC 00 18 28 */	fsubs f0, f0, f3
/* 8003BEF0  C0 42 84 00 */	lfs f2, lit_4333(r2)
/* 8003BEF4  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8003BEF8  7F 65 DB 78 */	mr r5, r27
/* 8003BEFC  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 8003BF00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003BF04  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8003BF08  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8003BF0C  EC 00 18 28 */	fsubs f0, f0, f3
/* 8003BF10  EC 40 00 B2 */	fmuls f2, f0, f2
/* 8003BF14  7F 46 D3 78 */	mr r6, r26
/* 8003BF18  A0 FC 00 0C */	lhz r7, 0xc(r28)
/* 8003BF1C  7F 88 E3 78 */	mr r8, r28
/* 8003BF20  4C C6 32 42 */	crset 6
/* 8003BF24  48 2A C6 A5 */	bl JUTReportConsole_f
/* 8003BF28  7F FF DA 14 */	add r31, r31, r27
/* 8003BF2C  7F DE D2 14 */	add r30, r30, r26
lbl_8003BF30:
/* 8003BF30  3B 9C 00 24 */	addi r28, r28, 0x24
/* 8003BF34  3B 39 00 01 */	addi r25, r25, 1
lbl_8003BF38:
/* 8003BF38  7C 19 E8 00 */	cmpw r25, r29
/* 8003BF3C  41 80 FF 58 */	blt lbl_8003BE94
/* 8003BF40  3C 60 80 38 */	lis r3, d_d_resorce__stringBase0@ha
/* 8003BF44  38 63 98 B8 */	addi r3, r3, d_d_resorce__stringBase0@l
/* 8003BF48  38 63 01 F1 */	addi r3, r3, 0x1f1
/* 8003BF4C  C8 62 83 F8 */	lfd f3, lit_4277(r2)
/* 8003BF50  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 8003BF54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003BF58  3C A0 43 30 */	lis r5, 0x4330
/* 8003BF5C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8003BF60  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8003BF64  EC 00 18 28 */	fsubs f0, f0, f3
/* 8003BF68  C0 42 84 00 */	lfs f2, lit_4333(r2)
/* 8003BF6C  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8003BF70  7F E4 FB 78 */	mr r4, r31
/* 8003BF74  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 8003BF78  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003BF7C  90 A1 00 08 */	stw r5, 8(r1)
/* 8003BF80  C8 01 00 08 */	lfd f0, 8(r1)
/* 8003BF84  EC 00 18 28 */	fsubs f0, f0, f3
/* 8003BF88  EC 40 00 B2 */	fmuls f2, f0, f2
/* 8003BF8C  7F C5 F3 78 */	mr r5, r30
/* 8003BF90  4C C6 32 42 */	crset 6
/* 8003BF94  48 2A C6 35 */	bl JUTReportConsole_f
/* 8003BF98  39 61 00 40 */	addi r11, r1, 0x40
/* 8003BF9C  48 32 62 7D */	bl _restgpr_25
/* 8003BFA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8003BFA4  7C 08 03 A6 */	mtlr r0
/* 8003BFA8  38 21 00 40 */	addi r1, r1, 0x40
/* 8003BFAC  4E 80 00 20 */	blr 
