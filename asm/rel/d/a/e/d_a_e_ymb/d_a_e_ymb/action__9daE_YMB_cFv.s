lbl_8081FAC8:
/* 8081FAC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8081FACC  7C 08 02 A6 */	mflr r0
/* 8081FAD0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8081FAD4  39 61 00 40 */	addi r11, r1, 0x40
/* 8081FAD8  4B B4 27 05 */	bl _savegpr_29
/* 8081FADC  7C 7D 1B 78 */	mr r29, r3
/* 8081FAE0  3C 60 80 82 */	lis r3, lit_3791@ha /* 0x808218AC@ha */
/* 8081FAE4  3B E3 18 AC */	addi r31, r3, lit_3791@l /* 0x808218AC@l */
/* 8081FAE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081FAEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081FAF0  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8081FAF4  80 1D 13 24 */	lwz r0, 0x1324(r29)
/* 8081FAF8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081FAFC  90 1D 13 24 */	stw r0, 0x1324(r29)
/* 8081FB00  80 1D 08 2C */	lwz r0, 0x82c(r29)
/* 8081FB04  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081FB08  90 1D 08 2C */	stw r0, 0x82c(r29)
/* 8081FB0C  80 1D 09 64 */	lwz r0, 0x964(r29)
/* 8081FB10  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081FB14  90 1D 09 64 */	stw r0, 0x964(r29)
/* 8081FB18  80 1D 08 58 */	lwz r0, 0x858(r29)
/* 8081FB1C  60 00 00 01 */	ori r0, r0, 1
/* 8081FB20  90 1D 08 58 */	stw r0, 0x858(r29)
/* 8081FB24  80 1D 09 90 */	lwz r0, 0x990(r29)
/* 8081FB28  60 00 00 01 */	ori r0, r0, 1
/* 8081FB2C  90 1D 09 90 */	stw r0, 0x990(r29)
/* 8081FB30  88 1D 07 12 */	lbz r0, 0x712(r29)
/* 8081FB34  28 00 00 00 */	cmplwi r0, 0
/* 8081FB38  41 82 00 10 */	beq lbl_8081FB48
/* 8081FB3C  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 8081FB40  28 00 00 39 */	cmplwi r0, 0x39
/* 8081FB44  41 82 00 14 */	beq lbl_8081FB58
lbl_8081FB48:
/* 8081FB48  C0 3D 06 D8 */	lfs f1, 0x6d8(r29)
/* 8081FB4C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081FB50  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8081FB54  40 82 00 2C */	bne lbl_8081FB80
lbl_8081FB58:
/* 8081FB58  80 1D 08 C8 */	lwz r0, 0x8c8(r29)
/* 8081FB5C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081FB60  90 1D 08 C8 */	stw r0, 0x8c8(r29)
/* 8081FB64  80 1D 0A 00 */	lwz r0, 0xa00(r29)
/* 8081FB68  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081FB6C  90 1D 0A 00 */	stw r0, 0xa00(r29)
/* 8081FB70  80 1D 0B 38 */	lwz r0, 0xb38(r29)
/* 8081FB74  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8081FB78  90 1D 0B 38 */	stw r0, 0xb38(r29)
/* 8081FB7C  48 00 00 28 */	b lbl_8081FBA4
lbl_8081FB80:
/* 8081FB80  80 1D 08 C8 */	lwz r0, 0x8c8(r29)
/* 8081FB84  60 00 00 01 */	ori r0, r0, 1
/* 8081FB88  90 1D 08 C8 */	stw r0, 0x8c8(r29)
/* 8081FB8C  80 1D 0A 00 */	lwz r0, 0xa00(r29)
/* 8081FB90  60 00 00 01 */	ori r0, r0, 1
/* 8081FB94  90 1D 0A 00 */	stw r0, 0xa00(r29)
/* 8081FB98  80 1D 0B 38 */	lwz r0, 0xb38(r29)
/* 8081FB9C  60 00 00 01 */	ori r0, r0, 1
/* 8081FBA0  90 1D 0B 38 */	stw r0, 0xb38(r29)
lbl_8081FBA4:
/* 8081FBA4  7F A3 EB 78 */	mr r3, r29
/* 8081FBA8  4B FF 74 BD */	bl checkWaterPos__9daE_YMB_cFv
/* 8081FBAC  7F A3 EB 78 */	mr r3, r29
/* 8081FBB0  4B FF 75 B5 */	bl checkGroundPos__9daE_YMB_cFv
/* 8081FBB4  7F A3 EB 78 */	mr r3, r29
/* 8081FBB8  4B FF 6F C5 */	bl damage_check__9daE_YMB_cFv
/* 8081FBBC  7F A3 EB 78 */	mr r3, r29
/* 8081FBC0  4B FF 72 B9 */	bl setCameraSwitch__9daE_YMB_cFv
/* 8081FBC4  88 1D 07 16 */	lbz r0, 0x716(r29)
/* 8081FBC8  28 00 00 00 */	cmplwi r0, 0
/* 8081FBCC  40 82 00 4C */	bne lbl_8081FC18
/* 8081FBD0  7F C3 F3 78 */	mr r3, r30
/* 8081FBD4  7F A4 EB 78 */	mr r4, r29
/* 8081FBD8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8081FBDC  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8081FBE0  7D 89 03 A6 */	mtctr r12
/* 8081FBE4  4E 80 04 21 */	bctrl 
/* 8081FBE8  2C 03 00 00 */	cmpwi r3, 0
/* 8081FBEC  41 82 00 1C */	beq lbl_8081FC08
/* 8081FBF0  7F C3 F3 78 */	mr r3, r30
/* 8081FBF4  7F A4 EB 78 */	mr r4, r29
/* 8081FBF8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8081FBFC  81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 8081FC00  7D 89 03 A6 */	mtctr r12
/* 8081FC04  4E 80 04 21 */	bctrl 
lbl_8081FC08:
/* 8081FC08  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8081FC0C  60 00 02 00 */	ori r0, r0, 0x200
/* 8081FC10  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 8081FC14  48 00 00 10 */	b lbl_8081FC24
lbl_8081FC18:
/* 8081FC18  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8081FC1C  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 8081FC20  B0 1D 05 8E */	sth r0, 0x58e(r29)
lbl_8081FC24:
/* 8081FC24  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 8081FC28  2C 00 00 05 */	cmpwi r0, 5
/* 8081FC2C  41 82 00 10 */	beq lbl_8081FC3C
/* 8081FC30  38 00 00 18 */	li r0, 0x18
/* 8081FC34  98 1D 05 46 */	stb r0, 0x546(r29)
/* 8081FC38  48 00 00 0C */	b lbl_8081FC44
lbl_8081FC3C:
/* 8081FC3C  38 00 00 19 */	li r0, 0x19
/* 8081FC40  98 1D 05 46 */	stb r0, 0x546(r29)
lbl_8081FC44:
/* 8081FC44  38 00 00 00 */	li r0, 0
/* 8081FC48  98 1D 07 12 */	stb r0, 0x712(r29)
/* 8081FC4C  98 1D 07 1F */	stb r0, 0x71f(r29)
/* 8081FC50  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 8081FC54  28 00 00 0C */	cmplwi r0, 0xc
/* 8081FC58  41 81 00 B4 */	bgt lbl_8081FD0C
/* 8081FC5C  3C 60 80 82 */	lis r3, lit_7867@ha /* 0x80821D40@ha */
/* 8081FC60  38 63 1D 40 */	addi r3, r3, lit_7867@l /* 0x80821D40@l */
/* 8081FC64  54 00 10 3A */	slwi r0, r0, 2
/* 8081FC68  7C 03 00 2E */	lwzx r0, r3, r0
/* 8081FC6C  7C 09 03 A6 */	mtctr r0
/* 8081FC70  4E 80 04 20 */	bctr 
lbl_8081FC74:
/* 8081FC74  7F A3 EB 78 */	mr r3, r29
/* 8081FC78  4B FF 85 7D */	bl executeWait__9daE_YMB_cFv
/* 8081FC7C  48 00 00 90 */	b lbl_8081FD0C
lbl_8081FC80:
/* 8081FC80  7F A3 EB 78 */	mr r3, r29
/* 8081FC84  4B FF 8E 65 */	bl executeFly__9daE_YMB_cFv
/* 8081FC88  48 00 00 84 */	b lbl_8081FD0C
lbl_8081FC8C:
/* 8081FC8C  7F A3 EB 78 */	mr r3, r29
/* 8081FC90  4B FF 99 81 */	bl executeFlyAttack__9daE_YMB_cFv
/* 8081FC94  48 00 00 78 */	b lbl_8081FD0C
lbl_8081FC98:
/* 8081FC98  7F A3 EB 78 */	mr r3, r29
/* 8081FC9C  4B FF A3 35 */	bl executeRunAway__9daE_YMB_cFv
/* 8081FCA0  48 00 00 6C */	b lbl_8081FD0C
lbl_8081FCA4:
/* 8081FCA4  7F A3 EB 78 */	mr r3, r29
/* 8081FCA8  4B FF AA 71 */	bl executeGuard__9daE_YMB_cFv
/* 8081FCAC  48 00 00 60 */	b lbl_8081FD0C
lbl_8081FCB0:
/* 8081FCB0  7F A3 EB 78 */	mr r3, r29
/* 8081FCB4  4B FF AB D9 */	bl executeSwim__9daE_YMB_cFv
/* 8081FCB8  48 00 00 54 */	b lbl_8081FD0C
lbl_8081FCBC:
/* 8081FCBC  7F A3 EB 78 */	mr r3, r29
/* 8081FCC0  4B FF BA CD */	bl executeWaterJump__9daE_YMB_cFv
/* 8081FCC4  48 00 00 48 */	b lbl_8081FD0C
lbl_8081FCC8:
/* 8081FCC8  7F A3 EB 78 */	mr r3, r29
/* 8081FCCC  4B FF C2 1D */	bl executeDamage__9daE_YMB_cFv
/* 8081FCD0  48 00 00 3C */	b lbl_8081FD0C
lbl_8081FCD4:
/* 8081FCD4  7F A3 EB 78 */	mr r3, r29
/* 8081FCD8  4B FF D1 95 */	bl executeDown__9daE_YMB_cFv
/* 8081FCDC  48 00 00 30 */	b lbl_8081FD0C
lbl_8081FCE0:
/* 8081FCE0  7F A3 EB 78 */	mr r3, r29
/* 8081FCE4  4B FF D8 B1 */	bl executeDeath__9daE_YMB_cFv
/* 8081FCE8  48 00 00 24 */	b lbl_8081FD0C
lbl_8081FCEC:
/* 8081FCEC  7F A3 EB 78 */	mr r3, r29
/* 8081FCF0  4B FF E1 95 */	bl executeLakeDemo__9daE_YMB_cFv
/* 8081FCF4  48 00 00 18 */	b lbl_8081FD0C
lbl_8081FCF8:
/* 8081FCF8  7F A3 EB 78 */	mr r3, r29
/* 8081FCFC  4B FF E8 B9 */	bl executeStartDemo__9daE_YMB_cFv
/* 8081FD00  48 00 00 0C */	b lbl_8081FD0C
lbl_8081FD04:
/* 8081FD04  7F A3 EB 78 */	mr r3, r29
/* 8081FD08  4B FF F5 D9 */	bl executeBattleDemo__9daE_YMB_cFv
lbl_8081FD0C:
/* 8081FD0C  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081FD10  38 80 00 00 */	li r4, 0
/* 8081FD14  4B AA 1E 69 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 8081FD18  7F A3 EB 78 */	mr r3, r29
/* 8081FD1C  38 80 00 00 */	li r4, 0
/* 8081FD20  4B 7F A9 AD */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8081FD24  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 8081FD28  2C 00 00 0A */	cmpwi r0, 0xa
/* 8081FD2C  40 82 00 10 */	bne lbl_8081FD3C
/* 8081FD30  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 8081FD34  2C 00 00 00 */	cmpwi r0, 0
/* 8081FD38  41 82 02 14 */	beq lbl_8081FF4C
lbl_8081FD3C:
/* 8081FD3C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8081FD40  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8081FD44  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8081FD48  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081FD4C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8081FD50  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8081FD54  C0 5D 06 A4 */	lfs f2, 0x6a4(r29)
/* 8081FD58  C0 1D 06 9C */	lfs f0, 0x69c(r29)
/* 8081FD5C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8081FD60  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8081FD64  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8081FD68  38 61 00 10 */	addi r3, r1, 0x10
/* 8081FD6C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8081FD70  4B B2 76 2D */	bl PSVECSquareDistance
/* 8081FD74  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081FD78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081FD7C  40 81 00 58 */	ble lbl_8081FDD4
/* 8081FD80  FC 00 08 34 */	frsqrte f0, f1
/* 8081FD84  C8 9F 00 40 */	lfd f4, 0x40(r31)
/* 8081FD88  FC 44 00 32 */	fmul f2, f4, f0
/* 8081FD8C  C8 7F 00 48 */	lfd f3, 0x48(r31)
/* 8081FD90  FC 00 00 32 */	fmul f0, f0, f0
/* 8081FD94  FC 01 00 32 */	fmul f0, f1, f0
/* 8081FD98  FC 03 00 28 */	fsub f0, f3, f0
/* 8081FD9C  FC 02 00 32 */	fmul f0, f2, f0
/* 8081FDA0  FC 44 00 32 */	fmul f2, f4, f0
/* 8081FDA4  FC 00 00 32 */	fmul f0, f0, f0
/* 8081FDA8  FC 01 00 32 */	fmul f0, f1, f0
/* 8081FDAC  FC 03 00 28 */	fsub f0, f3, f0
/* 8081FDB0  FC 02 00 32 */	fmul f0, f2, f0
/* 8081FDB4  FC 44 00 32 */	fmul f2, f4, f0
/* 8081FDB8  FC 00 00 32 */	fmul f0, f0, f0
/* 8081FDBC  FC 01 00 32 */	fmul f0, f1, f0
/* 8081FDC0  FC 03 00 28 */	fsub f0, f3, f0
/* 8081FDC4  FC 02 00 32 */	fmul f0, f2, f0
/* 8081FDC8  FC 21 00 32 */	fmul f1, f1, f0
/* 8081FDCC  FC 20 08 18 */	frsp f1, f1
/* 8081FDD0  48 00 00 88 */	b lbl_8081FE58
lbl_8081FDD4:
/* 8081FDD4  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 8081FDD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081FDDC  40 80 00 10 */	bge lbl_8081FDEC
/* 8081FDE0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081FDE4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8081FDE8  48 00 00 70 */	b lbl_8081FE58
lbl_8081FDEC:
/* 8081FDEC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8081FDF0  80 81 00 08 */	lwz r4, 8(r1)
/* 8081FDF4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8081FDF8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081FDFC  7C 03 00 00 */	cmpw r3, r0
/* 8081FE00  41 82 00 14 */	beq lbl_8081FE14
/* 8081FE04  40 80 00 40 */	bge lbl_8081FE44
/* 8081FE08  2C 03 00 00 */	cmpwi r3, 0
/* 8081FE0C  41 82 00 20 */	beq lbl_8081FE2C
/* 8081FE10  48 00 00 34 */	b lbl_8081FE44
lbl_8081FE14:
/* 8081FE14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081FE18  41 82 00 0C */	beq lbl_8081FE24
/* 8081FE1C  38 00 00 01 */	li r0, 1
/* 8081FE20  48 00 00 28 */	b lbl_8081FE48
lbl_8081FE24:
/* 8081FE24  38 00 00 02 */	li r0, 2
/* 8081FE28  48 00 00 20 */	b lbl_8081FE48
lbl_8081FE2C:
/* 8081FE2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081FE30  41 82 00 0C */	beq lbl_8081FE3C
/* 8081FE34  38 00 00 05 */	li r0, 5
/* 8081FE38  48 00 00 10 */	b lbl_8081FE48
lbl_8081FE3C:
/* 8081FE3C  38 00 00 03 */	li r0, 3
/* 8081FE40  48 00 00 08 */	b lbl_8081FE48
lbl_8081FE44:
/* 8081FE44  38 00 00 04 */	li r0, 4
lbl_8081FE48:
/* 8081FE48  2C 00 00 01 */	cmpwi r0, 1
/* 8081FE4C  40 82 00 0C */	bne lbl_8081FE58
/* 8081FE50  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081FE54  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8081FE58:
/* 8081FE58  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8081FE5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081FE60  40 80 00 10 */	bge lbl_8081FE70
/* 8081FE64  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 8081FE68  64 00 02 00 */	oris r0, r0, 0x200
/* 8081FE6C  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_8081FE70:
/* 8081FE70  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 8081FE74  2C 00 00 09 */	cmpwi r0, 9
/* 8081FE78  41 82 00 30 */	beq lbl_8081FEA8
/* 8081FE7C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070194@ha */
/* 8081FE80  38 03 01 94 */	addi r0, r3, 0x0194 /* 0x00070194@l */
/* 8081FE84  90 01 00 0C */	stw r0, 0xc(r1)
/* 8081FE88  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081FE8C  38 81 00 0C */	addi r4, r1, 0xc
/* 8081FE90  38 A0 00 00 */	li r5, 0
/* 8081FE94  38 C0 FF FF */	li r6, -1
/* 8081FE98  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081FE9C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081FEA0  7D 89 03 A6 */	mtctr r12
/* 8081FEA4  4E 80 04 21 */	bctrl 
lbl_8081FEA8:
/* 8081FEA8  88 1D 07 65 */	lbz r0, 0x765(r29)
/* 8081FEAC  28 00 00 00 */	cmplwi r0, 0
/* 8081FEB0  41 82 00 1C */	beq lbl_8081FECC
/* 8081FEB4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8081FEB8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8081FEBC  80 63 00 00 */	lwz r3, 0(r3)
/* 8081FEC0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8081FEC4  38 80 00 03 */	li r4, 3
/* 8081FEC8  4B A9 1F 2D */	bl changeSubBgmStatus__8Z2SeqMgrFl
lbl_8081FECC:
/* 8081FECC  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8081FED0  80 63 00 04 */	lwz r3, 4(r3)
/* 8081FED4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8081FED8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8081FEDC  C0 23 02 EC */	lfs f1, 0x2ec(r3)
/* 8081FEE0  C0 1D 06 CC */	lfs f0, 0x6cc(r29)
/* 8081FEE4  EC 41 00 28 */	fsubs f2, f1, f0
/* 8081FEE8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081FEEC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8081FEF0  40 81 00 20 */	ble lbl_8081FF10
/* 8081FEF4  38 7D 06 C4 */	addi r3, r29, 0x6c4
/* 8081FEF8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8081FEFC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8081FF00  4B A5 08 41 */	bl cLib_chaseF__FPfff
/* 8081FF04  38 00 00 00 */	li r0, 0
/* 8081FF08  98 1D 06 C1 */	stb r0, 0x6c1(r29)
/* 8081FF0C  48 00 00 38 */	b lbl_8081FF44
lbl_8081FF10:
/* 8081FF10  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8081FF14  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8081FF18  EC 02 00 24 */	fdivs f0, f2, f0
/* 8081FF1C  EC 21 00 2A */	fadds f1, f1, f0
/* 8081FF20  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8081FF24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081FF28  40 80 00 08 */	bge lbl_8081FF30
/* 8081FF2C  FC 20 00 90 */	fmr f1, f0
lbl_8081FF30:
/* 8081FF30  38 7D 06 C4 */	addi r3, r29, 0x6c4
/* 8081FF34  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8081FF38  4B A5 08 09 */	bl cLib_chaseF__FPfff
/* 8081FF3C  38 00 00 01 */	li r0, 1
/* 8081FF40  98 1D 06 C1 */	stb r0, 0x6c1(r29)
lbl_8081FF44:
/* 8081FF44  7F A3 EB 78 */	mr r3, r29
/* 8081FF48  4B FF 7D A9 */	bl setFlyBlurEffect__9daE_YMB_cFv
lbl_8081FF4C:
/* 8081FF4C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8081FF50  7C 03 07 74 */	extsb r3, r0
/* 8081FF54  4B 80 D1 19 */	bl dComIfGp_getReverb__Fi
/* 8081FF58  7C 65 1B 78 */	mr r5, r3
/* 8081FF5C  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8081FF60  38 80 00 00 */	li r4, 0
/* 8081FF64  4B 7F 11 4D */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8081FF68  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 8081FF6C  4B 7E D4 BD */	bl play__14mDoExt_baseAnmFv
/* 8081FF70  39 61 00 40 */	addi r11, r1, 0x40
/* 8081FF74  4B B4 22 B5 */	bl _restgpr_29
/* 8081FF78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8081FF7C  7C 08 03 A6 */	mtlr r0
/* 8081FF80  38 21 00 40 */	addi r1, r1, 0x40
/* 8081FF84  4E 80 00 20 */	blr 
