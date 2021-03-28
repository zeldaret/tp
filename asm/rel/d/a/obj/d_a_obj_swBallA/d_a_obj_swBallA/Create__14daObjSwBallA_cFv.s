lbl_80CF3694:
/* 80CF3694  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF3698  7C 08 02 A6 */	mflr r0
/* 80CF369C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF36A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CF36A4  7C 7F 1B 78 */	mr r31, r3
/* 80CF36A8  4B FF FF 69 */	bl initBaseMtx__14daObjSwBallA_cFv
/* 80CF36AC  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80CF36B0  38 03 00 24 */	addi r0, r3, 0x24
/* 80CF36B4  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CF36B8  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80CF36BC  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF36C0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80CF36C4  80 83 00 00 */	lwz r4, 0(r3)
/* 80CF36C8  7F E3 FB 78 */	mr r3, r31
/* 80CF36CC  C0 24 00 3C */	lfs f1, 0x3c(r4)
/* 80CF36D0  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 80CF36D4  C0 64 00 44 */	lfs f3, 0x44(r4)
/* 80CF36D8  C0 84 00 48 */	lfs f4, 0x48(r4)
/* 80CF36DC  C0 A4 00 4C */	lfs f5, 0x4c(r4)
/* 80CF36E0  C0 C4 00 50 */	lfs f6, 0x50(r4)
/* 80CF36E4  4B 32 6E 64 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CF36E8  38 60 00 00 */	li r3, 0
/* 80CF36EC  38 80 FF FF */	li r4, -1
/* 80CF36F0  38 00 00 08 */	li r0, 8
/* 80CF36F4  7C 09 03 A6 */	mtctr r0
lbl_80CF36F8:
/* 80CF36F8  38 03 05 8C */	addi r0, r3, 0x58c
/* 80CF36FC  7C 9F 01 2E */	stwx r4, r31, r0
/* 80CF3700  38 63 00 04 */	addi r3, r3, 4
/* 80CF3704  42 00 FF F4 */	bdnz lbl_80CF36F8
/* 80CF3708  38 00 FF FF */	li r0, -1
/* 80CF370C  90 1F 05 C0 */	stw r0, 0x5c0(r31)
/* 80CF3710  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF3714  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF3718  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF371C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CF3720  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF3724  7C 05 07 74 */	extsb r5, r0
/* 80CF3728  4B 34 1C 38 */	b isSwitch__10dSv_info_cCFii
/* 80CF372C  2C 03 00 00 */	cmpwi r3, 0
/* 80CF3730  41 82 00 3C */	beq lbl_80CF376C
/* 80CF3734  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 80CF3738  A8 04 00 08 */	lha r0, 8(r4)
/* 80CF373C  3C 60 80 CF */	lis r3, lit_3884@ha
/* 80CF3740  C8 23 43 FC */	lfd f1, lit_3884@l(r3)
/* 80CF3744  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CF3748  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CF374C  3C 00 43 30 */	lis r0, 0x4330
/* 80CF3750  90 01 00 08 */	stw r0, 8(r1)
/* 80CF3754  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CF3758  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CF375C  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80CF3760  38 00 00 02 */	li r0, 2
/* 80CF3764  98 1F 05 AE */	stb r0, 0x5ae(r31)
/* 80CF3768  48 00 00 38 */	b lbl_80CF37A0
lbl_80CF376C:
/* 80CF376C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF3770  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF3774  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF3778  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80CF377C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF3780  7C 05 07 74 */	extsb r5, r0
/* 80CF3784  4B 34 1B 2C */	b offSwitch__10dSv_info_cFii
/* 80CF3788  3C 60 80 CF */	lis r3, lit_3733@ha
/* 80CF378C  C0 03 43 F4 */	lfs f0, lit_3733@l(r3)
/* 80CF3790  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF3794  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80CF3798  38 00 00 00 */	li r0, 0
/* 80CF379C  98 1F 05 AE */	stb r0, 0x5ae(r31)
lbl_80CF37A0:
/* 80CF37A0  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80CF37A4  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF37A8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80CF37AC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF37B0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80CF37B4  38 80 00 01 */	li r4, 1
/* 80CF37B8  81 83 00 00 */	lwz r12, 0(r3)
/* 80CF37BC  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80CF37C0  7D 89 03 A6 */	mtctr r12
/* 80CF37C4  4E 80 04 21 */	bctrl 
/* 80CF37C8  3C 80 80 CF */	lis r4, l_color@ha
/* 80CF37CC  8C 04 43 E4 */	lbzu r0, l_color@l(r4)
/* 80CF37D0  98 03 00 00 */	stb r0, 0(r3)
/* 80CF37D4  88 04 00 01 */	lbz r0, 1(r4)
/* 80CF37D8  98 03 00 01 */	stb r0, 1(r3)
/* 80CF37DC  88 04 00 02 */	lbz r0, 2(r4)
/* 80CF37E0  98 03 00 02 */	stb r0, 2(r3)
/* 80CF37E4  38 60 00 01 */	li r3, 1
/* 80CF37E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CF37EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF37F0  7C 08 03 A6 */	mtlr r0
/* 80CF37F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF37F8  4E 80 00 20 */	blr 
