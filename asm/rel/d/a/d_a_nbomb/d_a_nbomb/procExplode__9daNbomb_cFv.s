lbl_804C9118:
/* 804C9118  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C911C  7C 08 02 A6 */	mflr r0
/* 804C9120  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C9124  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804C9128  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804C912C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804C9130  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804C9134  7C 7E 1B 78 */	mr r30, r3
/* 804C9138  3C 60 80 4D */	lis r3, lit_3767@ha
/* 804C913C  3B E3 C3 40 */	addi r31, r3, lit_3767@l
/* 804C9140  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C9144  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804C9148  80 83 5D 74 */	lwz r4, 0x5d74(r3)
/* 804C914C  C3 FF 00 40 */	lfs f31, 0x40(r31)
/* 804C9150  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 804C9154  C0 1E 0B AC */	lfs f0, 0xbac(r30)
/* 804C9158  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C915C  D0 1E 0B 74 */	stfs f0, 0xb74(r30)
/* 804C9160  C0 1E 0B AC */	lfs f0, 0xbac(r30)
/* 804C9164  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
/* 804C9168  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804C916C  38 84 00 D8 */	addi r4, r4, 0xd8
/* 804C9170  4B E7 E2 2C */	b PSVECSquareDistance
/* 804C9174  FC 00 F8 90 */	fmr f0, f31
/* 804C9178  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C917C  40 81 00 58 */	ble lbl_804C91D4
/* 804C9180  FC 00 08 34 */	frsqrte f0, f1
/* 804C9184  C8 9F 01 10 */	lfd f4, 0x110(r31)
/* 804C9188  FC 44 00 32 */	fmul f2, f4, f0
/* 804C918C  C8 7F 01 18 */	lfd f3, 0x118(r31)
/* 804C9190  FC 00 00 32 */	fmul f0, f0, f0
/* 804C9194  FC 01 00 32 */	fmul f0, f1, f0
/* 804C9198  FC 03 00 28 */	fsub f0, f3, f0
/* 804C919C  FC 02 00 32 */	fmul f0, f2, f0
/* 804C91A0  FC 44 00 32 */	fmul f2, f4, f0
/* 804C91A4  FC 00 00 32 */	fmul f0, f0, f0
/* 804C91A8  FC 01 00 32 */	fmul f0, f1, f0
/* 804C91AC  FC 03 00 28 */	fsub f0, f3, f0
/* 804C91B0  FC 02 00 32 */	fmul f0, f2, f0
/* 804C91B4  FC 44 00 32 */	fmul f2, f4, f0
/* 804C91B8  FC 00 00 32 */	fmul f0, f0, f0
/* 804C91BC  FC 01 00 32 */	fmul f0, f1, f0
/* 804C91C0  FC 03 00 28 */	fsub f0, f3, f0
/* 804C91C4  FC 02 00 32 */	fmul f0, f2, f0
/* 804C91C8  FC 21 00 32 */	fmul f1, f1, f0
/* 804C91CC  FC 20 08 18 */	frsp f1, f1
/* 804C91D0  48 00 00 88 */	b lbl_804C9258
lbl_804C91D4:
/* 804C91D4  C8 1F 01 20 */	lfd f0, 0x120(r31)
/* 804C91D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C91DC  40 80 00 10 */	bge lbl_804C91EC
/* 804C91E0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804C91E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804C91E8  48 00 00 70 */	b lbl_804C9258
lbl_804C91EC:
/* 804C91EC  D0 21 00 08 */	stfs f1, 8(r1)
/* 804C91F0  80 81 00 08 */	lwz r4, 8(r1)
/* 804C91F4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804C91F8  3C 00 7F 80 */	lis r0, 0x7f80
/* 804C91FC  7C 03 00 00 */	cmpw r3, r0
/* 804C9200  41 82 00 14 */	beq lbl_804C9214
/* 804C9204  40 80 00 40 */	bge lbl_804C9244
/* 804C9208  2C 03 00 00 */	cmpwi r3, 0
/* 804C920C  41 82 00 20 */	beq lbl_804C922C
/* 804C9210  48 00 00 34 */	b lbl_804C9244
lbl_804C9214:
/* 804C9214  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804C9218  41 82 00 0C */	beq lbl_804C9224
/* 804C921C  38 00 00 01 */	li r0, 1
/* 804C9220  48 00 00 28 */	b lbl_804C9248
lbl_804C9224:
/* 804C9224  38 00 00 02 */	li r0, 2
/* 804C9228  48 00 00 20 */	b lbl_804C9248
lbl_804C922C:
/* 804C922C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804C9230  41 82 00 0C */	beq lbl_804C923C
/* 804C9234  38 00 00 05 */	li r0, 5
/* 804C9238  48 00 00 10 */	b lbl_804C9248
lbl_804C923C:
/* 804C923C  38 00 00 03 */	li r0, 3
/* 804C9240  48 00 00 08 */	b lbl_804C9248
lbl_804C9244:
/* 804C9244  38 00 00 04 */	li r0, 4
lbl_804C9248:
/* 804C9248  2C 00 00 01 */	cmpwi r0, 1
/* 804C924C  40 82 00 0C */	bne lbl_804C9258
/* 804C9250  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804C9254  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804C9258:
/* 804C9258  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 804C925C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C9260  40 80 00 18 */	bge lbl_804C9278
/* 804C9264  EC 21 00 24 */	fdivs f1, f1, f0
/* 804C9268  EC 01 00 72 */	fmuls f0, f1, f1
/* 804C926C  EC 21 00 32 */	fmuls f1, f1, f0
/* 804C9270  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804C9274  EF E0 08 28 */	fsubs f31, f0, f1
lbl_804C9278:
/* 804C9278  88 1E 0B 50 */	lbz r0, 0xb50(r30)
/* 804C927C  2C 00 00 01 */	cmpwi r0, 1
/* 804C9280  41 82 00 50 */	beq lbl_804C92D0
/* 804C9284  40 80 00 8C */	bge lbl_804C9310
/* 804C9288  2C 00 00 00 */	cmpwi r0, 0
/* 804C928C  40 80 00 08 */	bge lbl_804C9294
/* 804C9290  48 00 00 80 */	b lbl_804C9310
lbl_804C9294:
/* 804C9294  38 7E 0B AC */	addi r3, r30, 0xbac
/* 804C9298  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804C929C  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 804C92A0  FC 60 10 90 */	fmr f3, f2
/* 804C92A4  C0 9F 01 28 */	lfs f4, 0x128(r31)
/* 804C92A8  4B DA 66 D4 */	b cLib_addCalc__FPfffff
/* 804C92AC  C0 3E 0B AC */	lfs f1, 0xbac(r30)
/* 804C92B0  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 804C92B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C92B8  4C 41 13 82 */	cror 2, 1, 2
/* 804C92BC  40 82 00 54 */	bne lbl_804C9310
/* 804C92C0  88 7E 0B 50 */	lbz r3, 0xb50(r30)
/* 804C92C4  38 03 00 01 */	addi r0, r3, 1
/* 804C92C8  98 1E 0B 50 */	stb r0, 0xb50(r30)
/* 804C92CC  48 00 00 44 */	b lbl_804C9310
lbl_804C92D0:
/* 804C92D0  38 7E 0B AC */	addi r3, r30, 0xbac
/* 804C92D4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804C92D8  C0 5F 01 30 */	lfs f2, 0x130(r31)
/* 804C92DC  C0 7F 01 34 */	lfs f3, 0x134(r31)
/* 804C92E0  C0 9F 01 28 */	lfs f4, 0x128(r31)
/* 804C92E4  4B DA 66 98 */	b cLib_addCalc__FPfffff
/* 804C92E8  C0 3E 0B AC */	lfs f1, 0xbac(r30)
/* 804C92EC  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 804C92F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C92F4  4C 40 13 82 */	cror 2, 0, 2
/* 804C92F8  40 82 00 18 */	bne lbl_804C9310
/* 804C92FC  88 7E 0B 50 */	lbz r3, 0xb50(r30)
/* 804C9300  38 03 00 01 */	addi r0, r3, 1
/* 804C9304  98 1E 0B 50 */	stb r0, 0xb50(r30)
/* 804C9308  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804C930C  D0 1E 0B AC */	stfs f0, 0xbac(r30)
lbl_804C9310:
/* 804C9310  38 60 00 64 */	li r3, 0x64
/* 804C9314  38 80 00 3C */	li r4, 0x3c
/* 804C9318  38 A0 00 32 */	li r5, 0x32
/* 804C931C  C0 1E 0B AC */	lfs f0, 0xbac(r30)
/* 804C9320  EC 20 07 F2 */	fmuls f1, f0, f31
/* 804C9324  4B CD E7 A4 */	b dKy_actor_addcol_amb_set__Fsssf
/* 804C9328  38 60 00 64 */	li r3, 0x64
/* 804C932C  38 80 00 3C */	li r4, 0x3c
/* 804C9330  38 A0 00 32 */	li r5, 0x32
/* 804C9334  C0 1E 0B AC */	lfs f0, 0xbac(r30)
/* 804C9338  EC 20 07 F2 */	fmuls f1, f0, f31
/* 804C933C  4B CD E8 2C */	b dKy_bg_addcol_amb_set__Fsssf
/* 804C9340  88 1E 0B 50 */	lbz r0, 0xb50(r30)
/* 804C9344  28 00 00 02 */	cmplwi r0, 2
/* 804C9348  40 80 00 58 */	bge lbl_804C93A0
/* 804C934C  A8 7E 0B 58 */	lha r3, 0xb58(r30)
/* 804C9350  38 03 FF FF */	addi r0, r3, -1
/* 804C9354  B0 1E 0B 58 */	sth r0, 0xb58(r30)
/* 804C9358  A8 1E 0B 58 */	lha r0, 0xb58(r30)
/* 804C935C  2C 00 FF FD */	cmpwi r0, -3
/* 804C9360  40 81 00 5C */	ble lbl_804C93BC
/* 804C9364  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 804C9368  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804C936C  4B DA 62 DC */	b SetC__8cM3dGSphFRC4cXyz
/* 804C9370  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C9374  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804C9378  38 63 23 3C */	addi r3, r3, 0x233c
/* 804C937C  38 9E 07 CC */	addi r4, r30, 0x7cc
/* 804C9380  4B D9 B8 28 */	b Set__4cCcSFP8cCcD_Obj
/* 804C9384  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C9388  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804C938C  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 804C9390  38 9E 07 CC */	addi r4, r30, 0x7cc
/* 804C9394  38 A0 00 01 */	li r5, 1
/* 804C9398  4B BB CA 00 */	b Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 804C939C  48 00 00 20 */	b lbl_804C93BC
lbl_804C93A0:
/* 804C93A0  38 60 00 00 */	li r3, 0
/* 804C93A4  38 80 00 00 */	li r4, 0
/* 804C93A8  38 A0 00 00 */	li r5, 0
/* 804C93AC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804C93B0  4B CD EA D8 */	b dKy_actor_addcol_set__Fsssf
/* 804C93B4  7F C3 F3 78 */	mr r3, r30
/* 804C93B8  4B B5 08 C4 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_804C93BC:
/* 804C93BC  38 60 00 01 */	li r3, 1
/* 804C93C0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804C93C4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804C93C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804C93CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804C93D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C93D4  7C 08 03 A6 */	mtlr r0
/* 804C93D8  38 21 00 30 */	addi r1, r1, 0x30
/* 804C93DC  4E 80 00 20 */	blr 
