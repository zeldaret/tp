lbl_80C34438:
/* 80C34438  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80C3443C  7C 08 02 A6 */	mflr r0
/* 80C34440  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C34444  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80C34448  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80C3444C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80C34450  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80C34454  39 61 00 60 */	addi r11, r1, 0x60
/* 80C34458  4B 72 DD 85 */	bl _savegpr_29
/* 80C3445C  7C 7D 1B 78 */	mr r29, r3
/* 80C34460  3C 60 80 C3 */	lis r3, lit_3806@ha /* 0x80C34EEC@ha */
/* 80C34464  3B C3 4E EC */	addi r30, r3, lit_3806@l /* 0x80C34EEC@l */
/* 80C34468  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3446C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C34470  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80C34474  C3 E3 05 2C */	lfs f31, 0x52c(r3)
/* 80C34478  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80C3447C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C34480  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C34484  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80C34488  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C3448C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80C34490  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80C34494  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C34498  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C3449C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C344A0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80C344A4  38 61 00 0C */	addi r3, r1, 0xc
/* 80C344A8  38 81 00 18 */	addi r4, r1, 0x18
/* 80C344AC  4B 71 2E F1 */	bl PSVECSquareDistance
/* 80C344B0  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80C344B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C344B8  40 81 00 58 */	ble lbl_80C34510
/* 80C344BC  FC 00 08 34 */	frsqrte f0, f1
/* 80C344C0  C8 9E 00 58 */	lfd f4, 0x58(r30)
/* 80C344C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C344C8  C8 7E 00 60 */	lfd f3, 0x60(r30)
/* 80C344CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C344D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C344D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C344D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C344DC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C344E0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C344E4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C344E8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C344EC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C344F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C344F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C344F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C344FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C34500  FC 02 00 32 */	fmul f0, f2, f0
/* 80C34504  FF C1 00 32 */	fmul f30, f1, f0
/* 80C34508  FF C0 F0 18 */	frsp f30, f30
/* 80C3450C  48 00 00 90 */	b lbl_80C3459C
lbl_80C34510:
/* 80C34510  C8 1E 00 68 */	lfd f0, 0x68(r30)
/* 80C34514  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C34518  40 80 00 10 */	bge lbl_80C34528
/* 80C3451C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C34520  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C34524  48 00 00 78 */	b lbl_80C3459C
lbl_80C34528:
/* 80C34528  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C3452C  80 81 00 08 */	lwz r4, 8(r1)
/* 80C34530  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C34534  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C34538  7C 03 00 00 */	cmpw r3, r0
/* 80C3453C  41 82 00 14 */	beq lbl_80C34550
/* 80C34540  40 80 00 40 */	bge lbl_80C34580
/* 80C34544  2C 03 00 00 */	cmpwi r3, 0
/* 80C34548  41 82 00 20 */	beq lbl_80C34568
/* 80C3454C  48 00 00 34 */	b lbl_80C34580
lbl_80C34550:
/* 80C34550  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C34554  41 82 00 0C */	beq lbl_80C34560
/* 80C34558  38 00 00 01 */	li r0, 1
/* 80C3455C  48 00 00 28 */	b lbl_80C34584
lbl_80C34560:
/* 80C34560  38 00 00 02 */	li r0, 2
/* 80C34564  48 00 00 20 */	b lbl_80C34584
lbl_80C34568:
/* 80C34568  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3456C  41 82 00 0C */	beq lbl_80C34578
/* 80C34570  38 00 00 05 */	li r0, 5
/* 80C34574  48 00 00 10 */	b lbl_80C34584
lbl_80C34578:
/* 80C34578  38 00 00 03 */	li r0, 3
/* 80C3457C  48 00 00 08 */	b lbl_80C34584
lbl_80C34580:
/* 80C34580  38 00 00 04 */	li r0, 4
lbl_80C34584:
/* 80C34584  2C 00 00 01 */	cmpwi r0, 1
/* 80C34588  40 82 00 10 */	bne lbl_80C34598
/* 80C3458C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C34590  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C34594  48 00 00 08 */	b lbl_80C3459C
lbl_80C34598:
/* 80C34598  FF C0 08 90 */	fmr f30, f1
lbl_80C3459C:
/* 80C3459C  A8 1D 05 A8 */	lha r0, 0x5a8(r29)
/* 80C345A0  2C 00 00 00 */	cmpwi r0, 0
/* 80C345A4  40 81 00 28 */	ble lbl_80C345CC
/* 80C345A8  38 7D 06 38 */	addi r3, r29, 0x638
/* 80C345AC  81 9D 06 74 */	lwz r12, 0x674(r29)
/* 80C345B0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80C345B4  7D 89 03 A6 */	mtctr r12
/* 80C345B8  4E 80 04 21 */	bctrl 
/* 80C345BC  80 1D 06 50 */	lwz r0, 0x650(r29)
/* 80C345C0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C345C4  90 1D 06 50 */	stw r0, 0x650(r29)
/* 80C345C8  48 00 02 34 */	b lbl_80C347FC
lbl_80C345CC:
/* 80C345CC  80 1D 06 50 */	lwz r0, 0x650(r29)
/* 80C345D0  60 00 00 01 */	ori r0, r0, 1
/* 80C345D4  90 1D 06 50 */	stw r0, 0x650(r29)
/* 80C345D8  38 7D 06 38 */	addi r3, r29, 0x638
/* 80C345DC  4B 45 00 7D */	bl ChkCoHit__12dCcD_GObjInfFv
/* 80C345E0  28 03 00 00 */	cmplwi r3, 0
/* 80C345E4  41 82 00 D8 */	beq lbl_80C346BC
/* 80C345E8  38 7D 06 38 */	addi r3, r29, 0x638
/* 80C345EC  4B 45 01 05 */	bl GetCoHitObj__12dCcD_GObjInfFv
/* 80C345F0  80 63 00 44 */	lwz r3, 0x44(r3)
/* 80C345F4  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80C345F8  28 00 00 01 */	cmplwi r0, 1
/* 80C345FC  41 82 00 C0 */	beq lbl_80C346BC
/* 80C34600  A8 1D 05 76 */	lha r0, 0x576(r29)
/* 80C34604  C8 5E 00 08 */	lfd f2, 8(r30)
/* 80C34608  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C3460C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C34610  3C 60 43 30 */	lis r3, 0x4330
/* 80C34614  90 61 00 28 */	stw r3, 0x28(r1)
/* 80C34618  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80C3461C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80C34620  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80C34624  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80C34628  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3462C  FC 00 00 1E */	fctiwz f0, f0
/* 80C34630  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80C34634  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C34638  B0 1D 05 76 */	sth r0, 0x576(r29)
/* 80C3463C  A8 1D 05 80 */	lha r0, 0x580(r29)
/* 80C34640  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C34644  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C34648  90 61 00 38 */	stw r3, 0x38(r1)
/* 80C3464C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80C34650  EC 20 10 28 */	fsubs f1, f0, f2
/* 80C34654  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80C34658  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80C3465C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C34660  FC 00 00 1E */	fctiwz f0, f0
/* 80C34664  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80C34668  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C3466C  B0 1D 05 80 */	sth r0, 0x580(r29)
/* 80C34670  A8 1D 05 80 */	lha r0, 0x580(r29)
/* 80C34674  2C 00 01 35 */	cmpwi r0, 0x135
/* 80C34678  40 81 00 0C */	ble lbl_80C34684
/* 80C3467C  38 00 01 35 */	li r0, 0x135
/* 80C34680  B0 1D 05 80 */	sth r0, 0x580(r29)
lbl_80C34684:
/* 80C34684  38 00 18 00 */	li r0, 0x1800
/* 80C34688  B0 1D 05 7A */	sth r0, 0x57a(r29)
/* 80C3468C  7F A3 EB 78 */	mr r3, r29
/* 80C34690  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80C34694  4B 3E 60 7D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C34698  7C 64 1B 78 */	mr r4, r3
/* 80C3469C  38 7D 05 82 */	addi r3, r29, 0x582
/* 80C346A0  3C 84 00 01 */	addis r4, r4, 1
/* 80C346A4  38 04 80 00 */	addi r0, r4, -32768
/* 80C346A8  7C 04 07 34 */	extsh r4, r0
/* 80C346AC  38 A0 00 50 */	li r5, 0x50
/* 80C346B0  38 C0 10 00 */	li r6, 0x1000
/* 80C346B4  38 E0 00 00 */	li r7, 0
/* 80C346B8  4B 63 BE 89 */	bl cLib_addCalcAngleS__FPsssss
lbl_80C346BC:
/* 80C346BC  38 7D 06 38 */	addi r3, r29, 0x638
/* 80C346C0  4B 44 FD A1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C346C4  28 03 00 00 */	cmplwi r3, 0
/* 80C346C8  41 82 00 F8 */	beq lbl_80C347C0
/* 80C346CC  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80C346D0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80C346D4  40 80 00 10 */	bge lbl_80C346E4
/* 80C346D8  88 7D 05 68 */	lbz r3, 0x568(r29)
/* 80C346DC  38 03 00 01 */	addi r0, r3, 1
/* 80C346E0  98 1D 05 68 */	stb r0, 0x568(r29)
lbl_80C346E4:
/* 80C346E4  38 00 01 36 */	li r0, 0x136
/* 80C346E8  B0 1D 05 80 */	sth r0, 0x580(r29)
/* 80C346EC  A8 1D 05 7A */	lha r0, 0x57a(r29)
/* 80C346F0  C8 5E 00 08 */	lfd f2, 8(r30)
/* 80C346F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C346F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C346FC  3C 60 43 30 */	lis r3, 0x4330
/* 80C34700  90 61 00 40 */	stw r3, 0x40(r1)
/* 80C34704  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80C34708  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C3470C  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80C34710  EC 00 08 2A */	fadds f0, f0, f1
/* 80C34714  FC 00 00 1E */	fctiwz f0, f0
/* 80C34718  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80C3471C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80C34720  B0 1D 05 7A */	sth r0, 0x57a(r29)
/* 80C34724  A8 1D 05 76 */	lha r0, 0x576(r29)
/* 80C34728  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C3472C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C34730  90 61 00 30 */	stw r3, 0x30(r1)
/* 80C34734  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80C34738  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C3473C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C34740  FC 00 00 1E */	fctiwz f0, f0
/* 80C34744  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80C34748  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80C3474C  B0 1D 05 76 */	sth r0, 0x576(r29)
/* 80C34750  38 00 00 14 */	li r0, 0x14
/* 80C34754  B0 1D 05 A8 */	sth r0, 0x5a8(r29)
/* 80C34758  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80C3475C  88 64 05 68 */	lbz r3, 0x568(r4)
/* 80C34760  38 03 FF FD */	addi r0, r3, -3
/* 80C34764  28 00 00 1C */	cmplwi r0, 0x1c
/* 80C34768  41 81 00 44 */	bgt lbl_80C347AC
/* 80C3476C  3C 60 80 C3 */	lis r3, lit_3975@ha /* 0x80C34FC4@ha */
/* 80C34770  38 63 4F C4 */	addi r3, r3, lit_3975@l /* 0x80C34FC4@l */
/* 80C34774  54 00 10 3A */	slwi r0, r0, 2
/* 80C34778  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C3477C  7C 09 03 A6 */	mtctr r0
/* 80C34780  4E 80 04 20 */	bctr 
lbl_80C34784:
/* 80C34784  7F A3 EB 78 */	mr r3, r29
/* 80C34788  4B 3E 5F 89 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C3478C  38 03 40 00 */	addi r0, r3, 0x4000
/* 80C34790  B0 1D 05 82 */	sth r0, 0x582(r29)
/* 80C34794  48 00 00 2C */	b lbl_80C347C0
lbl_80C34798:
/* 80C34798  7F A3 EB 78 */	mr r3, r29
/* 80C3479C  4B 3E 5F 75 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C347A0  38 03 C0 00 */	addi r0, r3, -16384
/* 80C347A4  B0 1D 05 82 */	sth r0, 0x582(r29)
/* 80C347A8  48 00 00 18 */	b lbl_80C347C0
lbl_80C347AC:
/* 80C347AC  7F A3 EB 78 */	mr r3, r29
/* 80C347B0  4B 3E 5F 61 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C347B4  3C 63 00 01 */	addis r3, r3, 1
/* 80C347B8  38 03 80 00 */	addi r0, r3, -32768
/* 80C347BC  B0 1D 05 82 */	sth r0, 0x582(r29)
lbl_80C347C0:
/* 80C347C0  A8 1D 05 7A */	lha r0, 0x57a(r29)
/* 80C347C4  2C 00 00 00 */	cmpwi r0, 0
/* 80C347C8  40 82 00 0C */	bne lbl_80C347D4
/* 80C347CC  38 00 00 00 */	li r0, 0
/* 80C347D0  98 1D 05 69 */	stb r0, 0x569(r29)
lbl_80C347D4:
/* 80C347D4  A8 1D 05 7A */	lha r0, 0x57a(r29)
/* 80C347D8  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80C347DC  40 81 00 0C */	ble lbl_80C347E8
/* 80C347E0  38 00 20 00 */	li r0, 0x2000
/* 80C347E4  B0 1D 05 7A */	sth r0, 0x57a(r29)
lbl_80C347E8:
/* 80C347E8  A8 1D 05 76 */	lha r0, 0x576(r29)
/* 80C347EC  2C 00 15 00 */	cmpwi r0, 0x1500
/* 80C347F0  40 81 00 0C */	ble lbl_80C347FC
/* 80C347F4  38 00 15 00 */	li r0, 0x1500
/* 80C347F8  B0 1D 05 76 */	sth r0, 0x576(r29)
lbl_80C347FC:
/* 80C347FC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80C34800  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80C34804  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80C34808  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80C3480C  39 61 00 60 */	addi r11, r1, 0x60
/* 80C34810  4B 72 DA 19 */	bl _restgpr_29
/* 80C34814  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80C34818  7C 08 03 A6 */	mtlr r0
/* 80C3481C  38 21 00 80 */	addi r1, r1, 0x80
/* 80C34820  4E 80 00 20 */	blr 
