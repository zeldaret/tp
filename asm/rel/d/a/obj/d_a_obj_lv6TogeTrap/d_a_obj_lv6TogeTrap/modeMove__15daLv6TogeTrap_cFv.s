lbl_80C7AF1C:
/* 80C7AF1C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C7AF20  7C 08 02 A6 */	mflr r0
/* 80C7AF24  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C7AF28  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80C7AF2C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80C7AF30  39 61 00 60 */	addi r11, r1, 0x60
/* 80C7AF34  4B 6E 72 A9 */	bl _savegpr_29
/* 80C7AF38  7C 7E 1B 78 */	mr r30, r3
/* 80C7AF3C  3C 60 80 C8 */	lis r3, lit_3631@ha /* 0x80C7C618@ha */
/* 80C7AF40  3B E3 C6 18 */	addi r31, r3, lit_3631@l /* 0x80C7C618@l */
/* 80C7AF44  C0 1E 05 C8 */	lfs f0, 0x5c8(r30)
/* 80C7AF48  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C7AF4C  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80C7AF50  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C7AF54  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 80C7AF58  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C7AF5C  C0 1E 05 B0 */	lfs f0, 0x5b0(r30)
/* 80C7AF60  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C7AF64  C0 1E 05 B4 */	lfs f0, 0x5b4(r30)
/* 80C7AF68  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C7AF6C  C0 1E 05 B8 */	lfs f0, 0x5b8(r30)
/* 80C7AF70  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C7AF74  38 61 00 20 */	addi r3, r1, 0x20
/* 80C7AF78  38 81 00 38 */	addi r4, r1, 0x38
/* 80C7AF7C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80C7AF80  4B 5E BB B5 */	bl __mi__4cXyzCFRC3Vec
/* 80C7AF84  38 61 00 20 */	addi r3, r1, 0x20
/* 80C7AF88  4B 6C C1 B1 */	bl PSVECSquareMag
/* 80C7AF8C  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80C7AF90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7AF94  40 81 00 58 */	ble lbl_80C7AFEC
/* 80C7AF98  FC 00 08 34 */	frsqrte f0, f1
/* 80C7AF9C  C8 9F 01 18 */	lfd f4, 0x118(r31)
/* 80C7AFA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7AFA4  C8 7F 01 20 */	lfd f3, 0x120(r31)
/* 80C7AFA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7AFAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7AFB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7AFB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7AFB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7AFBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7AFC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7AFC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7AFC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7AFCC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7AFD0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7AFD4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7AFD8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7AFDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7AFE0  FC 21 00 32 */	fmul f1, f1, f0
/* 80C7AFE4  FC 20 08 18 */	frsp f1, f1
/* 80C7AFE8  48 00 00 88 */	b lbl_80C7B070
lbl_80C7AFEC:
/* 80C7AFEC  C8 1F 01 28 */	lfd f0, 0x128(r31)
/* 80C7AFF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7AFF4  40 80 00 10 */	bge lbl_80C7B004
/* 80C7AFF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C7AFFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C7B000  48 00 00 70 */	b lbl_80C7B070
lbl_80C7B004:
/* 80C7B004  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C7B008  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C7B00C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C7B010  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C7B014  7C 03 00 00 */	cmpw r3, r0
/* 80C7B018  41 82 00 14 */	beq lbl_80C7B02C
/* 80C7B01C  40 80 00 40 */	bge lbl_80C7B05C
/* 80C7B020  2C 03 00 00 */	cmpwi r3, 0
/* 80C7B024  41 82 00 20 */	beq lbl_80C7B044
/* 80C7B028  48 00 00 34 */	b lbl_80C7B05C
lbl_80C7B02C:
/* 80C7B02C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C7B030  41 82 00 0C */	beq lbl_80C7B03C
/* 80C7B034  38 00 00 01 */	li r0, 1
/* 80C7B038  48 00 00 28 */	b lbl_80C7B060
lbl_80C7B03C:
/* 80C7B03C  38 00 00 02 */	li r0, 2
/* 80C7B040  48 00 00 20 */	b lbl_80C7B060
lbl_80C7B044:
/* 80C7B044  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C7B048  41 82 00 0C */	beq lbl_80C7B054
/* 80C7B04C  38 00 00 05 */	li r0, 5
/* 80C7B050  48 00 00 10 */	b lbl_80C7B060
lbl_80C7B054:
/* 80C7B054  38 00 00 03 */	li r0, 3
/* 80C7B058  48 00 00 08 */	b lbl_80C7B060
lbl_80C7B05C:
/* 80C7B05C  38 00 00 04 */	li r0, 4
lbl_80C7B060:
/* 80C7B060  2C 00 00 01 */	cmpwi r0, 1
/* 80C7B064  40 82 00 0C */	bne lbl_80C7B070
/* 80C7B068  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C7B06C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C7B070:
/* 80C7B070  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80C7B074  EF E0 00 72 */	fmuls f31, f0, f1
/* 80C7B078  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80C7B07C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C7B080  40 80 00 08 */	bge lbl_80C7B088
/* 80C7B084  FF E0 00 90 */	fmr f31, f0
lbl_80C7B088:
/* 80C7B088  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C7B08C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C7B090  40 81 00 08 */	ble lbl_80C7B098
/* 80C7B094  FF E0 00 90 */	fmr f31, f0
lbl_80C7B098:
/* 80C7B098  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C7B09C  38 9E 05 B0 */	addi r4, r30, 0x5b0
/* 80C7B0A0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C7B0A4  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80C7B0A8  C0 7F 01 0C */	lfs f3, 0x10c(r31)
/* 80C7B0AC  4B 5F 4A 0D */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C7B0B0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C7B0B4  7C 03 07 74 */	extsb r3, r0
/* 80C7B0B8  4B 3B 1F B5 */	bl dComIfGp_getReverb__Fi
/* 80C7B0BC  7C 7D 1B 78 */	mr r29, r3
/* 80C7B0C0  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C7B0C4  4B 6E 6F E9 */	bl __cvt_fp2unsigned
/* 80C7B0C8  7C 66 1B 78 */	mr r6, r3
/* 80C7B0CC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A9@ha */
/* 80C7B0D0  38 03 01 A9 */	addi r0, r3, 0x01A9 /* 0x000801A9@l */
/* 80C7B0D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C7B0D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C7B0DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C7B0E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7B0E4  38 81 00 10 */	addi r4, r1, 0x10
/* 80C7B0E8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C7B0EC  7F A7 EB 78 */	mr r7, r29
/* 80C7B0F0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C7B0F4  FC 40 08 90 */	fmr f2, f1
/* 80C7B0F8  C0 7F 01 10 */	lfs f3, 0x110(r31)
/* 80C7B0FC  FC 80 18 90 */	fmr f4, f3
/* 80C7B100  39 00 00 00 */	li r8, 0
/* 80C7B104  4B 63 14 09 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C7B108  38 61 00 14 */	addi r3, r1, 0x14
/* 80C7B10C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C7B110  38 BE 05 B0 */	addi r5, r30, 0x5b0
/* 80C7B114  4B 5E BA 21 */	bl __mi__4cXyzCFRC3Vec
/* 80C7B118  38 61 00 14 */	addi r3, r1, 0x14
/* 80C7B11C  4B 6C C0 1D */	bl PSVECSquareMag
/* 80C7B120  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80C7B124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7B128  40 81 00 58 */	ble lbl_80C7B180
/* 80C7B12C  FC 00 08 34 */	frsqrte f0, f1
/* 80C7B130  C8 9F 01 18 */	lfd f4, 0x118(r31)
/* 80C7B134  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7B138  C8 7F 01 20 */	lfd f3, 0x120(r31)
/* 80C7B13C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7B140  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7B144  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7B148  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7B14C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7B150  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7B154  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7B158  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7B15C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7B160  FC 44 00 32 */	fmul f2, f4, f0
/* 80C7B164  FC 00 00 32 */	fmul f0, f0, f0
/* 80C7B168  FC 01 00 32 */	fmul f0, f1, f0
/* 80C7B16C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C7B170  FC 02 00 32 */	fmul f0, f2, f0
/* 80C7B174  FC 21 00 32 */	fmul f1, f1, f0
/* 80C7B178  FC 20 08 18 */	frsp f1, f1
/* 80C7B17C  48 00 00 88 */	b lbl_80C7B204
lbl_80C7B180:
/* 80C7B180  C8 1F 01 28 */	lfd f0, 0x128(r31)
/* 80C7B184  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C7B188  40 80 00 10 */	bge lbl_80C7B198
/* 80C7B18C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C7B190  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C7B194  48 00 00 70 */	b lbl_80C7B204
lbl_80C7B198:
/* 80C7B198  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C7B19C  80 81 00 08 */	lwz r4, 8(r1)
/* 80C7B1A0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C7B1A4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C7B1A8  7C 03 00 00 */	cmpw r3, r0
/* 80C7B1AC  41 82 00 14 */	beq lbl_80C7B1C0
/* 80C7B1B0  40 80 00 40 */	bge lbl_80C7B1F0
/* 80C7B1B4  2C 03 00 00 */	cmpwi r3, 0
/* 80C7B1B8  41 82 00 20 */	beq lbl_80C7B1D8
/* 80C7B1BC  48 00 00 34 */	b lbl_80C7B1F0
lbl_80C7B1C0:
/* 80C7B1C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C7B1C4  41 82 00 0C */	beq lbl_80C7B1D0
/* 80C7B1C8  38 00 00 01 */	li r0, 1
/* 80C7B1CC  48 00 00 28 */	b lbl_80C7B1F4
lbl_80C7B1D0:
/* 80C7B1D0  38 00 00 02 */	li r0, 2
/* 80C7B1D4  48 00 00 20 */	b lbl_80C7B1F4
lbl_80C7B1D8:
/* 80C7B1D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C7B1DC  41 82 00 0C */	beq lbl_80C7B1E8
/* 80C7B1E0  38 00 00 05 */	li r0, 5
/* 80C7B1E4  48 00 00 10 */	b lbl_80C7B1F4
lbl_80C7B1E8:
/* 80C7B1E8  38 00 00 03 */	li r0, 3
/* 80C7B1EC  48 00 00 08 */	b lbl_80C7B1F4
lbl_80C7B1F0:
/* 80C7B1F0  38 00 00 04 */	li r0, 4
lbl_80C7B1F4:
/* 80C7B1F4  2C 00 00 01 */	cmpwi r0, 1
/* 80C7B1F8  40 82 00 0C */	bne lbl_80C7B204
/* 80C7B1FC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C7B200  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C7B204:
/* 80C7B204  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C7B208  40 81 00 0C */	ble lbl_80C7B214
/* 80C7B20C  7F C3 F3 78 */	mr r3, r30
/* 80C7B210  48 00 00 25 */	bl init_modeBrk__15daLv6TogeTrap_cFv
lbl_80C7B214:
/* 80C7B214  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80C7B218  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80C7B21C  39 61 00 60 */	addi r11, r1, 0x60
/* 80C7B220  4B 6E 70 09 */	bl _restgpr_29
/* 80C7B224  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C7B228  7C 08 03 A6 */	mtlr r0
/* 80C7B22C  38 21 00 70 */	addi r1, r1, 0x70
/* 80C7B230  4E 80 00 20 */	blr 
