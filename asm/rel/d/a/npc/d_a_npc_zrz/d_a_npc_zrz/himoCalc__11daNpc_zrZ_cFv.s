lbl_80B9A380:
/* 80B9A380  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B9A384  7C 08 02 A6 */	mflr r0
/* 80B9A388  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B9A38C  39 61 00 70 */	addi r11, r1, 0x70
/* 80B9A390  4B 7C 7E 4C */	b _savegpr_29
/* 80B9A394  7C 7D 1B 78 */	mr r29, r3
/* 80B9A398  3C 60 80 BA */	lis r3, m__17daNpc_zrZ_Param_c@ha
/* 80B9A39C  3B E3 AF EC */	addi r31, r3, m__17daNpc_zrZ_Param_c@l
/* 80B9A3A0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B9A3A4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B9A3A8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80B9A3AC  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80B9A3B0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B9A3B4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B9A3B8  C0 1F 02 2C */	lfs f0, 0x22c(r31)
/* 80B9A3BC  EC 01 00 2A */	fadds f0, f1, f0
/* 80B9A3C0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B9A3C4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B9A3C8  38 9D 14 A0 */	addi r4, r29, 0x14a0
/* 80B9A3CC  38 A1 00 50 */	addi r5, r1, 0x50
/* 80B9A3D0  4B 6C C7 64 */	b __mi__4cXyzCFRC3Vec
/* 80B9A3D4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B9A3D8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B9A3DC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B9A3E0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B9A3E4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B9A3E8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B9A3EC  38 61 00 20 */	addi r3, r1, 0x20
/* 80B9A3F0  38 81 00 44 */	addi r4, r1, 0x44
/* 80B9A3F4  4B 6C CB 00 */	b normalize__4cXyzFv
/* 80B9A3F8  38 61 00 14 */	addi r3, r1, 0x14
/* 80B9A3FC  38 81 00 44 */	addi r4, r1, 0x44
/* 80B9A400  3B DF 00 00 */	addi r30, r31, 0
/* 80B9A404  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80B9A408  4B 6C C7 7C */	b __ml__4cXyzCFf
/* 80B9A40C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B9A410  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B9A414  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B9A418  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B9A41C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B9A420  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B9A424  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80B9A428  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80B9A42C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80B9A430  FC 00 00 50 */	fneg f0, f0
/* 80B9A434  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B9A438  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80B9A43C  38 61 00 44 */	addi r3, r1, 0x44
/* 80B9A440  38 81 00 38 */	addi r4, r1, 0x38
/* 80B9A444  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80B9A448  C0 5F 02 30 */	lfs f2, 0x230(r31)
/* 80B9A44C  4B 6D 5D 2C */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80B9A450  38 61 00 08 */	addi r3, r1, 8
/* 80B9A454  38 81 00 44 */	addi r4, r1, 0x44
/* 80B9A458  38 A1 00 50 */	addi r5, r1, 0x50
/* 80B9A45C  4B 6C C6 88 */	b __pl__4cXyzCFRC3Vec
/* 80B9A460  C0 01 00 08 */	lfs f0, 8(r1)
/* 80B9A464  D0 1D 14 A0 */	stfs f0, 0x14a0(r29)
/* 80B9A468  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B9A46C  D0 1D 14 A4 */	stfs f0, 0x14a4(r29)
/* 80B9A470  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B9A474  D0 1D 14 A8 */	stfs f0, 0x14a8(r29)
/* 80B9A478  4B 47 28 50 */	b push__14mDoMtx_stack_cFv
/* 80B9A47C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B9A480  80 63 00 04 */	lwz r3, 4(r3)
/* 80B9A484  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B9A488  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B9A48C  38 63 05 70 */	addi r3, r3, 0x570
/* 80B9A490  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B9A494  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B9A498  4B 7A C0 18 */	b PSMTXCopy
/* 80B9A49C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B9A4A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B9A4A4  7C 64 1B 78 */	mr r4, r3
/* 80B9A4A8  4B 7A C1 08 */	b PSMTXInverse
/* 80B9A4AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B9A4B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B9A4B4  38 9D 14 A0 */	addi r4, r29, 0x14a0
/* 80B9A4B8  38 BD 14 AC */	addi r5, r29, 0x14ac
/* 80B9A4BC  4B 7A C8 B0 */	b PSMTXMultVec
/* 80B9A4C0  4B 47 28 54 */	b pop__14mDoMtx_stack_cFv
/* 80B9A4C4  C0 3D 14 B0 */	lfs f1, 0x14b0(r29)
/* 80B9A4C8  C0 5D 14 AC */	lfs f2, 0x14ac(r29)
/* 80B9A4CC  4B 6C D1 A8 */	b cM_atan2s__Fff
/* 80B9A4D0  B0 7D 14 B8 */	sth r3, 0x14b8(r29)
/* 80B9A4D4  38 00 00 00 */	li r0, 0
/* 80B9A4D8  B0 1D 14 BA */	sth r0, 0x14ba(r29)
/* 80B9A4DC  C0 3D 14 B4 */	lfs f1, 0x14b4(r29)
/* 80B9A4E0  C0 5D 14 AC */	lfs f2, 0x14ac(r29)
/* 80B9A4E4  4B 6C D1 90 */	b cM_atan2s__Fff
/* 80B9A4E8  B0 7D 14 BC */	sth r3, 0x14bc(r29)
/* 80B9A4EC  39 61 00 70 */	addi r11, r1, 0x70
/* 80B9A4F0  4B 7C 7D 38 */	b _restgpr_29
/* 80B9A4F4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B9A4F8  7C 08 03 A6 */	mtlr r0
/* 80B9A4FC  38 21 00 70 */	addi r1, r1, 0x70
/* 80B9A500  4E 80 00 20 */	blr 
