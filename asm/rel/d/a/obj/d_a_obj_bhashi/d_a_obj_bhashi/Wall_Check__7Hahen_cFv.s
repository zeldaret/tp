lbl_805777A4:
/* 805777A4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 805777A8  7C 08 02 A6 */	mflr r0
/* 805777AC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 805777B0  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 805777B4  7C 7F 1B 78 */	mr r31, r3
/* 805777B8  38 61 00 20 */	addi r3, r1, 0x20
/* 805777BC  4B B0 04 AC */	b __ct__11dBgS_LinChkFv
/* 805777C0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805777C4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805777C8  EC 82 00 2A */	fadds f4, f2, f0
/* 805777CC  C0 7F 00 04 */	lfs f3, 4(r31)
/* 805777D0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805777D4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 805777D8  EC 01 00 2A */	fadds f0, f1, f0
/* 805777DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805777E0  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 805777E4  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 805777E8  D0 21 00 08 */	stfs f1, 8(r1)
/* 805777EC  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 805777F0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805777F4  38 61 00 20 */	addi r3, r1, 0x20
/* 805777F8  38 81 00 08 */	addi r4, r1, 8
/* 805777FC  38 A1 00 14 */	addi r5, r1, 0x14
/* 80577800  38 C0 00 00 */	li r6, 0
/* 80577804  4B B0 05 60 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80577808  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057780C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80577810  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80577814  38 81 00 20 */	addi r4, r1, 0x20
/* 80577818  4B AF CB 9C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8057781C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80577820  28 00 00 01 */	cmplwi r0, 1
/* 80577824  40 82 00 24 */	bne lbl_80577848
/* 80577828  3C 60 80 58 */	lis r3, lit_4114@ha
/* 8057782C  C0 23 8B 30 */	lfs f1, lit_4114@l(r3)
/* 80577830  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80577834  EC 01 00 32 */	fmuls f0, f1, f0
/* 80577838  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8057783C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80577840  EC 01 00 32 */	fmuls f0, f1, f0
/* 80577844  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_80577848:
/* 80577848  38 61 00 20 */	addi r3, r1, 0x20
/* 8057784C  38 80 FF FF */	li r4, -1
/* 80577850  4B B0 04 8C */	b __dt__11dBgS_LinChkFv
/* 80577854  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80577858  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8057785C  7C 08 03 A6 */	mtlr r0
/* 80577860  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80577864  4E 80 00 20 */	blr 
