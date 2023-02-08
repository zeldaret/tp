lbl_80CE9078:
/* 80CE9078  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80CE907C  7C 08 02 A6 */	mflr r0
/* 80CE9080  90 01 00 84 */	stw r0, 0x84(r1)
/* 80CE9084  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80CE9088  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80CE908C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80CE9090  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80CE9094  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80CE9098  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80CE909C  7C 7F 1B 78 */	mr r31, r3
/* 80CE90A0  FF E0 08 90 */	fmr f31, f1
/* 80CE90A4  3C 60 80 CF */	lis r3, l_bmdIdx@ha /* 0x80CECAB4@ha */
/* 80CE90A8  3B C3 CA B4 */	addi r30, r3, l_bmdIdx@l /* 0x80CECAB4@l */
/* 80CE90AC  3C 60 80 CF */	lis r3, __vt__8cM3dGPla@ha /* 0x80CECE04@ha */
/* 80CE90B0  38 03 CE 04 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CECE04@l */
/* 80CE90B4  90 01 00 50 */	stw r0, 0x50(r1)
/* 80CE90B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE90BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE90C0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CE90C4  38 A1 00 40 */	addi r5, r1, 0x40
/* 80CE90C8  4B 38 B6 7D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80CE90CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CE90D0  41 82 02 54 */	beq lbl_80CE9324
/* 80CE90D4  7F E3 FB 78 */	mr r3, r31
/* 80CE90D8  4B 65 E0 61 */	bl PSVECSquareMag
/* 80CE90DC  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80CE90E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE90E4  40 81 00 58 */	ble lbl_80CE913C
/* 80CE90E8  FC 00 08 34 */	frsqrte f0, f1
/* 80CE90EC  C8 9E 00 E8 */	lfd f4, 0xe8(r30)
/* 80CE90F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CE90F4  C8 7E 00 F0 */	lfd f3, 0xf0(r30)
/* 80CE90F8  FC 00 00 32 */	fmul f0, f0, f0
/* 80CE90FC  FC 01 00 32 */	fmul f0, f1, f0
/* 80CE9100  FC 03 00 28 */	fsub f0, f3, f0
/* 80CE9104  FC 02 00 32 */	fmul f0, f2, f0
/* 80CE9108  FC 44 00 32 */	fmul f2, f4, f0
/* 80CE910C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CE9110  FC 01 00 32 */	fmul f0, f1, f0
/* 80CE9114  FC 03 00 28 */	fsub f0, f3, f0
/* 80CE9118  FC 02 00 32 */	fmul f0, f2, f0
/* 80CE911C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CE9120  FC 00 00 32 */	fmul f0, f0, f0
/* 80CE9124  FC 01 00 32 */	fmul f0, f1, f0
/* 80CE9128  FC 03 00 28 */	fsub f0, f3, f0
/* 80CE912C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CE9130  FF C1 00 32 */	fmul f30, f1, f0
/* 80CE9134  FF C0 F0 18 */	frsp f30, f30
/* 80CE9138  48 00 00 90 */	b lbl_80CE91C8
lbl_80CE913C:
/* 80CE913C  C8 1E 00 F8 */	lfd f0, 0xf8(r30)
/* 80CE9140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE9144  40 80 00 10 */	bge lbl_80CE9154
/* 80CE9148  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CE914C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CE9150  48 00 00 78 */	b lbl_80CE91C8
lbl_80CE9154:
/* 80CE9154  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CE9158  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80CE915C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CE9160  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CE9164  7C 03 00 00 */	cmpw r3, r0
/* 80CE9168  41 82 00 14 */	beq lbl_80CE917C
/* 80CE916C  40 80 00 40 */	bge lbl_80CE91AC
/* 80CE9170  2C 03 00 00 */	cmpwi r3, 0
/* 80CE9174  41 82 00 20 */	beq lbl_80CE9194
/* 80CE9178  48 00 00 34 */	b lbl_80CE91AC
lbl_80CE917C:
/* 80CE917C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CE9180  41 82 00 0C */	beq lbl_80CE918C
/* 80CE9184  38 00 00 01 */	li r0, 1
/* 80CE9188  48 00 00 28 */	b lbl_80CE91B0
lbl_80CE918C:
/* 80CE918C  38 00 00 02 */	li r0, 2
/* 80CE9190  48 00 00 20 */	b lbl_80CE91B0
lbl_80CE9194:
/* 80CE9194  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CE9198  41 82 00 0C */	beq lbl_80CE91A4
/* 80CE919C  38 00 00 05 */	li r0, 5
/* 80CE91A0  48 00 00 10 */	b lbl_80CE91B0
lbl_80CE91A4:
/* 80CE91A4  38 00 00 03 */	li r0, 3
/* 80CE91A8  48 00 00 08 */	b lbl_80CE91B0
lbl_80CE91AC:
/* 80CE91AC  38 00 00 04 */	li r0, 4
lbl_80CE91B0:
/* 80CE91B0  2C 00 00 01 */	cmpwi r0, 1
/* 80CE91B4  40 82 00 10 */	bne lbl_80CE91C4
/* 80CE91B8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CE91BC  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CE91C0  48 00 00 08 */	b lbl_80CE91C8
lbl_80CE91C4:
/* 80CE91C4  FF C0 08 90 */	fmr f30, f1
lbl_80CE91C8:
/* 80CE91C8  7F E3 FB 78 */	mr r3, r31
/* 80CE91CC  38 81 00 40 */	addi r4, r1, 0x40
/* 80CE91D0  38 A1 00 34 */	addi r5, r1, 0x34
/* 80CE91D4  4B 65 E0 F5 */	bl C_VECReflect
/* 80CE91D8  38 61 00 28 */	addi r3, r1, 0x28
/* 80CE91DC  38 81 00 34 */	addi r4, r1, 0x34
/* 80CE91E0  FC 20 F0 90 */	fmr f1, f30
/* 80CE91E4  4B 57 D9 A1 */	bl __ml__4cXyzCFf
/* 80CE91E8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80CE91EC  38 81 00 28 */	addi r4, r1, 0x28
/* 80CE91F0  FC 20 F8 90 */	fmr f1, f31
/* 80CE91F4  4B 57 D9 91 */	bl __ml__4cXyzCFf
/* 80CE91F8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CE91FC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80CE9200  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CE9204  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80CE9208  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80CE920C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80CE9210  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80CE9214  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CE9218  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CE921C  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80CE9220  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CE9224  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CE9228  38 61 00 10 */	addi r3, r1, 0x10
/* 80CE922C  4B 65 DF 0D */	bl PSVECSquareMag
/* 80CE9230  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80CE9234  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE9238  40 81 00 58 */	ble lbl_80CE9290
/* 80CE923C  FC 00 08 34 */	frsqrte f0, f1
/* 80CE9240  C8 9E 00 E8 */	lfd f4, 0xe8(r30)
/* 80CE9244  FC 44 00 32 */	fmul f2, f4, f0
/* 80CE9248  C8 7E 00 F0 */	lfd f3, 0xf0(r30)
/* 80CE924C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CE9250  FC 01 00 32 */	fmul f0, f1, f0
/* 80CE9254  FC 03 00 28 */	fsub f0, f3, f0
/* 80CE9258  FC 02 00 32 */	fmul f0, f2, f0
/* 80CE925C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CE9260  FC 00 00 32 */	fmul f0, f0, f0
/* 80CE9264  FC 01 00 32 */	fmul f0, f1, f0
/* 80CE9268  FC 03 00 28 */	fsub f0, f3, f0
/* 80CE926C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CE9270  FC 44 00 32 */	fmul f2, f4, f0
/* 80CE9274  FC 00 00 32 */	fmul f0, f0, f0
/* 80CE9278  FC 01 00 32 */	fmul f0, f1, f0
/* 80CE927C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CE9280  FC 02 00 32 */	fmul f0, f2, f0
/* 80CE9284  FC 21 00 32 */	fmul f1, f1, f0
/* 80CE9288  FC 20 08 18 */	frsp f1, f1
/* 80CE928C  48 00 00 88 */	b lbl_80CE9314
lbl_80CE9290:
/* 80CE9290  C8 1E 00 F8 */	lfd f0, 0xf8(r30)
/* 80CE9294  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE9298  40 80 00 10 */	bge lbl_80CE92A8
/* 80CE929C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CE92A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CE92A4  48 00 00 70 */	b lbl_80CE9314
lbl_80CE92A8:
/* 80CE92A8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CE92AC  80 81 00 08 */	lwz r4, 8(r1)
/* 80CE92B0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CE92B4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CE92B8  7C 03 00 00 */	cmpw r3, r0
/* 80CE92BC  41 82 00 14 */	beq lbl_80CE92D0
/* 80CE92C0  40 80 00 40 */	bge lbl_80CE9300
/* 80CE92C4  2C 03 00 00 */	cmpwi r3, 0
/* 80CE92C8  41 82 00 20 */	beq lbl_80CE92E8
/* 80CE92CC  48 00 00 34 */	b lbl_80CE9300
lbl_80CE92D0:
/* 80CE92D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CE92D4  41 82 00 0C */	beq lbl_80CE92E0
/* 80CE92D8  38 00 00 01 */	li r0, 1
/* 80CE92DC  48 00 00 28 */	b lbl_80CE9304
lbl_80CE92E0:
/* 80CE92E0  38 00 00 02 */	li r0, 2
/* 80CE92E4  48 00 00 20 */	b lbl_80CE9304
lbl_80CE92E8:
/* 80CE92E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CE92EC  41 82 00 0C */	beq lbl_80CE92F8
/* 80CE92F0  38 00 00 05 */	li r0, 5
/* 80CE92F4  48 00 00 10 */	b lbl_80CE9304
lbl_80CE92F8:
/* 80CE92F8  38 00 00 03 */	li r0, 3
/* 80CE92FC  48 00 00 08 */	b lbl_80CE9304
lbl_80CE9300:
/* 80CE9300  38 00 00 04 */	li r0, 4
lbl_80CE9304:
/* 80CE9304  2C 00 00 01 */	cmpwi r0, 1
/* 80CE9308  40 82 00 0C */	bne lbl_80CE9314
/* 80CE930C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CE9310  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CE9314:
/* 80CE9314  3C 60 80 CF */	lis r3, __vt__8cM3dGPla@ha /* 0x80CECE04@ha */
/* 80CE9318  38 03 CE 04 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CECE04@l */
/* 80CE931C  90 01 00 50 */	stw r0, 0x50(r1)
/* 80CE9320  48 00 00 14 */	b lbl_80CE9334
lbl_80CE9324:
/* 80CE9324  3C 60 80 CF */	lis r3, __vt__8cM3dGPla@ha /* 0x80CECE04@ha */
/* 80CE9328  38 03 CE 04 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CECE04@l */
/* 80CE932C  90 01 00 50 */	stw r0, 0x50(r1)
/* 80CE9330  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
lbl_80CE9334:
/* 80CE9334  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80CE9338  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80CE933C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80CE9340  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80CE9344  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80CE9348  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80CE934C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80CE9350  7C 08 03 A6 */	mtlr r0
/* 80CE9354  38 21 00 80 */	addi r1, r1, 0x80
/* 80CE9358  4E 80 00 20 */	blr 
