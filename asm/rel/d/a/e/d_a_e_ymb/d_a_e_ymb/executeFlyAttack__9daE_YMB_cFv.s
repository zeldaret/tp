lbl_80819610:
/* 80819610  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80819614  7C 08 02 A6 */	mflr r0
/* 80819618  90 01 00 64 */	stw r0, 0x64(r1)
/* 8081961C  39 61 00 60 */	addi r11, r1, 0x60
/* 80819620  4B B4 8B B9 */	bl _savegpr_28
/* 80819624  7C 7D 1B 78 */	mr r29, r3
/* 80819628  3C 60 80 82 */	lis r3, lit_3791@ha /* 0x808218AC@ha */
/* 8081962C  3B C3 18 AC */	addi r30, r3, lit_3791@l /* 0x808218AC@l */
/* 80819630  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80819634  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80819638  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 8081963C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 80819640  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 80819644  90 01 00 14 */	stw r0, 0x14(r1)
/* 80819648  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081964C  38 81 00 14 */	addi r4, r1, 0x14
/* 80819650  38 A0 00 00 */	li r5, 0
/* 80819654  38 C0 FF FF */	li r6, -1
/* 80819658  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081965C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80819660  7D 89 03 A6 */	mtctr r12
/* 80819664  4E 80 04 21 */	bctrl 
/* 80819668  7F A3 EB 78 */	mr r3, r29
/* 8081966C  4B FF DB 95 */	bl setFlyWaitVoice__9daE_YMB_cFv
/* 80819670  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80819674  28 00 00 0B */	cmplwi r0, 0xb
/* 80819678  41 81 09 40 */	bgt lbl_80819FB8
/* 8081967C  3C 60 80 82 */	lis r3, lit_5575@ha /* 0x80821CA0@ha */
/* 80819680  38 63 1C A0 */	addi r3, r3, lit_5575@l /* 0x80821CA0@l */
/* 80819684  54 00 10 3A */	slwi r0, r0, 2
/* 80819688  7C 03 00 2E */	lwzx r0, r3, r0
/* 8081968C  7C 09 03 A6 */	mtctr r0
/* 80819690  4E 80 04 20 */	bctr 
lbl_80819694:
/* 80819694  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80819698  4B A4 E2 BD */	bl cM_rndF__Ff
/* 8081969C  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 808196A0  EC 00 08 2A */	fadds f0, f0, f1
/* 808196A4  FC 00 00 1E */	fctiwz f0, f0
/* 808196A8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 808196AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 808196B0  90 1D 07 0C */	stw r0, 0x70c(r29)
/* 808196B4  38 00 00 00 */	li r0, 0
/* 808196B8  B0 1D 06 E4 */	sth r0, 0x6e4(r29)
/* 808196BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702B6@ha */
/* 808196C0  38 03 02 B6 */	addi r0, r3, 0x02B6 /* 0x000702B6@l */
/* 808196C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 808196C8  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 808196CC  38 81 00 10 */	addi r4, r1, 0x10
/* 808196D0  38 A0 FF FF */	li r5, -1
/* 808196D4  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 808196D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 808196DC  7D 89 03 A6 */	mtctr r12
/* 808196E0  4E 80 04 21 */	bctrl 
/* 808196E4  7F A3 EB 78 */	mr r3, r29
/* 808196E8  38 80 00 06 */	li r4, 6
/* 808196EC  38 A0 00 00 */	li r5, 0
/* 808196F0  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 808196F4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 808196F8  4B FF D2 85 */	bl setBck__9daE_YMB_cFiUcff
/* 808196FC  38 00 00 01 */	li r0, 1
/* 80819700  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80819704  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80819708  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 8081970C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80819710  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 80819714  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80819718  D0 1D 06 B0 */	stfs f0, 0x6b0(r29)
/* 8081971C  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80819720  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80819724  EC 21 00 2A */	fadds f1, f1, f0
/* 80819728  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8081972C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80819730  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 80819734  7F A3 EB 78 */	mr r3, r29
/* 80819738  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8081973C  4B 80 0F D5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80819740  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
/* 80819744  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 80819748  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 8081974C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80819750  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80819754  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80819758:
/* 80819758  7F A3 EB 78 */	mr r3, r29
/* 8081975C  4B FF DC 55 */	bl setElecEffect1__9daE_YMB_cFv
/* 80819760  38 7D 06 EA */	addi r3, r29, 0x6ea
/* 80819764  38 80 00 00 */	li r4, 0
/* 80819768  38 A0 04 00 */	li r5, 0x400
/* 8081976C  4B A5 74 25 */	bl cLib_chaseAngleS__FPsss
/* 80819770  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 80819774  38 80 00 00 */	li r4, 0
/* 80819778  38 A0 04 00 */	li r5, 0x400
/* 8081977C  4B A5 74 15 */	bl cLib_chaseAngleS__FPsss
/* 80819780  7F A3 EB 78 */	mr r3, r29
/* 80819784  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80819788  4B 80 0F 89 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8081978C  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
/* 80819790  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 80819794  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80819798  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081979C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 808197A0  4B A5 6F A1 */	bl cLib_chaseF__FPfff
/* 808197A4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 808197A8  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 808197AC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 808197B0  4B A5 6F 91 */	bl cLib_chaseF__FPfff
/* 808197B4  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 808197B8  38 63 00 0C */	addi r3, r3, 0xc
/* 808197BC  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 808197C0  4B B0 EC 6D */	bl checkPass__12J3DFrameCtrlFf
/* 808197C4  2C 03 00 00 */	cmpwi r3, 0
/* 808197C8  41 82 07 F0 */	beq lbl_80819FB8
/* 808197CC  38 00 00 02 */	li r0, 2
/* 808197D0  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 808197D4  7F A3 EB 78 */	mr r3, r29
/* 808197D8  4B FF DD 95 */	bl setElecEffect2__9daE_YMB_cFv
/* 808197DC  38 00 00 0A */	li r0, 0xa
/* 808197E0  90 1D 06 FC */	stw r0, 0x6fc(r29)
/* 808197E4  48 00 07 D4 */	b lbl_80819FB8
lbl_808197E8:
/* 808197E8  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 808197EC  38 80 00 01 */	li r4, 1
/* 808197F0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 808197F4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 808197F8  40 82 00 18 */	bne lbl_80819810
/* 808197FC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819800  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80819804  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80819808  41 82 00 08 */	beq lbl_80819810
/* 8081980C  38 80 00 00 */	li r4, 0
lbl_80819810:
/* 80819810  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80819814  41 82 00 1C */	beq lbl_80819830
/* 80819818  7F A3 EB 78 */	mr r3, r29
/* 8081981C  38 80 00 07 */	li r4, 7
/* 80819820  38 A0 00 02 */	li r5, 2
/* 80819824  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819828  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081982C  4B FF D1 51 */	bl setBck__9daE_YMB_cFiUcff
lbl_80819830:
/* 80819830  7F A3 EB 78 */	mr r3, r29
/* 80819834  4B FF DD 39 */	bl setElecEffect2__9daE_YMB_cFv
/* 80819838  38 00 00 03 */	li r0, 3
/* 8081983C  90 1D 07 04 */	stw r0, 0x704(r29)
/* 80819840  38 61 00 24 */	addi r3, r1, 0x24
/* 80819844  38 9D 06 A8 */	addi r4, r29, 0x6a8
/* 80819848  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8081984C  4B A4 D2 E9 */	bl __mi__4cXyzCFRC3Vec
/* 80819850  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80819854  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80819858  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8081985C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80819860  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80819864  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80819868  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8081986C  38 9D 06 A8 */	addi r4, r29, 0x6a8
/* 80819870  4B A5 73 95 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80819874  7C 64 1B 78 */	mr r4, r3
/* 80819878  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8081987C  38 A0 08 00 */	li r5, 0x800
/* 80819880  4B A5 73 11 */	bl cLib_chaseAngleS__FPsss
/* 80819884  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80819888  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8081988C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80819890  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80819894  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80819898  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8081989C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 808198A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 808198A4  38 61 00 18 */	addi r3, r1, 0x18
/* 808198A8  4B B2 D8 91 */	bl PSVECSquareMag
/* 808198AC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 808198B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808198B4  40 81 00 58 */	ble lbl_8081990C
/* 808198B8  FC 00 08 34 */	frsqrte f0, f1
/* 808198BC  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 808198C0  FC 44 00 32 */	fmul f2, f4, f0
/* 808198C4  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 808198C8  FC 00 00 32 */	fmul f0, f0, f0
/* 808198CC  FC 01 00 32 */	fmul f0, f1, f0
/* 808198D0  FC 03 00 28 */	fsub f0, f3, f0
/* 808198D4  FC 02 00 32 */	fmul f0, f2, f0
/* 808198D8  FC 44 00 32 */	fmul f2, f4, f0
/* 808198DC  FC 00 00 32 */	fmul f0, f0, f0
/* 808198E0  FC 01 00 32 */	fmul f0, f1, f0
/* 808198E4  FC 03 00 28 */	fsub f0, f3, f0
/* 808198E8  FC 02 00 32 */	fmul f0, f2, f0
/* 808198EC  FC 44 00 32 */	fmul f2, f4, f0
/* 808198F0  FC 00 00 32 */	fmul f0, f0, f0
/* 808198F4  FC 01 00 32 */	fmul f0, f1, f0
/* 808198F8  FC 03 00 28 */	fsub f0, f3, f0
/* 808198FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80819900  FC 21 00 32 */	fmul f1, f1, f0
/* 80819904  FC 20 08 18 */	frsp f1, f1
/* 80819908  48 00 00 88 */	b lbl_80819990
lbl_8081990C:
/* 8081990C  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 80819910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80819914  40 80 00 10 */	bge lbl_80819924
/* 80819918  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081991C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80819920  48 00 00 70 */	b lbl_80819990
lbl_80819924:
/* 80819924  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80819928  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8081992C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80819930  3C 00 7F 80 */	lis r0, 0x7f80
/* 80819934  7C 03 00 00 */	cmpw r3, r0
/* 80819938  41 82 00 14 */	beq lbl_8081994C
/* 8081993C  40 80 00 40 */	bge lbl_8081997C
/* 80819940  2C 03 00 00 */	cmpwi r3, 0
/* 80819944  41 82 00 20 */	beq lbl_80819964
/* 80819948  48 00 00 34 */	b lbl_8081997C
lbl_8081994C:
/* 8081994C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80819950  41 82 00 0C */	beq lbl_8081995C
/* 80819954  38 00 00 01 */	li r0, 1
/* 80819958  48 00 00 28 */	b lbl_80819980
lbl_8081995C:
/* 8081995C  38 00 00 02 */	li r0, 2
/* 80819960  48 00 00 20 */	b lbl_80819980
lbl_80819964:
/* 80819964  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80819968  41 82 00 0C */	beq lbl_80819974
/* 8081996C  38 00 00 05 */	li r0, 5
/* 80819970  48 00 00 10 */	b lbl_80819980
lbl_80819974:
/* 80819974  38 00 00 03 */	li r0, 3
/* 80819978  48 00 00 08 */	b lbl_80819980
lbl_8081997C:
/* 8081997C  38 00 00 04 */	li r0, 4
lbl_80819980:
/* 80819980  2C 00 00 01 */	cmpwi r0, 1
/* 80819984  40 82 00 0C */	bne lbl_80819990
/* 80819988  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8081998C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80819990:
/* 80819990  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80819994  4B A4 DC E1 */	bl cM_atan2s__Fff
/* 80819998  7C 60 07 34 */	extsh r0, r3
/* 8081999C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 808199A0  3C 80 80 82 */	lis r4, l_HIO@ha /* 0x80821E64@ha */
/* 808199A4  3B E4 1E 64 */	addi r31, r4, l_HIO@l /* 0x80821E64@l */
/* 808199A8  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 808199AC  54 1C 04 38 */	rlwinm r28, r0, 0, 0x10, 0x1c
/* 808199B0  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 808199B4  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 808199B8  7C 04 E4 2E */	lfsx f0, r4, r28
/* 808199BC  EC 21 00 32 */	fmuls f1, f1, f0
/* 808199C0  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 808199C4  4B A5 6D 7D */	bl cLib_chaseF__FPfff
/* 808199C8  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 808199CC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 808199D0  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 808199D4  38 04 9A 20 */	addi r0, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 808199D8  7C 80 E2 14 */	add r4, r0, r28
/* 808199DC  C0 04 00 04 */	lfs f0, 4(r4)
/* 808199E0  EC 21 00 32 */	fmuls f1, f1, f0
/* 808199E4  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 808199E8  4B A5 6D 59 */	bl cLib_chaseF__FPfff
/* 808199EC  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 808199F0  2C 00 00 00 */	cmpwi r0, 0
/* 808199F4  41 82 00 14 */	beq lbl_80819A08
/* 808199F8  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 808199FC  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80819A00  EC 01 00 2A */	fadds f0, f1, f0
/* 80819A04  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_80819A08:
/* 80819A08  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80819A0C  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80819A10  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80819A14  EC 21 00 2A */	fadds f1, f1, f0
/* 80819A18  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80819A1C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80819A20  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80819A24  40 80 00 2C */	bge lbl_80819A50
/* 80819A28  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80819A2C  EC 02 00 2A */	fadds f0, f2, f0
/* 80819A30  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80819A34  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80819A38  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819A3C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80819A40  40 80 00 10 */	bge lbl_80819A50
/* 80819A44  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80819A48  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 80819A4C  4B A5 6C F5 */	bl cLib_chaseF__FPfff
lbl_80819A50:
/* 80819A50  38 7D 13 24 */	addi r3, r29, 0x1324
/* 80819A54  4B 86 A8 6D */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80819A58  28 03 00 00 */	cmplwi r3, 0
/* 80819A5C  41 82 00 6C */	beq lbl_80819AC8
/* 80819A60  38 7D 13 24 */	addi r3, r29, 0x1324
/* 80819A64  4B 86 A8 F5 */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 80819A68  4B A4 9F E1 */	bl GetAc__8cCcD_ObjFv
/* 80819A6C  A8 03 00 08 */	lha r0, 8(r3)
/* 80819A70  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80819A74  40 82 00 54 */	bne lbl_80819AC8
/* 80819A78  38 00 00 1E */	li r0, 0x1e
/* 80819A7C  90 1D 06 FC */	stw r0, 0x6fc(r29)
/* 80819A80  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80819A84  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80819A88  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80819A8C  38 00 00 05 */	li r0, 5
/* 80819A90  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80819A94  7F A3 EB 78 */	mr r3, r29
/* 80819A98  38 80 00 08 */	li r4, 8
/* 80819A9C  38 A0 00 00 */	li r5, 0
/* 80819AA0  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80819AA4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80819AA8  4B FF CE D5 */	bl setBck__9daE_YMB_cFiUcff
/* 80819AAC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80819AB0  38 9D 06 9C */	addi r4, r29, 0x69c
/* 80819AB4  4B A5 71 51 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80819AB8  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 80819ABC  38 00 00 00 */	li r0, 0
/* 80819AC0  B0 1D 06 EA */	sth r0, 0x6ea(r29)
/* 80819AC4  48 00 04 F4 */	b lbl_80819FB8
lbl_80819AC8:
/* 80819AC8  38 61 00 30 */	addi r3, r1, 0x30
/* 80819ACC  4B B2 D6 6D */	bl PSVECSquareMag
/* 80819AD0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80819AD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80819AD8  40 81 00 58 */	ble lbl_80819B30
/* 80819ADC  FC 00 08 34 */	frsqrte f0, f1
/* 80819AE0  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 80819AE4  FC 44 00 32 */	fmul f2, f4, f0
/* 80819AE8  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 80819AEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80819AF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80819AF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80819AF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80819AFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80819B00  FC 00 00 32 */	fmul f0, f0, f0
/* 80819B04  FC 01 00 32 */	fmul f0, f1, f0
/* 80819B08  FC 03 00 28 */	fsub f0, f3, f0
/* 80819B0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80819B10  FC 44 00 32 */	fmul f2, f4, f0
/* 80819B14  FC 00 00 32 */	fmul f0, f0, f0
/* 80819B18  FC 01 00 32 */	fmul f0, f1, f0
/* 80819B1C  FC 03 00 28 */	fsub f0, f3, f0
/* 80819B20  FC 02 00 32 */	fmul f0, f2, f0
/* 80819B24  FC 21 00 32 */	fmul f1, f1, f0
/* 80819B28  FC 20 08 18 */	frsp f1, f1
/* 80819B2C  48 00 00 88 */	b lbl_80819BB4
lbl_80819B30:
/* 80819B30  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 80819B34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80819B38  40 80 00 10 */	bge lbl_80819B48
/* 80819B3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80819B40  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80819B44  48 00 00 70 */	b lbl_80819BB4
lbl_80819B48:
/* 80819B48  D0 21 00 08 */	stfs f1, 8(r1)
/* 80819B4C  80 81 00 08 */	lwz r4, 8(r1)
/* 80819B50  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80819B54  3C 00 7F 80 */	lis r0, 0x7f80
/* 80819B58  7C 03 00 00 */	cmpw r3, r0
/* 80819B5C  41 82 00 14 */	beq lbl_80819B70
/* 80819B60  40 80 00 40 */	bge lbl_80819BA0
/* 80819B64  2C 03 00 00 */	cmpwi r3, 0
/* 80819B68  41 82 00 20 */	beq lbl_80819B88
/* 80819B6C  48 00 00 34 */	b lbl_80819BA0
lbl_80819B70:
/* 80819B70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80819B74  41 82 00 0C */	beq lbl_80819B80
/* 80819B78  38 00 00 01 */	li r0, 1
/* 80819B7C  48 00 00 28 */	b lbl_80819BA4
lbl_80819B80:
/* 80819B80  38 00 00 02 */	li r0, 2
/* 80819B84  48 00 00 20 */	b lbl_80819BA4
lbl_80819B88:
/* 80819B88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80819B8C  41 82 00 0C */	beq lbl_80819B98
/* 80819B90  38 00 00 05 */	li r0, 5
/* 80819B94  48 00 00 10 */	b lbl_80819BA4
lbl_80819B98:
/* 80819B98  38 00 00 03 */	li r0, 3
/* 80819B9C  48 00 00 08 */	b lbl_80819BA4
lbl_80819BA0:
/* 80819BA0  38 00 00 04 */	li r0, 4
lbl_80819BA4:
/* 80819BA4  2C 00 00 01 */	cmpwi r0, 1
/* 80819BA8  40 82 00 0C */	bne lbl_80819BB4
/* 80819BAC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80819BB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80819BB4:
/* 80819BB4  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80819BB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80819BBC  40 80 00 14 */	bge lbl_80819BD0
/* 80819BC0  38 00 00 04 */	li r0, 4
/* 80819BC4  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80819BC8  38 00 00 0A */	li r0, 0xa
/* 80819BCC  90 1D 06 FC */	stw r0, 0x6fc(r29)
lbl_80819BD0:
/* 80819BD0  7F A3 EB 78 */	mr r3, r29
/* 80819BD4  4B FF E7 9D */	bl setInclination__9daE_YMB_cFv
/* 80819BD8  48 00 03 E0 */	b lbl_80819FB8
lbl_80819BDC:
/* 80819BDC  7F A3 EB 78 */	mr r3, r29
/* 80819BE0  4B FF D9 8D */	bl setElecEffect2__9daE_YMB_cFv
/* 80819BE4  38 00 00 03 */	li r0, 3
/* 80819BE8  90 1D 07 04 */	stw r0, 0x704(r29)
/* 80819BEC  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80819BF0  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819BF4  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80819BF8  4B A5 6B 49 */	bl cLib_chaseF__FPfff
/* 80819BFC  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80819C00  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80819C04  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80819C08  4B A5 6B 39 */	bl cLib_chaseF__FPfff
/* 80819C0C  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80819C10  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80819C14  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80819C18  EC 21 00 2A */	fadds f1, f1, f0
/* 80819C1C  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80819C20  EC 01 00 28 */	fsubs f0, f1, f0
/* 80819C24  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80819C28  40 80 00 2C */	bge lbl_80819C54
/* 80819C2C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80819C30  EC 02 00 2A */	fadds f0, f2, f0
/* 80819C34  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80819C38  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80819C3C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819C40  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80819C44  40 80 00 10 */	bge lbl_80819C54
/* 80819C48  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80819C4C  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 80819C50  4B A5 6A F1 */	bl cLib_chaseF__FPfff
lbl_80819C54:
/* 80819C54  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 80819C58  2C 00 00 00 */	cmpwi r0, 0
/* 80819C5C  40 82 00 2C */	bne lbl_80819C88
/* 80819C60  7F A3 EB 78 */	mr r3, r29
/* 80819C64  38 80 00 08 */	li r4, 8
/* 80819C68  38 A0 00 00 */	li r5, 0
/* 80819C6C  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80819C70  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80819C74  4B FF CD 09 */	bl setBck__9daE_YMB_cFiUcff
/* 80819C78  38 00 00 05 */	li r0, 5
/* 80819C7C  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80819C80  38 00 00 1E */	li r0, 0x1e
/* 80819C84  90 1D 06 FC */	stw r0, 0x6fc(r29)
lbl_80819C88:
/* 80819C88  7F A3 EB 78 */	mr r3, r29
/* 80819C8C  4B FF E6 E5 */	bl setInclination__9daE_YMB_cFv
/* 80819C90  48 00 03 28 */	b lbl_80819FB8
lbl_80819C94:
/* 80819C94  7F A3 EB 78 */	mr r3, r29
/* 80819C98  4B FF D8 D5 */	bl setElecEffect2__9daE_YMB_cFv
/* 80819C9C  38 00 00 03 */	li r0, 3
/* 80819CA0  90 1D 07 04 */	stw r0, 0x704(r29)
/* 80819CA4  38 00 00 01 */	li r0, 1
/* 80819CA8  98 1D 07 12 */	stb r0, 0x712(r29)
/* 80819CAC  A8 7D 06 E4 */	lha r3, 0x6e4(r29)
/* 80819CB0  38 03 08 00 */	addi r0, r3, 0x800
/* 80819CB4  B0 1D 06 E4 */	sth r0, 0x6e4(r29)
/* 80819CB8  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80819CBC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819CC0  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80819CC4  4B A5 6A 7D */	bl cLib_chaseF__FPfff
/* 80819CC8  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80819CCC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819CD0  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80819CD4  4B A5 6A 6D */	bl cLib_chaseF__FPfff
/* 80819CD8  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80819CDC  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80819CE0  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80819CE4  EC 01 00 2A */	fadds f0, f1, f0
/* 80819CE8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80819CEC  40 80 00 2C */	bge lbl_80819D18
/* 80819CF0  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80819CF4  EC 02 00 2A */	fadds f0, f2, f0
/* 80819CF8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80819CFC  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80819D00  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819D04  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80819D08  40 80 00 10 */	bge lbl_80819D18
/* 80819D0C  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80819D10  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 80819D14  4B A5 6A 2D */	bl cLib_chaseF__FPfff
lbl_80819D18:
/* 80819D18  7F A3 EB 78 */	mr r3, r29
/* 80819D1C  38 80 00 08 */	li r4, 8
/* 80819D20  4B FF CD 01 */	bl checkBck__9daE_YMB_cFi
/* 80819D24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80819D28  41 82 00 50 */	beq lbl_80819D78
/* 80819D2C  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 80819D30  38 80 00 01 */	li r4, 1
/* 80819D34  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80819D38  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80819D3C  40 82 00 18 */	bne lbl_80819D54
/* 80819D40  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819D44  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80819D48  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80819D4C  41 82 00 08 */	beq lbl_80819D54
/* 80819D50  38 80 00 00 */	li r4, 0
lbl_80819D54:
/* 80819D54  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80819D58  41 82 00 3C */	beq lbl_80819D94
/* 80819D5C  7F A3 EB 78 */	mr r3, r29
/* 80819D60  38 80 00 11 */	li r4, 0x11
/* 80819D64  38 A0 00 02 */	li r5, 2
/* 80819D68  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80819D6C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80819D70  4B FF CC 0D */	bl setBck__9daE_YMB_cFiUcff
/* 80819D74  48 00 00 20 */	b lbl_80819D94
lbl_80819D78:
/* 80819D78  7F A3 EB 78 */	mr r3, r29
/* 80819D7C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80819D80  4B 80 09 91 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80819D84  7C 64 1B 78 */	mr r4, r3
/* 80819D88  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80819D8C  38 A0 04 00 */	li r5, 0x400
/* 80819D90  4B A5 6E 01 */	bl cLib_chaseAngleS__FPsss
lbl_80819D94:
/* 80819D94  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 80819D98  2C 00 00 00 */	cmpwi r0, 0
/* 80819D9C  40 82 00 30 */	bne lbl_80819DCC
/* 80819DA0  38 00 00 09 */	li r0, 9
/* 80819DA4  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80819DA8  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80819DAC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80819DB0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80819DB4  80 1D 06 EC */	lwz r0, 0x6ec(r29)
/* 80819DB8  54 00 08 3C */	slwi r0, r0, 1
/* 80819DBC  3C 60 80 82 */	lis r3, ymb_chance_time@ha /* 0x80821C98@ha */
/* 80819DC0  38 63 1C 98 */	addi r3, r3, ymb_chance_time@l /* 0x80821C98@l */
/* 80819DC4  7C 03 02 AE */	lhax r0, r3, r0
/* 80819DC8  90 1D 06 FC */	stw r0, 0x6fc(r29)
lbl_80819DCC:
/* 80819DCC  7F A3 EB 78 */	mr r3, r29
/* 80819DD0  4B FF E5 A1 */	bl setInclination__9daE_YMB_cFv
/* 80819DD4  48 00 01 E4 */	b lbl_80819FB8
lbl_80819DD8:
/* 80819DD8  38 00 00 01 */	li r0, 1
/* 80819DDC  98 1D 07 12 */	stb r0, 0x712(r29)
/* 80819DE0  7F A3 EB 78 */	mr r3, r29
/* 80819DE4  4B FF EB 4D */	bl checkWolfLockIn__9daE_YMB_cFv
/* 80819DE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80819DEC  41 82 00 18 */	beq lbl_80819E04
/* 80819DF0  7F A3 EB 78 */	mr r3, r29
/* 80819DF4  38 80 00 03 */	li r4, 3
/* 80819DF8  38 A0 00 00 */	li r5, 0
/* 80819DFC  4B FF CC 81 */	bl setActionMode__9daE_YMB_cFii
/* 80819E00  48 00 01 B8 */	b lbl_80819FB8
lbl_80819E04:
/* 80819E04  7F A3 EB 78 */	mr r3, r29
/* 80819E08  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80819E0C  4B 80 09 05 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80819E10  7C 7C 1B 78 */	mr r28, r3
/* 80819E14  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80819E18  3C 9C 00 01 */	addis r4, r28, 1
/* 80819E1C  38 04 80 00 */	addi r0, r4, -32768
/* 80819E20  7C 04 07 34 */	extsh r4, r0
/* 80819E24  38 A0 00 04 */	li r5, 4
/* 80819E28  38 C0 10 00 */	li r6, 0x1000
/* 80819E2C  38 E0 01 00 */	li r7, 0x100
/* 80819E30  4B A5 67 11 */	bl cLib_addCalcAngleS__FPsssss
/* 80819E34  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80819E38  7F 84 E3 78 */	mr r4, r28
/* 80819E3C  38 A0 00 08 */	li r5, 8
/* 80819E40  38 C0 04 00 */	li r6, 0x400
/* 80819E44  38 E0 00 80 */	li r7, 0x80
/* 80819E48  4B A5 66 F9 */	bl cLib_addCalcAngleS__FPsssss
/* 80819E4C  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80819E50  2C 00 00 09 */	cmpwi r0, 9
/* 80819E54  40 82 00 28 */	bne lbl_80819E7C
/* 80819E58  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80819E5C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819E60  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80819E64  4B A5 68 DD */	bl cLib_chaseF__FPfff
/* 80819E68  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80819E6C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819E70  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80819E74  4B A5 68 CD */	bl cLib_chaseF__FPfff
/* 80819E78  48 00 00 24 */	b lbl_80819E9C
lbl_80819E7C:
/* 80819E7C  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80819E80  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 80819E84  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80819E88  4B A5 68 B9 */	bl cLib_chaseF__FPfff
/* 80819E8C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80819E90  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80819E94  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80819E98  4B A5 68 A9 */	bl cLib_chaseF__FPfff
lbl_80819E9C:
/* 80819E9C  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80819EA0  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80819EA4  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80819EA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80819EAC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80819EB0  40 80 00 2C */	bge lbl_80819EDC
/* 80819EB4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80819EB8  EC 02 00 2A */	fadds f0, f2, f0
/* 80819EBC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80819EC0  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80819EC4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819EC8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80819ECC  40 80 00 10 */	bge lbl_80819EDC
/* 80819ED0  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80819ED4  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 80819ED8  4B A5 68 69 */	bl cLib_chaseF__FPfff
lbl_80819EDC:
/* 80819EDC  7F A3 EB 78 */	mr r3, r29
/* 80819EE0  4B FF E4 91 */	bl setInclination__9daE_YMB_cFv
/* 80819EE4  7F A3 EB 78 */	mr r3, r29
/* 80819EE8  38 80 00 08 */	li r4, 8
/* 80819EEC  4B FF CB 35 */	bl checkBck__9daE_YMB_cFi
/* 80819EF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80819EF4  41 82 00 4C */	beq lbl_80819F40
/* 80819EF8  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 80819EFC  38 80 00 01 */	li r4, 1
/* 80819F00  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80819F04  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80819F08  40 82 00 18 */	bne lbl_80819F20
/* 80819F0C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819F10  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80819F14  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80819F18  41 82 00 08 */	beq lbl_80819F20
/* 80819F1C  38 80 00 00 */	li r4, 0
lbl_80819F20:
/* 80819F20  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80819F24  41 82 00 1C */	beq lbl_80819F40
/* 80819F28  7F A3 EB 78 */	mr r3, r29
/* 80819F2C  38 80 00 11 */	li r4, 0x11
/* 80819F30  38 A0 00 02 */	li r5, 2
/* 80819F34  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80819F38  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80819F3C  4B FF CA 41 */	bl setBck__9daE_YMB_cFiUcff
lbl_80819F40:
/* 80819F40  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80819F44  2C 00 00 09 */	cmpwi r0, 9
/* 80819F48  40 82 00 1C */	bne lbl_80819F64
/* 80819F4C  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 80819F50  2C 00 00 00 */	cmpwi r0, 0
/* 80819F54  40 82 00 64 */	bne lbl_80819FB8
/* 80819F58  38 00 00 0A */	li r0, 0xa
/* 80819F5C  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80819F60  48 00 00 58 */	b lbl_80819FB8
lbl_80819F64:
/* 80819F64  C0 3D 06 A0 */	lfs f1, 0x6a0(r29)
/* 80819F68  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80819F6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80819F70  FC 00 02 10 */	fabs f0, f0
/* 80819F74  FC 20 00 18 */	frsp f1, f0
/* 80819F78  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80819F7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80819F80  40 80 00 38 */	bge lbl_80819FB8
/* 80819F84  38 00 00 0B */	li r0, 0xb
/* 80819F88  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80819F8C  48 00 00 2C */	b lbl_80819FB8
lbl_80819F90:
/* 80819F90  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80819F94  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80819F98  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80819F9C  4B A5 67 A5 */	bl cLib_chaseF__FPfff
/* 80819FA0  2C 03 00 00 */	cmpwi r3, 0
/* 80819FA4  41 82 00 14 */	beq lbl_80819FB8
/* 80819FA8  7F A3 EB 78 */	mr r3, r29
/* 80819FAC  38 80 00 01 */	li r4, 1
/* 80819FB0  38 A0 00 00 */	li r5, 0
/* 80819FB4  4B FF CA C9 */	bl setActionMode__9daE_YMB_cFii
lbl_80819FB8:
/* 80819FB8  39 61 00 60 */	addi r11, r1, 0x60
/* 80819FBC  4B B4 82 69 */	bl _restgpr_28
/* 80819FC0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80819FC4  7C 08 03 A6 */	mtlr r0
/* 80819FC8  38 21 00 60 */	addi r1, r1, 0x60
/* 80819FCC  4E 80 00 20 */	blr 
