lbl_807AD17C:
/* 807AD17C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807AD180  7C 08 02 A6 */	mflr r0
/* 807AD184  90 01 00 64 */	stw r0, 0x64(r1)
/* 807AD188  39 61 00 60 */	addi r11, r1, 0x60
/* 807AD18C  4B BB 50 51 */	bl _savegpr_29
/* 807AD190  7C 7D 1B 78 */	mr r29, r3
/* 807AD194  3C 60 80 7B */	lis r3, lit_3909@ha /* 0x807AFD2C@ha */
/* 807AD198  3B E3 FD 2C */	addi r31, r3, lit_3909@l /* 0x807AFD2C@l */
/* 807AD19C  A8 1D 06 80 */	lha r0, 0x680(r29)
/* 807AD1A0  2C 00 FF FF */	cmpwi r0, -1
/* 807AD1A4  41 82 02 EC */	beq lbl_807AD490
/* 807AD1A8  38 00 00 00 */	li r0, 0
/* 807AD1AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 807AD1B0  80 7D 06 88 */	lwz r3, 0x688(r29)
/* 807AD1B4  38 81 00 0C */	addi r4, r1, 0xc
/* 807AD1B8  4B 86 C8 05 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 807AD1BC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 807AD1C0  28 03 00 00 */	cmplwi r3, 0
/* 807AD1C4  41 82 00 10 */	beq lbl_807AD1D4
/* 807AD1C8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 807AD1CC  28 00 00 00 */	cmplwi r0, 0
/* 807AD1D0  40 82 00 34 */	bne lbl_807AD204
lbl_807AD1D4:
/* 807AD1D4  3C 60 80 7B */	lis r3, lit_6411@ha /* 0x807B0060@ha */
/* 807AD1D8  38 83 00 60 */	addi r4, r3, lit_6411@l /* 0x807B0060@l */
/* 807AD1DC  80 64 00 00 */	lwz r3, 0(r4)
/* 807AD1E0  80 04 00 04 */	lwz r0, 4(r4)
/* 807AD1E4  90 61 00 34 */	stw r3, 0x34(r1)
/* 807AD1E8  90 01 00 38 */	stw r0, 0x38(r1)
/* 807AD1EC  80 04 00 08 */	lwz r0, 8(r4)
/* 807AD1F0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 807AD1F4  7F A3 EB 78 */	mr r3, r29
/* 807AD1F8  38 81 00 34 */	addi r4, r1, 0x34
/* 807AD1FC  4B FF F8 45 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807AD200  48 00 02 90 */	b lbl_807AD490
lbl_807AD204:
/* 807AD204  A8 1D 06 80 */	lha r0, 0x680(r29)
/* 807AD208  2C 00 00 02 */	cmpwi r0, 2
/* 807AD20C  41 82 01 B4 */	beq lbl_807AD3C0
/* 807AD210  40 80 00 14 */	bge lbl_807AD224
/* 807AD214  2C 00 00 00 */	cmpwi r0, 0
/* 807AD218  41 82 00 18 */	beq lbl_807AD230
/* 807AD21C  40 80 00 3C */	bge lbl_807AD258
/* 807AD220  48 00 02 70 */	b lbl_807AD490
lbl_807AD224:
/* 807AD224  2C 00 00 04 */	cmpwi r0, 4
/* 807AD228  40 80 02 68 */	bge lbl_807AD490
/* 807AD22C  48 00 01 B8 */	b lbl_807AD3E4
lbl_807AD230:
/* 807AD230  7F A3 EB 78 */	mr r3, r29
/* 807AD234  38 80 00 0C */	li r4, 0xc
/* 807AD238  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807AD23C  38 A0 00 02 */	li r5, 2
/* 807AD240  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AD244  4B FF A2 1D */	bl bckSet__8daE_SW_cFifUcf
/* 807AD248  A8 7D 06 80 */	lha r3, 0x680(r29)
/* 807AD24C  38 03 00 01 */	addi r0, r3, 1
/* 807AD250  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807AD254  48 00 02 3C */	b lbl_807AD490
lbl_807AD258:
/* 807AD258  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 807AD25C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 807AD260  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AD264  40 80 01 D8 */	bge lbl_807AD43C
/* 807AD268  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807AD26C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807AD270  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807AD274  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807AD278  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807AD27C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 807AD280  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 807AD284  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807AD288  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807AD28C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807AD290  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 807AD294  38 61 00 10 */	addi r3, r1, 0x10
/* 807AD298  38 81 00 1C */	addi r4, r1, 0x1c
/* 807AD29C  4B B9 A1 01 */	bl PSVECSquareDistance
/* 807AD2A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AD2A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AD2A8  40 81 00 58 */	ble lbl_807AD300
/* 807AD2AC  FC 00 08 34 */	frsqrte f0, f1
/* 807AD2B0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807AD2B4  FC 44 00 32 */	fmul f2, f4, f0
/* 807AD2B8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807AD2BC  FC 00 00 32 */	fmul f0, f0, f0
/* 807AD2C0  FC 01 00 32 */	fmul f0, f1, f0
/* 807AD2C4  FC 03 00 28 */	fsub f0, f3, f0
/* 807AD2C8  FC 02 00 32 */	fmul f0, f2, f0
/* 807AD2CC  FC 44 00 32 */	fmul f2, f4, f0
/* 807AD2D0  FC 00 00 32 */	fmul f0, f0, f0
/* 807AD2D4  FC 01 00 32 */	fmul f0, f1, f0
/* 807AD2D8  FC 03 00 28 */	fsub f0, f3, f0
/* 807AD2DC  FC 02 00 32 */	fmul f0, f2, f0
/* 807AD2E0  FC 44 00 32 */	fmul f2, f4, f0
/* 807AD2E4  FC 00 00 32 */	fmul f0, f0, f0
/* 807AD2E8  FC 01 00 32 */	fmul f0, f1, f0
/* 807AD2EC  FC 03 00 28 */	fsub f0, f3, f0
/* 807AD2F0  FC 02 00 32 */	fmul f0, f2, f0
/* 807AD2F4  FC 21 00 32 */	fmul f1, f1, f0
/* 807AD2F8  FC 20 08 18 */	frsp f1, f1
/* 807AD2FC  48 00 00 88 */	b lbl_807AD384
lbl_807AD300:
/* 807AD300  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807AD304  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AD308  40 80 00 10 */	bge lbl_807AD318
/* 807AD30C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807AD310  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807AD314  48 00 00 70 */	b lbl_807AD384
lbl_807AD318:
/* 807AD318  D0 21 00 08 */	stfs f1, 8(r1)
/* 807AD31C  80 81 00 08 */	lwz r4, 8(r1)
/* 807AD320  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807AD324  3C 00 7F 80 */	lis r0, 0x7f80
/* 807AD328  7C 03 00 00 */	cmpw r3, r0
/* 807AD32C  41 82 00 14 */	beq lbl_807AD340
/* 807AD330  40 80 00 40 */	bge lbl_807AD370
/* 807AD334  2C 03 00 00 */	cmpwi r3, 0
/* 807AD338  41 82 00 20 */	beq lbl_807AD358
/* 807AD33C  48 00 00 34 */	b lbl_807AD370
lbl_807AD340:
/* 807AD340  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AD344  41 82 00 0C */	beq lbl_807AD350
/* 807AD348  38 00 00 01 */	li r0, 1
/* 807AD34C  48 00 00 28 */	b lbl_807AD374
lbl_807AD350:
/* 807AD350  38 00 00 02 */	li r0, 2
/* 807AD354  48 00 00 20 */	b lbl_807AD374
lbl_807AD358:
/* 807AD358  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807AD35C  41 82 00 0C */	beq lbl_807AD368
/* 807AD360  38 00 00 05 */	li r0, 5
/* 807AD364  48 00 00 10 */	b lbl_807AD374
lbl_807AD368:
/* 807AD368  38 00 00 03 */	li r0, 3
/* 807AD36C  48 00 00 08 */	b lbl_807AD374
lbl_807AD370:
/* 807AD370  38 00 00 04 */	li r0, 4
lbl_807AD374:
/* 807AD374  2C 00 00 01 */	cmpwi r0, 1
/* 807AD378  40 82 00 0C */	bne lbl_807AD384
/* 807AD37C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807AD380  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807AD384:
/* 807AD384  3C 60 80 7B */	lis r3, l_HIO@ha /* 0x807B0210@ha */
/* 807AD388  38 63 02 10 */	addi r3, r3, l_HIO@l /* 0x807B0210@l */
/* 807AD38C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 807AD390  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AD394  40 80 00 A8 */	bge lbl_807AD43C
/* 807AD398  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 807AD39C  4B AB A5 B9 */	bl cM_rndF__Ff
/* 807AD3A0  FC 00 08 1E */	fctiwz f0, f1
/* 807AD3A4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 807AD3A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807AD3AC  B0 1D 06 EA */	sth r0, 0x6ea(r29)
/* 807AD3B0  A8 7D 06 80 */	lha r3, 0x680(r29)
/* 807AD3B4  38 03 00 01 */	addi r0, r3, 1
/* 807AD3B8  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807AD3BC  48 00 00 80 */	b lbl_807AD43C
lbl_807AD3C0:
/* 807AD3C0  A8 1D 06 EA */	lha r0, 0x6ea(r29)
/* 807AD3C4  2C 00 00 00 */	cmpwi r0, 0
/* 807AD3C8  40 82 00 74 */	bne lbl_807AD43C
/* 807AD3CC  38 00 00 0A */	li r0, 0xa
/* 807AD3D0  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 807AD3D4  A8 7D 06 80 */	lha r3, 0x680(r29)
/* 807AD3D8  38 03 00 01 */	addi r0, r3, 1
/* 807AD3DC  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807AD3E0  48 00 00 5C */	b lbl_807AD43C
lbl_807AD3E4:
/* 807AD3E4  A8 1D 06 F0 */	lha r0, 0x6f0(r29)
/* 807AD3E8  2C 00 00 00 */	cmpwi r0, 0
/* 807AD3EC  40 82 00 50 */	bne lbl_807AD43C
/* 807AD3F0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807AD3F4  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 807AD3F8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 807AD3FC  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 807AD400  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807AD404  D0 1D 06 B0 */	stfs f0, 0x6b0(r29)
/* 807AD408  3C 60 80 7B */	lis r3, lit_6426@ha /* 0x807B006C@ha */
/* 807AD40C  38 83 00 6C */	addi r4, r3, lit_6426@l /* 0x807B006C@l */
/* 807AD410  80 64 00 00 */	lwz r3, 0(r4)
/* 807AD414  80 04 00 04 */	lwz r0, 4(r4)
/* 807AD418  90 61 00 28 */	stw r3, 0x28(r1)
/* 807AD41C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807AD420  80 04 00 08 */	lwz r0, 8(r4)
/* 807AD424  90 01 00 30 */	stw r0, 0x30(r1)
/* 807AD428  7F A3 EB 78 */	mr r3, r29
/* 807AD42C  38 81 00 28 */	addi r4, r1, 0x28
/* 807AD430  4B FF F6 11 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807AD434  48 00 00 5C */	b lbl_807AD490
/* 807AD438  48 00 00 58 */	b lbl_807AD490
lbl_807AD43C:
/* 807AD43C  7F A3 EB 78 */	mr r3, r29
/* 807AD440  4B FF A4 75 */	bl setSmokeEffect__8daE_SW_cFv
/* 807AD444  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807AD448  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807AD44C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AD450  C0 7F 00 B0 */	lfs f3, 0xb0(r31)
/* 807AD454  4B AC 25 E9 */	bl cLib_addCalc2__FPffff
/* 807AD458  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807AD45C  28 04 00 00 */	cmplwi r4, 0
/* 807AD460  41 82 00 14 */	beq lbl_807AD474
/* 807AD464  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807AD468  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 807AD46C  4B AC 37 99 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807AD470  7C 7E 1B 78 */	mr r30, r3
lbl_807AD474:
/* 807AD474  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807AD478  7F C4 F3 78 */	mr r4, r30
/* 807AD47C  38 A0 00 08 */	li r5, 8
/* 807AD480  38 C0 04 00 */	li r6, 0x400
/* 807AD484  4B AC 31 85 */	bl cLib_addCalcAngleS2__FPssss
/* 807AD488  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807AD48C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_807AD490:
/* 807AD490  39 61 00 60 */	addi r11, r1, 0x60
/* 807AD494  4B BB 4D 95 */	bl _restgpr_29
/* 807AD498  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807AD49C  7C 08 03 A6 */	mtlr r0
/* 807AD4A0  38 21 00 60 */	addi r1, r1, 0x60
/* 807AD4A4  4E 80 00 20 */	blr 
