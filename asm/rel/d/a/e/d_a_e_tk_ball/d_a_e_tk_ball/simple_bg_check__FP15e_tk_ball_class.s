lbl_807BC070:
/* 807BC070  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 807BC074  7C 08 02 A6 */	mflr r0
/* 807BC078  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 807BC07C  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 807BC080  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 807BC084  3C 80 80 7C */	lis r4, lit_3710@ha /* 0x807BD56C@ha */
/* 807BC088  3B E4 D5 6C */	addi r31, r4, lit_3710@l /* 0x807BD56C@l */
/* 807BC08C  7C 7E 1B 78 */	mr r30, r3
/* 807BC090  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807BC094  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807BC098  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 807BC09C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 807BC0A0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807BC0A4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807BC0A8  C0 03 05 F8 */	lfs f0, 0x5f8(r3)
/* 807BC0AC  EC 01 00 2A */	fadds f0, f1, f0
/* 807BC0B0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807BC0B4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807BC0B8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807BC0BC  80 63 00 00 */	lwz r3, 0(r3)
/* 807BC0C0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 807BC0C4  4B 85 03 19 */	bl mDoMtx_YrotS__FPA4_fs
/* 807BC0C8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807BC0CC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807BC0D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807BC0D4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807BC0D8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807BC0DC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807BC0E0  38 61 00 2C */	addi r3, r1, 0x2c
/* 807BC0E4  38 81 00 20 */	addi r4, r1, 0x20
/* 807BC0E8  4B AB 4E 05 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807BC0EC  38 61 00 14 */	addi r3, r1, 0x14
/* 807BC0F0  38 81 00 50 */	addi r4, r1, 0x50
/* 807BC0F4  38 A1 00 20 */	addi r5, r1, 0x20
/* 807BC0F8  4B AA A9 ED */	bl __pl__4cXyzCFRC3Vec
/* 807BC0FC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807BC100  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807BC104  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807BC108  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807BC10C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807BC110  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807BC114  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 807BC118  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807BC11C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 807BC120  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807BC124  38 61 00 2C */	addi r3, r1, 0x2c
/* 807BC128  38 81 00 20 */	addi r4, r1, 0x20
/* 807BC12C  4B AB 4D C1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807BC130  38 61 00 08 */	addi r3, r1, 8
/* 807BC134  38 81 00 50 */	addi r4, r1, 0x50
/* 807BC138  38 A1 00 20 */	addi r5, r1, 0x20
/* 807BC13C  4B AA A9 A9 */	bl __pl__4cXyzCFRC3Vec
/* 807BC140  C0 01 00 08 */	lfs f0, 8(r1)
/* 807BC144  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807BC148  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807BC14C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807BC150  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807BC154  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807BC158  38 61 00 5C */	addi r3, r1, 0x5c
/* 807BC15C  4B 8B BB 0D */	bl __ct__11dBgS_LinChkFv
/* 807BC160  38 61 00 5C */	addi r3, r1, 0x5c
/* 807BC164  38 81 00 44 */	addi r4, r1, 0x44
/* 807BC168  38 A1 00 38 */	addi r5, r1, 0x38
/* 807BC16C  7F C6 F3 78 */	mr r6, r30
/* 807BC170  4B 8B BB F5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 807BC174  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BC178  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BC17C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807BC180  38 81 00 5C */	addi r4, r1, 0x5c
/* 807BC184  4B 8B 82 31 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 807BC188  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807BC18C  41 82 00 18 */	beq lbl_807BC1A4
/* 807BC190  38 61 00 5C */	addi r3, r1, 0x5c
/* 807BC194  38 80 FF FF */	li r4, -1
/* 807BC198  4B 8B BB 45 */	bl __dt__11dBgS_LinChkFv
/* 807BC19C  38 60 00 01 */	li r3, 1
/* 807BC1A0  48 00 00 14 */	b lbl_807BC1B4
lbl_807BC1A4:
/* 807BC1A4  38 61 00 5C */	addi r3, r1, 0x5c
/* 807BC1A8  38 80 FF FF */	li r4, -1
/* 807BC1AC  4B 8B BB 31 */	bl __dt__11dBgS_LinChkFv
/* 807BC1B0  38 60 00 00 */	li r3, 0
lbl_807BC1B4:
/* 807BC1B4  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 807BC1B8  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 807BC1BC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 807BC1C0  7C 08 03 A6 */	mtlr r0
/* 807BC1C4  38 21 00 E0 */	addi r1, r1, 0xe0
/* 807BC1C8  4E 80 00 20 */	blr 
