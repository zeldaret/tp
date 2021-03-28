lbl_807B753C:
/* 807B753C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807B7540  7C 08 02 A6 */	mflr r0
/* 807B7544  90 01 00 24 */	stw r0, 0x24(r1)
/* 807B7548  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807B754C  7C 7F 1B 78 */	mr r31, r3
/* 807B7550  88 03 1A 8E */	lbz r0, 0x1a8e(r3)
/* 807B7554  7C 00 07 75 */	extsb. r0, r0
/* 807B7558  41 82 00 0C */	beq lbl_807B7564
/* 807B755C  38 60 00 01 */	li r3, 1
/* 807B7560  48 00 01 D0 */	b lbl_807B7730
lbl_807B7564:
/* 807B7564  80 1F 04 A4 */	lwz r0, 0x4a4(r31)
/* 807B7568  90 01 00 08 */	stw r0, 8(r1)
/* 807B756C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 807B7570  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 807B7574  38 81 00 08 */	addi r4, r1, 8
/* 807B7578  4B 86 22 80 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807B757C  3C 80 80 7C */	lis r4, master@ha
/* 807B7580  90 64 80 E0 */	stw r3, master@l(r4)
/* 807B7584  28 03 00 00 */	cmplwi r3, 0
/* 807B7588  40 82 00 0C */	bne lbl_807B7594
/* 807B758C  38 60 00 01 */	li r3, 1
/* 807B7590  48 00 01 A0 */	b lbl_807B7730
lbl_807B7594:
/* 807B7594  A8 7F 06 4C */	lha r3, 0x64c(r31)
/* 807B7598  38 03 00 01 */	addi r0, r3, 1
/* 807B759C  B0 1F 06 4C */	sth r0, 0x64c(r31)
/* 807B75A0  38 60 00 00 */	li r3, 0
/* 807B75A4  38 00 00 03 */	li r0, 3
/* 807B75A8  7C 09 03 A6 */	mtctr r0
lbl_807B75AC:
/* 807B75AC  38 A3 06 52 */	addi r5, r3, 0x652
/* 807B75B0  7C 9F 2A AE */	lhax r4, r31, r5
/* 807B75B4  2C 04 00 00 */	cmpwi r4, 0
/* 807B75B8  41 82 00 0C */	beq lbl_807B75C4
/* 807B75BC  38 04 FF FF */	addi r0, r4, -1
/* 807B75C0  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_807B75C4:
/* 807B75C4  38 63 00 02 */	addi r3, r3, 2
/* 807B75C8  42 00 FF E4 */	bdnz lbl_807B75AC
/* 807B75CC  A8 7F 06 58 */	lha r3, 0x658(r31)
/* 807B75D0  2C 03 00 00 */	cmpwi r3, 0
/* 807B75D4  41 82 00 0C */	beq lbl_807B75E0
/* 807B75D8  38 03 FF FF */	addi r0, r3, -1
/* 807B75DC  B0 1F 06 58 */	sth r0, 0x658(r31)
lbl_807B75E0:
/* 807B75E0  7F E3 FB 78 */	mr r3, r31
/* 807B75E4  4B FF F7 E5 */	bl action__FP15e_th_ball_class
/* 807B75E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807B75EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807B75F0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807B75F4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 807B75F8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 807B75FC  4B B8 F2 EC */	b PSMTXTrans
/* 807B7600  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807B7604  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807B7608  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 807B760C  4B 85 4E 28 */	b mDoMtx_YrotM__FPA4_fs
/* 807B7610  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807B7614  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807B7618  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 807B761C  4B 85 4D 80 */	b mDoMtx_XrotM__FPA4_fs
/* 807B7620  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807B7624  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807B7628  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807B762C  4B 85 4E 08 */	b mDoMtx_YrotM__FPA4_fs
/* 807B7630  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807B7634  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807B7638  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 807B763C  38 04 C0 00 */	addi r0, r4, -16384
/* 807B7640  7C 04 07 34 */	extsh r4, r0
/* 807B7644  4B 85 4D 58 */	b mDoMtx_XrotM__FPA4_fs
/* 807B7648  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807B764C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807B7650  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 807B7654  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 807B7658  7C 04 00 50 */	subf r0, r4, r0
/* 807B765C  7C 04 07 34 */	extsh r4, r0
/* 807B7660  4B 85 4D D4 */	b mDoMtx_YrotM__FPA4_fs
/* 807B7664  3C 60 80 7B */	lis r3, lit_3747@ha
/* 807B7668  C0 23 7E BC */	lfs f1, lit_3747@l(r3)
/* 807B766C  3C 60 80 7B */	lis r3, lit_3759@ha
/* 807B7670  C0 43 7E C4 */	lfs f2, lit_3759@l(r3)
/* 807B7674  FC 60 08 90 */	fmr f3, f1
/* 807B7678  4B 85 57 24 */	b transM__14mDoMtx_stack_cFfff
/* 807B767C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807B7680  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807B7684  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 807B7688  38 84 00 24 */	addi r4, r4, 0x24
/* 807B768C  4B B8 EE 24 */	b PSMTXCopy
/* 807B7690  3C 60 80 7B */	lis r3, lit_3747@ha
/* 807B7694  C0 23 7E BC */	lfs f1, lit_3747@l(r3)
/* 807B7698  FC 40 08 90 */	fmr f2, f1
/* 807B769C  FC 60 08 90 */	fmr f3, f1
/* 807B76A0  4B 85 56 FC */	b transM__14mDoMtx_stack_cFfff
/* 807B76A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807B76A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807B76AC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807B76B0  D0 1F 0D D8 */	stfs f0, 0xdd8(r31)
/* 807B76B4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807B76B8  D0 1F 0D DC */	stfs f0, 0xddc(r31)
/* 807B76BC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807B76C0  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 807B76C4  7F E3 FB 78 */	mr r3, r31
/* 807B76C8  4B FF D6 25 */	bl chain_control_01__FP15e_th_ball_class
/* 807B76CC  7F E3 FB 78 */	mr r3, r31
/* 807B76D0  4B FF D9 E1 */	bl chain_control_02__FP15e_th_ball_class
/* 807B76D4  7F E3 FB 78 */	mr r3, r31
/* 807B76D8  4B FF DD DD */	bl chain_control_03__FP15e_th_ball_class
/* 807B76DC  7F E3 FB 78 */	mr r3, r31
/* 807B76E0  4B FF DF C5 */	bl chain_control_11__FP15e_th_ball_class
/* 807B76E4  7F E3 FB 78 */	mr r3, r31
/* 807B76E8  4B FF E2 99 */	bl chain_control_12__FP15e_th_ball_class
/* 807B76EC  7F E3 FB 78 */	mr r3, r31
/* 807B76F0  4B FF E4 49 */	bl chain_control_13__FP15e_th_ball_class
/* 807B76F4  7F E3 FB 78 */	mr r3, r31
/* 807B76F8  4B FF E5 3D */	bl chain_control_21__FP15e_th_ball_class
/* 807B76FC  7F E3 FB 78 */	mr r3, r31
/* 807B7700  4B FF FD 55 */	bl get_demo__FP15e_th_ball_class
/* 807B7704  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807B7708  7C 03 07 74 */	extsb r3, r0
/* 807B770C  4B 87 59 60 */	b dComIfGp_getReverb__Fi
/* 807B7710  7C 65 1B 78 */	mr r5, r3
/* 807B7714  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 807B7718  38 80 00 00 */	li r4, 0
/* 807B771C  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 807B7720  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 807B7724  7D 89 03 A6 */	mtctr r12
/* 807B7728  4E 80 04 21 */	bctrl 
/* 807B772C  38 60 00 01 */	li r3, 1
lbl_807B7730:
/* 807B7730  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807B7734  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807B7738  7C 08 03 A6 */	mtlr r0
/* 807B773C  38 21 00 20 */	addi r1, r1, 0x20
/* 807B7740  4E 80 00 20 */	blr 
