lbl_8049AFEC:
/* 8049AFEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049AFF0  7C 08 02 A6 */	mflr r0
/* 8049AFF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049AFF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049AFFC  93 C1 00 08 */	stw r30, 8(r1)
/* 8049B000  7C 7F 1B 78 */	mr r31, r3
/* 8049B004  3C 60 80 4A */	lis r3, lit_3768@ha /* 0x8049DC84@ha */
/* 8049B008  3B C3 DC 84 */	addi r30, r3, lit_3768@l /* 0x8049DC84@l */
/* 8049B00C  88 1F 09 3C */	lbz r0, 0x93c(r31)
/* 8049B010  28 00 00 02 */	cmplwi r0, 2
/* 8049B014  40 82 00 64 */	bne lbl_8049B078
/* 8049B018  80 7F 0A 0C */	lwz r3, 0xa0c(r31)
/* 8049B01C  28 03 00 00 */	cmplwi r3, 0
/* 8049B020  41 82 00 4C */	beq lbl_8049B06C
/* 8049B024  80 63 05 70 */	lwz r3, 0x570(r3)
/* 8049B028  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8049B02C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8049B030  38 63 04 20 */	addi r3, r3, 0x420
/* 8049B034  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049B038  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049B03C  4B EA B4 75 */	bl PSMTXCopy
/* 8049B040  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 8049B044  C0 5E 01 2C */	lfs f2, 0x12c(r30)
/* 8049B048  C0 7E 00 98 */	lfs f3, 0x98(r30)
/* 8049B04C  4B B7 1D 51 */	bl transM__14mDoMtx_stack_cFfff
/* 8049B050  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049B054  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049B058  38 80 40 00 */	li r4, 0x4000
/* 8049B05C  38 A0 2A AA */	li r5, 0x2aaa
/* 8049B060  38 C0 40 00 */	li r6, 0x4000
/* 8049B064  4B B7 11 01 */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 8049B068  48 00 00 4C */	b lbl_8049B0B4
lbl_8049B06C:
/* 8049B06C  38 00 00 01 */	li r0, 1
/* 8049B070  98 1F 09 3F */	stb r0, 0x93f(r31)
/* 8049B074  48 00 00 94 */	b lbl_8049B108
lbl_8049B078:
/* 8049B078  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049B07C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049B080  38 80 80 00 */	li r4, -32768
/* 8049B084  4B B7 13 59 */	bl mDoMtx_YrotS__FPA4_fs
/* 8049B088  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049B08C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049B090  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8049B094  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8049B098  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8049B09C  7D 89 03 A6 */	mtctr r12
/* 8049B0A0  4E 80 04 21 */	bctrl 
/* 8049B0A4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049B0A8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049B0AC  7C 85 23 78 */	mr r5, r4
/* 8049B0B0  4B EA B4 35 */	bl PSMTXConcat
lbl_8049B0B4:
/* 8049B0B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8049B0B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8049B0BC  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 8049B0C0  38 84 00 24 */	addi r4, r4, 0x24
/* 8049B0C4  4B EA B3 ED */	bl PSMTXCopy
/* 8049B0C8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8049B0CC  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8049B0D0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8049B0D4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8049B0D8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8049B0DC  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 8049B0E0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8049B0E4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8049B0E8  38 63 00 24 */	addi r3, r3, 0x24
/* 8049B0EC  38 9F 04 E4 */	addi r4, r31, 0x4e4
/* 8049B0F0  4B B7 1B 11 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 8049B0F4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8049B0F8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8049B0FC  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 8049B100  7C 00 00 D0 */	neg r0, r0
/* 8049B104  B0 1F 04 DC */	sth r0, 0x4dc(r31)
lbl_8049B108:
/* 8049B108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049B10C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049B110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049B114  7C 08 03 A6 */	mtlr r0
/* 8049B118  38 21 00 10 */	addi r1, r1, 0x10
/* 8049B11C  4E 80 00 20 */	blr 
