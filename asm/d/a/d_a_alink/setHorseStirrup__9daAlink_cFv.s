lbl_800ED310:
/* 800ED310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ED314  7C 08 02 A6 */	mflr r0
/* 800ED318  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ED31C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ED320  93 C1 00 08 */	stw r30, 8(r1)
/* 800ED324  7C 7E 1B 78 */	mr r30, r3
/* 800ED328  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800ED32C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800ED330  83 E4 5D B8 */	lwz r31, 0x5db8(r4)
/* 800ED334  28 1F 00 00 */	cmplwi r31, 0
/* 800ED338  41 82 01 68 */	beq lbl_800ED4A0
/* 800ED33C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800ED340  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800ED344  7D 89 03 A6 */	mtctr r12
/* 800ED348  4E 80 04 21 */	bctrl 
/* 800ED34C  28 03 00 00 */	cmplwi r3, 0
/* 800ED350  40 82 00 20 */	bne lbl_800ED370
/* 800ED354  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800ED358  28 00 01 3D */	cmplwi r0, 0x13d
/* 800ED35C  40 82 01 44 */	bne lbl_800ED4A0
/* 800ED360  88 1E 2F AB */	lbz r0, 0x2fab(r30)
/* 800ED364  28 00 00 00 */	cmplwi r0, 0
/* 800ED368  40 82 00 08 */	bne lbl_800ED370
/* 800ED36C  48 00 01 34 */	b lbl_800ED4A0
lbl_800ED370:
/* 800ED370  88 1E 2F AB */	lbz r0, 0x2fab(r30)
/* 800ED374  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800ED378  41 82 00 6C */	beq lbl_800ED3E4
/* 800ED37C  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800ED380  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800ED384  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800ED388  A0 1E 30 BC */	lhz r0, 0x30bc(r30)
/* 800ED38C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800ED390  7C 63 02 14 */	add r3, r3, r0
/* 800ED394  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800ED398  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800ED39C  48 25 91 15 */	bl PSMTXCopy
/* 800ED3A0  C0 22 93 6C */	lfs f1, lit_8473(r2)
/* 800ED3A4  C0 42 94 C0 */	lfs f2, lit_18068(r2)
/* 800ED3A8  C0 62 93 2C */	lfs f3, lit_7624(r2)
/* 800ED3AC  4B F1 F9 F1 */	bl transM__14mDoMtx_stack_cFfff
/* 800ED3B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800ED3B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800ED3B8  38 80 00 00 */	li r4, 0
/* 800ED3BC  38 A0 80 00 */	li r5, -32768
/* 800ED3C0  38 C0 40 00 */	li r6, 0x4000
/* 800ED3C4  4B F1 EE DD */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 800ED3C8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 800ED3CC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800ED3D0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800ED3D4  38 83 04 50 */	addi r4, r3, 0x450
/* 800ED3D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800ED3DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800ED3E0  48 25 90 D1 */	bl PSMTXCopy
lbl_800ED3E4:
/* 800ED3E4  88 1E 2F AB */	lbz r0, 0x2fab(r30)
/* 800ED3E8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800ED3EC  41 82 00 64 */	beq lbl_800ED450
/* 800ED3F0  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800ED3F4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800ED3F8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800ED3FC  A0 1E 30 BE */	lhz r0, 0x30be(r30)
/* 800ED400  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800ED404  7C 63 02 14 */	add r3, r3, r0
/* 800ED408  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800ED40C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800ED410  48 25 90 A1 */	bl PSMTXCopy
/* 800ED414  C0 22 93 6C */	lfs f1, lit_8473(r2)
/* 800ED418  C0 42 94 B4 */	lfs f2, lit_17382(r2)
/* 800ED41C  C0 62 93 2C */	lfs f3, lit_7624(r2)
/* 800ED420  4B F1 F9 7D */	bl transM__14mDoMtx_stack_cFfff
/* 800ED424  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800ED428  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800ED42C  38 80 C0 00 */	li r4, -16384
/* 800ED430  4B F1 F0 9D */	bl mDoMtx_ZrotM__FPA4_fs
/* 800ED434  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 800ED438  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800ED43C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800ED440  38 83 04 B0 */	addi r4, r3, 0x4b0
/* 800ED444  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800ED448  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800ED44C  48 25 90 65 */	bl PSMTXCopy
lbl_800ED450:
/* 800ED450  88 1E 2F AB */	lbz r0, 0x2fab(r30)
/* 800ED454  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 800ED458  41 82 00 0C */	beq lbl_800ED464
/* 800ED45C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 800ED460  48 23 A7 F9 */	bl calcWeightEnvelopeMtx__8J3DModelFv
lbl_800ED464:
/* 800ED464  7F C3 F3 78 */	mr r3, r30
/* 800ED468  4B FF F9 A9 */	bl getReinHandType__9daAlink_cCFv
/* 800ED46C  7C 64 1B 79 */	or. r4, r3, r3
/* 800ED470  40 82 00 18 */	bne lbl_800ED488
/* 800ED474  7F E3 FB 78 */	mr r3, r31
/* 800ED478  39 9F 18 C8 */	addi r12, r31, 0x18c8
/* 800ED47C  48 27 4C 09 */	bl __ptmf_scall
/* 800ED480  60 00 00 00 */	nop 
/* 800ED484  48 00 00 1C */	b lbl_800ED4A0
lbl_800ED488:
/* 800ED488  2C 04 FF FF */	cmpwi r4, -1
/* 800ED48C  41 82 00 14 */	beq lbl_800ED4A0
/* 800ED490  7F E3 FB 78 */	mr r3, r31
/* 800ED494  39 9F 18 BC */	addi r12, r31, 0x18bc
/* 800ED498  48 27 4B ED */	bl __ptmf_scall
/* 800ED49C  60 00 00 00 */	nop 
lbl_800ED4A0:
/* 800ED4A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ED4A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800ED4A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ED4AC  7C 08 03 A6 */	mtlr r0
/* 800ED4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 800ED4B4  4E 80 00 20 */	blr 
