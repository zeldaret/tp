lbl_8080DC5C:
/* 8080DC5C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8080DC60  7C 08 02 A6 */	mflr r0
/* 8080DC64  90 01 00 84 */	stw r0, 0x84(r1)
/* 8080DC68  39 61 00 80 */	addi r11, r1, 0x80
/* 8080DC6C  4B B5 45 70 */	b _savegpr_29
/* 8080DC70  7C 7D 1B 78 */	mr r29, r3
/* 8080DC74  3C 80 80 81 */	lis r4, lit_3925@ha
/* 8080DC78  3B E4 59 94 */	addi r31, r4, lit_3925@l
/* 8080DC7C  38 00 00 1E */	li r0, 0x1e
/* 8080DC80  B0 03 06 FA */	sth r0, 0x6fa(r3)
/* 8080DC84  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8080DC88  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8080DC8C  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 8080DC90  4B FF B3 71 */	bl checkWolfBark__8daE_YM_cFv
/* 8080DC94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080DC98  40 82 05 BC */	bne lbl_8080E254
/* 8080DC9C  7F A3 EB 78 */	mr r3, r29
/* 8080DCA0  4B FF B1 95 */	bl checkWallCrash__8daE_YM_cFv
/* 8080DCA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080DCA8  40 82 05 AC */	bne lbl_8080E254
/* 8080DCAC  7F A3 EB 78 */	mr r3, r29
/* 8080DCB0  4B FF FE A9 */	bl setAttackMotion__8daE_YM_cFv
/* 8080DCB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080DCB8  40 82 05 9C */	bne lbl_8080E254
/* 8080DCBC  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 8080DCC0  2C 00 00 02 */	cmpwi r0, 2
/* 8080DCC4  41 82 01 B4 */	beq lbl_8080DE78
/* 8080DCC8  40 80 00 14 */	bge lbl_8080DCDC
/* 8080DCCC  2C 00 00 00 */	cmpwi r0, 0
/* 8080DCD0  41 82 00 1C */	beq lbl_8080DCEC
/* 8080DCD4  40 80 01 50 */	bge lbl_8080DE24
/* 8080DCD8  48 00 05 74 */	b lbl_8080E24C
lbl_8080DCDC:
/* 8080DCDC  2C 00 00 04 */	cmpwi r0, 4
/* 8080DCE0  41 82 05 2C */	beq lbl_8080E20C
/* 8080DCE4  40 80 05 68 */	bge lbl_8080E24C
/* 8080DCE8  48 00 02 4C */	b lbl_8080DF34
lbl_8080DCEC:
/* 8080DCEC  7F A3 EB 78 */	mr r3, r29
/* 8080DCF0  48 00 6A 69 */	bl checkWall__8daE_YM_cFv
/* 8080DCF4  88 1D 06 A5 */	lbz r0, 0x6a5(r29)
/* 8080DCF8  28 00 00 00 */	cmplwi r0, 0
/* 8080DCFC  40 82 00 54 */	bne lbl_8080DD50
/* 8080DD00  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8080DD04  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8080DD08  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8080DD0C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8080DD10  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8080DD14  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8080DD18  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8080DD1C  EC 01 00 2A */	fadds f0, f1, f0
/* 8080DD20  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8080DD24  38 61 00 34 */	addi r3, r1, 0x34
/* 8080DD28  38 81 00 40 */	addi r4, r1, 0x40
/* 8080DD2C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8080DD30  4B A5 8E 04 */	b __mi__4cXyzCFRC3Vec
/* 8080DD34  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8080DD38  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8080DD3C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8080DD40  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8080DD44  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8080DD48  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8080DD4C  48 00 00 2C */	b lbl_8080DD78
lbl_8080DD50:
/* 8080DD50  38 61 00 28 */	addi r3, r1, 0x28
/* 8080DD54  38 9D 06 70 */	addi r4, r29, 0x670
/* 8080DD58  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8080DD5C  4B A5 8D D8 */	b __mi__4cXyzCFRC3Vec
/* 8080DD60  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8080DD64  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8080DD68  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8080DD6C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8080DD70  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8080DD74  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_8080DD78:
/* 8080DD78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8080DD7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8080DD80  A8 1D 06 6C */	lha r0, 0x66c(r29)
/* 8080DD84  7C 00 00 D0 */	neg r0, r0
/* 8080DD88  7C 04 07 34 */	extsh r4, r0
/* 8080DD8C  4B 7F E6 E8 */	b mDoMtx_ZrotS__FPA4_fs
/* 8080DD90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8080DD94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8080DD98  A8 1D 06 68 */	lha r0, 0x668(r29)
/* 8080DD9C  7C 00 00 D0 */	neg r0, r0
/* 8080DDA0  7C 04 07 34 */	extsh r4, r0
/* 8080DDA4  4B 7F E5 F8 */	b mDoMtx_XrotM__FPA4_fs
/* 8080DDA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8080DDAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8080DDB0  38 81 00 58 */	addi r4, r1, 0x58
/* 8080DDB4  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8080DDB8  4B B3 8F B4 */	b PSMTXMultVec
/* 8080DDBC  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8080DDC0  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 8080DDC4  4B A5 98 B0 */	b cM_atan2s__Fff
/* 8080DDC8  B0 7D 06 E4 */	sth r3, 0x6e4(r29)
/* 8080DDCC  7F A3 EB 78 */	mr r3, r29
/* 8080DDD0  A8 9D 06 E4 */	lha r4, 0x6e4(r29)
/* 8080DDD4  48 00 60 D1 */	bl checkBeforeBg__8daE_YM_cFs
/* 8080DDD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080DDDC  41 82 00 1C */	beq lbl_8080DDF8
/* 8080DDE0  7F A3 EB 78 */	mr r3, r29
/* 8080DDE4  38 80 00 01 */	li r4, 1
/* 8080DDE8  4B FF C1 B5 */	bl setActionMode__8daE_YM_cFi
/* 8080DDEC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080DDF0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080DDF4  48 00 04 60 */	b lbl_8080E254
lbl_8080DDF8:
/* 8080DDF8  7F A3 EB 78 */	mr r3, r29
/* 8080DDFC  38 80 00 0E */	li r4, 0xe
/* 8080DE00  38 A0 00 02 */	li r5, 2
/* 8080DE04  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8080DE08  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 8080DE0C  4B FF A3 D5 */	bl bckSet__8daE_YM_cFiUcff
/* 8080DE10  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080DE14  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080DE18  38 00 00 01 */	li r0, 1
/* 8080DE1C  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080DE20  48 00 04 2C */	b lbl_8080E24C
lbl_8080DE24:
/* 8080DE24  7F A3 EB 78 */	mr r3, r29
/* 8080DE28  4B FF FB 69 */	bl checkAttackEnd__8daE_YM_cFv
/* 8080DE2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080DE30  40 82 04 24 */	bne lbl_8080E254
/* 8080DE34  7F A3 EB 78 */	mr r3, r29
/* 8080DE38  4B FF C0 B9 */	bl setTurnSound__8daE_YM_cFv
/* 8080DE3C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8080DE40  A8 9D 06 E4 */	lha r4, 0x6e4(r29)
/* 8080DE44  38 A0 04 00 */	li r5, 0x400
/* 8080DE48  4B A6 2D 48 */	b cLib_chaseAngleS__FPsss
/* 8080DE4C  2C 03 00 00 */	cmpwi r3, 0
/* 8080DE50  41 82 03 FC */	beq lbl_8080E24C
/* 8080DE54  7F A3 EB 78 */	mr r3, r29
/* 8080DE58  38 80 00 0F */	li r4, 0xf
/* 8080DE5C  38 A0 00 02 */	li r5, 2
/* 8080DE60  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080DE64  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080DE68  4B FF A3 79 */	bl bckSet__8daE_YM_cFiUcff
/* 8080DE6C  38 00 00 02 */	li r0, 2
/* 8080DE70  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080DE74  48 00 03 D8 */	b lbl_8080E24C
lbl_8080DE78:
/* 8080DE78  7F A3 EB 78 */	mr r3, r29
/* 8080DE7C  4B FF FB 15 */	bl checkAttackEnd__8daE_YM_cFv
/* 8080DE80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080DE84  40 82 03 D0 */	bne lbl_8080E254
/* 8080DE88  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700EA@ha */
/* 8080DE8C  38 03 00 EA */	addi r0, r3, 0x00EA /* 0x000700EA@l */
/* 8080DE90  90 01 00 18 */	stw r0, 0x18(r1)
/* 8080DE94  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080DE98  38 81 00 18 */	addi r4, r1, 0x18
/* 8080DE9C  38 A0 00 00 */	li r5, 0
/* 8080DEA0  38 C0 FF FF */	li r6, -1
/* 8080DEA4  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080DEA8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080DEAC  7D 89 03 A6 */	mtctr r12
/* 8080DEB0  4E 80 04 21 */	bctrl 
/* 8080DEB4  A8 1D 06 F0 */	lha r0, 0x6f0(r29)
/* 8080DEB8  2C 00 00 00 */	cmpwi r0, 0
/* 8080DEBC  40 82 03 90 */	bne lbl_8080E24C
/* 8080DEC0  7F A3 EB 78 */	mr r3, r29
/* 8080DEC4  38 80 00 10 */	li r4, 0x10
/* 8080DEC8  38 A0 00 02 */	li r5, 2
/* 8080DECC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080DED0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080DED4  4B FF A3 0D */	bl bckSet__8daE_YM_cFiUcff
/* 8080DED8  38 00 00 03 */	li r0, 3
/* 8080DEDC  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080DEE0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8080DEE4  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 8080DEE8  4B A5 9A 6C */	b cM_rndF__Ff
/* 8080DEEC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8080DEF0  EC 00 08 2A */	fadds f0, f0, f1
/* 8080DEF4  FC 00 00 1E */	fctiwz f0, f0
/* 8080DEF8  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8080DEFC  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8080DF00  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 8080DF04  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007011D@ha */
/* 8080DF08  38 03 01 1D */	addi r0, r3, 0x011D /* 0x0007011D@l */
/* 8080DF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8080DF10  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080DF14  38 81 00 14 */	addi r4, r1, 0x14
/* 8080DF18  38 A0 00 00 */	li r5, 0
/* 8080DF1C  38 C0 FF FF */	li r6, -1
/* 8080DF20  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080DF24  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080DF28  7D 89 03 A6 */	mtctr r12
/* 8080DF2C  4E 80 04 21 */	bctrl 
/* 8080DF30  48 00 03 1C */	b lbl_8080E24C
lbl_8080DF34:
/* 8080DF34  7F A3 EB 78 */	mr r3, r29
/* 8080DF38  38 80 00 00 */	li r4, 0
/* 8080DF3C  4B FF BE 6D */	bl setMoveSound__8daE_YM_cFi
/* 8080DF40  3B C0 00 00 */	li r30, 0
/* 8080DF44  A8 1D 06 F0 */	lha r0, 0x6f0(r29)
/* 8080DF48  2C 00 00 00 */	cmpwi r0, 0
/* 8080DF4C  41 82 00 18 */	beq lbl_8080DF64
/* 8080DF50  7F A3 EB 78 */	mr r3, r29
/* 8080DF54  A8 9D 06 E4 */	lha r4, 0x6e4(r29)
/* 8080DF58  48 00 5F 4D */	bl checkBeforeBg__8daE_YM_cFs
/* 8080DF5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8080DF60  41 82 00 0C */	beq lbl_8080DF6C
lbl_8080DF64:
/* 8080DF64  3B C0 00 01 */	li r30, 1
/* 8080DF68  48 00 02 44 */	b lbl_8080E1AC
lbl_8080DF6C:
/* 8080DF6C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8080DF70  38 9D 06 70 */	addi r4, r29, 0x670
/* 8080DF74  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8080DF78  4B A5 8B BC */	b __mi__4cXyzCFRC3Vec
/* 8080DF7C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8080DF80  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8080DF84  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8080DF88  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8080DF8C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8080DF90  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8080DF94  88 1D 06 A5 */	lbz r0, 0x6a5(r29)
/* 8080DF98  28 00 00 00 */	cmplwi r0, 0
/* 8080DF9C  40 82 01 14 */	bne lbl_8080E0B0
/* 8080DFA0  38 61 00 58 */	addi r3, r1, 0x58
/* 8080DFA4  4B B3 91 94 */	b PSVECSquareMag
/* 8080DFA8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080DFAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080DFB0  40 81 00 58 */	ble lbl_8080E008
/* 8080DFB4  FC 00 08 34 */	frsqrte f0, f1
/* 8080DFB8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8080DFBC  FC 44 00 32 */	fmul f2, f4, f0
/* 8080DFC0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8080DFC4  FC 00 00 32 */	fmul f0, f0, f0
/* 8080DFC8  FC 01 00 32 */	fmul f0, f1, f0
/* 8080DFCC  FC 03 00 28 */	fsub f0, f3, f0
/* 8080DFD0  FC 02 00 32 */	fmul f0, f2, f0
/* 8080DFD4  FC 44 00 32 */	fmul f2, f4, f0
/* 8080DFD8  FC 00 00 32 */	fmul f0, f0, f0
/* 8080DFDC  FC 01 00 32 */	fmul f0, f1, f0
/* 8080DFE0  FC 03 00 28 */	fsub f0, f3, f0
/* 8080DFE4  FC 02 00 32 */	fmul f0, f2, f0
/* 8080DFE8  FC 44 00 32 */	fmul f2, f4, f0
/* 8080DFEC  FC 00 00 32 */	fmul f0, f0, f0
/* 8080DFF0  FC 01 00 32 */	fmul f0, f1, f0
/* 8080DFF4  FC 03 00 28 */	fsub f0, f3, f0
/* 8080DFF8  FC 02 00 32 */	fmul f0, f2, f0
/* 8080DFFC  FC 21 00 32 */	fmul f1, f1, f0
/* 8080E000  FC 20 08 18 */	frsp f1, f1
/* 8080E004  48 00 00 88 */	b lbl_8080E08C
lbl_8080E008:
/* 8080E008  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8080E00C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080E010  40 80 00 10 */	bge lbl_8080E020
/* 8080E014  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080E018  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8080E01C  48 00 00 70 */	b lbl_8080E08C
lbl_8080E020:
/* 8080E020  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8080E024  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8080E028  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080E02C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080E030  7C 03 00 00 */	cmpw r3, r0
/* 8080E034  41 82 00 14 */	beq lbl_8080E048
/* 8080E038  40 80 00 40 */	bge lbl_8080E078
/* 8080E03C  2C 03 00 00 */	cmpwi r3, 0
/* 8080E040  41 82 00 20 */	beq lbl_8080E060
/* 8080E044  48 00 00 34 */	b lbl_8080E078
lbl_8080E048:
/* 8080E048  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080E04C  41 82 00 0C */	beq lbl_8080E058
/* 8080E050  38 00 00 01 */	li r0, 1
/* 8080E054  48 00 00 28 */	b lbl_8080E07C
lbl_8080E058:
/* 8080E058  38 00 00 02 */	li r0, 2
/* 8080E05C  48 00 00 20 */	b lbl_8080E07C
lbl_8080E060:
/* 8080E060  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080E064  41 82 00 0C */	beq lbl_8080E070
/* 8080E068  38 00 00 05 */	li r0, 5
/* 8080E06C  48 00 00 10 */	b lbl_8080E07C
lbl_8080E070:
/* 8080E070  38 00 00 03 */	li r0, 3
/* 8080E074  48 00 00 08 */	b lbl_8080E07C
lbl_8080E078:
/* 8080E078  38 00 00 04 */	li r0, 4
lbl_8080E07C:
/* 8080E07C  2C 00 00 01 */	cmpwi r0, 1
/* 8080E080  40 82 00 0C */	bne lbl_8080E08C
/* 8080E084  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080E088  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8080E08C:
/* 8080E08C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8080E090  3C 60 80 81 */	lis r3, l_HIO@ha
/* 8080E094  38 63 5D 38 */	addi r3, r3, l_HIO@l
/* 8080E098  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8080E09C  EC 02 00 2A */	fadds f0, f2, f0
/* 8080E0A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080E0A4  40 81 01 08 */	ble lbl_8080E1AC
/* 8080E0A8  3B C0 00 01 */	li r30, 1
/* 8080E0AC  48 00 01 00 */	b lbl_8080E1AC
lbl_8080E0B0:
/* 8080E0B0  38 61 00 58 */	addi r3, r1, 0x58
/* 8080E0B4  4B B3 90 84 */	b PSVECSquareMag
/* 8080E0B8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080E0BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080E0C0  40 81 00 58 */	ble lbl_8080E118
/* 8080E0C4  FC 00 08 34 */	frsqrte f0, f1
/* 8080E0C8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8080E0CC  FC 44 00 32 */	fmul f2, f4, f0
/* 8080E0D0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8080E0D4  FC 00 00 32 */	fmul f0, f0, f0
/* 8080E0D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8080E0DC  FC 03 00 28 */	fsub f0, f3, f0
/* 8080E0E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8080E0E4  FC 44 00 32 */	fmul f2, f4, f0
/* 8080E0E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8080E0EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8080E0F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8080E0F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8080E0F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8080E0FC  FC 00 00 32 */	fmul f0, f0, f0
/* 8080E100  FC 01 00 32 */	fmul f0, f1, f0
/* 8080E104  FC 03 00 28 */	fsub f0, f3, f0
/* 8080E108  FC 02 00 32 */	fmul f0, f2, f0
/* 8080E10C  FC 21 00 32 */	fmul f1, f1, f0
/* 8080E110  FC 20 08 18 */	frsp f1, f1
/* 8080E114  48 00 00 88 */	b lbl_8080E19C
lbl_8080E118:
/* 8080E118  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8080E11C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080E120  40 80 00 10 */	bge lbl_8080E130
/* 8080E124  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080E128  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8080E12C  48 00 00 70 */	b lbl_8080E19C
lbl_8080E130:
/* 8080E130  D0 21 00 08 */	stfs f1, 8(r1)
/* 8080E134  80 81 00 08 */	lwz r4, 8(r1)
/* 8080E138  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080E13C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080E140  7C 03 00 00 */	cmpw r3, r0
/* 8080E144  41 82 00 14 */	beq lbl_8080E158
/* 8080E148  40 80 00 40 */	bge lbl_8080E188
/* 8080E14C  2C 03 00 00 */	cmpwi r3, 0
/* 8080E150  41 82 00 20 */	beq lbl_8080E170
/* 8080E154  48 00 00 34 */	b lbl_8080E188
lbl_8080E158:
/* 8080E158  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080E15C  41 82 00 0C */	beq lbl_8080E168
/* 8080E160  38 00 00 01 */	li r0, 1
/* 8080E164  48 00 00 28 */	b lbl_8080E18C
lbl_8080E168:
/* 8080E168  38 00 00 02 */	li r0, 2
/* 8080E16C  48 00 00 20 */	b lbl_8080E18C
lbl_8080E170:
/* 8080E170  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080E174  41 82 00 0C */	beq lbl_8080E180
/* 8080E178  38 00 00 05 */	li r0, 5
/* 8080E17C  48 00 00 10 */	b lbl_8080E18C
lbl_8080E180:
/* 8080E180  38 00 00 03 */	li r0, 3
/* 8080E184  48 00 00 08 */	b lbl_8080E18C
lbl_8080E188:
/* 8080E188  38 00 00 04 */	li r0, 4
lbl_8080E18C:
/* 8080E18C  2C 00 00 01 */	cmpwi r0, 1
/* 8080E190  40 82 00 0C */	bne lbl_8080E19C
/* 8080E194  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080E198  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8080E19C:
/* 8080E19C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8080E1A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080E1A4  40 80 00 08 */	bge lbl_8080E1AC
/* 8080E1A8  3B C0 00 01 */	li r30, 1
lbl_8080E1AC:
/* 8080E1AC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8080E1B0  41 82 00 9C */	beq lbl_8080E24C
/* 8080E1B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080E1B8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080E1BC  38 00 00 04 */	li r0, 4
/* 8080E1C0  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080E1C4  7F A3 EB 78 */	mr r3, r29
/* 8080E1C8  38 80 00 05 */	li r4, 5
/* 8080E1CC  38 A0 00 00 */	li r5, 0
/* 8080E1D0  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8080E1D4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8080E1D8  4B FF A0 09 */	bl bckSet__8daE_YM_cFiUcff
/* 8080E1DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007011B@ha */
/* 8080E1E0  38 03 01 1B */	addi r0, r3, 0x011B /* 0x0007011B@l */
/* 8080E1E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8080E1E8  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080E1EC  38 81 00 10 */	addi r4, r1, 0x10
/* 8080E1F0  38 A0 00 00 */	li r5, 0
/* 8080E1F4  38 C0 FF FF */	li r6, -1
/* 8080E1F8  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080E1FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080E200  7D 89 03 A6 */	mtctr r12
/* 8080E204  4E 80 04 21 */	bctrl 
/* 8080E208  48 00 00 44 */	b lbl_8080E24C
lbl_8080E20C:
/* 8080E20C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8080E210  38 80 00 01 */	li r4, 1
/* 8080E214  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8080E218  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080E21C  40 82 00 18 */	bne lbl_8080E234
/* 8080E220  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8080E224  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8080E228  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080E22C  41 82 00 08 */	beq lbl_8080E234
/* 8080E230  38 80 00 00 */	li r4, 0
lbl_8080E234:
/* 8080E234  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8080E238  41 82 00 14 */	beq lbl_8080E24C
/* 8080E23C  7F A3 EB 78 */	mr r3, r29
/* 8080E240  38 80 00 00 */	li r4, 0
/* 8080E244  4B FF BD 59 */	bl setActionMode__8daE_YM_cFi
/* 8080E248  48 00 00 0C */	b lbl_8080E254
lbl_8080E24C:
/* 8080E24C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8080E250  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_8080E254:
/* 8080E254  39 61 00 80 */	addi r11, r1, 0x80
/* 8080E258  4B B5 3F D0 */	b _restgpr_29
/* 8080E25C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8080E260  7C 08 03 A6 */	mtlr r0
/* 8080E264  38 21 00 80 */	addi r1, r1, 0x80
/* 8080E268  4E 80 00 20 */	blr 
