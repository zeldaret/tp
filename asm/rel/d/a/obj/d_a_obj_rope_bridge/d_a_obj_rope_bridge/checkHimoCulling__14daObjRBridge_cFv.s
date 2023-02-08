lbl_805977D0:
/* 805977D0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805977D4  7C 08 02 A6 */	mflr r0
/* 805977D8  90 01 00 74 */	stw r0, 0x74(r1)
/* 805977DC  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 805977E0  7C 7F 1B 78 */	mr r31, r3
/* 805977E4  88 03 0A F0 */	lbz r0, 0xaf0(r3)
/* 805977E8  1C 80 00 0C */	mulli r4, r0, 0xc
/* 805977EC  3C 60 80 59 */	lis r3, l_rope_cullbox_offset@ha /* 0x80597DAC@ha */
/* 805977F0  38 03 7D AC */	addi r0, r3, l_rope_cullbox_offset@l /* 0x80597DAC@l */
/* 805977F4  7C 60 22 14 */	add r3, r0, r4
/* 805977F8  C0 03 00 00 */	lfs f0, 0(r3)
/* 805977FC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80597800  C0 03 00 04 */	lfs f0, 4(r3)
/* 80597804  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80597808  C0 03 00 08 */	lfs f0, 8(r3)
/* 8059780C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80597810  3C 60 80 59 */	lis r3, l_rope_cullbox@ha /* 0x80597DC4@ha */
/* 80597814  C4 03 7D C4 */	lfsu f0, l_rope_cullbox@l(r3)  /* 0x80597DC4@l */
/* 80597818  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8059781C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80597820  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80597824  C0 03 00 08 */	lfs f0, 8(r3)
/* 80597828  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8059782C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80597830  D0 01 00 08 */	stfs f0, 8(r1)
/* 80597834  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80597838  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8059783C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80597840  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80597844  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80597848  4B A7 55 1D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8059784C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80597850  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80597854  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80597858  4B A7 4B DD */	bl mDoMtx_YrotM__FPA4_fs
/* 8059785C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80597860  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80597864  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80597868  4B A7 4B 35 */	bl mDoMtx_XrotM__FPA4_fs
/* 8059786C  38 61 00 20 */	addi r3, r1, 0x20
/* 80597870  4B A7 55 65 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80597874  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80597878  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8059787C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80597880  4B DA EC 31 */	bl PSMTXCopy
/* 80597884  38 61 00 2C */	addi r3, r1, 0x2c
/* 80597888  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8059788C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80597890  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80597894  C0 81 00 08 */	lfs f4, 8(r1)
/* 80597898  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 8059789C  C0 C1 00 10 */	lfs f6, 0x10(r1)
/* 805978A0  4B A8 33 A1 */	bl fopAcM_checkCullingBox__FPA4_fffffff
/* 805978A4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805978A8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 805978AC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805978B0  7C 08 03 A6 */	mtlr r0
/* 805978B4  38 21 00 70 */	addi r1, r1, 0x70
/* 805978B8  4E 80 00 20 */	blr 
