lbl_80BAAA18:
/* 80BAAA18  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BAAA1C  7C 08 02 A6 */	mflr r0
/* 80BAAA20  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BAAA24  39 61 00 60 */	addi r11, r1, 0x60
/* 80BAAA28  4B 7B 77 B4 */	b _savegpr_29
/* 80BAAA2C  7C 7E 1B 78 */	mr r30, r3
/* 80BAAA30  3C 60 80 BB */	lis r3, lit_3774@ha
/* 80BAAA34  3B E3 C9 70 */	addi r31, r3, lit_3774@l
/* 80BAAA38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BAAA3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BAAA40  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80BAAA44  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80BAAA48  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 80BAAA4C  7D 89 03 A6 */	mtctr r12
/* 80BAAA50  4E 80 04 21 */	bctrl 
/* 80BAAA54  7C 7D 1B 78 */	mr r29, r3
/* 80BAAA58  80 1E 09 E8 */	lwz r0, 0x9e8(r30)
/* 80BAAA5C  2C 00 00 00 */	cmpwi r0, 0
/* 80BAAA60  40 82 01 D8 */	bne lbl_80BAAC38
/* 80BAAA64  3C 60 80 BB */	lis r3, stringBase0@ha
/* 80BAAA68  38 63 CA 64 */	addi r3, r3, stringBase0@l
/* 80BAAA6C  38 80 00 07 */	li r4, 7
/* 80BAAA70  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BAAA74  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BAAA78  3C A5 00 02 */	addis r5, r5, 2
/* 80BAAA7C  38 C0 00 80 */	li r6, 0x80
/* 80BAAA80  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BAAA84  4B 49 18 68 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAAA88  7C 64 1B 78 */	mr r4, r3
/* 80BAAA8C  80 7E 06 20 */	lwz r3, 0x620(r30)
/* 80BAAA90  38 A0 00 00 */	li r5, 0
/* 80BAAA94  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80BAAA98  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80BAAA9C  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80BAAAA0  C0 9F 00 20 */	lfs f4, 0x20(r31)
/* 80BAAAA4  4B 46 63 CC */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80BAAAA8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80BAAAAC  4B 6B CE E0 */	b cM_rndFX__Ff
/* 80BAAAB0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80BAAAB4  EC 00 08 2A */	fadds f0, f0, f1
/* 80BAAAB8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BAAABC  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80BAAAC0  4B 6B CE CC */	b cM_rndFX__Ff
/* 80BAAAC4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80BAAAC8  EC 00 08 2A */	fadds f0, f0, f1
/* 80BAAACC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80BAAAD0  28 1D 00 00 */	cmplwi r29, 0
/* 80BAAAD4  41 82 01 30 */	beq lbl_80BAAC04
/* 80BAAAD8  41 82 01 50 */	beq lbl_80BAAC28
/* 80BAAADC  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80BAAAE0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BAAAE4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BAAAE8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BAAAEC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BAAAF0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80BAAAF4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80BAAAF8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80BAAAFC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BAAB00  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BAAB04  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80BAAB08  38 61 00 0C */	addi r3, r1, 0xc
/* 80BAAB0C  38 81 00 18 */	addi r4, r1, 0x18
/* 80BAAB10  4B 79 C8 8C */	b PSVECSquareDistance
/* 80BAAB14  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BAAB18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAAB1C  40 81 00 58 */	ble lbl_80BAAB74
/* 80BAAB20  FC 00 08 34 */	frsqrte f0, f1
/* 80BAAB24  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80BAAB28  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAAB2C  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BAAB30  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAAB34  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAAB38  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAAB3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAAB40  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAAB44  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAAB48  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAAB4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAAB50  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAAB54  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAAB58  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAAB5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAAB60  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAAB64  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAAB68  FC 21 00 32 */	fmul f1, f1, f0
/* 80BAAB6C  FC 20 08 18 */	frsp f1, f1
/* 80BAAB70  48 00 00 88 */	b lbl_80BAABF8
lbl_80BAAB74:
/* 80BAAB74  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80BAAB78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAAB7C  40 80 00 10 */	bge lbl_80BAAB8C
/* 80BAAB80  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BAAB84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BAAB88  48 00 00 70 */	b lbl_80BAABF8
lbl_80BAAB8C:
/* 80BAAB8C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BAAB90  80 81 00 08 */	lwz r4, 8(r1)
/* 80BAAB94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BAAB98  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BAAB9C  7C 03 00 00 */	cmpw r3, r0
/* 80BAABA0  41 82 00 14 */	beq lbl_80BAABB4
/* 80BAABA4  40 80 00 40 */	bge lbl_80BAABE4
/* 80BAABA8  2C 03 00 00 */	cmpwi r3, 0
/* 80BAABAC  41 82 00 20 */	beq lbl_80BAABCC
/* 80BAABB0  48 00 00 34 */	b lbl_80BAABE4
lbl_80BAABB4:
/* 80BAABB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAABB8  41 82 00 0C */	beq lbl_80BAABC4
/* 80BAABBC  38 00 00 01 */	li r0, 1
/* 80BAABC0  48 00 00 28 */	b lbl_80BAABE8
lbl_80BAABC4:
/* 80BAABC4  38 00 00 02 */	li r0, 2
/* 80BAABC8  48 00 00 20 */	b lbl_80BAABE8
lbl_80BAABCC:
/* 80BAABCC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAABD0  41 82 00 0C */	beq lbl_80BAABDC
/* 80BAABD4  38 00 00 05 */	li r0, 5
/* 80BAABD8  48 00 00 10 */	b lbl_80BAABE8
lbl_80BAABDC:
/* 80BAABDC  38 00 00 03 */	li r0, 3
/* 80BAABE0  48 00 00 08 */	b lbl_80BAABE8
lbl_80BAABE4:
/* 80BAABE4  38 00 00 04 */	li r0, 4
lbl_80BAABE8:
/* 80BAABE8  2C 00 00 01 */	cmpwi r0, 1
/* 80BAABEC  40 82 00 0C */	bne lbl_80BAABF8
/* 80BAABF0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BAABF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BAABF8:
/* 80BAABF8  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80BAABFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAAC00  40 81 00 28 */	ble lbl_80BAAC28
lbl_80BAAC04:
/* 80BAAC04  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80BAAC08  4B 6B CD 4C */	b cM_rndF__Ff
/* 80BAAC0C  FC 00 08 1E */	fctiwz f0, f1
/* 80BAAC10  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80BAAC14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BAAC18  2C 00 00 00 */	cmpwi r0, 0
/* 80BAAC1C  40 82 00 0C */	bne lbl_80BAAC28
/* 80BAAC20  38 00 00 01 */	li r0, 1
/* 80BAAC24  98 1E 09 F1 */	stb r0, 0x9f1(r30)
lbl_80BAAC28:
/* 80BAAC28  80 7E 09 E8 */	lwz r3, 0x9e8(r30)
/* 80BAAC2C  38 03 00 01 */	addi r0, r3, 1
/* 80BAAC30  90 1E 09 E8 */	stw r0, 0x9e8(r30)
/* 80BAAC34  48 00 00 E4 */	b lbl_80BAAD18
lbl_80BAAC38:
/* 80BAAC38  2C 00 FF FF */	cmpwi r0, -1
/* 80BAAC3C  41 82 00 DC */	beq lbl_80BAAD18
/* 80BAAC40  88 1E 05 6D */	lbz r0, 0x56d(r30)
/* 80BAAC44  28 00 00 00 */	cmplwi r0, 0
/* 80BAAC48  41 82 00 0C */	beq lbl_80BAAC54
/* 80BAAC4C  7F C3 F3 78 */	mr r3, r30
/* 80BAAC50  48 00 0E 49 */	bl batta_setParticle__12daObjBATTA_cFv
lbl_80BAAC54:
/* 80BAAC54  80 7E 06 20 */	lwz r3, 0x620(r30)
/* 80BAAC58  38 80 00 01 */	li r4, 1
/* 80BAAC5C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80BAAC60  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BAAC64  40 82 00 18 */	bne lbl_80BAAC7C
/* 80BAAC68  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BAAC6C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80BAAC70  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BAAC74  41 82 00 08 */	beq lbl_80BAAC7C
/* 80BAAC78  38 80 00 00 */	li r4, 0
lbl_80BAAC7C:
/* 80BAAC7C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80BAAC80  41 82 00 98 */	beq lbl_80BAAD18
/* 80BAAC84  88 1E 09 F0 */	lbz r0, 0x9f0(r30)
/* 80BAAC88  28 00 00 00 */	cmplwi r0, 0
/* 80BAAC8C  40 82 00 54 */	bne lbl_80BAACE0
/* 80BAAC90  88 1E 09 F1 */	lbz r0, 0x9f1(r30)
/* 80BAAC94  28 00 00 00 */	cmplwi r0, 0
/* 80BAAC98  41 82 00 48 */	beq lbl_80BAACE0
/* 80BAAC9C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80BAACA0  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80BAACA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAACA8  40 80 00 38 */	bge lbl_80BAACE0
/* 80BAACAC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BAACB0  3C 60 80 BB */	lis r3, lit_4151@ha
/* 80BAACB4  38 83 CB 00 */	addi r4, r3, lit_4151@l
/* 80BAACB8  80 64 00 00 */	lwz r3, 0(r4)
/* 80BAACBC  80 04 00 04 */	lwz r0, 4(r4)
/* 80BAACC0  90 61 00 30 */	stw r3, 0x30(r1)
/* 80BAACC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BAACC8  80 04 00 08 */	lwz r0, 8(r4)
/* 80BAACCC  90 01 00 38 */	stw r0, 0x38(r1)
/* 80BAACD0  7F C3 F3 78 */	mr r3, r30
/* 80BAACD4  38 81 00 30 */	addi r4, r1, 0x30
/* 80BAACD8  4B FF F1 85 */	bl setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v
/* 80BAACDC  48 00 00 3C */	b lbl_80BAAD18
lbl_80BAACE0:
/* 80BAACE0  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 80BAACE4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80BAACE8  41 82 00 30 */	beq lbl_80BAAD18
/* 80BAACEC  3C 60 80 BB */	lis r3, lit_4155@ha
/* 80BAACF0  38 83 CB 0C */	addi r4, r3, lit_4155@l
/* 80BAACF4  80 64 00 00 */	lwz r3, 0(r4)
/* 80BAACF8  80 04 00 04 */	lwz r0, 4(r4)
/* 80BAACFC  90 61 00 24 */	stw r3, 0x24(r1)
/* 80BAAD00  90 01 00 28 */	stw r0, 0x28(r1)
/* 80BAAD04  80 04 00 08 */	lwz r0, 8(r4)
/* 80BAAD08  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BAAD0C  7F C3 F3 78 */	mr r3, r30
/* 80BAAD10  38 81 00 24 */	addi r4, r1, 0x24
/* 80BAAD14  4B FF F1 49 */	bl setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v
lbl_80BAAD18:
/* 80BAAD18  39 61 00 60 */	addi r11, r1, 0x60
/* 80BAAD1C  4B 7B 75 0C */	b _restgpr_29
/* 80BAAD20  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BAAD24  7C 08 03 A6 */	mtlr r0
/* 80BAAD28  38 21 00 60 */	addi r1, r1, 0x60
/* 80BAAD2C  4E 80 00 20 */	blr 
