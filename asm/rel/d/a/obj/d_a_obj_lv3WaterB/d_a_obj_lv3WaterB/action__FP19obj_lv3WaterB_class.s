lbl_80C5B71C:
/* 80C5B71C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5B720  7C 08 02 A6 */	mflr r0
/* 80C5B724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5B728  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5B72C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5B730  7C 7F 1B 78 */	mr r31, r3
/* 80C5B734  3C 60 80 C6 */	lis r3, lit_3724@ha /* 0x80C5BD50@ha */
/* 80C5B738  3B C3 BD 50 */	addi r30, r3, lit_3724@l /* 0x80C5BD50@l */
/* 80C5B73C  A8 1F 05 84 */	lha r0, 0x584(r31)
/* 80C5B740  2C 00 00 01 */	cmpwi r0, 1
/* 80C5B744  41 82 00 18 */	beq lbl_80C5B75C
/* 80C5B748  40 80 00 08 */	bge lbl_80C5B750
/* 80C5B74C  48 00 00 9C */	b lbl_80C5B7E8
lbl_80C5B750:
/* 80C5B750  2C 00 00 03 */	cmpwi r0, 3
/* 80C5B754  40 80 00 94 */	bge lbl_80C5B7E8
/* 80C5B758  48 00 00 28 */	b lbl_80C5B780
lbl_80C5B75C:
/* 80C5B75C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5B760  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5B764  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C5B768  80 9F 05 F4 */	lwz r4, 0x5f4(r31)
/* 80C5B76C  4B 41 8A E5 */	bl Release__4cBgSFP9dBgW_Base
/* 80C5B770  38 00 00 00 */	li r0, 0
/* 80C5B774  90 1F 05 80 */	stw r0, 0x580(r31)
/* 80C5B778  B0 1F 05 84 */	sth r0, 0x584(r31)
/* 80C5B77C  48 00 00 6C */	b lbl_80C5B7E8
lbl_80C5B780:
/* 80C5B780  38 60 00 04 */	li r3, 4
/* 80C5B784  38 80 00 04 */	li r4, 4
/* 80C5B788  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80C5B78C  4B 54 D0 81 */	bl dKy_custom_colset__FUcUcf
/* 80C5B790  A8 1F 05 86 */	lha r0, 0x586(r31)
/* 80C5B794  2C 00 00 00 */	cmpwi r0, 0
/* 80C5B798  40 82 00 2C */	bne lbl_80C5B7C4
/* 80C5B79C  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80C5B7A0  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 80C5B7A4  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80C5B7A8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80C5B7AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C5B7B0  EC 02 00 2A */	fadds f0, f2, f0
/* 80C5B7B4  EC 03 00 2A */	fadds f0, f3, f0
/* 80C5B7B8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C5B7BC  38 00 00 01 */	li r0, 1
/* 80C5B7C0  B0 1F 05 86 */	sth r0, 0x586(r31)
lbl_80C5B7C4:
/* 80C5B7C4  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 80C5B7C8  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 80C5B7CC  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80C5B7D0  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80C5B7D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C5B7D8  EC 22 00 2A */	fadds f1, f2, f0
/* 80C5B7DC  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 80C5B7E0  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 80C5B7E4  4B 61 42 59 */	bl cLib_addCalc2__FPffff
lbl_80C5B7E8:
/* 80C5B7E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5B7EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5B7F0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C5B7F4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C5B7F8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C5B7FC  4B 6E B0 ED */	bl PSMTXTrans
/* 80C5B800  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5B804  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5B808  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80C5B80C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C5B810  4B 6E AC A1 */	bl PSMTXCopy
/* 80C5B814  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5B818  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5B81C  38 9F 05 8C */	addi r4, r31, 0x58c
/* 80C5B820  4B 6E AC 91 */	bl PSMTXCopy
/* 80C5B824  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80C5B828  4B 42 01 99 */	bl Move__4dBgWFv
/* 80C5B82C  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80C5B830  4B 3B 1B F9 */	bl play__14mDoExt_baseAnmFv
/* 80C5B834  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 80C5B838  28 00 00 00 */	cmplwi r0, 0
/* 80C5B83C  41 82 00 48 */	beq lbl_80C5B884
/* 80C5B840  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5B844  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5B848  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80C5B84C  FC 40 08 90 */	fmr f2, f1
/* 80C5B850  FC 60 08 90 */	fmr f3, f1
/* 80C5B854  4B 6E B0 95 */	bl PSMTXTrans
/* 80C5B858  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5B85C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5B860  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 80C5B864  38 84 00 24 */	addi r4, r4, 0x24
/* 80C5B868  4B 6E AC 49 */	bl PSMTXCopy
/* 80C5B86C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5B870  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5B874  38 9F 05 C4 */	addi r4, r31, 0x5c4
/* 80C5B878  4B 6E AC 39 */	bl PSMTXCopy
/* 80C5B87C  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 80C5B880  4B 42 01 41 */	bl Move__4dBgWFv
lbl_80C5B884:
/* 80C5B884  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5B888  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5B88C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5B890  7C 08 03 A6 */	mtlr r0
/* 80C5B894  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5B898  4E 80 00 20 */	blr 
