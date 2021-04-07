lbl_805C36A4:
/* 805C36A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805C36A8  7C 08 02 A6 */	mflr r0
/* 805C36AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805C36B0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805C36B4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805C36B8  7C 7F 1B 78 */	mr r31, r3
/* 805C36BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C36C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C36C4  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 805C36C8  7C 00 07 74 */	extsb r0, r0
/* 805C36CC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805C36D0  7C 84 02 14 */	add r4, r4, r0
/* 805C36D4  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 805C36D8  80 03 07 0C */	lwz r0, 0x70c(r3)
/* 805C36DC  2C 00 00 01 */	cmpwi r0, 1
/* 805C36E0  41 82 00 28 */	beq lbl_805C3708
/* 805C36E4  40 80 00 E4 */	bge lbl_805C37C8
/* 805C36E8  2C 00 00 00 */	cmpwi r0, 0
/* 805C36EC  40 80 00 08 */	bge lbl_805C36F4
/* 805C36F0  48 00 00 D8 */	b lbl_805C37C8
lbl_805C36F4:
/* 805C36F4  4B FF F4 F5 */	bl startDemoCheck__8daB_DR_cFv
/* 805C36F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C36FC  41 82 00 CC */	beq lbl_805C37C8
/* 805C3700  7F E3 FB 78 */	mr r3, r31
/* 805C3704  4B FF 95 15 */	bl mAllClr__8daB_DR_cFv
lbl_805C3708:
/* 805C3708  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805C370C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805C3710  80 63 00 00 */	lwz r3, 0(r3)
/* 805C3714  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805C3718  4B A4 8C C5 */	bl mDoMtx_YrotS__FPA4_fs
/* 805C371C  3C 60 80 5C */	lis r3, lit_4011@ha /* 0x805C6CA4@ha */
/* 805C3720  C0 03 6C A4 */	lfs f0, lit_4011@l(r3)  /* 0x805C6CA4@l */
/* 805C3724  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805C3728  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C372C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805C3730  38 61 00 2C */	addi r3, r1, 0x2c
/* 805C3734  38 81 00 20 */	addi r4, r1, 0x20
/* 805C3738  4B CA D7 B5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805C373C  38 61 00 20 */	addi r3, r1, 0x20
/* 805C3740  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805C3744  7C 65 1B 78 */	mr r5, r3
/* 805C3748  4B D8 39 49 */	bl PSVECAdd
/* 805C374C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805C3750  D0 1F 27 D0 */	stfs f0, 0x27d0(r31)
/* 805C3754  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805C3758  D0 1F 27 D4 */	stfs f0, 0x27d4(r31)
/* 805C375C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805C3760  D0 1F 27 D8 */	stfs f0, 0x27d8(r31)
/* 805C3764  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805C3768  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805C376C  80 63 00 00 */	lwz r3, 0(r3)
/* 805C3770  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805C3774  4B A4 8C 69 */	bl mDoMtx_YrotS__FPA4_fs
/* 805C3778  3C 60 80 5C */	lis r3, lit_4011@ha /* 0x805C6CA4@ha */
/* 805C377C  C0 03 6C A4 */	lfs f0, lit_4011@l(r3)  /* 0x805C6CA4@l */
/* 805C3780  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805C3784  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C3788  3C 60 80 5C */	lis r3, lit_4798@ha /* 0x805C6FE8@ha */
/* 805C378C  C0 03 6F E8 */	lfs f0, lit_4798@l(r3)  /* 0x805C6FE8@l */
/* 805C3790  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805C3794  38 61 00 2C */	addi r3, r1, 0x2c
/* 805C3798  38 81 00 20 */	addi r4, r1, 0x20
/* 805C379C  4B CA D7 51 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805C37A0  38 61 00 20 */	addi r3, r1, 0x20
/* 805C37A4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805C37A8  7C 65 1B 78 */	mr r5, r3
/* 805C37AC  4B D8 38 E5 */	bl PSVECAdd
/* 805C37B0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805C37B4  D0 1F 27 C4 */	stfs f0, 0x27c4(r31)
/* 805C37B8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805C37BC  D0 1F 27 C8 */	stfs f0, 0x27c8(r31)
/* 805C37C0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805C37C4  D0 1F 27 CC */	stfs f0, 0x27cc(r31)
lbl_805C37C8:
/* 805C37C8  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 805C37CC  2C 00 00 01 */	cmpwi r0, 1
/* 805C37D0  41 80 00 44 */	blt lbl_805C3814
/* 805C37D4  C0 1F 27 D0 */	lfs f0, 0x27d0(r31)
/* 805C37D8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C37DC  C0 1F 27 D4 */	lfs f0, 0x27d4(r31)
/* 805C37E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C37E4  C0 1F 27 D8 */	lfs f0, 0x27d8(r31)
/* 805C37E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C37EC  C0 1F 27 C4 */	lfs f0, 0x27c4(r31)
/* 805C37F0  D0 01 00 08 */	stfs f0, 8(r1)
/* 805C37F4  C0 1F 27 C8 */	lfs f0, 0x27c8(r31)
/* 805C37F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805C37FC  C0 1F 27 CC */	lfs f0, 0x27cc(r31)
/* 805C3800  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C3804  38 7E 02 48 */	addi r3, r30, 0x248
/* 805C3808  38 81 00 14 */	addi r4, r1, 0x14
/* 805C380C  38 A1 00 08 */	addi r5, r1, 8
/* 805C3810  4B BB D2 99 */	bl Set__9dCamera_cF4cXyz4cXyz
lbl_805C3814:
/* 805C3814  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805C3818  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805C381C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805C3820  7C 08 03 A6 */	mtlr r0
/* 805C3824  38 21 00 40 */	addi r1, r1, 0x40
/* 805C3828  4E 80 00 20 */	blr 
