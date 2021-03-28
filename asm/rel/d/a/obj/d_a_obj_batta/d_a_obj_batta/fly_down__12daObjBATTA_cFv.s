lbl_80BAB234:
/* 80BAB234  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80BAB238  7C 08 02 A6 */	mflr r0
/* 80BAB23C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BAB240  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80BAB244  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80BAB248  39 61 00 60 */	addi r11, r1, 0x60
/* 80BAB24C  4B 7B 6F 90 */	b _savegpr_29
/* 80BAB250  7C 7F 1B 78 */	mr r31, r3
/* 80BAB254  3C 60 80 BB */	lis r3, lit_3774@ha
/* 80BAB258  3B C3 C9 70 */	addi r30, r3, lit_3774@l
/* 80BAB25C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BAB260  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BAB264  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80BAB268  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80BAB26C  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 80BAB270  7D 89 03 A6 */	mtctr r12
/* 80BAB274  4E 80 04 21 */	bctrl 
/* 80BAB278  7C 7D 1B 78 */	mr r29, r3
/* 80BAB27C  80 1F 09 E8 */	lwz r0, 0x9e8(r31)
/* 80BAB280  2C 00 00 00 */	cmpwi r0, 0
/* 80BAB284  40 82 01 BC */	bne lbl_80BAB440
/* 80BAB288  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80BAB28C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80BAB290  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80BAB294  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 80BAB298  28 1D 00 00 */	cmplwi r29, 0
/* 80BAB29C  41 82 01 7C */	beq lbl_80BAB418
/* 80BAB2A0  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80BAB2A4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BAB2A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BAB2AC  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80BAB2B0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BAB2B4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80BAB2B8  C0 5D 00 08 */	lfs f2, 8(r29)
/* 80BAB2BC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80BAB2C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BAB2C4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BAB2C8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80BAB2CC  38 61 00 10 */	addi r3, r1, 0x10
/* 80BAB2D0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BAB2D4  4B 79 C0 C8 */	b PSVECSquareDistance
/* 80BAB2D8  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80BAB2DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAB2E0  40 81 00 58 */	ble lbl_80BAB338
/* 80BAB2E4  FC 00 08 34 */	frsqrte f0, f1
/* 80BAB2E8  C8 9E 00 38 */	lfd f4, 0x38(r30)
/* 80BAB2EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAB2F0  C8 7E 00 40 */	lfd f3, 0x40(r30)
/* 80BAB2F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAB2F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAB2FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAB300  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAB304  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAB308  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAB30C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAB310  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAB314  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAB318  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAB31C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAB320  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAB324  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAB328  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAB32C  FC 21 00 32 */	fmul f1, f1, f0
/* 80BAB330  FC 20 08 18 */	frsp f1, f1
/* 80BAB334  48 00 00 88 */	b lbl_80BAB3BC
lbl_80BAB338:
/* 80BAB338  C8 1E 00 48 */	lfd f0, 0x48(r30)
/* 80BAB33C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAB340  40 80 00 10 */	bge lbl_80BAB350
/* 80BAB344  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BAB348  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BAB34C  48 00 00 70 */	b lbl_80BAB3BC
lbl_80BAB350:
/* 80BAB350  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BAB354  80 81 00 08 */	lwz r4, 8(r1)
/* 80BAB358  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BAB35C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BAB360  7C 03 00 00 */	cmpw r3, r0
/* 80BAB364  41 82 00 14 */	beq lbl_80BAB378
/* 80BAB368  40 80 00 40 */	bge lbl_80BAB3A8
/* 80BAB36C  2C 03 00 00 */	cmpwi r3, 0
/* 80BAB370  41 82 00 20 */	beq lbl_80BAB390
/* 80BAB374  48 00 00 34 */	b lbl_80BAB3A8
lbl_80BAB378:
/* 80BAB378  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAB37C  41 82 00 0C */	beq lbl_80BAB388
/* 80BAB380  38 00 00 01 */	li r0, 1
/* 80BAB384  48 00 00 28 */	b lbl_80BAB3AC
lbl_80BAB388:
/* 80BAB388  38 00 00 02 */	li r0, 2
/* 80BAB38C  48 00 00 20 */	b lbl_80BAB3AC
lbl_80BAB390:
/* 80BAB390  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAB394  41 82 00 0C */	beq lbl_80BAB3A0
/* 80BAB398  38 00 00 05 */	li r0, 5
/* 80BAB39C  48 00 00 10 */	b lbl_80BAB3AC
lbl_80BAB3A0:
/* 80BAB3A0  38 00 00 03 */	li r0, 3
/* 80BAB3A4  48 00 00 08 */	b lbl_80BAB3AC
lbl_80BAB3A8:
/* 80BAB3A8  38 00 00 04 */	li r0, 4
lbl_80BAB3AC:
/* 80BAB3AC  2C 00 00 01 */	cmpwi r0, 1
/* 80BAB3B0  40 82 00 0C */	bne lbl_80BAB3BC
/* 80BAB3B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BAB3B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BAB3BC:
/* 80BAB3BC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80BAB3C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAB3C4  40 80 00 54 */	bge lbl_80BAB418
/* 80BAB3C8  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80BAB3CC  4B 6B C5 C0 */	b cM_rndFX__Ff
/* 80BAB3D0  FF E0 08 90 */	fmr f31, f1
/* 80BAB3D4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BAB3D8  7F A4 EB 78 */	mr r4, r29
/* 80BAB3DC  4B 6C 58 28 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80BAB3E0  7C 60 07 34 */	extsh r0, r3
/* 80BAB3E4  C8 3E 00 70 */	lfd f1, 0x70(r30)
/* 80BAB3E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BAB3EC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80BAB3F0  3C 00 43 30 */	lis r0, 0x4330
/* 80BAB3F4  90 01 00 38 */	stw r0, 0x38(r1)
/* 80BAB3F8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80BAB3FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BAB400  EC 00 F8 2A */	fadds f0, f0, f31
/* 80BAB404  FC 00 00 1E */	fctiwz f0, f0
/* 80BAB408  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80BAB40C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BAB410  B0 1F 09 EC */	sth r0, 0x9ec(r31)
/* 80BAB414  48 00 00 1C */	b lbl_80BAB430
lbl_80BAB418:
/* 80BAB418  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80BAB41C  4B 6B C5 70 */	b cM_rndFX__Ff
/* 80BAB420  FC 00 08 1E */	fctiwz f0, f1
/* 80BAB424  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80BAB428  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BAB42C  B0 1F 09 EC */	sth r0, 0x9ec(r31)
lbl_80BAB430:
/* 80BAB430  80 7F 09 E8 */	lwz r3, 0x9e8(r31)
/* 80BAB434  38 03 00 01 */	addi r0, r3, 1
/* 80BAB438  90 1F 09 E8 */	stw r0, 0x9e8(r31)
/* 80BAB43C  48 00 00 A4 */	b lbl_80BAB4E0
lbl_80BAB440:
/* 80BAB440  2C 00 FF FF */	cmpwi r0, -1
/* 80BAB444  41 82 00 9C */	beq lbl_80BAB4E0
/* 80BAB448  88 1F 05 6D */	lbz r0, 0x56d(r31)
/* 80BAB44C  28 00 00 00 */	cmplwi r0, 0
/* 80BAB450  41 82 00 0C */	beq lbl_80BAB45C
/* 80BAB454  7F E3 FB 78 */	mr r3, r31
/* 80BAB458  48 00 06 41 */	bl batta_setParticle__12daObjBATTA_cFv
lbl_80BAB45C:
/* 80BAB45C  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80BAB460  A8 9F 09 EC */	lha r4, 0x9ec(r31)
/* 80BAB464  38 A0 01 00 */	li r5, 0x100
/* 80BAB468  4B 6C 57 28 */	b cLib_chaseAngleS__FPsss
/* 80BAB46C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80BAB470  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80BAB474  C0 5E 00 A0 */	lfs f2, 0xa0(r30)
/* 80BAB478  4B 6C 52 C8 */	b cLib_chaseF__FPfff
/* 80BAB47C  80 1F 06 98 */	lwz r0, 0x698(r31)
/* 80BAB480  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80BAB484  41 82 00 30 */	beq lbl_80BAB4B4
/* 80BAB488  3C 60 80 BB */	lis r3, lit_4353@ha
/* 80BAB48C  38 83 CB 24 */	addi r4, r3, lit_4353@l
/* 80BAB490  80 64 00 00 */	lwz r3, 0(r4)
/* 80BAB494  80 04 00 04 */	lwz r0, 4(r4)
/* 80BAB498  90 61 00 28 */	stw r3, 0x28(r1)
/* 80BAB49C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BAB4A0  80 04 00 08 */	lwz r0, 8(r4)
/* 80BAB4A4  90 01 00 30 */	stw r0, 0x30(r1)
/* 80BAB4A8  7F E3 FB 78 */	mr r3, r31
/* 80BAB4AC  38 81 00 28 */	addi r4, r1, 0x28
/* 80BAB4B0  4B FF E9 AD */	bl setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v
lbl_80BAB4B4:
/* 80BAB4B4  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A4@ha */
/* 80BAB4B8  38 03 00 A4 */	addi r0, r3, 0x00A4 /* 0x000600A4@l */
/* 80BAB4BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BAB4C0  38 7F 05 90 */	addi r3, r31, 0x590
/* 80BAB4C4  38 81 00 0C */	addi r4, r1, 0xc
/* 80BAB4C8  38 A0 00 00 */	li r5, 0
/* 80BAB4CC  38 C0 FF FF */	li r6, -1
/* 80BAB4D0  81 9F 05 90 */	lwz r12, 0x590(r31)
/* 80BAB4D4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80BAB4D8  7D 89 03 A6 */	mtctr r12
/* 80BAB4DC  4E 80 04 21 */	bctrl 
lbl_80BAB4E0:
/* 80BAB4E0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80BAB4E4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80BAB4E8  39 61 00 60 */	addi r11, r1, 0x60
/* 80BAB4EC  4B 7B 6D 3C */	b _restgpr_29
/* 80BAB4F0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80BAB4F4  7C 08 03 A6 */	mtlr r0
/* 80BAB4F8  38 21 00 70 */	addi r1, r1, 0x70
/* 80BAB4FC  4E 80 00 20 */	blr 
