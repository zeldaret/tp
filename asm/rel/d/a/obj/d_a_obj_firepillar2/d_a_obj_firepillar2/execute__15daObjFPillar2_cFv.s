lbl_80BEA584:
/* 80BEA584  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BEA588  7C 08 02 A6 */	mflr r0
/* 80BEA58C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BEA590  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BEA594  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BEA598  7C 7F 1B 78 */	mr r31, r3
/* 80BEA59C  3C 80 80 BF */	lis r4, lit_3656@ha
/* 80BEA5A0  3B C4 B4 C4 */	addi r30, r4, lit_3656@l
/* 80BEA5A4  48 00 01 91 */	bl action__15daObjFPillar2_cFv
/* 80BEA5A8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80BEA5AC  D0 1F 09 44 */	stfs f0, 0x944(r31)
/* 80BEA5B0  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80BEA5B4  D0 1F 09 4C */	stfs f0, 0x94c(r31)
/* 80BEA5B8  A0 1F 09 7A */	lhz r0, 0x97a(r31)
/* 80BEA5BC  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80BEA5C0  2C 00 00 01 */	cmpwi r0, 1
/* 80BEA5C4  41 82 00 14 */	beq lbl_80BEA5D8
/* 80BEA5C8  40 80 00 74 */	bge lbl_80BEA63C
/* 80BEA5CC  2C 00 00 00 */	cmpwi r0, 0
/* 80BEA5D0  40 80 00 3C */	bge lbl_80BEA60C
/* 80BEA5D4  48 00 00 68 */	b lbl_80BEA63C
lbl_80BEA5D8:
/* 80BEA5D8  3C 60 80 43 */	lis r3, BaseY__4cXyz@ha
/* 80BEA5DC  C4 03 0D 24 */	lfsu f0, BaseY__4cXyz@l(r3)
/* 80BEA5E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BEA5E4  C0 43 00 04 */	lfs f2, 4(r3)
/* 80BEA5E8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80BEA5EC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BEA5F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BEA5F4  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80BEA5F8  C0 1F 09 48 */	lfs f0, 0x948(r31)
/* 80BEA5FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BEA600  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BEA604  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BEA608  48 00 00 34 */	b lbl_80BEA63C
lbl_80BEA60C:
/* 80BEA60C  3C 60 80 43 */	lis r3, BaseZ__4cXyz@ha
/* 80BEA610  C4 03 0D 3C */	lfsu f0, BaseZ__4cXyz@l(r3)
/* 80BEA614  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BEA618  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BEA61C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BEA620  C0 43 00 08 */	lfs f2, 8(r3)
/* 80BEA624  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80BEA628  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80BEA62C  C0 1F 09 48 */	lfs f0, 0x948(r31)
/* 80BEA630  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BEA634  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BEA638  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80BEA63C:
/* 80BEA63C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BEA640  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BEA644  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80BEA648  4B 42 1D 94 */	b mDoMtx_YrotS__FPA4_fs
/* 80BEA64C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BEA650  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BEA654  38 81 00 14 */	addi r4, r1, 0x14
/* 80BEA658  7C 85 23 78 */	mr r5, r4
/* 80BEA65C  4B 75 C7 10 */	b PSMTXMultVec
/* 80BEA660  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BEA664  D0 1F 09 5C */	stfs f0, 0x95c(r31)
/* 80BEA668  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BEA66C  D0 1F 09 60 */	stfs f0, 0x960(r31)
/* 80BEA670  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BEA674  D0 1F 09 64 */	stfs f0, 0x964(r31)
/* 80BEA678  38 61 00 08 */	addi r3, r1, 8
/* 80BEA67C  38 81 00 14 */	addi r4, r1, 0x14
/* 80BEA680  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BEA684  4B 67 C4 60 */	b __pl__4cXyzCFRC3Vec
/* 80BEA688  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BEA68C  D0 1F 09 68 */	stfs f0, 0x968(r31)
/* 80BEA690  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BEA694  D0 1F 09 6C */	stfs f0, 0x96c(r31)
/* 80BEA698  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BEA69C  D0 1F 09 70 */	stfs f0, 0x970(r31)
/* 80BEA6A0  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80BEA6A4  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80BEA6A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BEA6AC  D0 1F 09 74 */	stfs f0, 0x974(r31)
/* 80BEA6B0  C0 5F 09 48 */	lfs f2, 0x948(r31)
/* 80BEA6B4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80BEA6B8  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80BEA6BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BEA6C0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BEA6C4  40 81 00 24 */	ble lbl_80BEA6E8
/* 80BEA6C8  38 7F 08 F4 */	addi r3, r31, 0x8f4
/* 80BEA6CC  38 9F 09 5C */	addi r4, r31, 0x95c
/* 80BEA6D0  4B 68 49 6C */	b Set__8cM3dGCpsFRC9cM3dGCpsS
/* 80BEA6D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BEA6D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BEA6DC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BEA6E0  38 9F 07 D0 */	addi r4, r31, 0x7d0
/* 80BEA6E4  4B 67 A4 C4 */	b Set__4cCcSFP8cCcD_Obj
lbl_80BEA6E8:
/* 80BEA6E8  7F E3 FB 78 */	mr r3, r31
/* 80BEA6EC  4B FF F6 71 */	bl setBaseMtx__15daObjFPillar2_cFv
/* 80BEA6F0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BEA6F4  7C 03 07 74 */	extsb r3, r0
/* 80BEA6F8  4B 44 29 74 */	b dComIfGp_getReverb__Fi
/* 80BEA6FC  7C 65 1B 78 */	mr r5, r3
/* 80BEA700  38 7F 09 BC */	addi r3, r31, 0x9bc
/* 80BEA704  38 80 00 00 */	li r4, 0
/* 80BEA708  81 9F 09 CC */	lwz r12, 0x9cc(r31)
/* 80BEA70C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BEA710  7D 89 03 A6 */	mtctr r12
/* 80BEA714  4E 80 04 21 */	bctrl 
/* 80BEA718  38 60 00 01 */	li r3, 1
/* 80BEA71C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BEA720  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BEA724  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BEA728  7C 08 03 A6 */	mtlr r0
/* 80BEA72C  38 21 00 30 */	addi r1, r1, 0x30
/* 80BEA730  4E 80 00 20 */	blr 
