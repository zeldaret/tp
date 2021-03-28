lbl_80ADC3DC:
/* 80ADC3DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80ADC3E0  7C 08 02 A6 */	mflr r0
/* 80ADC3E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80ADC3E8  39 61 00 40 */	addi r11, r1, 0x40
/* 80ADC3EC  4B 88 5D F0 */	b _savegpr_29
/* 80ADC3F0  7C 7E 1B 78 */	mr r30, r3
/* 80ADC3F4  3C 80 80 AE */	lis r4, m__17daNpcShad_Param_c@ha
/* 80ADC3F8  3B E4 1F DC */	addi r31, r4, m__17daNpcShad_Param_c@l
/* 80ADC3FC  C0 1F 04 70 */	lfs f0, 0x470(r31)
/* 80ADC400  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80ADC404  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80ADC408  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80ADC40C  C0 1F 04 74 */	lfs f0, 0x474(r31)
/* 80ADC410  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80ADC414  A0 03 0E 1A */	lhz r0, 0xe1a(r3)
/* 80ADC418  2C 00 00 02 */	cmpwi r0, 2
/* 80ADC41C  41 82 00 70 */	beq lbl_80ADC48C
/* 80ADC420  40 80 02 C4 */	bge lbl_80ADC6E4
/* 80ADC424  2C 00 00 00 */	cmpwi r0, 0
/* 80ADC428  41 82 00 0C */	beq lbl_80ADC434
/* 80ADC42C  48 00 02 B8 */	b lbl_80ADC6E4
/* 80ADC430  48 00 02 B4 */	b lbl_80ADC6E4
lbl_80ADC434:
/* 80ADC434  38 80 00 0C */	li r4, 0xc
/* 80ADC438  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADC43C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80ADC440  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADC444  7D 89 03 A6 */	mtctr r12
/* 80ADC448  4E 80 04 21 */	bctrl 
/* 80ADC44C  7F C3 F3 78 */	mr r3, r30
/* 80ADC450  38 80 00 13 */	li r4, 0x13
/* 80ADC454  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADC458  38 A0 00 00 */	li r5, 0
/* 80ADC45C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80ADC460  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADC464  7D 89 03 A6 */	mtctr r12
/* 80ADC468  4E 80 04 21 */	bctrl 
/* 80ADC46C  38 00 00 00 */	li r0, 0
/* 80ADC470  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80ADC474  38 7F 00 00 */	addi r3, r31, 0
/* 80ADC478  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80ADC47C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80ADC480  38 00 00 02 */	li r0, 2
/* 80ADC484  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80ADC488  48 00 02 5C */	b lbl_80ADC6E4
lbl_80ADC48C:
/* 80ADC48C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80ADC490  38 81 00 0C */	addi r4, r1, 0xc
/* 80ADC494  4B 79 47 70 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80ADC498  7C 7D 1B 78 */	mr r29, r3
/* 80ADC49C  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 80ADC4A0  2C 00 00 00 */	cmpwi r0, 0
/* 80ADC4A4  40 82 00 D4 */	bne lbl_80ADC578
/* 80ADC4A8  C0 5F 04 44 */	lfs f2, 0x444(r31)
/* 80ADC4AC  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80ADC4B0  7C 00 E8 50 */	subf r0, r0, r29
/* 80ADC4B4  7C 00 07 34 */	extsh r0, r0
/* 80ADC4B8  C8 3F 04 50 */	lfd f1, 0x450(r31)
/* 80ADC4BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ADC4C0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ADC4C4  3C 00 43 30 */	lis r0, 0x4330
/* 80ADC4C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ADC4CC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80ADC4D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADC4D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ADC4D8  FC 00 02 10 */	fabs f0, f0
/* 80ADC4DC  FC 00 00 18 */	frsp f0, f0
/* 80ADC4E0  FC 00 00 1E */	fctiwz f0, f0
/* 80ADC4E4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80ADC4E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ADC4EC  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ADC4F0  40 81 00 40 */	ble lbl_80ADC530
/* 80ADC4F4  7F C3 F3 78 */	mr r3, r30
/* 80ADC4F8  38 80 00 0C */	li r4, 0xc
/* 80ADC4FC  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADC500  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80ADC504  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADC508  7D 89 03 A6 */	mtctr r12
/* 80ADC50C  4E 80 04 21 */	bctrl 
/* 80ADC510  7F C3 F3 78 */	mr r3, r30
/* 80ADC514  38 80 00 15 */	li r4, 0x15
/* 80ADC518  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADC51C  38 A0 00 00 */	li r5, 0
/* 80ADC520  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80ADC524  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADC528  7D 89 03 A6 */	mtctr r12
/* 80ADC52C  4E 80 04 21 */	bctrl 
lbl_80ADC530:
/* 80ADC530  B3 BE 09 96 */	sth r29, 0x996(r30)
/* 80ADC534  38 00 00 00 */	li r0, 0
/* 80ADC538  90 1E 09 68 */	stw r0, 0x968(r30)
/* 80ADC53C  A8 7E 08 F2 */	lha r3, 0x8f2(r30)
/* 80ADC540  A8 1E 09 96 */	lha r0, 0x996(r30)
/* 80ADC544  7C 03 00 00 */	cmpw r3, r0
/* 80ADC548  40 82 00 10 */	bne lbl_80ADC558
/* 80ADC54C  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80ADC550  38 03 00 01 */	addi r0, r3, 1
/* 80ADC554  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_80ADC558:
/* 80ADC558  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80ADC55C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80ADC560  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80ADC564  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80ADC568  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80ADC56C  38 03 00 01 */	addi r0, r3, 1
/* 80ADC570  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80ADC574  48 00 00 60 */	b lbl_80ADC5D4
lbl_80ADC578:
/* 80ADC578  2C 00 00 01 */	cmpwi r0, 1
/* 80ADC57C  40 82 00 58 */	bne lbl_80ADC5D4
/* 80ADC580  7F C3 F3 78 */	mr r3, r30
/* 80ADC584  A8 9E 09 96 */	lha r4, 0x996(r30)
/* 80ADC588  C0 3F 04 48 */	lfs f1, 0x448(r31)
/* 80ADC58C  38 A0 00 00 */	li r5, 0
/* 80ADC590  4B 67 79 64 */	b turn__8daNpcF_cFsfi
/* 80ADC594  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC598  41 82 00 2C */	beq lbl_80ADC5C4
/* 80ADC59C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80ADC5A0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80ADC5A4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80ADC5A8  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 80ADC5AC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80ADC5B0  B0 1E 08 F8 */	sth r0, 0x8f8(r30)
/* 80ADC5B4  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80ADC5B8  38 03 00 01 */	addi r0, r3, 1
/* 80ADC5BC  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80ADC5C0  48 00 00 14 */	b lbl_80ADC5D4
lbl_80ADC5C4:
/* 80ADC5C4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80ADC5C8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80ADC5CC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80ADC5D0  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
lbl_80ADC5D4:
/* 80ADC5D4  80 1E 05 FC */	lwz r0, 0x5fc(r30)
/* 80ADC5D8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80ADC5DC  40 82 01 00 */	bne lbl_80ADC6DC
/* 80ADC5E0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80ADC5E4  38 81 00 0C */	addi r4, r1, 0xc
/* 80ADC5E8  4B 86 AD B4 */	b PSVECSquareDistance
/* 80ADC5EC  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80ADC5F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ADC5F4  40 81 00 58 */	ble lbl_80ADC64C
/* 80ADC5F8  FC 00 08 34 */	frsqrte f0, f1
/* 80ADC5FC  C8 9F 04 78 */	lfd f4, 0x478(r31)
/* 80ADC600  FC 44 00 32 */	fmul f2, f4, f0
/* 80ADC604  C8 7F 04 80 */	lfd f3, 0x480(r31)
/* 80ADC608  FC 00 00 32 */	fmul f0, f0, f0
/* 80ADC60C  FC 01 00 32 */	fmul f0, f1, f0
/* 80ADC610  FC 03 00 28 */	fsub f0, f3, f0
/* 80ADC614  FC 02 00 32 */	fmul f0, f2, f0
/* 80ADC618  FC 44 00 32 */	fmul f2, f4, f0
/* 80ADC61C  FC 00 00 32 */	fmul f0, f0, f0
/* 80ADC620  FC 01 00 32 */	fmul f0, f1, f0
/* 80ADC624  FC 03 00 28 */	fsub f0, f3, f0
/* 80ADC628  FC 02 00 32 */	fmul f0, f2, f0
/* 80ADC62C  FC 44 00 32 */	fmul f2, f4, f0
/* 80ADC630  FC 00 00 32 */	fmul f0, f0, f0
/* 80ADC634  FC 01 00 32 */	fmul f0, f1, f0
/* 80ADC638  FC 03 00 28 */	fsub f0, f3, f0
/* 80ADC63C  FC 02 00 32 */	fmul f0, f2, f0
/* 80ADC640  FC 21 00 32 */	fmul f1, f1, f0
/* 80ADC644  FC 20 08 18 */	frsp f1, f1
/* 80ADC648  48 00 00 88 */	b lbl_80ADC6D0
lbl_80ADC64C:
/* 80ADC64C  C8 1F 04 88 */	lfd f0, 0x488(r31)
/* 80ADC650  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ADC654  40 80 00 10 */	bge lbl_80ADC664
/* 80ADC658  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80ADC65C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80ADC660  48 00 00 70 */	b lbl_80ADC6D0
lbl_80ADC664:
/* 80ADC664  D0 21 00 08 */	stfs f1, 8(r1)
/* 80ADC668  80 81 00 08 */	lwz r4, 8(r1)
/* 80ADC66C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80ADC670  3C 00 7F 80 */	lis r0, 0x7f80
/* 80ADC674  7C 03 00 00 */	cmpw r3, r0
/* 80ADC678  41 82 00 14 */	beq lbl_80ADC68C
/* 80ADC67C  40 80 00 40 */	bge lbl_80ADC6BC
/* 80ADC680  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC684  41 82 00 20 */	beq lbl_80ADC6A4
/* 80ADC688  48 00 00 34 */	b lbl_80ADC6BC
lbl_80ADC68C:
/* 80ADC68C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80ADC690  41 82 00 0C */	beq lbl_80ADC69C
/* 80ADC694  38 00 00 01 */	li r0, 1
/* 80ADC698  48 00 00 28 */	b lbl_80ADC6C0
lbl_80ADC69C:
/* 80ADC69C  38 00 00 02 */	li r0, 2
/* 80ADC6A0  48 00 00 20 */	b lbl_80ADC6C0
lbl_80ADC6A4:
/* 80ADC6A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80ADC6A8  41 82 00 0C */	beq lbl_80ADC6B4
/* 80ADC6AC  38 00 00 05 */	li r0, 5
/* 80ADC6B0  48 00 00 10 */	b lbl_80ADC6C0
lbl_80ADC6B4:
/* 80ADC6B4  38 00 00 03 */	li r0, 3
/* 80ADC6B8  48 00 00 08 */	b lbl_80ADC6C0
lbl_80ADC6BC:
/* 80ADC6BC  38 00 00 04 */	li r0, 4
lbl_80ADC6C0:
/* 80ADC6C0  2C 00 00 01 */	cmpwi r0, 1
/* 80ADC6C4  40 82 00 0C */	bne lbl_80ADC6D0
/* 80ADC6C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80ADC6CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80ADC6D0:
/* 80ADC6D0  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80ADC6D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ADC6D8  40 80 00 0C */	bge lbl_80ADC6E4
lbl_80ADC6DC:
/* 80ADC6DC  7F C3 F3 78 */	mr r3, r30
/* 80ADC6E0  4B 53 D5 9C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80ADC6E4:
/* 80ADC6E4  38 60 00 01 */	li r3, 1
/* 80ADC6E8  39 61 00 40 */	addi r11, r1, 0x40
/* 80ADC6EC  4B 88 5B 3C */	b _restgpr_29
/* 80ADC6F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80ADC6F4  7C 08 03 A6 */	mtlr r0
/* 80ADC6F8  38 21 00 40 */	addi r1, r1, 0x40
/* 80ADC6FC  4E 80 00 20 */	blr 
