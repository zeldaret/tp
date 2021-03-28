lbl_80675894:
/* 80675894  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80675898  7C 08 02 A6 */	mflr r0
/* 8067589C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806758A0  39 61 00 30 */	addi r11, r1, 0x30
/* 806758A4  4B CE C9 34 */	b _savegpr_28
/* 806758A8  7C 7C 1B 78 */	mr r28, r3
/* 806758AC  7C 9D 23 78 */	mr r29, r4
/* 806758B0  7C BE 2B 78 */	mr r30, r5
/* 806758B4  3C 60 80 67 */	lis r3, l_staff_name@ha
/* 806758B8  3B E3 75 58 */	addi r31, r3, l_staff_name@l
/* 806758BC  38 61 00 08 */	addi r3, r1, 8
/* 806758C0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806758C4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806758C8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806758CC  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 806758D0  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 806758D4  4B BF 12 60 */	b __mi__4cXyzCFRC3Vec
/* 806758D8  C0 01 00 08 */	lfs f0, 8(r1)
/* 806758DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806758E0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806758E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806758E8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806758EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806758F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806758F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806758F8  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 806758FC  7C 00 00 D0 */	neg r0, r0
/* 80675900  7C 04 07 34 */	extsh r4, r0
/* 80675904  4B 99 6A D8 */	b mDoMtx_YrotS__FPA4_fs
/* 80675908  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8067590C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80675910  38 81 00 14 */	addi r4, r1, 0x14
/* 80675914  7C 85 23 78 */	mr r5, r4
/* 80675918  4B CD 14 54 */	b PSMTXMultVec
/* 8067591C  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80675920  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80675924  EC 01 00 32 */	fmuls f0, f1, f0
/* 80675928  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8067592C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80675930  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80675934  2C 1E 00 02 */	cmpwi r30, 2
/* 80675938  41 82 00 3C */	beq lbl_80675974
/* 8067593C  40 80 00 14 */	bge lbl_80675950
/* 80675940  2C 1E 00 00 */	cmpwi r30, 0
/* 80675944  41 82 00 18 */	beq lbl_8067595C
/* 80675948  40 80 00 20 */	bge lbl_80675968
/* 8067594C  48 00 00 3C */	b lbl_80675988
lbl_80675950:
/* 80675950  2C 1E 00 04 */	cmpwi r30, 4
/* 80675954  40 80 00 34 */	bge lbl_80675988
/* 80675958  48 00 00 28 */	b lbl_80675980
lbl_8067595C:
/* 8067595C  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80675960  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80675964  48 00 00 24 */	b lbl_80675988
lbl_80675968:
/* 80675968  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8067596C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80675970  48 00 00 18 */	b lbl_80675988
lbl_80675974:
/* 80675974  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80675978  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8067597C  48 00 00 0C */	b lbl_80675988
lbl_80675980:
/* 80675980  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80675984  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80675988:
/* 80675988  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8067598C  4B 99 73 D8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80675990  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80675994  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80675998  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 8067599C  4B 99 6A 98 */	b mDoMtx_YrotM__FPA4_fs
/* 806759A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806759A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806759A8  38 81 00 14 */	addi r4, r1, 0x14
/* 806759AC  7C 85 23 78 */	mr r5, r4
/* 806759B0  4B CD 13 BC */	b PSMTXMultVec
/* 806759B4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806759B8  D0 1D 00 00 */	stfs f0, 0(r29)
/* 806759BC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 806759C0  D0 1D 00 04 */	stfs f0, 4(r29)
/* 806759C4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806759C8  D0 1D 00 08 */	stfs f0, 8(r29)
/* 806759CC  39 61 00 30 */	addi r11, r1, 0x30
/* 806759D0  4B CE C8 54 */	b _restgpr_28
/* 806759D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806759D8  7C 08 03 A6 */	mtlr r0
/* 806759DC  38 21 00 30 */	addi r1, r1, 0x30
/* 806759E0  4E 80 00 20 */	blr 
