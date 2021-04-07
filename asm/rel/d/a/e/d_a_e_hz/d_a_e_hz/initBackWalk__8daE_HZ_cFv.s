lbl_806EC068:
/* 806EC068  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 806EC06C  7C 08 02 A6 */	mflr r0
/* 806EC070  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 806EC074  39 61 00 E0 */	addi r11, r1, 0xe0
/* 806EC078  4B C7 61 61 */	bl _savegpr_28
/* 806EC07C  7C 7F 1B 78 */	mr r31, r3
/* 806EC080  3C 80 80 6F */	lis r4, lit_3966@ha /* 0x806F0860@ha */
/* 806EC084  3B C4 08 60 */	addi r30, r4, lit_3966@l /* 0x806F0860@l */
/* 806EC088  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806EC08C  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 806EC090  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 806EC094  38 80 00 01 */	li r4, 1
/* 806EC098  4B FF F0 0D */	bl setTgSetBit__8daE_HZ_cFi
/* 806EC09C  80 1F 0D 24 */	lwz r0, 0xd24(r31)
/* 806EC0A0  60 00 00 01 */	ori r0, r0, 1
/* 806EC0A4  90 1F 0D 24 */	stw r0, 0xd24(r31)
/* 806EC0A8  3C 00 00 01 */	lis r0, 1
/* 806EC0AC  90 1F 0D 34 */	stw r0, 0xd34(r31)
/* 806EC0B0  38 61 00 30 */	addi r3, r1, 0x30
/* 806EC0B4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806EC0B8  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 806EC0BC  4B B7 AA 79 */	bl __mi__4cXyzCFRC3Vec
/* 806EC0C0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806EC0C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806EC0C8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806EC0CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806EC0D0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806EC0D4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806EC0D8  38 61 00 0C */	addi r3, r1, 0xc
/* 806EC0DC  4B C5 B0 5D */	bl PSVECSquareMag
/* 806EC0E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806EC0E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EC0E8  40 81 00 58 */	ble lbl_806EC140
/* 806EC0EC  FC 00 08 34 */	frsqrte f0, f1
/* 806EC0F0  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 806EC0F4  FC 44 00 32 */	fmul f2, f4, f0
/* 806EC0F8  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 806EC0FC  FC 00 00 32 */	fmul f0, f0, f0
/* 806EC100  FC 01 00 32 */	fmul f0, f1, f0
/* 806EC104  FC 03 00 28 */	fsub f0, f3, f0
/* 806EC108  FC 02 00 32 */	fmul f0, f2, f0
/* 806EC10C  FC 44 00 32 */	fmul f2, f4, f0
/* 806EC110  FC 00 00 32 */	fmul f0, f0, f0
/* 806EC114  FC 01 00 32 */	fmul f0, f1, f0
/* 806EC118  FC 03 00 28 */	fsub f0, f3, f0
/* 806EC11C  FC 02 00 32 */	fmul f0, f2, f0
/* 806EC120  FC 44 00 32 */	fmul f2, f4, f0
/* 806EC124  FC 00 00 32 */	fmul f0, f0, f0
/* 806EC128  FC 01 00 32 */	fmul f0, f1, f0
/* 806EC12C  FC 03 00 28 */	fsub f0, f3, f0
/* 806EC130  FC 02 00 32 */	fmul f0, f2, f0
/* 806EC134  FC 21 00 32 */	fmul f1, f1, f0
/* 806EC138  FC 20 08 18 */	frsp f1, f1
/* 806EC13C  48 00 00 88 */	b lbl_806EC1C4
lbl_806EC140:
/* 806EC140  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 806EC144  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EC148  40 80 00 10 */	bge lbl_806EC158
/* 806EC14C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806EC150  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806EC154  48 00 00 70 */	b lbl_806EC1C4
lbl_806EC158:
/* 806EC158  D0 21 00 08 */	stfs f1, 8(r1)
/* 806EC15C  80 81 00 08 */	lwz r4, 8(r1)
/* 806EC160  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806EC164  3C 00 7F 80 */	lis r0, 0x7f80
/* 806EC168  7C 03 00 00 */	cmpw r3, r0
/* 806EC16C  41 82 00 14 */	beq lbl_806EC180
/* 806EC170  40 80 00 40 */	bge lbl_806EC1B0
/* 806EC174  2C 03 00 00 */	cmpwi r3, 0
/* 806EC178  41 82 00 20 */	beq lbl_806EC198
/* 806EC17C  48 00 00 34 */	b lbl_806EC1B0
lbl_806EC180:
/* 806EC180  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806EC184  41 82 00 0C */	beq lbl_806EC190
/* 806EC188  38 00 00 01 */	li r0, 1
/* 806EC18C  48 00 00 28 */	b lbl_806EC1B4
lbl_806EC190:
/* 806EC190  38 00 00 02 */	li r0, 2
/* 806EC194  48 00 00 20 */	b lbl_806EC1B4
lbl_806EC198:
/* 806EC198  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806EC19C  41 82 00 0C */	beq lbl_806EC1A8
/* 806EC1A0  38 00 00 05 */	li r0, 5
/* 806EC1A4  48 00 00 10 */	b lbl_806EC1B4
lbl_806EC1A8:
/* 806EC1A8  38 00 00 03 */	li r0, 3
/* 806EC1AC  48 00 00 08 */	b lbl_806EC1B4
lbl_806EC1B0:
/* 806EC1B0  38 00 00 04 */	li r0, 4
lbl_806EC1B4:
/* 806EC1B4  2C 00 00 01 */	cmpwi r0, 1
/* 806EC1B8  40 82 00 0C */	bne lbl_806EC1C4
/* 806EC1BC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806EC1C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806EC1C4:
/* 806EC1C4  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 806EC1C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806EC1CC  40 80 00 28 */	bge lbl_806EC1F4
/* 806EC1D0  7F E3 FB 78 */	mr r3, r31
/* 806EC1D4  38 80 00 11 */	li r4, 0x11
/* 806EC1D8  38 A0 00 02 */	li r5, 2
/* 806EC1DC  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 806EC1E0  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 806EC1E4  4B FF E4 AD */	bl setBck__8daE_HZ_cFiUcff
/* 806EC1E8  38 00 00 03 */	li r0, 3
/* 806EC1EC  90 1F 06 C8 */	stw r0, 0x6c8(r31)
/* 806EC1F0  48 00 01 40 */	b lbl_806EC330
lbl_806EC1F4:
/* 806EC1F4  7F E3 FB 78 */	mr r3, r31
/* 806EC1F8  38 80 00 11 */	li r4, 0x11
/* 806EC1FC  38 A0 00 02 */	li r5, 2
/* 806EC200  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 806EC204  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 806EC208  4B FF E4 89 */	bl setBck__8daE_HZ_cFiUcff
/* 806EC20C  38 00 00 02 */	li r0, 2
/* 806EC210  90 1F 06 C8 */	stw r0, 0x6c8(r31)
/* 806EC214  38 7F 04 A8 */	addi r3, r31, 0x4a8
/* 806EC218  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806EC21C  4B B8 49 E9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806EC220  7C 7D 07 34 */	extsh r29, r3
/* 806EC224  38 1D 20 00 */	addi r0, r29, 0x2000
/* 806EC228  54 00 04 22 */	rlwinm r0, r0, 0, 0x10, 0x11
/* 806EC22C  7C 1C 07 34 */	extsh r28, r0
/* 806EC230  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806EC234  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806EC238  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806EC23C  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 806EC240  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 806EC244  38 7F 06 78 */	addi r3, r31, 0x678
/* 806EC248  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 806EC24C  7F 85 E3 78 */	mr r5, r28
/* 806EC250  38 C1 00 54 */	addi r6, r1, 0x54
/* 806EC254  4B B8 4B 6D */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806EC258  38 61 00 60 */	addi r3, r1, 0x60
/* 806EC25C  4B 98 BA 0D */	bl __ct__11dBgS_LinChkFv
/* 806EC260  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806EC264  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 806EC268  C0 1E 00 00 */	lfs f0, 0(r30)
/* 806EC26C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806EC270  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 806EC274  38 61 00 24 */	addi r3, r1, 0x24
/* 806EC278  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806EC27C  38 A1 00 54 */	addi r5, r1, 0x54
/* 806EC280  4B B7 A8 65 */	bl __pl__4cXyzCFRC3Vec
/* 806EC284  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806EC288  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806EC28C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806EC290  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806EC294  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806EC298  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806EC29C  38 61 00 18 */	addi r3, r1, 0x18
/* 806EC2A0  38 9F 06 78 */	addi r4, r31, 0x678
/* 806EC2A4  38 A1 00 54 */	addi r5, r1, 0x54
/* 806EC2A8  4B B7 A8 3D */	bl __pl__4cXyzCFRC3Vec
/* 806EC2AC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806EC2B0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806EC2B4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806EC2B8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806EC2BC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806EC2C0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806EC2C4  38 61 00 60 */	addi r3, r1, 0x60
/* 806EC2C8  38 81 00 48 */	addi r4, r1, 0x48
/* 806EC2CC  38 A1 00 3C */	addi r5, r1, 0x3c
/* 806EC2D0  38 C0 00 00 */	li r6, 0
/* 806EC2D4  4B 98 BA 91 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806EC2D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EC2DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EC2E0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806EC2E4  38 81 00 60 */	addi r4, r1, 0x60
/* 806EC2E8  4B 98 80 CD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806EC2EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806EC2F0  41 82 00 34 */	beq lbl_806EC324
/* 806EC2F4  38 7F 06 78 */	addi r3, r31, 0x678
/* 806EC2F8  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 806EC2FC  57 80 04 63 */	rlwinm. r0, r28, 0, 0x11, 0x11
/* 806EC300  57 A5 04 20 */	rlwinm r5, r29, 0, 0x10, 0x10
/* 806EC304  38 05 40 00 */	addi r0, r5, 0x4000
/* 806EC308  7C 05 07 34 */	extsh r5, r0
/* 806EC30C  41 82 00 10 */	beq lbl_806EC31C
/* 806EC310  38 1D 40 00 */	addi r0, r29, 0x4000
/* 806EC314  54 00 04 20 */	rlwinm r0, r0, 0, 0x10, 0x10
/* 806EC318  7C 05 07 34 */	extsh r5, r0
lbl_806EC31C:
/* 806EC31C  38 C1 00 54 */	addi r6, r1, 0x54
/* 806EC320  4B B8 4A A1 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
lbl_806EC324:
/* 806EC324  38 61 00 60 */	addi r3, r1, 0x60
/* 806EC328  38 80 FF FF */	li r4, -1
/* 806EC32C  4B 98 B9 B1 */	bl __dt__11dBgS_LinChkFv
lbl_806EC330:
/* 806EC330  39 61 00 E0 */	addi r11, r1, 0xe0
/* 806EC334  4B C7 5E F1 */	bl _restgpr_28
/* 806EC338  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 806EC33C  7C 08 03 A6 */	mtlr r0
/* 806EC340  38 21 00 E0 */	addi r1, r1, 0xe0
/* 806EC344  4E 80 00 20 */	blr 
