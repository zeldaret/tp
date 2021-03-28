lbl_80B7B0A4:
/* 80B7B0A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7B0A8  7C 08 02 A6 */	mflr r0
/* 80B7B0AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7B0B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7B0B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B7B0B8  7C 7E 1B 78 */	mr r30, r3
/* 80B7B0BC  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha
/* 80B7B0C0  3B E4 C4 58 */	addi r31, r4, m__17daNpc_zrA_Param_c@l
/* 80B7B0C4  80 03 0B E4 */	lwz r0, 0xbe4(r3)
/* 80B7B0C8  28 00 00 00 */	cmplwi r0, 0
/* 80B7B0CC  41 82 00 F4 */	beq lbl_80B7B1C0
/* 80B7B0D0  38 C0 00 00 */	li r6, 0
/* 80B7B0D4  80 1E 14 F0 */	lwz r0, 0x14f0(r30)
/* 80B7B0D8  54 00 18 38 */	slwi r0, r0, 3
/* 80B7B0DC  3C 80 80 B9 */	lis r4, l_btkGetParamList@ha
/* 80B7B0E0  38 84 D1 1C */	addi r4, r4, l_btkGetParamList@l
/* 80B7B0E4  7C A4 00 2E */	lwzx r5, r4, r0
/* 80B7B0E8  2C 05 00 00 */	cmpwi r5, 0
/* 80B7B0EC  41 80 00 24 */	blt lbl_80B7B110
/* 80B7B0F0  7C 84 02 14 */	add r4, r4, r0
/* 80B7B0F4  80 04 00 04 */	lwz r0, 4(r4)
/* 80B7B0F8  54 00 10 3A */	slwi r0, r0, 2
/* 80B7B0FC  3C 80 80 B9 */	lis r4, l_resNames@ha
/* 80B7B100  38 84 D3 00 */	addi r4, r4, l_resNames@l
/* 80B7B104  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B7B108  4B 5D 7A 9C */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80B7B10C  7C 66 1B 78 */	mr r6, r3
lbl_80B7B110:
/* 80B7B110  80 1E 05 B4 */	lwz r0, 0x5b4(r30)
/* 80B7B114  7C 06 00 40 */	cmplw r6, r0
/* 80B7B118  40 82 00 9C */	bne lbl_80B7B1B4
/* 80B7B11C  80 1E 14 F0 */	lwz r0, 0x14f0(r30)
/* 80B7B120  2C 00 00 00 */	cmpwi r0, 0
/* 80B7B124  40 82 00 34 */	bne lbl_80B7B158
/* 80B7B128  A8 1E 08 FE */	lha r0, 0x8fe(r30)
/* 80B7B12C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B7B130  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B7B134  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80B7B138  7C 43 04 2E */	lfsx f2, r3, r0
/* 80B7B13C  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B7B140  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B7B144  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B7B148  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B7B14C  80 7E 0B E4 */	lwz r3, 0xbe4(r30)
/* 80B7B150  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 80B7B154  48 00 00 28 */	b lbl_80B7B17C
lbl_80B7B158:
/* 80B7B158  A8 1E 08 FE */	lha r0, 0x8fe(r30)
/* 80B7B15C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B7B160  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B7B164  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80B7B168  7C 23 04 2E */	lfsx f1, r3, r0
/* 80B7B16C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B7B170  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B7B174  80 7E 0B E4 */	lwz r3, 0xbe4(r30)
/* 80B7B178  D0 03 00 FC */	stfs f0, 0xfc(r3)
lbl_80B7B17C:
/* 80B7B17C  A8 1E 08 FC */	lha r0, 0x8fc(r30)
/* 80B7B180  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B7B184  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B7B188  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80B7B18C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80B7B190  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80B7B194  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B7B198  80 7E 0B E4 */	lwz r3, 0xbe4(r30)
/* 80B7B19C  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 80B7B1A0  38 00 00 01 */	li r0, 1
/* 80B7B1A4  80 7E 0B E4 */	lwz r3, 0xbe4(r30)
/* 80B7B1A8  98 03 01 04 */	stb r0, 0x104(r3)
/* 80B7B1AC  38 60 00 01 */	li r3, 1
/* 80B7B1B0  48 00 00 14 */	b lbl_80B7B1C4
lbl_80B7B1B4:
/* 80B7B1B4  38 00 00 00 */	li r0, 0
/* 80B7B1B8  80 7E 0B E4 */	lwz r3, 0xbe4(r30)
/* 80B7B1BC  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80B7B1C0:
/* 80B7B1C0  38 60 00 00 */	li r3, 0
lbl_80B7B1C4:
/* 80B7B1C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7B1C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B7B1CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7B1D0  7C 08 03 A6 */	mtlr r0
/* 80B7B1D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7B1D8  4E 80 00 20 */	blr 
