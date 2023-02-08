lbl_80BF75C4:
/* 80BF75C4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BF75C8  7C 08 02 A6 */	mflr r0
/* 80BF75CC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BF75D0  39 61 00 60 */	addi r11, r1, 0x60
/* 80BF75D4  4B 76 AC 09 */	bl _savegpr_29
/* 80BF75D8  7C 7E 1B 78 */	mr r30, r3
/* 80BF75DC  3C 80 80 C0 */	lis r4, l_dzb@ha /* 0x80BF8FE8@ha */
/* 80BF75E0  3B E4 8F E8 */	addi r31, r4, l_dzb@l /* 0x80BF8FE8@l */
/* 80BF75E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF75E8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF75EC  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80BF75F0  A0 03 07 66 */	lhz r0, 0x766(r3)
/* 80BF75F4  54 00 C7 3F */	rlwinm. r0, r0, 0x18, 0x1c, 0x1f
/* 80BF75F8  40 82 00 24 */	bne lbl_80BF761C
/* 80BF75FC  7F A4 EB 78 */	mr r4, r29
/* 80BF7600  4B 42 31 E1 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BF7604  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80BF7608  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF760C  40 80 01 B4 */	bge lbl_80BF77C0
/* 80BF7610  7F C3 F3 78 */	mr r3, r30
/* 80BF7614  48 00 02 25 */	bl actionOnWait2Init__13daObjGeyser_cFv
/* 80BF7618  48 00 01 A8 */	b lbl_80BF77C0
lbl_80BF761C:
/* 80BF761C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80BF7620  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80BF7624  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80BF7628  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80BF762C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BF7630  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BF7634  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BF7638  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80BF763C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BF7640  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BF7644  4B 41 57 21 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BF7648  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF764C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF7650  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BF7654  4B 41 4D E1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BF7658  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF765C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF7660  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BF7664  7C 85 23 78 */	mr r5, r4
/* 80BF7668  4B 74 F7 05 */	bl PSMTXMultVec
/* 80BF766C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF7670  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF7674  38 81 00 28 */	addi r4, r1, 0x28
/* 80BF7678  7C 85 23 78 */	mr r5, r4
/* 80BF767C  4B 74 F6 F1 */	bl PSMTXMultVec
/* 80BF7680  3C 60 80 C0 */	lis r3, __vt__8cM3dGLin@ha /* 0x80BF920C@ha */
/* 80BF7684  38 03 92 0C */	addi r0, r3, __vt__8cM3dGLin@l /* 0x80BF920C@l */
/* 80BF7688  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80BF768C  38 61 00 34 */	addi r3, r1, 0x34
/* 80BF7690  38 81 00 28 */	addi r4, r1, 0x28
/* 80BF7694  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80BF7698  4B 67 7C 51 */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 80BF769C  38 61 00 34 */	addi r3, r1, 0x34
/* 80BF76A0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80BF76A4  38 A1 00 10 */	addi r5, r1, 0x10
/* 80BF76A8  38 C1 00 0C */	addi r6, r1, 0xc
/* 80BF76AC  4B 67 10 65 */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80BF76B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BF76B4  41 82 01 00 */	beq lbl_80BF77B4
/* 80BF76B8  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 80BF76BC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BF76C0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF76C4  40 81 00 58 */	ble lbl_80BF771C
/* 80BF76C8  FC 00 20 34 */	frsqrte f0, f4
/* 80BF76CC  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BF76D0  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF76D4  C8 5F 00 48 */	lfd f2, 0x48(r31)
/* 80BF76D8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF76DC  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF76E0  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF76E4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF76E8  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF76EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF76F0  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF76F4  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF76F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF76FC  FC 23 00 32 */	fmul f1, f3, f0
/* 80BF7700  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF7704  FC 04 00 32 */	fmul f0, f4, f0
/* 80BF7708  FC 02 00 28 */	fsub f0, f2, f0
/* 80BF770C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF7710  FC 84 00 32 */	fmul f4, f4, f0
/* 80BF7714  FC 80 20 18 */	frsp f4, f4
/* 80BF7718  48 00 00 88 */	b lbl_80BF77A0
lbl_80BF771C:
/* 80BF771C  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 80BF7720  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF7724  40 80 00 10 */	bge lbl_80BF7734
/* 80BF7728  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BF772C  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BF7730  48 00 00 70 */	b lbl_80BF77A0
lbl_80BF7734:
/* 80BF7734  D0 81 00 08 */	stfs f4, 8(r1)
/* 80BF7738  80 81 00 08 */	lwz r4, 8(r1)
/* 80BF773C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BF7740  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BF7744  7C 03 00 00 */	cmpw r3, r0
/* 80BF7748  41 82 00 14 */	beq lbl_80BF775C
/* 80BF774C  40 80 00 40 */	bge lbl_80BF778C
/* 80BF7750  2C 03 00 00 */	cmpwi r3, 0
/* 80BF7754  41 82 00 20 */	beq lbl_80BF7774
/* 80BF7758  48 00 00 34 */	b lbl_80BF778C
lbl_80BF775C:
/* 80BF775C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BF7760  41 82 00 0C */	beq lbl_80BF776C
/* 80BF7764  38 00 00 01 */	li r0, 1
/* 80BF7768  48 00 00 28 */	b lbl_80BF7790
lbl_80BF776C:
/* 80BF776C  38 00 00 02 */	li r0, 2
/* 80BF7770  48 00 00 20 */	b lbl_80BF7790
lbl_80BF7774:
/* 80BF7774  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BF7778  41 82 00 0C */	beq lbl_80BF7784
/* 80BF777C  38 00 00 05 */	li r0, 5
/* 80BF7780  48 00 00 10 */	b lbl_80BF7790
lbl_80BF7784:
/* 80BF7784  38 00 00 03 */	li r0, 3
/* 80BF7788  48 00 00 08 */	b lbl_80BF7790
lbl_80BF778C:
/* 80BF778C  38 00 00 04 */	li r0, 4
lbl_80BF7790:
/* 80BF7790  2C 00 00 01 */	cmpwi r0, 1
/* 80BF7794  40 82 00 0C */	bne lbl_80BF77A0
/* 80BF7798  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BF779C  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BF77A0:
/* 80BF77A0  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80BF77A4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BF77A8  40 80 00 0C */	bge lbl_80BF77B4
/* 80BF77AC  7F C3 F3 78 */	mr r3, r30
/* 80BF77B0  48 00 00 89 */	bl actionOnWait2Init__13daObjGeyser_cFv
lbl_80BF77B4:
/* 80BF77B4  3C 60 80 C0 */	lis r3, __vt__8cM3dGLin@ha /* 0x80BF920C@ha */
/* 80BF77B8  38 03 92 0C */	addi r0, r3, __vt__8cM3dGLin@l /* 0x80BF920C@l */
/* 80BF77BC  90 01 00 4C */	stw r0, 0x4c(r1)
lbl_80BF77C0:
/* 80BF77C0  38 7E 07 30 */	addi r3, r30, 0x730
/* 80BF77C4  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80BF77C8  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80BF77CC  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80BF77D0  EC 42 00 32 */	fmuls f2, f2, f0
/* 80BF77D4  4B 67 8F 6D */	bl cLib_chaseF__FPfff
/* 80BF77D8  39 61 00 60 */	addi r11, r1, 0x60
/* 80BF77DC  4B 76 AA 4D */	bl _restgpr_29
/* 80BF77E0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BF77E4  7C 08 03 A6 */	mtlr r0
/* 80BF77E8  38 21 00 60 */	addi r1, r1, 0x60
/* 80BF77EC  4E 80 00 20 */	blr 
