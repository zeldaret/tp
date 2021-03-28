lbl_809495E0:
/* 809495E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809495E4  7C 08 02 A6 */	mflr r0
/* 809495E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809495EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809495F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809495F4  7C 7F 1B 78 */	mr r31, r3
/* 809495F8  80 63 05 74 */	lwz r3, 0x574(r3)
/* 809495FC  83 C3 00 04 */	lwz r30, 4(r3)
/* 80949600  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80949604  D0 01 00 08 */	stfs f0, 8(r1)
/* 80949608  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8094960C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80949610  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80949614  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80949618  3C 60 80 95 */	lis r3, l_HOSTIO@ha
/* 8094961C  38 63 BA 3C */	addi r3, r3, l_HOSTIO@l
/* 80949620  C0 03 00 04 */	lfs f0, 4(r3)
/* 80949624  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80949628  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8094962C  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80949630  38 61 00 08 */	addi r3, r1, 8
/* 80949634  4B 6C 37 30 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80949638  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 8094963C  4B 6C 39 08 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80949640  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80949644  4B 6C 38 2C */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80949648  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8094964C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80949650  38 9E 00 24 */	addi r4, r30, 0x24
/* 80949654  4B 9F CE 5C */	b PSMTXCopy
/* 80949658  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 8094965C  4B 6C 7B 90 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80949660  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80949664  80 63 00 04 */	lwz r3, 4(r3)
/* 80949668  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8094966C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80949670  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80949674  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80949678  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8094967C  4B 9F CE 34 */	b PSMTXCopy
/* 80949680  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80949684  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 80949688  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8094968C  D0 1F 08 2C */	stfs f0, 0x82c(r31)
/* 80949690  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80949694  D0 1F 08 30 */	stfs f0, 0x830(r31)
/* 80949698  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8094969C  D0 1F 08 34 */	stfs f0, 0x834(r31)
/* 809496A0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 809496A4  80 63 00 04 */	lwz r3, 4(r3)
/* 809496A8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809496AC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809496B0  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809496B4  7F C4 F3 78 */	mr r4, r30
/* 809496B8  4B 9F CD F8 */	b PSMTXCopy
/* 809496BC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809496C0  D0 1F 08 38 */	stfs f0, 0x838(r31)
/* 809496C4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809496C8  D0 1F 08 3C */	stfs f0, 0x83c(r31)
/* 809496CC  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809496D0  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 809496D4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 809496D8  80 63 00 04 */	lwz r3, 4(r3)
/* 809496DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809496E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809496E4  38 63 03 00 */	addi r3, r3, 0x300
/* 809496E8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809496EC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809496F0  4B 9F CD C0 */	b PSMTXCopy
/* 809496F4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809496F8  D0 1F 08 5C */	stfs f0, 0x85c(r31)
/* 809496FC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80949700  D0 1F 08 60 */	stfs f0, 0x860(r31)
/* 80949704  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80949708  D0 1F 08 64 */	stfs f0, 0x864(r31)
/* 8094970C  38 7F 08 2C */	addi r3, r31, 0x82c
/* 80949710  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80949714  7C 65 1B 78 */	mr r5, r3
/* 80949718  4B 9F D9 9C */	b PSVECSubtract
/* 8094971C  38 7F 08 38 */	addi r3, r31, 0x838
/* 80949720  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80949724  7C 65 1B 78 */	mr r5, r3
/* 80949728  4B 9F D9 8C */	b PSVECSubtract
/* 8094972C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80949730  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80949734  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80949738  7C 08 03 A6 */	mtlr r0
/* 8094973C  38 21 00 20 */	addi r1, r1, 0x20
/* 80949740  4E 80 00 20 */	blr 
