lbl_80369978:
/* 80369978  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8036997C  3C 60 40 86 */	lis r3, 0x4086 /* 0x40862E42@ha */
/* 80369980  3C 80 80 3A */	lis r4, halF@ha /* 0x803A2340@ha */
/* 80369984  D8 21 00 08 */	stfd f1, 8(r1)
/* 80369988  38 03 2E 42 */	addi r0, r3, 0x2E42 /* 0x40862E42@l */
/* 8036998C  38 A4 23 40 */	addi r5, r4, halF@l /* 0x803A2340@l */
/* 80369990  81 01 00 08 */	lwz r8, 8(r1)
/* 80369994  55 04 00 7E */	clrlwi r4, r8, 1
/* 80369998  55 07 0F FE */	srwi r7, r8, 0x1f
/* 8036999C  7C 04 00 40 */	cmplw r4, r0
/* 803699A0  41 80 00 64 */	blt lbl_80369A04
/* 803699A4  3C 00 7F F0 */	lis r0, 0x7ff0
/* 803699A8  7C 04 00 40 */	cmplw r4, r0
/* 803699AC  41 80 00 30 */	blt lbl_803699DC
/* 803699B0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803699B4  55 03 03 3E */	clrlwi r3, r8, 0xc
/* 803699B8  7C 60 03 79 */	or. r0, r3, r0
/* 803699BC  41 82 00 0C */	beq lbl_803699C8
/* 803699C0  FC 21 08 2A */	fadd f1, f1, f1
/* 803699C4  48 00 01 D0 */	b lbl_80369B94
lbl_803699C8:
/* 803699C8  2C 07 00 00 */	cmpwi r7, 0
/* 803699CC  40 82 00 08 */	bne lbl_803699D4
/* 803699D0  48 00 01 C4 */	b lbl_80369B94
lbl_803699D4:
/* 803699D4  C8 22 CD E0 */	lfd f1, lit_115(r2)
/* 803699D8  48 00 01 BC */	b lbl_80369B94
lbl_803699DC:
/* 803699DC  C8 02 CD E8 */	lfd f0, lit_116(r2)
/* 803699E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803699E4  40 81 00 0C */	ble lbl_803699F0
/* 803699E8  C8 22 CD F0 */	lfd f1, lit_117(r2)
/* 803699EC  48 00 01 A8 */	b lbl_80369B94
lbl_803699F0:
/* 803699F0  C8 02 CD F8 */	lfd f0, lit_118(r2)
/* 803699F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803699F8  40 80 00 0C */	bge lbl_80369A04
/* 803699FC  C8 22 CD E0 */	lfd f1, lit_115(r2)
/* 80369A00  48 00 01 94 */	b lbl_80369B94
lbl_80369A04:
/* 80369A04  3C 60 3F D6 */	lis r3, 0x3FD6 /* 0x3FD62E42@ha */
/* 80369A08  38 03 2E 42 */	addi r0, r3, 0x2E42 /* 0x3FD62E42@l */
/* 80369A0C  7C 04 00 40 */	cmplw r4, r0
/* 80369A10  40 81 00 98 */	ble lbl_80369AA8
/* 80369A14  3C 60 3F F1 */	lis r3, 0x3FF1 /* 0x3FF0A2B2@ha */
/* 80369A18  38 03 A2 B2 */	addi r0, r3, 0xA2B2 /* 0x3FF0A2B2@l */
/* 80369A1C  7C 04 00 40 */	cmplw r4, r0
/* 80369A20  40 80 00 2C */	bge lbl_80369A4C
/* 80369A24  54 E6 18 38 */	slwi r6, r7, 3
/* 80369A28  38 85 00 10 */	addi r4, r5, 0x10
/* 80369A2C  C8 21 00 08 */	lfd f1, 8(r1)
/* 80369A30  38 65 00 20 */	addi r3, r5, 0x20
/* 80369A34  7C 04 34 AE */	lfdx f0, r4, r6
/* 80369A38  20 07 00 01 */	subfic r0, r7, 1
/* 80369A3C  7D 03 34 AE */	lfdx f8, r3, r6
/* 80369A40  7C C7 00 50 */	subf r6, r7, r0
/* 80369A44  FC E1 00 28 */	fsub f7, f1, f0
/* 80369A48  48 00 00 54 */	b lbl_80369A9C
lbl_80369A4C:
/* 80369A4C  54 E4 18 38 */	slwi r4, r7, 3
/* 80369A50  38 65 00 00 */	addi r3, r5, 0
/* 80369A54  C8 22 CE 00 */	lfd f1, lit_119(r2)
/* 80369A58  3C 00 43 30 */	lis r0, 0x4330
/* 80369A5C  C8 81 00 08 */	lfd f4, 8(r1)
/* 80369A60  7C 03 24 AE */	lfdx f0, r3, r4
/* 80369A64  90 01 00 20 */	stw r0, 0x20(r1)
/* 80369A68  FC 41 01 3A */	fmadd f2, f1, f4, f0
/* 80369A6C  C8 62 CE 50 */	lfd f3, lit_131(r2)
/* 80369A70  C8 25 00 10 */	lfd f1, 0x10(r5)
/* 80369A74  C8 05 00 20 */	lfd f0, 0x20(r5)
/* 80369A78  FC 40 10 1E */	fctiwz f2, f2
/* 80369A7C  D8 41 00 18 */	stfd f2, 0x18(r1)
/* 80369A80  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80369A84  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80369A88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80369A8C  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 80369A90  FC 42 18 28 */	fsub f2, f2, f3
/* 80369A94  FC E2 20 7C */	fnmsub f7, f2, f1, f4
/* 80369A98  FD 02 00 32 */	fmul f8, f2, f0
lbl_80369A9C:
/* 80369A9C  FC 07 40 28 */	fsub f0, f7, f8
/* 80369AA0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80369AA4  48 00 00 34 */	b lbl_80369AD8
lbl_80369AA8:
/* 80369AA8  3C 00 3E 30 */	lis r0, 0x3e30
/* 80369AAC  7C 04 00 40 */	cmplw r4, r0
/* 80369AB0  40 80 00 24 */	bge lbl_80369AD4
/* 80369AB4  C8 22 CE 08 */	lfd f1, lit_120(r2)
/* 80369AB8  C8 41 00 08 */	lfd f2, 8(r1)
/* 80369ABC  C8 02 CE 10 */	lfd f0, lit_121(r2)
/* 80369AC0  FC 21 10 2A */	fadd f1, f1, f2
/* 80369AC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80369AC8  40 81 00 10 */	ble lbl_80369AD8
/* 80369ACC  FC 20 10 2A */	fadd f1, f0, f2
/* 80369AD0  48 00 00 C4 */	b lbl_80369B94
lbl_80369AD4:
/* 80369AD4  38 C0 00 00 */	li r6, 0
lbl_80369AD8:
/* 80369AD8  C8 A1 00 08 */	lfd f5, 8(r1)
/* 80369ADC  2C 06 00 00 */	cmpwi r6, 0
/* 80369AE0  C8 82 CE 38 */	lfd f4, lit_126(r2)
/* 80369AE4  FC C5 01 72 */	fmul f6, f5, f5
/* 80369AE8  C8 62 CE 30 */	lfd f3, lit_125(r2)
/* 80369AEC  C8 42 CE 28 */	lfd f2, lit_124(r2)
/* 80369AF0  C8 22 CE 20 */	lfd f1, lit_123(r2)
/* 80369AF4  C8 02 CE 18 */	lfd f0, lit_122(r2)
/* 80369AF8  FC 64 19 BA */	fmadd f3, f4, f6, f3
/* 80369AFC  FC 46 10 FA */	fmadd f2, f6, f3, f2
/* 80369B00  FC 26 08 BA */	fmadd f1, f6, f2, f1
/* 80369B04  FC 06 00 7A */	fmadd f0, f6, f1, f0
/* 80369B08  FC 66 28 3C */	fnmsub f3, f6, f0, f5
/* 80369B0C  40 82 00 24 */	bne lbl_80369B30
/* 80369B10  C8 02 CE 40 */	lfd f0, lit_127(r2)
/* 80369B14  FC 25 00 F2 */	fmul f1, f5, f3
/* 80369B18  C8 42 CE 10 */	lfd f2, lit_121(r2)
/* 80369B1C  FC 03 00 28 */	fsub f0, f3, f0
/* 80369B20  FC 01 00 24 */	fdiv f0, f1, f0
/* 80369B24  FC 00 28 28 */	fsub f0, f0, f5
/* 80369B28  FC 22 00 28 */	fsub f1, f2, f0
/* 80369B2C  48 00 00 68 */	b lbl_80369B94
lbl_80369B30:
/* 80369B30  C8 02 CE 40 */	lfd f0, lit_127(r2)
/* 80369B34  FC 25 00 F2 */	fmul f1, f5, f3
/* 80369B38  C8 42 CE 10 */	lfd f2, lit_121(r2)
/* 80369B3C  2C 06 FC 03 */	cmpwi r6, -1021
/* 80369B40  FC 00 18 28 */	fsub f0, f0, f3
/* 80369B44  FC 01 00 24 */	fdiv f0, f1, f0
/* 80369B48  FC 08 00 28 */	fsub f0, f8, f0
/* 80369B4C  FC 00 38 28 */	fsub f0, f0, f7
/* 80369B50  FC 02 00 28 */	fsub f0, f2, f0
/* 80369B54  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80369B58  41 80 00 1C */	blt lbl_80369B74
/* 80369B5C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80369B60  54 C0 A0 16 */	slwi r0, r6, 0x14
/* 80369B64  7C 03 02 14 */	add r0, r3, r0
/* 80369B68  90 01 00 10 */	stw r0, 0x10(r1)
/* 80369B6C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80369B70  48 00 00 24 */	b lbl_80369B94
lbl_80369B74:
/* 80369B74  38 06 03 E8 */	addi r0, r6, 0x3e8
/* 80369B78  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80369B7C  54 00 A0 16 */	slwi r0, r0, 0x14
/* 80369B80  C8 22 CE 48 */	lfd f1, lit_128(r2)
/* 80369B84  7C 03 02 14 */	add r0, r3, r0
/* 80369B88  90 01 00 10 */	stw r0, 0x10(r1)
/* 80369B8C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80369B90  FC 21 00 32 */	fmul f1, f1, f0
lbl_80369B94:
/* 80369B94  38 21 00 30 */	addi r1, r1, 0x30
/* 80369B98  4E 80 00 20 */	blr 
