lbl_80576AC4:
/* 80576AC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80576AC8  7C 08 02 A6 */	mflr r0
/* 80576ACC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80576AD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80576AD4  7C 7F 1B 78 */	mr r31, r3
/* 80576AD8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80576ADC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80576AE0  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80576AE4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80576AE8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80576AEC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80576AF0  3C 60 80 58 */	lis r3, lit_3795@ha /* 0x80578ACC@ha */
/* 80576AF4  C0 03 8A CC */	lfs f0, lit_3795@l(r3)  /* 0x80578ACC@l */
/* 80576AF8  EC 01 00 2A */	fadds f0, f1, f0
/* 80576AFC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80576B00  38 7F 14 48 */	addi r3, r31, 0x1448
/* 80576B04  38 81 00 08 */	addi r4, r1, 8
/* 80576B08  4B CF 86 D5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80576B0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80576B10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80576B14  38 63 23 3C */	addi r3, r3, 0x233c
/* 80576B18  38 9F 13 24 */	addi r4, r31, 0x1324
/* 80576B1C  4B CE E0 8D */	bl Set__4cCcSFP8cCcD_Obj
/* 80576B20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80576B24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80576B28  7C 08 03 A6 */	mtlr r0
/* 80576B2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80576B30  4E 80 00 20 */	blr 
