lbl_80D030A8:
/* 80D030A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D030AC  7C 08 02 A6 */	mflr r0
/* 80D030B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D030B4  39 61 00 40 */	addi r11, r1, 0x40
/* 80D030B8  4B 65 F1 25 */	bl _savegpr_29
/* 80D030BC  7C 9D 23 78 */	mr r29, r4
/* 80D030C0  3C 80 80 D0 */	lis r4, lit_3662@ha /* 0x80D03F90@ha */
/* 80D030C4  3B E4 3F 90 */	addi r31, r4, lit_3662@l /* 0x80D03F90@l */
/* 80D030C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D030CC  41 82 01 68 */	beq lbl_80D03234
/* 80D030D0  4B 31 5C 11 */	bl fopAc_IsActor__FPv
/* 80D030D4  2C 03 00 00 */	cmpwi r3, 0
/* 80D030D8  41 82 01 5C */	beq lbl_80D03234
/* 80D030DC  A8 1E 00 0E */	lha r0, 0xe(r30)
/* 80D030E0  2C 00 00 44 */	cmpwi r0, 0x44
/* 80D030E4  40 82 01 50 */	bne lbl_80D03234
/* 80D030E8  38 61 00 18 */	addi r3, r1, 0x18
/* 80D030EC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D030F0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D030F4  4B 56 3A 41 */	bl __mi__4cXyzCFRC3Vec
/* 80D030F8  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80D030FC  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80D03100  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D03104  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D03108  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80D0310C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80D03110  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80D03114  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80D03118  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D0311C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D03120  38 61 00 0C */	addi r3, r1, 0xc
/* 80D03124  4B 64 40 15 */	bl PSVECSquareMag
/* 80D03128  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80D0312C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D03130  40 81 00 58 */	ble lbl_80D03188
/* 80D03134  FC 00 08 34 */	frsqrte f0, f1
/* 80D03138  C8 9F 00 78 */	lfd f4, 0x78(r31)
/* 80D0313C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D03140  C8 7F 00 80 */	lfd f3, 0x80(r31)
/* 80D03144  FC 00 00 32 */	fmul f0, f0, f0
/* 80D03148  FC 01 00 32 */	fmul f0, f1, f0
/* 80D0314C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D03150  FC 02 00 32 */	fmul f0, f2, f0
/* 80D03154  FC 44 00 32 */	fmul f2, f4, f0
/* 80D03158  FC 00 00 32 */	fmul f0, f0, f0
/* 80D0315C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D03160  FC 03 00 28 */	fsub f0, f3, f0
/* 80D03164  FC 02 00 32 */	fmul f0, f2, f0
/* 80D03168  FC 44 00 32 */	fmul f2, f4, f0
/* 80D0316C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D03170  FC 01 00 32 */	fmul f0, f1, f0
/* 80D03174  FC 03 00 28 */	fsub f0, f3, f0
/* 80D03178  FC 02 00 32 */	fmul f0, f2, f0
/* 80D0317C  FC 21 00 32 */	fmul f1, f1, f0
/* 80D03180  FC 20 08 18 */	frsp f1, f1
/* 80D03184  48 00 00 88 */	b lbl_80D0320C
lbl_80D03188:
/* 80D03188  C8 1F 00 88 */	lfd f0, 0x88(r31)
/* 80D0318C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D03190  40 80 00 10 */	bge lbl_80D031A0
/* 80D03194  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D03198  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D0319C  48 00 00 70 */	b lbl_80D0320C
lbl_80D031A0:
/* 80D031A0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D031A4  80 81 00 08 */	lwz r4, 8(r1)
/* 80D031A8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D031AC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D031B0  7C 03 00 00 */	cmpw r3, r0
/* 80D031B4  41 82 00 14 */	beq lbl_80D031C8
/* 80D031B8  40 80 00 40 */	bge lbl_80D031F8
/* 80D031BC  2C 03 00 00 */	cmpwi r3, 0
/* 80D031C0  41 82 00 20 */	beq lbl_80D031E0
/* 80D031C4  48 00 00 34 */	b lbl_80D031F8
lbl_80D031C8:
/* 80D031C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D031CC  41 82 00 0C */	beq lbl_80D031D8
/* 80D031D0  38 00 00 01 */	li r0, 1
/* 80D031D4  48 00 00 28 */	b lbl_80D031FC
lbl_80D031D8:
/* 80D031D8  38 00 00 02 */	li r0, 2
/* 80D031DC  48 00 00 20 */	b lbl_80D031FC
lbl_80D031E0:
/* 80D031E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D031E4  41 82 00 0C */	beq lbl_80D031F0
/* 80D031E8  38 00 00 05 */	li r0, 5
/* 80D031EC  48 00 00 10 */	b lbl_80D031FC
lbl_80D031F0:
/* 80D031F0  38 00 00 03 */	li r0, 3
/* 80D031F4  48 00 00 08 */	b lbl_80D031FC
lbl_80D031F8:
/* 80D031F8  38 00 00 04 */	li r0, 4
lbl_80D031FC:
/* 80D031FC  2C 00 00 01 */	cmpwi r0, 1
/* 80D03200  40 82 00 0C */	bne lbl_80D0320C
/* 80D03204  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D03208  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D0320C:
/* 80D0320C  3C 60 80 D0 */	lis r3, l_HIO@ha /* 0x80D0426C@ha */
/* 80D03210  38 63 42 6C */	addi r3, r3, l_HIO@l /* 0x80D0426C@l */
/* 80D03214  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80D03218  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D0321C  4C 40 13 82 */	cror 2, 0, 2
/* 80D03220  40 82 00 0C */	bne lbl_80D0322C
/* 80D03224  7F C3 F3 78 */	mr r3, r30
/* 80D03228  48 00 00 10 */	b lbl_80D03238
lbl_80D0322C:
/* 80D0322C  38 60 00 00 */	li r3, 0
/* 80D03230  48 00 00 08 */	b lbl_80D03238
lbl_80D03234:
/* 80D03234  38 60 00 00 */	li r3, 0
lbl_80D03238:
/* 80D03238  39 61 00 40 */	addi r11, r1, 0x40
/* 80D0323C  4B 65 EF ED */	bl _restgpr_29
/* 80D03240  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D03244  7C 08 03 A6 */	mtlr r0
/* 80D03248  38 21 00 40 */	addi r1, r1, 0x40
/* 80D0324C  4E 80 00 20 */	blr 
