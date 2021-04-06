lbl_8070B03C:
/* 8070B03C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8070B040  7C 08 02 A6 */	mflr r0
/* 8070B044  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8070B048  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8070B04C  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8070B050  7C 9E 23 78 */	mr r30, r4
/* 8070B054  7C 7F 1B 78 */	mr r31, r3
/* 8070B058  38 61 00 20 */	addi r3, r1, 0x20
/* 8070B05C  4B 96 CC 0D */	bl __ct__11dBgS_LinChkFv
/* 8070B060  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8070B064  D0 01 00 08 */	stfs f0, 8(r1)
/* 8070B068  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8070B06C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8070B070  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8070B074  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8070B078  3C 60 80 71 */	lis r3, lit_3828@ha /* 0x80713974@ha */
/* 8070B07C  C0 03 39 74 */	lfs f0, lit_3828@l(r3)  /* 0x80713974@l */
/* 8070B080  EC 01 00 2A */	fadds f0, f1, f0
/* 8070B084  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8070B088  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8070B08C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8070B090  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8070B094  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8070B098  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8070B09C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8070B0A0  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8070B0A4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8070B0A8  38 61 00 20 */	addi r3, r1, 0x20
/* 8070B0AC  38 81 00 14 */	addi r4, r1, 0x14
/* 8070B0B0  38 A1 00 08 */	addi r5, r1, 8
/* 8070B0B4  7F E6 FB 78 */	mr r6, r31
/* 8070B0B8  4B 96 CC AD */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8070B0BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070B0C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070B0C4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8070B0C8  38 81 00 20 */	addi r4, r1, 0x20
/* 8070B0CC  4B 96 92 E9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8070B0D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8070B0D4  41 82 00 18 */	beq lbl_8070B0EC
/* 8070B0D8  38 61 00 20 */	addi r3, r1, 0x20
/* 8070B0DC  38 80 FF FF */	li r4, -1
/* 8070B0E0  4B 96 CB FD */	bl __dt__11dBgS_LinChkFv
/* 8070B0E4  38 60 00 01 */	li r3, 1
/* 8070B0E8  48 00 00 14 */	b lbl_8070B0FC
lbl_8070B0EC:
/* 8070B0EC  38 61 00 20 */	addi r3, r1, 0x20
/* 8070B0F0  38 80 FF FF */	li r4, -1
/* 8070B0F4  4B 96 CB E9 */	bl __dt__11dBgS_LinChkFv
/* 8070B0F8  38 60 00 00 */	li r3, 0
lbl_8070B0FC:
/* 8070B0FC  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8070B100  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8070B104  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8070B108  7C 08 03 A6 */	mtlr r0
/* 8070B10C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8070B110  4E 80 00 20 */	blr 
