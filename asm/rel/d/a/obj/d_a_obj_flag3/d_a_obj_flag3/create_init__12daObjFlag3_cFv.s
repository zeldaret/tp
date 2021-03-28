lbl_80BEFBC4:
/* 80BEFBC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BEFBC8  7C 08 02 A6 */	mflr r0
/* 80BEFBCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BEFBD0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BEFBD4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BEFBD8  7C 7E 1B 78 */	mr r30, r3
/* 80BEFBDC  3C 80 80 BF */	lis r4, M_attr__12daObjFlag3_c@ha
/* 80BEFBE0  3B E4 04 58 */	addi r31, r4, M_attr__12daObjFlag3_c@l
/* 80BEFBE4  4B 44 1C 8C */	b getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 80BEFBE8  3C 80 80 BF */	lis r4, stringBase0@ha
/* 80BEFBEC  38 84 05 54 */	addi r4, r4, stringBase0@l
/* 80BEFBF0  38 84 00 2D */	addi r4, r4, 0x2d
/* 80BEFBF4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BEFBF8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BEFBFC  3C A5 00 02 */	addis r5, r5, 2
/* 80BEFC00  38 C0 00 80 */	li r6, 0x80
/* 80BEFC04  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BEFC08  4B 44 C7 74 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BEFC0C  80 03 00 00 */	lwz r0, 0(r3)
/* 80BEFC10  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80BEFC14  C8 3F 00 E8 */	lfd f1, 0xe8(r31)
/* 80BEFC18  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BEFC1C  3C 00 43 30 */	lis r0, 0x4330
/* 80BEFC20  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BEFC24  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BEFC28  EC 60 08 28 */	fsubs f3, f0, f1
/* 80BEFC2C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80BEFC30  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BEFC34  EC 20 18 2A */	fadds f1, f0, f3
/* 80BEFC38  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BEFC3C  D0 1E 13 20 */	stfs f0, 0x1320(r30)
/* 80BEFC40  D0 3E 13 24 */	stfs f1, 0x1324(r30)
/* 80BEFC44  D0 5E 13 28 */	stfs f2, 0x1328(r30)
/* 80BEFC48  7F C3 F3 78 */	mr r3, r30
/* 80BEFC4C  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 80BEFC50  FC 40 18 50 */	fneg f2, f3
/* 80BEFC54  FC 60 08 90 */	fmr f3, f1
/* 80BEFC58  C0 9F 00 DC */	lfs f4, 0xdc(r31)
/* 80BEFC5C  C0 BF 00 E0 */	lfs f5, 0xe0(r31)
/* 80BEFC60  FC C0 20 90 */	fmr f6, f4
/* 80BEFC64  4B 42 A8 E4 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BEFC68  38 61 00 08 */	addi r3, r1, 8
/* 80BEFC6C  38 9E 05 80 */	addi r4, r30, 0x580
/* 80BEFC70  48 00 07 C5 */	bl getTargetPos__12FlagCloth2_cFv
/* 80BEFC74  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BEFC78  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80BEFC7C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BEFC80  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80BEFC84  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BEFC88  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80BEFC8C  38 7E 05 80 */	addi r3, r30, 0x580
/* 80BEFC90  38 9E 13 20 */	addi r4, r30, 0x1320
/* 80BEFC94  7F C5 F3 78 */	mr r5, r30
/* 80BEFC98  48 00 00 71 */	bl initFlagPos__12FlagCloth2_cFP4cXyzP10fopAc_ac_c
/* 80BEFC9C  38 7F 00 00 */	addi r3, r31, 0
/* 80BEFCA0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BEFCA4  D0 1E 13 04 */	stfs f0, 0x1304(r30)
/* 80BEFCA8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BEFCAC  D0 1E 13 08 */	stfs f0, 0x1308(r30)
/* 80BEFCB0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BEFCB4  D0 1E 13 0C */	stfs f0, 0x130c(r30)
/* 80BEFCB8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BEFCBC  D0 1E 13 10 */	stfs f0, 0x1310(r30)
/* 80BEFCC0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80BEFCC4  D0 1E 13 14 */	stfs f0, 0x1314(r30)
/* 80BEFCC8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BEFCCC  4B 41 D0 98 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BEFCD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BEFCD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BEFCD8  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80BEFCDC  38 84 00 24 */	addi r4, r4, 0x24
/* 80BEFCE0  4B 75 67 D0 */	b PSMTXCopy
/* 80BEFCE4  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80BEFCE8  38 03 00 24 */	addi r0, r3, 0x24
/* 80BEFCEC  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80BEFCF0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BEFCF4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BEFCF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BEFCFC  7C 08 03 A6 */	mtlr r0
/* 80BEFD00  38 21 00 30 */	addi r1, r1, 0x30
/* 80BEFD04  4E 80 00 20 */	blr 
