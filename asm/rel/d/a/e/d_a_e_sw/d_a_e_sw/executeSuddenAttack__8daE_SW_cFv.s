lbl_807AB310:
/* 807AB310  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807AB314  7C 08 02 A6 */	mflr r0
/* 807AB318  90 01 00 44 */	stw r0, 0x44(r1)
/* 807AB31C  39 61 00 40 */	addi r11, r1, 0x40
/* 807AB320  4B BB 6E BD */	bl _savegpr_29
/* 807AB324  7C 7E 1B 78 */	mr r30, r3
/* 807AB328  3C 80 80 7B */	lis r4, lit_3909@ha /* 0x807AFD2C@ha */
/* 807AB32C  3B E4 FD 2C */	addi r31, r4, lit_3909@l /* 0x807AFD2C@l */
/* 807AB330  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807AB334  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807AB338  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 807AB33C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807AB340  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807AB344  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807AB348  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807AB34C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807AB350  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807AB354  4B FF C5 61 */	bl setSmokeEffect__8daE_SW_cFv
/* 807AB358  7F C3 F3 78 */	mr r3, r30
/* 807AB35C  4B FF C3 89 */	bl setBeforeJumpEffect__8daE_SW_cFv
/* 807AB360  7F C3 F3 78 */	mr r3, r30
/* 807AB364  4B FF C9 6D */	bl bomb_check__8daE_SW_cFv
/* 807AB368  2C 03 00 00 */	cmpwi r3, 0
/* 807AB36C  40 82 02 40 */	bne lbl_807AB5AC
/* 807AB370  C0 5E 04 B0 */	lfs f2, 0x4b0(r30)
/* 807AB374  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807AB378  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807AB37C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807AB380  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807AB384  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 807AB388  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807AB38C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807AB390  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807AB394  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807AB398  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807AB39C  38 61 00 0C */	addi r3, r1, 0xc
/* 807AB3A0  38 81 00 18 */	addi r4, r1, 0x18
/* 807AB3A4  4B B9 BF F9 */	bl PSVECSquareDistance
/* 807AB3A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AB3AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AB3B0  40 81 00 58 */	ble lbl_807AB408
/* 807AB3B4  FC 00 08 34 */	frsqrte f0, f1
/* 807AB3B8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807AB3BC  FC 44 00 32 */	fmul f2, f4, f0
/* 807AB3C0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807AB3C4  FC 00 00 32 */	fmul f0, f0, f0
/* 807AB3C8  FC 01 00 32 */	fmul f0, f1, f0
/* 807AB3CC  FC 03 00 28 */	fsub f0, f3, f0
/* 807AB3D0  FC 02 00 32 */	fmul f0, f2, f0
/* 807AB3D4  FC 44 00 32 */	fmul f2, f4, f0
/* 807AB3D8  FC 00 00 32 */	fmul f0, f0, f0
/* 807AB3DC  FC 01 00 32 */	fmul f0, f1, f0
/* 807AB3E0  FC 03 00 28 */	fsub f0, f3, f0
/* 807AB3E4  FC 02 00 32 */	fmul f0, f2, f0
/* 807AB3E8  FC 44 00 32 */	fmul f2, f4, f0
/* 807AB3EC  FC 00 00 32 */	fmul f0, f0, f0
/* 807AB3F0  FC 01 00 32 */	fmul f0, f1, f0
/* 807AB3F4  FC 03 00 28 */	fsub f0, f3, f0
/* 807AB3F8  FC 02 00 32 */	fmul f0, f2, f0
/* 807AB3FC  FC 21 00 32 */	fmul f1, f1, f0
/* 807AB400  FC 20 08 18 */	frsp f1, f1
/* 807AB404  48 00 00 88 */	b lbl_807AB48C
lbl_807AB408:
/* 807AB408  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807AB40C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AB410  40 80 00 10 */	bge lbl_807AB420
/* 807AB414  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807AB418  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807AB41C  48 00 00 70 */	b lbl_807AB48C
lbl_807AB420:
/* 807AB420  D0 21 00 08 */	stfs f1, 8(r1)
/* 807AB424  80 81 00 08 */	lwz r4, 8(r1)
/* 807AB428  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807AB42C  3C 00 7F 80 */	lis r0, 0x7f80
/* 807AB430  7C 03 00 00 */	cmpw r3, r0
/* 807AB434  41 82 00 14 */	beq lbl_807AB448
/* 807AB438  40 80 00 40 */	bge lbl_807AB478
/* 807AB43C  2C 03 00 00 */	cmpwi r3, 0
/* 807AB440  41 82 00 20 */	beq lbl_807AB460
/* 807AB444  48 00 00 34 */	b lbl_807AB478
lbl_807AB448:
/* 807AB448  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AB44C  41 82 00 0C */	beq lbl_807AB458
/* 807AB450  38 00 00 01 */	li r0, 1
/* 807AB454  48 00 00 28 */	b lbl_807AB47C
lbl_807AB458:
/* 807AB458  38 00 00 02 */	li r0, 2
/* 807AB45C  48 00 00 20 */	b lbl_807AB47C
lbl_807AB460:
/* 807AB460  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AB464  41 82 00 0C */	beq lbl_807AB470
/* 807AB468  38 00 00 05 */	li r0, 5
/* 807AB46C  48 00 00 10 */	b lbl_807AB47C
lbl_807AB470:
/* 807AB470  38 00 00 03 */	li r0, 3
/* 807AB474  48 00 00 08 */	b lbl_807AB47C
lbl_807AB478:
/* 807AB478  38 00 00 04 */	li r0, 4
lbl_807AB47C:
/* 807AB47C  2C 00 00 01 */	cmpwi r0, 1
/* 807AB480  40 82 00 0C */	bne lbl_807AB48C
/* 807AB484  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807AB488  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807AB48C:
/* 807AB48C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 807AB490  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AB494  40 81 00 18 */	ble lbl_807AB4AC
/* 807AB498  7F C3 F3 78 */	mr r3, r30
/* 807AB49C  38 80 00 06 */	li r4, 6
/* 807AB4A0  38 A0 00 00 */	li r5, 0
/* 807AB4A4  4B FF C6 C1 */	bl setActionMode__8daE_SW_cFss
/* 807AB4A8  48 00 01 04 */	b lbl_807AB5AC
lbl_807AB4AC:
/* 807AB4AC  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 807AB4B0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807AB4B4  7C 63 00 50 */	subf r3, r3, r0
/* 807AB4B8  4B BB 9C 19 */	bl abs
/* 807AB4BC  2C 03 40 00 */	cmpwi r3, 0x4000
/* 807AB4C0  41 80 00 1C */	blt lbl_807AB4DC
/* 807AB4C4  A8 7E 06 CC */	lha r3, 0x6cc(r30)
/* 807AB4C8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807AB4CC  7C 63 00 50 */	subf r3, r3, r0
/* 807AB4D0  4B BB 9C 01 */	bl abs
/* 807AB4D4  2C 03 30 00 */	cmpwi r3, 0x3000
/* 807AB4D8  40 81 00 18 */	ble lbl_807AB4F0
lbl_807AB4DC:
/* 807AB4DC  7F C3 F3 78 */	mr r3, r30
/* 807AB4E0  38 80 00 01 */	li r4, 1
/* 807AB4E4  38 A0 00 00 */	li r5, 0
/* 807AB4E8  4B FF C6 7D */	bl setActionMode__8daE_SW_cFss
/* 807AB4EC  48 00 00 C0 */	b lbl_807AB5AC
lbl_807AB4F0:
/* 807AB4F0  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 807AB4F4  2C 00 00 01 */	cmpwi r0, 1
/* 807AB4F8  41 82 00 38 */	beq lbl_807AB530
/* 807AB4FC  40 80 00 A8 */	bge lbl_807AB5A4
/* 807AB500  2C 00 00 00 */	cmpwi r0, 0
/* 807AB504  40 80 00 08 */	bge lbl_807AB50C
/* 807AB508  48 00 00 9C */	b lbl_807AB5A4
lbl_807AB50C:
/* 807AB50C  A8 1E 06 CC */	lha r0, 0x6cc(r30)
/* 807AB510  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807AB514  A8 7E 06 80 */	lha r3, 0x680(r30)
/* 807AB518  38 03 00 01 */	addi r0, r3, 1
/* 807AB51C  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807AB520  38 00 00 01 */	li r0, 1
/* 807AB524  3C 60 80 7B */	lis r3, struct_807B0200+0x0@ha /* 0x807B0200@ha */
/* 807AB528  98 03 02 00 */	stb r0, struct_807B0200+0x0@l(r3)  /* 0x807B0200@l */
/* 807AB52C  98 1E 06 E6 */	stb r0, 0x6e6(r30)
lbl_807AB530:
/* 807AB530  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807AB534  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 807AB538  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 807AB53C  4B AC 52 05 */	bl cLib_chaseF__FPfff
/* 807AB540  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807AB544  A8 9E 06 CC */	lha r4, 0x6cc(r30)
/* 807AB548  38 A0 00 08 */	li r5, 8
/* 807AB54C  38 C0 08 00 */	li r6, 0x800
/* 807AB550  4B AC 50 B9 */	bl cLib_addCalcAngleS2__FPssss
/* 807AB554  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807AB558  4B AB C4 35 */	bl cM_rndFX__Ff
/* 807AB55C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 807AB560  EC 20 08 2A */	fadds f1, f0, f1
/* 807AB564  C0 1E 06 C8 */	lfs f0, 0x6c8(r30)
/* 807AB568  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807AB56C  40 80 00 38 */	bge lbl_807AB5A4
/* 807AB570  7F C3 F3 78 */	mr r3, r30
/* 807AB574  38 80 00 03 */	li r4, 3
/* 807AB578  38 A0 00 00 */	li r5, 0
/* 807AB57C  4B FF C5 E9 */	bl setActionMode__8daE_SW_cFss
/* 807AB580  38 00 00 02 */	li r0, 2
/* 807AB584  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 807AB588  88 1E 06 E6 */	lbz r0, 0x6e6(r30)
/* 807AB58C  28 00 00 00 */	cmplwi r0, 0
/* 807AB590  41 82 00 14 */	beq lbl_807AB5A4
/* 807AB594  38 00 00 00 */	li r0, 0
/* 807AB598  3C 60 80 7B */	lis r3, struct_807B0200+0x0@ha /* 0x807B0200@ha */
/* 807AB59C  98 03 02 00 */	stb r0, struct_807B0200+0x0@l(r3)  /* 0x807B0200@l */
/* 807AB5A0  98 1E 06 E6 */	stb r0, 0x6e6(r30)
lbl_807AB5A4:
/* 807AB5A4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 807AB5A8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_807AB5AC:
/* 807AB5AC  39 61 00 40 */	addi r11, r1, 0x40
/* 807AB5B0  4B BB 6C 79 */	bl _restgpr_29
/* 807AB5B4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807AB5B8  7C 08 03 A6 */	mtlr r0
/* 807AB5BC  38 21 00 40 */	addi r1, r1, 0x40
/* 807AB5C0  4E 80 00 20 */	blr 
