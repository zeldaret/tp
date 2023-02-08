lbl_80BFBA14:
/* 80BFBA14  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80BFBA18  7C 08 02 A6 */	mflr r0
/* 80BFBA1C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BFBA20  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80BFBA24  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80BFBA28  7C 7E 1B 78 */	mr r30, r3
/* 80BFBA2C  3C 60 80 C0 */	lis r3, lit_3686@ha /* 0x80BFD32C@ha */
/* 80BFBA30  3B E3 D3 2C */	addi r31, r3, lit_3686@l /* 0x80BFD32C@l */
/* 80BFBA34  38 7E 09 88 */	addi r3, r30, 0x988
/* 80BFBA38  4B 48 8A 29 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BFBA3C  28 03 00 00 */	cmplwi r3, 0
/* 80BFBA40  41 82 01 00 */	beq lbl_80BFBB40
/* 80BFBA44  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80BFBA48  28 00 00 01 */	cmplwi r0, 1
/* 80BFBA4C  41 81 00 10 */	bgt lbl_80BFBA5C
/* 80BFBA50  38 00 00 01 */	li r0, 1
/* 80BFBA54  98 1E 07 2C */	stb r0, 0x72c(r30)
/* 80BFBA58  48 00 06 F8 */	b lbl_80BFC150
lbl_80BFBA5C:
/* 80BFBA5C  A8 1E 06 3C */	lha r0, 0x63c(r30)
/* 80BFBA60  2C 00 01 00 */	cmpwi r0, 0x100
/* 80BFBA64  40 80 00 5C */	bge lbl_80BFBAC0
/* 80BFBA68  2C 00 FF 00 */	cmpwi r0, -256
/* 80BFBA6C  40 81 00 54 */	ble lbl_80BFBAC0
/* 80BFBA70  38 00 00 00 */	li r0, 0
/* 80BFBA74  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 80BFBA78  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80BFBA7C  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80BFBA80  54 00 10 3A */	slwi r0, r0, 2
/* 80BFBA84  3C 60 80 C0 */	lis r3, spin_sp@ha /* 0x80BFD430@ha */
/* 80BFBA88  38 63 D4 30 */	addi r3, r3, spin_sp@l /* 0x80BFD430@l */
/* 80BFBA8C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BFBA90  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BFBA94  FC 00 00 1E */	fctiwz f0, f0
/* 80BFBA98  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80BFBA9C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BFBAA0  B0 1E 06 3C */	sth r0, 0x63c(r30)
/* 80BFBAA4  7F C3 F3 78 */	mr r3, r30
/* 80BFBAA8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFBAAC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFBAB0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80BFBAB4  4B 41 EC 5D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BFBAB8  B0 7E 06 44 */	sth r3, 0x644(r30)
/* 80BFBABC  48 00 00 84 */	b lbl_80BFBB40
lbl_80BFBAC0:
/* 80BFBAC0  A8 1E 06 3E */	lha r0, 0x63e(r30)
/* 80BFBAC4  2C 00 01 00 */	cmpwi r0, 0x100
/* 80BFBAC8  40 80 00 78 */	bge lbl_80BFBB40
/* 80BFBACC  2C 00 FF 00 */	cmpwi r0, -256
/* 80BFBAD0  40 81 00 70 */	ble lbl_80BFBB40
/* 80BFBAD4  7F C3 F3 78 */	mr r3, r30
/* 80BFBAD8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFBADC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFBAE0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80BFBAE4  4B 41 EC 2D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BFBAE8  A8 1E 06 44 */	lha r0, 0x644(r30)
/* 80BFBAEC  7C 03 00 50 */	subf r0, r3, r0
/* 80BFBAF0  7C 03 07 34 */	extsh r3, r0
/* 80BFBAF4  38 00 00 00 */	li r0, 0
/* 80BFBAF8  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80BFBAFC  A8 1E 06 3C */	lha r0, 0x63c(r30)
/* 80BFBB00  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80BFBB04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BFBB08  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BFBB0C  3C 00 43 30 */	lis r0, 0x4330
/* 80BFBB10  90 01 00 40 */	stw r0, 0x40(r1)
/* 80BFBB14  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80BFBB18  EC 20 08 28 */	fsubs f1, f0, f1
/* 80BFBB1C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80BFBB20  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BFBB24  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BFBB28  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BFBB2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BFBB30  FC 00 00 1E */	fctiwz f0, f0
/* 80BFBB34  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80BFBB38  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80BFBB3C  B0 1E 06 3E */	sth r0, 0x63e(r30)
lbl_80BFBB40:
/* 80BFBB40  A8 1E 06 3C */	lha r0, 0x63c(r30)
/* 80BFBB44  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80BFBB48  41 81 00 0C */	bgt lbl_80BFBB54
/* 80BFBB4C  2C 00 F0 00 */	cmpwi r0, -4096
/* 80BFBB50  40 80 00 20 */	bge lbl_80BFBB70
lbl_80BFBB54:
/* 80BFBB54  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80BFBB58  28 00 00 00 */	cmplwi r0, 0
/* 80BFBB5C  41 82 00 20 */	beq lbl_80BFBB7C
/* 80BFBB60  80 1E 09 88 */	lwz r0, 0x988(r30)
/* 80BFBB64  60 00 00 01 */	ori r0, r0, 1
/* 80BFBB68  90 1E 09 88 */	stw r0, 0x988(r30)
/* 80BFBB6C  48 00 00 10 */	b lbl_80BFBB7C
lbl_80BFBB70:
/* 80BFBB70  80 1E 09 88 */	lwz r0, 0x988(r30)
/* 80BFBB74  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80BFBB78  90 1E 09 88 */	stw r0, 0x988(r30)
lbl_80BFBB7C:
/* 80BFBB7C  A8 1E 06 0C */	lha r0, 0x60c(r30)
/* 80BFBB80  2C 00 00 01 */	cmpwi r0, 1
/* 80BFBB84  41 82 01 54 */	beq lbl_80BFBCD8
/* 80BFBB88  40 80 05 30 */	bge lbl_80BFC0B8
/* 80BFBB8C  2C 00 00 00 */	cmpwi r0, 0
/* 80BFBB90  40 80 00 08 */	bge lbl_80BFBB98
/* 80BFBB94  48 00 05 24 */	b lbl_80BFC0B8
lbl_80BFBB98:
/* 80BFBB98  38 61 00 18 */	addi r3, r1, 0x18
/* 80BFBB9C  38 9E 06 14 */	addi r4, r30, 0x614
/* 80BFBBA0  38 BE 07 14 */	addi r5, r30, 0x714
/* 80BFBBA4  4B 66 AF 91 */	bl __mi__4cXyzCFRC3Vec
/* 80BFBBA8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BFBBAC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BFBBB0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BFBBB4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BFBBB8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BFBBBC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BFBBC0  38 61 00 30 */	addi r3, r1, 0x30
/* 80BFBBC4  4B 74 B5 75 */	bl PSVECSquareMag
/* 80BFBBC8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BFBBCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BFBBD0  40 81 00 58 */	ble lbl_80BFBC28
/* 80BFBBD4  FC 00 08 34 */	frsqrte f0, f1
/* 80BFBBD8  C8 9F 00 40 */	lfd f4, 0x40(r31)
/* 80BFBBDC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BFBBE0  C8 7F 00 48 */	lfd f3, 0x48(r31)
/* 80BFBBE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BFBBE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BFBBEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BFBBF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BFBBF4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BFBBF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BFBBFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BFBC00  FC 03 00 28 */	fsub f0, f3, f0
/* 80BFBC04  FC 02 00 32 */	fmul f0, f2, f0
/* 80BFBC08  FC 44 00 32 */	fmul f2, f4, f0
/* 80BFBC0C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BFBC10  FC 01 00 32 */	fmul f0, f1, f0
/* 80BFBC14  FC 03 00 28 */	fsub f0, f3, f0
/* 80BFBC18  FC 02 00 32 */	fmul f0, f2, f0
/* 80BFBC1C  FC 21 00 32 */	fmul f1, f1, f0
/* 80BFBC20  FC 20 08 18 */	frsp f1, f1
/* 80BFBC24  48 00 00 88 */	b lbl_80BFBCAC
lbl_80BFBC28:
/* 80BFBC28  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 80BFBC2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BFBC30  40 80 00 10 */	bge lbl_80BFBC40
/* 80BFBC34  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BFBC38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BFBC3C  48 00 00 70 */	b lbl_80BFBCAC
lbl_80BFBC40:
/* 80BFBC40  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BFBC44  80 81 00 08 */	lwz r4, 8(r1)
/* 80BFBC48  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BFBC4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BFBC50  7C 03 00 00 */	cmpw r3, r0
/* 80BFBC54  41 82 00 14 */	beq lbl_80BFBC68
/* 80BFBC58  40 80 00 40 */	bge lbl_80BFBC98
/* 80BFBC5C  2C 03 00 00 */	cmpwi r3, 0
/* 80BFBC60  41 82 00 20 */	beq lbl_80BFBC80
/* 80BFBC64  48 00 00 34 */	b lbl_80BFBC98
lbl_80BFBC68:
/* 80BFBC68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BFBC6C  41 82 00 0C */	beq lbl_80BFBC78
/* 80BFBC70  38 00 00 01 */	li r0, 1
/* 80BFBC74  48 00 00 28 */	b lbl_80BFBC9C
lbl_80BFBC78:
/* 80BFBC78  38 00 00 02 */	li r0, 2
/* 80BFBC7C  48 00 00 20 */	b lbl_80BFBC9C
lbl_80BFBC80:
/* 80BFBC80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BFBC84  41 82 00 0C */	beq lbl_80BFBC90
/* 80BFBC88  38 00 00 05 */	li r0, 5
/* 80BFBC8C  48 00 00 10 */	b lbl_80BFBC9C
lbl_80BFBC90:
/* 80BFBC90  38 00 00 03 */	li r0, 3
/* 80BFBC94  48 00 00 08 */	b lbl_80BFBC9C
lbl_80BFBC98:
/* 80BFBC98  38 00 00 04 */	li r0, 4
lbl_80BFBC9C:
/* 80BFBC9C  2C 00 00 01 */	cmpwi r0, 1
/* 80BFBCA0  40 82 00 0C */	bne lbl_80BFBCAC
/* 80BFBCA4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BFBCA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BFBCAC:
/* 80BFBCAC  D0 3E 06 2C */	stfs f1, 0x62c(r30)
/* 80BFBCB0  38 00 00 01 */	li r0, 1
/* 80BFBCB4  B0 1E 06 0C */	sth r0, 0x60c(r30)
/* 80BFBCB8  38 00 40 00 */	li r0, 0x4000
/* 80BFBCBC  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 80BFBCC0  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80BFBCC4  B0 1E 06 3C */	sth r0, 0x63c(r30)
/* 80BFBCC8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80BFBCCC  B0 1E 06 44 */	sth r0, 0x644(r30)
/* 80BFBCD0  38 00 00 00 */	li r0, 0
/* 80BFBCD4  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_80BFBCD8:
/* 80BFBCD8  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80BFBCDC  D0 1E 06 48 */	stfs f0, 0x648(r30)
/* 80BFBCE0  A8 1E 06 40 */	lha r0, 0x640(r30)
/* 80BFBCE4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BFBCE8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BFBCEC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BFBCF0  7C 44 04 2E */	lfsx f2, r4, r0
/* 80BFBCF4  A8 1E 06 3C */	lha r0, 0x63c(r30)
/* 80BFBCF8  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80BFBCFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BFBD00  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80BFBD04  3C 60 43 30 */	lis r3, 0x4330
/* 80BFBD08  90 61 00 48 */	stw r3, 0x48(r1)
/* 80BFBD0C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80BFBD10  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BFBD14  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BFBD18  FC 00 00 1E */	fctiwz f0, f0
/* 80BFBD1C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80BFBD20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BFBD24  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80BFBD28  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 80BFBD2C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BFBD30  7C 44 04 2E */	lfsx f2, r4, r0
/* 80BFBD34  A8 1E 06 3E */	lha r0, 0x63e(r30)
/* 80BFBD38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BFBD3C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BFBD40  90 61 00 50 */	stw r3, 0x50(r1)
/* 80BFBD44  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80BFBD48  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BFBD4C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BFBD50  FC 00 00 1E */	fctiwz f0, f0
/* 80BFBD54  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80BFBD58  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80BFBD5C  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80BFBD60  C0 3E 06 2C */	lfs f1, 0x62c(r30)
/* 80BFBD64  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80BFBD68  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80BFBD6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BFBD70  40 81 00 08 */	ble lbl_80BFBD78
/* 80BFBD74  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_80BFBD78:
/* 80BFBD78  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80BFBD7C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BFBD80  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BFBD84  FC 00 00 1E */	fctiwz f0, f0
/* 80BFBD88  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80BFBD8C  80 61 00 64 */	lwz r3, 0x64(r1)
/* 80BFBD90  A8 1E 06 40 */	lha r0, 0x640(r30)
/* 80BFBD94  7C 00 1A 14 */	add r0, r0, r3
/* 80BFBD98  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 80BFBD9C  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 80BFBDA0  7C 00 1A 14 */	add r0, r0, r3
/* 80BFBDA4  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80BFBDA8  38 7E 06 3C */	addi r3, r30, 0x63c
/* 80BFBDAC  38 80 00 00 */	li r4, 0
/* 80BFBDB0  38 A0 00 20 */	li r5, 0x20
/* 80BFBDB4  38 C0 00 03 */	li r6, 3
/* 80BFBDB8  4B 67 48 51 */	bl cLib_addCalcAngleS2__FPssss
/* 80BFBDBC  38 7E 06 3E */	addi r3, r30, 0x63e
/* 80BFBDC0  38 80 00 00 */	li r4, 0
/* 80BFBDC4  38 A0 00 20 */	li r5, 0x20
/* 80BFBDC8  38 C0 00 03 */	li r6, 3
/* 80BFBDCC  4B 67 48 3D */	bl cLib_addCalcAngleS2__FPssss
/* 80BFBDD0  C0 3E 06 14 */	lfs f1, 0x614(r30)
/* 80BFBDD4  C0 5E 06 18 */	lfs f2, 0x618(r30)
/* 80BFBDD8  C0 7E 06 1C */	lfs f3, 0x61c(r30)
/* 80BFBDDC  38 60 00 00 */	li r3, 0
/* 80BFBDE0  4B 67 50 7D */	bl MtxTrans__FfffUc
/* 80BFBDE4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFBDE8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFBDEC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFBDF0  A8 9E 06 44 */	lha r4, 0x644(r30)
/* 80BFBDF4  4B 41 06 41 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BFBDF8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFBDFC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFBE00  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFBE04  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BFBE08  4B 41 06 2D */	bl mDoMtx_YrotM__FPA4_fs
/* 80BFBE0C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFBE10  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFBE14  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFBE18  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 80BFBE1C  4B 41 05 81 */	bl mDoMtx_XrotM__FPA4_fs
/* 80BFBE20  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFBE24  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFBE28  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFBE2C  A8 9E 04 E0 */	lha r4, 0x4e0(r30)
/* 80BFBE30  4B 41 06 9D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80BFBE34  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFBE38  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFBE3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFBE40  A8 1E 06 44 */	lha r0, 0x644(r30)
/* 80BFBE44  7C 00 00 D0 */	neg r0, r0
/* 80BFBE48  7C 04 07 34 */	extsh r4, r0
/* 80BFBE4C  4B 41 05 E9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BFBE50  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BFBE54  C0 1E 06 2C */	lfs f0, 0x62c(r30)
/* 80BFBE58  FC 40 00 50 */	fneg f2, f0
/* 80BFBE5C  FC 60 08 90 */	fmr f3, f1
/* 80BFBE60  38 60 00 01 */	li r3, 1
/* 80BFBE64  4B 67 4F F9 */	bl MtxTrans__FfffUc
/* 80BFBE68  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFBE6C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFBE70  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFBE74  A8 9E 06 4C */	lha r4, 0x64c(r30)
/* 80BFBE78  4B 41 05 BD */	bl mDoMtx_YrotM__FPA4_fs
/* 80BFBE7C  4B 67 50 A1 */	bl MtxPush__Fv
/* 80BFBE80  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFBE84  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFBE88  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFBE8C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80BFBE90  4B 41 05 A5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BFBE94  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFBE98  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFBE9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFBEA0  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80BFBEA4  4B 41 04 F9 */	bl mDoMtx_XrotM__FPA4_fs
/* 80BFBEA8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFBEAC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFBEB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFBEB4  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80BFBEB8  38 84 00 24 */	addi r4, r4, 0x24
/* 80BFBEBC  4B 74 A5 F5 */	bl PSMTXCopy
/* 80BFBEC0  4B 67 50 99 */	bl MtxPull__Fv
/* 80BFBEC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BFBEC8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BFBECC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BFBED0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BFBED4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BFBED8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BFBEDC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BFBEE0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BFBEE4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BFBEE8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BFBEEC  38 61 00 30 */	addi r3, r1, 0x30
/* 80BFBEF0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BFBEF4  4B 67 4F F9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BFBEF8  38 61 00 0C */	addi r3, r1, 0xc
/* 80BFBEFC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BFBF00  38 A1 00 24 */	addi r5, r1, 0x24
/* 80BFBF04  4B 66 AC 31 */	bl __mi__4cXyzCFRC3Vec
/* 80BFBF08  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BFBF0C  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80BFBF10  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BFBF14  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BFBF18  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BFBF1C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80BFBF20  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80BFBF24  28 00 00 05 */	cmplwi r0, 5
/* 80BFBF28  40 80 00 24 */	bge lbl_80BFBF4C
/* 80BFBF2C  38 7E 0A AC */	addi r3, r30, 0xaac
/* 80BFBF30  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BFBF34  4B 67 37 15 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BFBF38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFBF3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFBF40  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BFBF44  38 9E 09 88 */	addi r4, r30, 0x988
/* 80BFBF48  4B 66 8C 61 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80BFBF4C:
/* 80BFBF4C  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80BFBF50  54 00 10 3A */	slwi r0, r0, 2
/* 80BFBF54  3C 60 80 C0 */	lis r3, obj_size@ha /* 0x80BFD3E8@ha */
/* 80BFBF58  38 63 D3 E8 */	addi r3, r3, obj_size@l /* 0x80BFD3E8@l */
/* 80BFBF5C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80BFBF60  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BFBF64  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BFBF68  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80BFBF6C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BFBF70  38 61 00 30 */	addi r3, r1, 0x30
/* 80BFBF74  38 9E 06 54 */	addi r4, r30, 0x654
/* 80BFBF78  4B 67 4F 75 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BFBF7C  7F C3 F3 78 */	mr r3, r30
/* 80BFBF80  4B FF F4 91 */	bl ito_pos_set__FP12obj_gm_class
/* 80BFBF84  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BFBF88  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80BFBF8C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BFBF90  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80BFBF94  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BFBF98  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80BFBF9C  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 80BFBFA0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80BFBFA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFBFA8  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80BFBFAC  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80BFBFB0  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80BFBFB4  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80BFBFB8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80BFBFBC  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80BFBFC0  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80BFBFC4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BFBFC8  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80BFBFCC  54 00 10 3A */	slwi r0, r0, 2
/* 80BFBFD0  3C 60 80 C0 */	lis r3, obj_size@ha /* 0x80BFD3E8@ha */
/* 80BFBFD4  38 63 D3 E8 */	addi r3, r3, obj_size@l /* 0x80BFD3E8@l */
/* 80BFBFD8  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BFBFDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BFBFE0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BFBFE4  C0 3E 04 C0 */	lfs f1, 0x4c0(r30)
/* 80BFBFE8  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80BFBFEC  54 00 10 3A */	slwi r0, r0, 2
/* 80BFBFF0  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BFBFF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BFBFF8  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80BFBFFC  38 7E 07 70 */	addi r3, r30, 0x770
/* 80BFC000  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFC004  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFC008  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80BFC00C  4B 47 AA A1 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80BFC010  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BFC014  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80BFC018  54 00 10 3A */	slwi r0, r0, 2
/* 80BFC01C  3C 60 80 C0 */	lis r3, obj_size@ha /* 0x80BFD3E8@ha */
/* 80BFC020  38 63 D3 E8 */	addi r3, r3, obj_size@l /* 0x80BFD3E8@l */
/* 80BFC024  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BFC028  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFC02C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BFC030  C0 3E 04 C0 */	lfs f1, 0x4c0(r30)
/* 80BFC034  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80BFC038  54 00 10 3A */	slwi r0, r0, 2
/* 80BFC03C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BFC040  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFC044  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80BFC048  80 7E 07 9C */	lwz r3, 0x79c(r30)
/* 80BFC04C  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80BFC050  40 82 00 0C */	bne lbl_80BFC05C
/* 80BFC054  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80BFC058  41 82 00 60 */	beq lbl_80BFC0B8
lbl_80BFC05C:
/* 80BFC05C  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80BFC060  28 00 00 01 */	cmplwi r0, 1
/* 80BFC064  41 81 00 10 */	bgt lbl_80BFC074
/* 80BFC068  38 00 00 01 */	li r0, 1
/* 80BFC06C  98 1E 07 2C */	stb r0, 0x72c(r30)
/* 80BFC070  48 00 00 48 */	b lbl_80BFC0B8
lbl_80BFC074:
/* 80BFC074  88 1E 0A E4 */	lbz r0, 0xae4(r30)
/* 80BFC078  60 00 00 02 */	ori r0, r0, 2
/* 80BFC07C  98 1E 0A E4 */	stb r0, 0xae4(r30)
/* 80BFC080  38 7E 0A E8 */	addi r3, r30, 0xae8
/* 80BFC084  38 9E 0A EC */	addi r4, r30, 0xaec
/* 80BFC088  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BFC08C  38 C0 00 00 */	li r6, 0
/* 80BFC090  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80BFC094  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80BFC098  54 00 10 3A */	slwi r0, r0, 2
/* 80BFC09C  3C E0 80 C0 */	lis r7, obj_size@ha /* 0x80BFD3E8@ha */
/* 80BFC0A0  38 E7 D3 E8 */	addi r7, r7, obj_size@l /* 0x80BFD3E8@l */
/* 80BFC0A4  7C 07 04 2E */	lfsx f0, r7, r0
/* 80BFC0A8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BFC0AC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80BFC0B0  39 00 00 01 */	li r8, 1
/* 80BFC0B4  4B 42 0F 6D */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_80BFC0B8:
/* 80BFC0B8  88 7E 0A E4 */	lbz r3, 0xae4(r30)
/* 80BFC0BC  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80BFC0C0  41 82 00 90 */	beq lbl_80BFC150
/* 80BFC0C4  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80BFC0C8  28 00 00 05 */	cmplwi r0, 5
/* 80BFC0CC  41 80 00 10 */	blt lbl_80BFC0DC
/* 80BFC0D0  7F C3 F3 78 */	mr r3, r30
/* 80BFC0D4  4B 41 DB A9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80BFC0D8  48 00 00 78 */	b lbl_80BFC150
lbl_80BFC0DC:
/* 80BFC0DC  54 60 07 FA */	rlwinm r0, r3, 0, 0x1f, 0x1d
/* 80BFC0E0  98 1E 0A E4 */	stb r0, 0xae4(r30)
/* 80BFC0E4  38 00 00 02 */	li r0, 2
/* 80BFC0E8  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80BFC0EC  38 00 00 00 */	li r0, 0
/* 80BFC0F0  B0 1E 06 0C */	sth r0, 0x60c(r30)
/* 80BFC0F4  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80BFC0F8  28 00 00 00 */	cmplwi r0, 0
/* 80BFC0FC  41 82 00 10 */	beq lbl_80BFC10C
/* 80BFC100  80 1E 09 88 */	lwz r0, 0x988(r30)
/* 80BFC104  60 00 00 01 */	ori r0, r0, 1
/* 80BFC108  90 1E 09 88 */	stw r0, 0x988(r30)
lbl_80BFC10C:
/* 80BFC10C  C0 3E 04 F8 */	lfs f1, 0x4f8(r30)
/* 80BFC110  C0 5E 05 00 */	lfs f2, 0x500(r30)
/* 80BFC114  4B 66 B5 61 */	bl cM_atan2s__Fff
/* 80BFC118  B0 7E 07 20 */	sth r3, 0x720(r30)
/* 80BFC11C  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 80BFC120  EC 20 00 32 */	fmuls f1, f0, f0
/* 80BFC124  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 80BFC128  EC 00 00 32 */	fmuls f0, f0, f0
/* 80BFC12C  EC 21 00 2A */	fadds f1, f1, f0
/* 80BFC130  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BFC134  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BFC138  40 81 00 0C */	ble lbl_80BFC144
/* 80BFC13C  FC 00 08 34 */	frsqrte f0, f1
/* 80BFC140  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80BFC144:
/* 80BFC144  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 80BFC148  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BFC14C  D0 1E 07 28 */	stfs f0, 0x728(r30)
lbl_80BFC150:
/* 80BFC150  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80BFC154  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80BFC158  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80BFC15C  7C 08 03 A6 */	mtlr r0
/* 80BFC160  38 21 00 70 */	addi r1, r1, 0x70
/* 80BFC164  4E 80 00 20 */	blr 
