lbl_806CA024:
/* 806CA024  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 806CA028  7C 08 02 A6 */	mflr r0
/* 806CA02C  90 01 00 94 */	stw r0, 0x94(r1)
/* 806CA030  39 61 00 90 */	addi r11, r1, 0x90
/* 806CA034  4B C9 81 A5 */	bl _savegpr_28
/* 806CA038  7C 7D 1B 78 */	mr r29, r3
/* 806CA03C  3C 80 80 6D */	lis r4, lit_3904@ha /* 0x806CD000@ha */
/* 806CA040  3B E4 D0 00 */	addi r31, r4, lit_3904@l /* 0x806CD000@l */
/* 806CA044  3B C0 00 00 */	li r30, 0
/* 806CA048  80 03 0B 78 */	lwz r0, 0xb78(r3)
/* 806CA04C  28 00 00 0A */	cmplwi r0, 0xa
/* 806CA050  41 81 09 BC */	bgt lbl_806CAA0C
/* 806CA054  3C 80 80 6D */	lis r4, lit_5071@ha /* 0x806CD150@ha */
/* 806CA058  38 84 D1 50 */	addi r4, r4, lit_5071@l /* 0x806CD150@l */
/* 806CA05C  54 00 10 3A */	slwi r0, r0, 2
/* 806CA060  7C 04 00 2E */	lwzx r0, r4, r0
/* 806CA064  7C 09 03 A6 */	mtctr r0
/* 806CA068  4E 80 04 20 */	bctr 
lbl_806CA06C:
/* 806CA06C  38 00 00 00 */	li r0, 0
/* 806CA070  98 1D 0B 9E */	stb r0, 0xb9e(r29)
/* 806CA074  88 1D 0B 9A */	lbz r0, 0xb9a(r29)
/* 806CA078  2C 00 00 00 */	cmpwi r0, 0
/* 806CA07C  41 82 00 14 */	beq lbl_806CA090
/* 806CA080  7F A3 EB 78 */	mr r3, r29
/* 806CA084  38 80 00 01 */	li r4, 1
/* 806CA088  4B FF E0 71 */	bl setActionMode__8daE_GE_cFi
/* 806CA08C  48 00 09 80 */	b lbl_806CAA0C
lbl_806CA090:
/* 806CA090  80 1D 0B 78 */	lwz r0, 0xb78(r29)
/* 806CA094  2C 00 00 0A */	cmpwi r0, 0xa
/* 806CA098  40 82 00 20 */	bne lbl_806CA0B8
/* 806CA09C  7F A3 EB 78 */	mr r3, r29
/* 806CA0A0  38 80 00 07 */	li r4, 7
/* 806CA0A4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 806CA0A8  38 A0 00 02 */	li r5, 2
/* 806CA0AC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CA0B0  4B FF DA 09 */	bl bckSet__8daE_GE_cFifUcf
/* 806CA0B4  48 00 00 1C */	b lbl_806CA0D0
lbl_806CA0B8:
/* 806CA0B8  7F A3 EB 78 */	mr r3, r29
/* 806CA0BC  38 80 00 07 */	li r4, 7
/* 806CA0C0  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 806CA0C4  38 A0 00 02 */	li r5, 2
/* 806CA0C8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CA0CC  4B FF D9 ED */	bl bckSet__8daE_GE_cFifUcf
lbl_806CA0D0:
/* 806CA0D0  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 806CA0D4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806CA0D8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806CA0DC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CA0E0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806CA0E4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 806CA0E8  C0 5D 04 B0 */	lfs f2, 0x4b0(r29)
/* 806CA0EC  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 806CA0F0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806CA0F4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806CA0F8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 806CA0FC  38 61 00 20 */	addi r3, r1, 0x20
/* 806CA100  38 81 00 2C */	addi r4, r1, 0x2c
/* 806CA104  4B C7 D2 99 */	bl PSVECSquareDistance
/* 806CA108  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CA10C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA110  40 81 00 58 */	ble lbl_806CA168
/* 806CA114  FC 00 08 34 */	frsqrte f0, f1
/* 806CA118  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806CA11C  FC 44 00 32 */	fmul f2, f4, f0
/* 806CA120  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806CA124  FC 00 00 32 */	fmul f0, f0, f0
/* 806CA128  FC 01 00 32 */	fmul f0, f1, f0
/* 806CA12C  FC 03 00 28 */	fsub f0, f3, f0
/* 806CA130  FC 02 00 32 */	fmul f0, f2, f0
/* 806CA134  FC 44 00 32 */	fmul f2, f4, f0
/* 806CA138  FC 00 00 32 */	fmul f0, f0, f0
/* 806CA13C  FC 01 00 32 */	fmul f0, f1, f0
/* 806CA140  FC 03 00 28 */	fsub f0, f3, f0
/* 806CA144  FC 02 00 32 */	fmul f0, f2, f0
/* 806CA148  FC 44 00 32 */	fmul f2, f4, f0
/* 806CA14C  FC 00 00 32 */	fmul f0, f0, f0
/* 806CA150  FC 01 00 32 */	fmul f0, f1, f0
/* 806CA154  FC 03 00 28 */	fsub f0, f3, f0
/* 806CA158  FC 02 00 32 */	fmul f0, f2, f0
/* 806CA15C  FC 21 00 32 */	fmul f1, f1, f0
/* 806CA160  FC 20 08 18 */	frsp f1, f1
/* 806CA164  48 00 00 88 */	b lbl_806CA1EC
lbl_806CA168:
/* 806CA168  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806CA16C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA170  40 80 00 10 */	bge lbl_806CA180
/* 806CA174  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806CA178  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806CA17C  48 00 00 70 */	b lbl_806CA1EC
lbl_806CA180:
/* 806CA180  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806CA184  80 81 00 18 */	lwz r4, 0x18(r1)
/* 806CA188  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806CA18C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806CA190  7C 03 00 00 */	cmpw r3, r0
/* 806CA194  41 82 00 14 */	beq lbl_806CA1A8
/* 806CA198  40 80 00 40 */	bge lbl_806CA1D8
/* 806CA19C  2C 03 00 00 */	cmpwi r3, 0
/* 806CA1A0  41 82 00 20 */	beq lbl_806CA1C0
/* 806CA1A4  48 00 00 34 */	b lbl_806CA1D8
lbl_806CA1A8:
/* 806CA1A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CA1AC  41 82 00 0C */	beq lbl_806CA1B8
/* 806CA1B0  38 00 00 01 */	li r0, 1
/* 806CA1B4  48 00 00 28 */	b lbl_806CA1DC
lbl_806CA1B8:
/* 806CA1B8  38 00 00 02 */	li r0, 2
/* 806CA1BC  48 00 00 20 */	b lbl_806CA1DC
lbl_806CA1C0:
/* 806CA1C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CA1C4  41 82 00 0C */	beq lbl_806CA1D0
/* 806CA1C8  38 00 00 05 */	li r0, 5
/* 806CA1CC  48 00 00 10 */	b lbl_806CA1DC
lbl_806CA1D0:
/* 806CA1D0  38 00 00 03 */	li r0, 3
/* 806CA1D4  48 00 00 08 */	b lbl_806CA1DC
lbl_806CA1D8:
/* 806CA1D8  38 00 00 04 */	li r0, 4
lbl_806CA1DC:
/* 806CA1DC  2C 00 00 01 */	cmpwi r0, 1
/* 806CA1E0  40 82 00 0C */	bne lbl_806CA1EC
/* 806CA1E4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806CA1E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806CA1EC:
/* 806CA1EC  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 806CA1F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA1F4  40 80 00 18 */	bge lbl_806CA20C
/* 806CA1F8  38 00 00 01 */	li r0, 1
/* 806CA1FC  90 1D 0B 78 */	stw r0, 0xb78(r29)
/* 806CA200  38 00 00 20 */	li r0, 0x20
/* 806CA204  B0 1D 0B 8A */	sth r0, 0xb8a(r29)
/* 806CA208  48 00 00 0C */	b lbl_806CA214
lbl_806CA20C:
/* 806CA20C  38 00 00 02 */	li r0, 2
/* 806CA210  90 1D 0B 78 */	stw r0, 0xb78(r29)
lbl_806CA214:
/* 806CA214  3C 60 80 6D */	lis r3, l_HIO@ha /* 0x806CD368@ha */
/* 806CA218  38 63 D3 68 */	addi r3, r3, l_HIO@l /* 0x806CD368@l */
/* 806CA21C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806CA220  D0 1D 0B 58 */	stfs f0, 0xb58(r29)
/* 806CA224  38 7D 04 A8 */	addi r3, r29, 0x4a8
/* 806CA228  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806CA22C  4B BA 69 D9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806CA230  B0 7D 0B 8C */	sth r3, 0xb8c(r29)
/* 806CA234  48 00 07 D8 */	b lbl_806CAA0C
lbl_806CA238:
/* 806CA238  38 80 00 00 */	li r4, 0
/* 806CA23C  4B FF FC C9 */	bl setBackAnime__8daE_GE_cFi
/* 806CA240  A8 7D 0B 8A */	lha r3, 0xb8a(r29)
/* 806CA244  2C 03 00 08 */	cmpwi r3, 8
/* 806CA248  40 81 00 0C */	ble lbl_806CA254
/* 806CA24C  38 03 FF FF */	addi r0, r3, -1
/* 806CA250  B0 1D 0B 8A */	sth r0, 0xb8a(r29)
lbl_806CA254:
/* 806CA254  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CA258  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806CA25C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 806CA260  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 806CA264  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806CA268  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 806CA26C  38 61 00 5C */	addi r3, r1, 0x5c
/* 806CA270  7F A4 EB 78 */	mr r4, r29
/* 806CA274  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 806CA278  38 C1 00 68 */	addi r6, r1, 0x68
/* 806CA27C  A8 FD 0B 8C */	lha r7, 0xb8c(r29)
/* 806CA280  C0 3D 0B 58 */	lfs f1, 0xb58(r29)
/* 806CA284  A9 1D 0B 8A */	lha r8, 0xb8a(r29)
/* 806CA288  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CA28C  4B FF E6 3D */	bl calcCircleFly__8daE_GE_cFP4cXyzP4cXyzsfsf
/* 806CA290  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 806CA294  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 806CA298  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 806CA29C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806CA2A0  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 806CA2A4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806CA2A8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 806CA2AC  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 806CA2B0  4B BA 69 55 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806CA2B4  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 806CA2B8  4B BA 6B 6D */	bl cLib_distanceAngleS__Fss
/* 806CA2BC  7C 63 07 34 */	extsh r3, r3
/* 806CA2C0  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 806CA2C4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806CA2C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA2CC  41 81 00 18 */	bgt lbl_806CA2E4
/* 806CA2D0  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 806CA2D4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806CA2D8  40 82 00 0C */	bne lbl_806CA2E4
/* 806CA2DC  2C 03 50 00 */	cmpwi r3, 0x5000
/* 806CA2E0  41 80 00 10 */	blt lbl_806CA2F0
lbl_806CA2E4:
/* 806CA2E4  A8 7D 0B 8C */	lha r3, 0xb8c(r29)
/* 806CA2E8  38 03 01 90 */	addi r0, r3, 0x190
/* 806CA2EC  B0 1D 0B 8C */	sth r0, 0xb8c(r29)
lbl_806CA2F0:
/* 806CA2F0  38 61 00 74 */	addi r3, r1, 0x74
/* 806CA2F4  4B C7 CE 45 */	bl PSVECSquareMag
/* 806CA2F8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CA2FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA300  40 81 00 58 */	ble lbl_806CA358
/* 806CA304  FC 00 08 34 */	frsqrte f0, f1
/* 806CA308  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806CA30C  FC 44 00 32 */	fmul f2, f4, f0
/* 806CA310  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806CA314  FC 00 00 32 */	fmul f0, f0, f0
/* 806CA318  FC 01 00 32 */	fmul f0, f1, f0
/* 806CA31C  FC 03 00 28 */	fsub f0, f3, f0
/* 806CA320  FC 02 00 32 */	fmul f0, f2, f0
/* 806CA324  FC 44 00 32 */	fmul f2, f4, f0
/* 806CA328  FC 00 00 32 */	fmul f0, f0, f0
/* 806CA32C  FC 01 00 32 */	fmul f0, f1, f0
/* 806CA330  FC 03 00 28 */	fsub f0, f3, f0
/* 806CA334  FC 02 00 32 */	fmul f0, f2, f0
/* 806CA338  FC 44 00 32 */	fmul f2, f4, f0
/* 806CA33C  FC 00 00 32 */	fmul f0, f0, f0
/* 806CA340  FC 01 00 32 */	fmul f0, f1, f0
/* 806CA344  FC 03 00 28 */	fsub f0, f3, f0
/* 806CA348  FC 02 00 32 */	fmul f0, f2, f0
/* 806CA34C  FC 21 00 32 */	fmul f1, f1, f0
/* 806CA350  FC 20 08 18 */	frsp f1, f1
/* 806CA354  48 00 00 88 */	b lbl_806CA3DC
lbl_806CA358:
/* 806CA358  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806CA35C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA360  40 80 00 10 */	bge lbl_806CA370
/* 806CA364  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806CA368  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806CA36C  48 00 00 70 */	b lbl_806CA3DC
lbl_806CA370:
/* 806CA370  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806CA374  80 81 00 14 */	lwz r4, 0x14(r1)
/* 806CA378  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806CA37C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806CA380  7C 03 00 00 */	cmpw r3, r0
/* 806CA384  41 82 00 14 */	beq lbl_806CA398
/* 806CA388  40 80 00 40 */	bge lbl_806CA3C8
/* 806CA38C  2C 03 00 00 */	cmpwi r3, 0
/* 806CA390  41 82 00 20 */	beq lbl_806CA3B0
/* 806CA394  48 00 00 34 */	b lbl_806CA3C8
lbl_806CA398:
/* 806CA398  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CA39C  41 82 00 0C */	beq lbl_806CA3A8
/* 806CA3A0  38 00 00 01 */	li r0, 1
/* 806CA3A4  48 00 00 28 */	b lbl_806CA3CC
lbl_806CA3A8:
/* 806CA3A8  38 00 00 02 */	li r0, 2
/* 806CA3AC  48 00 00 20 */	b lbl_806CA3CC
lbl_806CA3B0:
/* 806CA3B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CA3B4  41 82 00 0C */	beq lbl_806CA3C0
/* 806CA3B8  38 00 00 05 */	li r0, 5
/* 806CA3BC  48 00 00 10 */	b lbl_806CA3CC
lbl_806CA3C0:
/* 806CA3C0  38 00 00 03 */	li r0, 3
/* 806CA3C4  48 00 00 08 */	b lbl_806CA3CC
lbl_806CA3C8:
/* 806CA3C8  38 00 00 04 */	li r0, 4
lbl_806CA3CC:
/* 806CA3CC  2C 00 00 01 */	cmpwi r0, 1
/* 806CA3D0  40 82 00 0C */	bne lbl_806CA3DC
/* 806CA3D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806CA3D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806CA3DC:
/* 806CA3DC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806CA3E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA3E4  40 80 00 0C */	bge lbl_806CA3F0
/* 806CA3E8  38 00 00 02 */	li r0, 2
/* 806CA3EC  90 1D 0B 78 */	stw r0, 0xb78(r29)
lbl_806CA3F0:
/* 806CA3F0  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 806CA3F4  C0 5D 04 FC */	lfs f2, 0x4fc(r29)
/* 806CA3F8  4B B9 D2 7D */	bl cM_atan2s__Fff
/* 806CA3FC  38 03 C0 00 */	addi r0, r3, -16384
/* 806CA400  7C 1E 07 34 */	extsh r30, r0
/* 806CA404  48 00 06 08 */	b lbl_806CAA0C
lbl_806CA408:
/* 806CA408  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 806CA40C  2C 00 00 00 */	cmpwi r0, 0
/* 806CA410  40 82 00 3C */	bne lbl_806CA44C
/* 806CA414  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 806CA418  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 806CA41C  4B BA 67 E9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806CA420  7C 7E 1B 78 */	mr r30, r3
/* 806CA424  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 806CA428  4B BA 69 FD */	bl cLib_distanceAngleS__Fss
/* 806CA42C  7C 60 07 34 */	extsh r0, r3
/* 806CA430  2C 00 08 00 */	cmpwi r0, 0x800
/* 806CA434  41 81 00 18 */	bgt lbl_806CA44C
/* 806CA438  3C 7E 00 01 */	addis r3, r30, 1
/* 806CA43C  38 03 80 00 */	addi r0, r3, -32768
/* 806CA440  B0 1D 0B 8C */	sth r0, 0xb8c(r29)
/* 806CA444  38 00 00 01 */	li r0, 1
/* 806CA448  90 1D 0B 7C */	stw r0, 0xb7c(r29)
lbl_806CA44C:
/* 806CA44C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CA450  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806CA454  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806CA458  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 806CA45C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806CA460  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 806CA464  38 61 00 50 */	addi r3, r1, 0x50
/* 806CA468  7F A4 EB 78 */	mr r4, r29
/* 806CA46C  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 806CA470  38 C1 00 68 */	addi r6, r1, 0x68
/* 806CA474  A8 FD 0B 8C */	lha r7, 0xb8c(r29)
/* 806CA478  C0 3D 0B 58 */	lfs f1, 0xb58(r29)
/* 806CA47C  39 00 00 10 */	li r8, 0x10
/* 806CA480  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CA484  4B FF E4 45 */	bl calcCircleFly__8daE_GE_cFP4cXyzP4cXyzsfsf
/* 806CA488  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 806CA48C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 806CA490  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 806CA494  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 806CA498  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 806CA49C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806CA4A0  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 806CA4A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA4A8  40 80 01 0C */	bge lbl_806CA5B4
/* 806CA4AC  38 61 00 74 */	addi r3, r1, 0x74
/* 806CA4B0  4B C7 CC 89 */	bl PSVECSquareMag
/* 806CA4B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CA4B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA4BC  40 81 00 58 */	ble lbl_806CA514
/* 806CA4C0  FC 00 08 34 */	frsqrte f0, f1
/* 806CA4C4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806CA4C8  FC 44 00 32 */	fmul f2, f4, f0
/* 806CA4CC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806CA4D0  FC 00 00 32 */	fmul f0, f0, f0
/* 806CA4D4  FC 01 00 32 */	fmul f0, f1, f0
/* 806CA4D8  FC 03 00 28 */	fsub f0, f3, f0
/* 806CA4DC  FC 02 00 32 */	fmul f0, f2, f0
/* 806CA4E0  FC 44 00 32 */	fmul f2, f4, f0
/* 806CA4E4  FC 00 00 32 */	fmul f0, f0, f0
/* 806CA4E8  FC 01 00 32 */	fmul f0, f1, f0
/* 806CA4EC  FC 03 00 28 */	fsub f0, f3, f0
/* 806CA4F0  FC 02 00 32 */	fmul f0, f2, f0
/* 806CA4F4  FC 44 00 32 */	fmul f2, f4, f0
/* 806CA4F8  FC 00 00 32 */	fmul f0, f0, f0
/* 806CA4FC  FC 01 00 32 */	fmul f0, f1, f0
/* 806CA500  FC 03 00 28 */	fsub f0, f3, f0
/* 806CA504  FC 02 00 32 */	fmul f0, f2, f0
/* 806CA508  FC 21 00 32 */	fmul f1, f1, f0
/* 806CA50C  FC 20 08 18 */	frsp f1, f1
/* 806CA510  48 00 00 88 */	b lbl_806CA598
lbl_806CA514:
/* 806CA514  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806CA518  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA51C  40 80 00 10 */	bge lbl_806CA52C
/* 806CA520  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806CA524  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806CA528  48 00 00 70 */	b lbl_806CA598
lbl_806CA52C:
/* 806CA52C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806CA530  80 81 00 10 */	lwz r4, 0x10(r1)
/* 806CA534  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806CA538  3C 00 7F 80 */	lis r0, 0x7f80
/* 806CA53C  7C 03 00 00 */	cmpw r3, r0
/* 806CA540  41 82 00 14 */	beq lbl_806CA554
/* 806CA544  40 80 00 40 */	bge lbl_806CA584
/* 806CA548  2C 03 00 00 */	cmpwi r3, 0
/* 806CA54C  41 82 00 20 */	beq lbl_806CA56C
/* 806CA550  48 00 00 34 */	b lbl_806CA584
lbl_806CA554:
/* 806CA554  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CA558  41 82 00 0C */	beq lbl_806CA564
/* 806CA55C  38 00 00 01 */	li r0, 1
/* 806CA560  48 00 00 28 */	b lbl_806CA588
lbl_806CA564:
/* 806CA564  38 00 00 02 */	li r0, 2
/* 806CA568  48 00 00 20 */	b lbl_806CA588
lbl_806CA56C:
/* 806CA56C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CA570  41 82 00 0C */	beq lbl_806CA57C
/* 806CA574  38 00 00 05 */	li r0, 5
/* 806CA578  48 00 00 10 */	b lbl_806CA588
lbl_806CA57C:
/* 806CA57C  38 00 00 03 */	li r0, 3
/* 806CA580  48 00 00 08 */	b lbl_806CA588
lbl_806CA584:
/* 806CA584  38 00 00 04 */	li r0, 4
lbl_806CA588:
/* 806CA588  2C 00 00 01 */	cmpwi r0, 1
/* 806CA58C  40 82 00 0C */	bne lbl_806CA598
/* 806CA590  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806CA594  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806CA598:
/* 806CA598  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 806CA59C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA5A0  40 80 00 14 */	bge lbl_806CA5B4
/* 806CA5A4  7F A3 EB 78 */	mr r3, r29
/* 806CA5A8  38 80 00 01 */	li r4, 1
/* 806CA5AC  4B FF F9 59 */	bl setBackAnime__8daE_GE_cFi
/* 806CA5B0  48 00 00 10 */	b lbl_806CA5C0
lbl_806CA5B4:
/* 806CA5B4  7F A3 EB 78 */	mr r3, r29
/* 806CA5B8  38 80 00 00 */	li r4, 0
/* 806CA5BC  4B FF F9 49 */	bl setBackAnime__8daE_GE_cFi
lbl_806CA5C0:
/* 806CA5C0  38 61 00 74 */	addi r3, r1, 0x74
/* 806CA5C4  4B C7 CB 75 */	bl PSVECSquareMag
/* 806CA5C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CA5CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA5D0  40 81 00 58 */	ble lbl_806CA628
/* 806CA5D4  FC 00 08 34 */	frsqrte f0, f1
/* 806CA5D8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806CA5DC  FC 44 00 32 */	fmul f2, f4, f0
/* 806CA5E0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806CA5E4  FC 00 00 32 */	fmul f0, f0, f0
/* 806CA5E8  FC 01 00 32 */	fmul f0, f1, f0
/* 806CA5EC  FC 03 00 28 */	fsub f0, f3, f0
/* 806CA5F0  FC 02 00 32 */	fmul f0, f2, f0
/* 806CA5F4  FC 44 00 32 */	fmul f2, f4, f0
/* 806CA5F8  FC 00 00 32 */	fmul f0, f0, f0
/* 806CA5FC  FC 01 00 32 */	fmul f0, f1, f0
/* 806CA600  FC 03 00 28 */	fsub f0, f3, f0
/* 806CA604  FC 02 00 32 */	fmul f0, f2, f0
/* 806CA608  FC 44 00 32 */	fmul f2, f4, f0
/* 806CA60C  FC 00 00 32 */	fmul f0, f0, f0
/* 806CA610  FC 01 00 32 */	fmul f0, f1, f0
/* 806CA614  FC 03 00 28 */	fsub f0, f3, f0
/* 806CA618  FC 02 00 32 */	fmul f0, f2, f0
/* 806CA61C  FC 21 00 32 */	fmul f1, f1, f0
/* 806CA620  FC 20 08 18 */	frsp f1, f1
/* 806CA624  48 00 00 88 */	b lbl_806CA6AC
lbl_806CA628:
/* 806CA628  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806CA62C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA630  40 80 00 10 */	bge lbl_806CA640
/* 806CA634  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806CA638  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806CA63C  48 00 00 70 */	b lbl_806CA6AC
lbl_806CA640:
/* 806CA640  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806CA644  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806CA648  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806CA64C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806CA650  7C 03 00 00 */	cmpw r3, r0
/* 806CA654  41 82 00 14 */	beq lbl_806CA668
/* 806CA658  40 80 00 40 */	bge lbl_806CA698
/* 806CA65C  2C 03 00 00 */	cmpwi r3, 0
/* 806CA660  41 82 00 20 */	beq lbl_806CA680
/* 806CA664  48 00 00 34 */	b lbl_806CA698
lbl_806CA668:
/* 806CA668  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CA66C  41 82 00 0C */	beq lbl_806CA678
/* 806CA670  38 00 00 01 */	li r0, 1
/* 806CA674  48 00 00 28 */	b lbl_806CA69C
lbl_806CA678:
/* 806CA678  38 00 00 02 */	li r0, 2
/* 806CA67C  48 00 00 20 */	b lbl_806CA69C
lbl_806CA680:
/* 806CA680  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CA684  41 82 00 0C */	beq lbl_806CA690
/* 806CA688  38 00 00 05 */	li r0, 5
/* 806CA68C  48 00 00 10 */	b lbl_806CA69C
lbl_806CA690:
/* 806CA690  38 00 00 03 */	li r0, 3
/* 806CA694  48 00 00 08 */	b lbl_806CA69C
lbl_806CA698:
/* 806CA698  38 00 00 04 */	li r0, 4
lbl_806CA69C:
/* 806CA69C  2C 00 00 01 */	cmpwi r0, 1
/* 806CA6A0  40 82 00 0C */	bne lbl_806CA6AC
/* 806CA6A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806CA6A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806CA6AC:
/* 806CA6AC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806CA6B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA6B4  40 80 00 3C */	bge lbl_806CA6F0
/* 806CA6B8  38 00 00 03 */	li r0, 3
/* 806CA6BC  90 1D 0B 78 */	stw r0, 0xb78(r29)
/* 806CA6C0  7F A3 EB 78 */	mr r3, r29
/* 806CA6C4  38 80 00 0B */	li r4, 0xb
/* 806CA6C8  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 806CA6CC  38 A0 00 00 */	li r5, 0
/* 806CA6D0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CA6D4  4B FF D3 E5 */	bl bckSet__8daE_GE_cFifUcf
/* 806CA6D8  38 00 00 0A */	li r0, 0xa
/* 806CA6DC  B0 1D 0B 8E */	sth r0, 0xb8e(r29)
/* 806CA6E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CA6E4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806CA6E8  38 00 00 01 */	li r0, 1
/* 806CA6EC  98 1D 0B 9E */	stb r0, 0xb9e(r29)
lbl_806CA6F0:
/* 806CA6F0  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 806CA6F4  C0 5D 04 FC */	lfs f2, 0x4fc(r29)
/* 806CA6F8  4B B9 CF 7D */	bl cM_atan2s__Fff
/* 806CA6FC  38 03 C0 00 */	addi r0, r3, -16384
/* 806CA700  7C 1E 07 34 */	extsh r30, r0
/* 806CA704  48 00 03 08 */	b lbl_806CAA0C
lbl_806CA708:
/* 806CA708  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806CA70C  38 63 00 0C */	addi r3, r3, 0xc
/* 806CA710  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806CA714  4B C5 DD 19 */	bl checkPass__12J3DFrameCtrlFf
/* 806CA718  2C 03 00 00 */	cmpwi r3, 0
/* 806CA71C  41 82 00 10 */	beq lbl_806CA72C
/* 806CA720  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CA724  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806CA728  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_806CA72C:
/* 806CA72C  38 7D 0B 58 */	addi r3, r29, 0xb58
/* 806CA730  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 806CA734  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CA738  4B BA 60 09 */	bl cLib_chaseF__FPfff
/* 806CA73C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CA740  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806CA744  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 806CA748  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 806CA74C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 806CA750  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 806CA754  38 61 00 44 */	addi r3, r1, 0x44
/* 806CA758  7F A4 EB 78 */	mr r4, r29
/* 806CA75C  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 806CA760  38 C1 00 68 */	addi r6, r1, 0x68
/* 806CA764  A8 FD 0B 8C */	lha r7, 0xb8c(r29)
/* 806CA768  C0 3D 0B 58 */	lfs f1, 0xb58(r29)
/* 806CA76C  39 00 00 04 */	li r8, 4
/* 806CA770  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CA774  4B FF E1 55 */	bl calcCircleFly__8daE_GE_cFP4cXyzP4cXyzsfsf
/* 806CA778  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 806CA77C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 806CA780  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806CA784  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806CA788  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 806CA78C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806CA790  38 61 00 74 */	addi r3, r1, 0x74
/* 806CA794  4B C7 C9 A5 */	bl PSVECSquareMag
/* 806CA798  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CA79C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA7A0  40 81 00 58 */	ble lbl_806CA7F8
/* 806CA7A4  FC 00 08 34 */	frsqrte f0, f1
/* 806CA7A8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806CA7AC  FC 44 00 32 */	fmul f2, f4, f0
/* 806CA7B0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806CA7B4  FC 00 00 32 */	fmul f0, f0, f0
/* 806CA7B8  FC 01 00 32 */	fmul f0, f1, f0
/* 806CA7BC  FC 03 00 28 */	fsub f0, f3, f0
/* 806CA7C0  FC 02 00 32 */	fmul f0, f2, f0
/* 806CA7C4  FC 44 00 32 */	fmul f2, f4, f0
/* 806CA7C8  FC 00 00 32 */	fmul f0, f0, f0
/* 806CA7CC  FC 01 00 32 */	fmul f0, f1, f0
/* 806CA7D0  FC 03 00 28 */	fsub f0, f3, f0
/* 806CA7D4  FC 02 00 32 */	fmul f0, f2, f0
/* 806CA7D8  FC 44 00 32 */	fmul f2, f4, f0
/* 806CA7DC  FC 00 00 32 */	fmul f0, f0, f0
/* 806CA7E0  FC 01 00 32 */	fmul f0, f1, f0
/* 806CA7E4  FC 03 00 28 */	fsub f0, f3, f0
/* 806CA7E8  FC 02 00 32 */	fmul f0, f2, f0
/* 806CA7EC  FC 21 00 32 */	fmul f1, f1, f0
/* 806CA7F0  FC 20 08 18 */	frsp f1, f1
/* 806CA7F4  48 00 00 88 */	b lbl_806CA87C
lbl_806CA7F8:
/* 806CA7F8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806CA7FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA800  40 80 00 10 */	bge lbl_806CA810
/* 806CA804  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806CA808  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806CA80C  48 00 00 70 */	b lbl_806CA87C
lbl_806CA810:
/* 806CA810  D0 21 00 08 */	stfs f1, 8(r1)
/* 806CA814  80 81 00 08 */	lwz r4, 8(r1)
/* 806CA818  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806CA81C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806CA820  7C 03 00 00 */	cmpw r3, r0
/* 806CA824  41 82 00 14 */	beq lbl_806CA838
/* 806CA828  40 80 00 40 */	bge lbl_806CA868
/* 806CA82C  2C 03 00 00 */	cmpwi r3, 0
/* 806CA830  41 82 00 20 */	beq lbl_806CA850
/* 806CA834  48 00 00 34 */	b lbl_806CA868
lbl_806CA838:
/* 806CA838  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CA83C  41 82 00 0C */	beq lbl_806CA848
/* 806CA840  38 00 00 01 */	li r0, 1
/* 806CA844  48 00 00 28 */	b lbl_806CA86C
lbl_806CA848:
/* 806CA848  38 00 00 02 */	li r0, 2
/* 806CA84C  48 00 00 20 */	b lbl_806CA86C
lbl_806CA850:
/* 806CA850  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CA854  41 82 00 0C */	beq lbl_806CA860
/* 806CA858  38 00 00 05 */	li r0, 5
/* 806CA85C  48 00 00 10 */	b lbl_806CA86C
lbl_806CA860:
/* 806CA860  38 00 00 03 */	li r0, 3
/* 806CA864  48 00 00 08 */	b lbl_806CA86C
lbl_806CA868:
/* 806CA868  38 00 00 04 */	li r0, 4
lbl_806CA86C:
/* 806CA86C  2C 00 00 01 */	cmpwi r0, 1
/* 806CA870  40 82 00 0C */	bne lbl_806CA87C
/* 806CA874  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806CA878  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806CA87C:
/* 806CA87C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806CA880  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA884  40 80 01 88 */	bge lbl_806CAA0C
/* 806CA888  38 00 00 04 */	li r0, 4
/* 806CA88C  90 1D 0B 78 */	stw r0, 0xb78(r29)
/* 806CA890  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806CA894  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806CA898  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806CA89C  48 00 01 70 */	b lbl_806CAA0C
lbl_806CA8A0:
/* 806CA8A0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806CA8A4  38 63 00 0C */	addi r3, r3, 0xc
/* 806CA8A8  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 806CA8AC  4B C5 DB 81 */	bl checkPass__12J3DFrameCtrlFf
/* 806CA8B0  2C 03 00 00 */	cmpwi r3, 0
/* 806CA8B4  40 82 00 1C */	bne lbl_806CA8D0
/* 806CA8B8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806CA8BC  38 63 00 0C */	addi r3, r3, 0xc
/* 806CA8C0  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 806CA8C4  4B C5 DB 69 */	bl checkPass__12J3DFrameCtrlFf
/* 806CA8C8  2C 03 00 00 */	cmpwi r3, 0
/* 806CA8CC  41 82 00 30 */	beq lbl_806CA8FC
lbl_806CA8D0:
/* 806CA8D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007046A@ha */
/* 806CA8D4  38 03 04 6A */	addi r0, r3, 0x046A /* 0x0007046A@l */
/* 806CA8D8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806CA8DC  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 806CA8E0  38 81 00 1C */	addi r4, r1, 0x1c
/* 806CA8E4  38 A0 00 00 */	li r5, 0
/* 806CA8E8  38 C0 FF FF */	li r6, -1
/* 806CA8EC  81 9D 05 B8 */	lwz r12, 0x5b8(r29)
/* 806CA8F0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806CA8F4  7D 89 03 A6 */	mtctr r12
/* 806CA8F8  4E 80 04 21 */	bctrl 
lbl_806CA8FC:
/* 806CA8FC  AB 9D 04 E6 */	lha r28, 0x4e6(r29)
/* 806CA900  38 7D 0B 58 */	addi r3, r29, 0xb58
/* 806CA904  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CA908  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CA90C  4B BA 5E 35 */	bl cLib_chaseF__FPfff
/* 806CA910  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CA914  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806CA918  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 806CA91C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 806CA920  38 61 00 38 */	addi r3, r1, 0x38
/* 806CA924  7F A4 EB 78 */	mr r4, r29
/* 806CA928  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 806CA92C  38 C1 00 68 */	addi r6, r1, 0x68
/* 806CA930  A8 FD 0B 8C */	lha r7, 0xb8c(r29)
/* 806CA934  C0 3D 0B 58 */	lfs f1, 0xb58(r29)
/* 806CA938  39 00 00 04 */	li r8, 4
/* 806CA93C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CA940  4B FF DF 89 */	bl calcCircleFly__8daE_GE_cFP4cXyzP4cXyzsfsf
/* 806CA944  B3 9D 04 DE */	sth r28, 0x4de(r29)
/* 806CA948  B3 9D 04 E6 */	sth r28, 0x4e6(r29)
/* 806CA94C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 806CA950  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 806CA954  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 806CA958  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 806CA95C  C0 1D 0B 58 */	lfs f0, 0xb58(r29)
/* 806CA960  EC 42 00 28 */	fsubs f2, f2, f0
/* 806CA964  C0 7F 00 08 */	lfs f3, 8(r31)
/* 806CA968  4B BA 51 51 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 806CA96C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 806CA970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CA974  40 80 00 98 */	bge lbl_806CAA0C
/* 806CA978  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806CA97C  38 80 00 01 */	li r4, 1
/* 806CA980  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806CA984  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806CA988  40 82 00 18 */	bne lbl_806CA9A0
/* 806CA98C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CA990  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806CA994  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806CA998  41 82 00 08 */	beq lbl_806CA9A0
/* 806CA99C  38 80 00 00 */	li r4, 0
lbl_806CA9A0:
/* 806CA9A0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806CA9A4  41 82 00 68 */	beq lbl_806CAA0C
/* 806CA9A8  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 806CA9AC  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 806CA9B0  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 806CA9B4  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 806CA9B8  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 806CA9BC  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 806CA9C0  C0 1D 04 BC */	lfs f0, 0x4bc(r29)
/* 806CA9C4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 806CA9C8  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 806CA9CC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 806CA9D0  C0 1D 04 C4 */	lfs f0, 0x4c4(r29)
/* 806CA9D4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 806CA9D8  80 1D 0B 74 */	lwz r0, 0xb74(r29)
/* 806CA9DC  2C 00 00 06 */	cmpwi r0, 6
/* 806CA9E0  40 82 00 1C */	bne lbl_806CA9FC
/* 806CA9E4  7F A3 EB 78 */	mr r3, r29
/* 806CA9E8  38 80 00 06 */	li r4, 6
/* 806CA9EC  4B FF D7 0D */	bl setActionMode__8daE_GE_cFi
/* 806CA9F0  38 00 00 64 */	li r0, 0x64
/* 806CA9F4  B0 1D 0B 90 */	sth r0, 0xb90(r29)
/* 806CA9F8  48 00 00 24 */	b lbl_806CAA1C
lbl_806CA9FC:
/* 806CA9FC  7F A3 EB 78 */	mr r3, r29
/* 806CAA00  38 80 00 00 */	li r4, 0
/* 806CAA04  4B FF D6 F5 */	bl setActionMode__8daE_GE_cFi
/* 806CAA08  48 00 00 14 */	b lbl_806CAA1C
lbl_806CAA0C:
/* 806CAA0C  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 806CAA10  7F C4 F3 78 */	mr r4, r30
/* 806CAA14  38 A0 01 80 */	li r5, 0x180
/* 806CAA18  4B BA 61 79 */	bl cLib_chaseAngleS__FPsss
lbl_806CAA1C:
/* 806CAA1C  39 61 00 90 */	addi r11, r1, 0x90
/* 806CAA20  4B C9 78 05 */	bl _restgpr_28
/* 806CAA24  80 01 00 94 */	lwz r0, 0x94(r1)
/* 806CAA28  7C 08 03 A6 */	mtlr r0
/* 806CAA2C  38 21 00 90 */	addi r1, r1, 0x90
/* 806CAA30  4E 80 00 20 */	blr 
