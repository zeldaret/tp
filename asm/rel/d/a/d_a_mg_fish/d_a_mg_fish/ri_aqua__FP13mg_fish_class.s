lbl_80531CD4:
/* 80531CD4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80531CD8  7C 08 02 A6 */	mflr r0
/* 80531CDC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80531CE0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80531CE4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80531CE8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80531CEC  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80531CF0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80531CF4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80531CF8  7C 7E 1B 78 */	mr r30, r3
/* 80531CFC  3C 60 80 53 */	lis r3, lit_3679@ha
/* 80531D00  3B E3 61 68 */	addi r31, r3, lit_3679@l
/* 80531D04  C3 FF 00 18 */	lfs f31, 0x18(r31)
/* 80531D08  C3 DF 00 94 */	lfs f30, 0x94(r31)
/* 80531D0C  A8 1E 05 B8 */	lha r0, 0x5b8(r30)
/* 80531D10  2C 00 00 03 */	cmpwi r0, 3
/* 80531D14  41 82 02 44 */	beq lbl_80531F58
/* 80531D18  40 80 00 1C */	bge lbl_80531D34
/* 80531D1C  2C 00 00 01 */	cmpwi r0, 1
/* 80531D20  41 82 00 F0 */	beq lbl_80531E10
/* 80531D24  40 80 01 A0 */	bge lbl_80531EC4
/* 80531D28  2C 00 00 00 */	cmpwi r0, 0
/* 80531D2C  40 80 00 18 */	bge lbl_80531D44
/* 80531D30  48 00 04 E4 */	b lbl_80532214
lbl_80531D34:
/* 80531D34  2C 00 00 05 */	cmpwi r0, 5
/* 80531D38  41 82 04 AC */	beq lbl_805321E4
/* 80531D3C  40 80 04 D8 */	bge lbl_80532214
/* 80531D40  48 00 03 F4 */	b lbl_80532134
lbl_80531D44:
/* 80531D44  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80531D48  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80531D4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80531D50  40 80 00 1C */	bge lbl_80531D6C
/* 80531D54  C0 3F 01 B4 */	lfs f1, 0x1b4(r31)
/* 80531D58  4B D3 5B FC */	b cM_rndF__Ff
/* 80531D5C  C0 1F 01 B0 */	lfs f0, 0x1b0(r31)
/* 80531D60  EC 00 08 2A */	fadds f0, f0, f1
/* 80531D64  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 80531D68  48 00 00 20 */	b lbl_80531D88
lbl_80531D6C:
/* 80531D6C  C0 3F 01 B4 */	lfs f1, 0x1b4(r31)
/* 80531D70  4B D3 5B E4 */	b cM_rndF__Ff
/* 80531D74  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80531D78  EC 20 08 2A */	fadds f1, f0, f1
/* 80531D7C  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80531D80  EC 00 08 28 */	fsubs f0, f0, f1
/* 80531D84  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
lbl_80531D88:
/* 80531D88  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80531D8C  4B D3 5C 00 */	b cM_rndFX__Ff
/* 80531D90  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 80531D94  EC 00 08 2A */	fadds f0, f0, f1
/* 80531D98  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 80531D9C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80531DA0  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 80531DA4  EC 40 08 28 */	fsubs f2, f0, f1
/* 80531DA8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80531DAC  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80531DB0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80531DB4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80531DB8  FC 00 12 10 */	fabs f0, f2
/* 80531DBC  FC 40 00 18 */	frsp f2, f0
/* 80531DC0  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80531DC4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80531DC8  41 80 00 18 */	blt lbl_80531DE0
/* 80531DCC  FC 00 0A 10 */	fabs f0, f1
/* 80531DD0  FC 20 00 18 */	frsp f1, f0
/* 80531DD4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80531DD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80531DDC  40 80 00 18 */	bge lbl_80531DF4
lbl_80531DE0:
/* 80531DE0  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 80531DE4  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 80531DE8  EC 01 00 2A */	fadds f0, f1, f0
/* 80531DEC  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 80531DF0  48 00 00 0C */	b lbl_80531DFC
lbl_80531DF4:
/* 80531DF4  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 80531DF8  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
lbl_80531DFC:
/* 80531DFC  A8 7E 05 B8 */	lha r3, 0x5b8(r30)
/* 80531E00  38 03 00 01 */	addi r0, r3, 1
/* 80531E04  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 80531E08  38 00 00 00 */	li r0, 0
/* 80531E0C  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
lbl_80531E10:
/* 80531E10  C3 FF 00 A8 */	lfs f31, 0xa8(r31)
/* 80531E14  C3 DF 00 94 */	lfs f30, 0x94(r31)
/* 80531E18  38 61 00 18 */	addi r3, r1, 0x18
/* 80531E1C  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 80531E20  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80531E24  4B D3 4D 10 */	b __mi__4cXyzCFRC3Vec
/* 80531E28  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80531E2C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80531E30  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80531E34  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80531E38  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80531E3C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80531E40  4B D3 58 34 */	b cM_atan2s__Fff
/* 80531E44  B0 7E 05 CC */	sth r3, 0x5cc(r30)
/* 80531E48  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80531E4C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80531E50  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80531E54  EC 00 00 32 */	fmuls f0, f0, f0
/* 80531E58  EC 41 00 2A */	fadds f2, f1, f0
/* 80531E5C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80531E60  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80531E64  40 81 00 0C */	ble lbl_80531E70
/* 80531E68  FC 00 10 34 */	frsqrte f0, f2
/* 80531E6C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80531E70:
/* 80531E70  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80531E74  4B D3 58 00 */	b cM_atan2s__Fff
/* 80531E78  7C 03 00 D0 */	neg r0, r3
/* 80531E7C  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 80531E80  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80531E84  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 80531E88  C0 1E 05 C4 */	lfs f0, 0x5c4(r30)
/* 80531E8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80531E90  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80531E94  40 80 03 80 */	bge lbl_80532214
/* 80531E98  38 00 00 02 */	li r0, 2
/* 80531E9C  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 80531EA0  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80531EA4  4B D3 5A B0 */	b cM_rndF__Ff
/* 80531EA8  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80531EAC  EC 00 08 2A */	fadds f0, f0, f1
/* 80531EB0  FC 00 00 1E */	fctiwz f0, f0
/* 80531EB4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80531EB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80531EBC  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 80531EC0  48 00 03 54 */	b lbl_80532214
lbl_80531EC4:
/* 80531EC4  38 7E 05 CE */	addi r3, r30, 0x5ce
/* 80531EC8  38 80 00 00 */	li r4, 0
/* 80531ECC  38 A0 00 20 */	li r5, 0x20
/* 80531ED0  38 C0 00 50 */	li r6, 0x50
/* 80531ED4  4B D3 E7 34 */	b cLib_addCalcAngleS2__FPssss
/* 80531ED8  A8 1E 06 24 */	lha r0, 0x624(r30)
/* 80531EDC  2C 00 00 00 */	cmpwi r0, 0
/* 80531EE0  40 82 03 34 */	bne lbl_80532214
/* 80531EE4  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80531EE8  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80531EEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80531EF0  40 80 00 1C */	bge lbl_80531F0C
/* 80531EF4  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80531EF8  4B D3 5A 5C */	b cM_rndF__Ff
/* 80531EFC  C0 1F 01 B0 */	lfs f0, 0x1b0(r31)
/* 80531F00  EC 00 08 2A */	fadds f0, f0, f1
/* 80531F04  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 80531F08  48 00 00 20 */	b lbl_80531F28
lbl_80531F0C:
/* 80531F0C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80531F10  4B D3 5A 44 */	b cM_rndF__Ff
/* 80531F14  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80531F18  EC 20 08 2A */	fadds f1, f0, f1
/* 80531F1C  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80531F20  EC 00 08 28 */	fsubs f0, f0, f1
/* 80531F24  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
lbl_80531F28:
/* 80531F28  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80531F2C  4B D3 5A 60 */	b cM_rndFX__Ff
/* 80531F30  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 80531F34  EC 00 08 2A */	fadds f0, f0, f1
/* 80531F38  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 80531F3C  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 80531F40  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 80531F44  38 00 00 03 */	li r0, 3
/* 80531F48  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 80531F4C  38 00 00 00 */	li r0, 0
/* 80531F50  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 80531F54  48 00 02 C0 */	b lbl_80532214
lbl_80531F58:
/* 80531F58  C3 FF 00 A8 */	lfs f31, 0xa8(r31)
/* 80531F5C  38 61 00 0C */	addi r3, r1, 0xc
/* 80531F60  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 80531F64  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80531F68  4B D3 4B CC */	b __mi__4cXyzCFRC3Vec
/* 80531F6C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80531F70  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80531F74  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80531F78  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80531F7C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80531F80  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80531F84  4B D3 56 F0 */	b cM_atan2s__Fff
/* 80531F88  B0 7E 05 CC */	sth r3, 0x5cc(r30)
/* 80531F8C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80531F90  EC 20 00 32 */	fmuls f1, f0, f0
/* 80531F94  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80531F98  EC 00 00 32 */	fmuls f0, f0, f0
/* 80531F9C  EC 41 00 2A */	fadds f2, f1, f0
/* 80531FA0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80531FA4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80531FA8  40 81 00 0C */	ble lbl_80531FB4
/* 80531FAC  FC 00 10 34 */	frsqrte f0, f2
/* 80531FB0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80531FB4:
/* 80531FB4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80531FB8  4B D3 56 BC */	b cM_atan2s__Fff
/* 80531FBC  7C 03 00 D0 */	neg r0, r3
/* 80531FC0  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 80531FC4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80531FC8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80531FCC  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80531FD0  C0 5E 05 D8 */	lfs f2, 0x5d8(r30)
/* 80531FD4  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80531FD8  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 80531FDC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80531FE0  EC 02 00 2A */	fadds f0, f2, f0
/* 80531FE4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80531FE8  4C 41 13 82 */	cror 2, 1, 2
/* 80531FEC  40 82 02 28 */	bne lbl_80532214
/* 80531FF0  38 61 00 24 */	addi r3, r1, 0x24
/* 80531FF4  4B E1 51 44 */	b PSVECSquareMag
/* 80531FF8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80531FFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80532000  40 81 00 58 */	ble lbl_80532058
/* 80532004  FC 00 08 34 */	frsqrte f0, f1
/* 80532008  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 8053200C  FC 44 00 32 */	fmul f2, f4, f0
/* 80532010  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80532014  FC 00 00 32 */	fmul f0, f0, f0
/* 80532018  FC 01 00 32 */	fmul f0, f1, f0
/* 8053201C  FC 03 00 28 */	fsub f0, f3, f0
/* 80532020  FC 02 00 32 */	fmul f0, f2, f0
/* 80532024  FC 44 00 32 */	fmul f2, f4, f0
/* 80532028  FC 00 00 32 */	fmul f0, f0, f0
/* 8053202C  FC 01 00 32 */	fmul f0, f1, f0
/* 80532030  FC 03 00 28 */	fsub f0, f3, f0
/* 80532034  FC 02 00 32 */	fmul f0, f2, f0
/* 80532038  FC 44 00 32 */	fmul f2, f4, f0
/* 8053203C  FC 00 00 32 */	fmul f0, f0, f0
/* 80532040  FC 01 00 32 */	fmul f0, f1, f0
/* 80532044  FC 03 00 28 */	fsub f0, f3, f0
/* 80532048  FC 02 00 32 */	fmul f0, f2, f0
/* 8053204C  FC 21 00 32 */	fmul f1, f1, f0
/* 80532050  FC 20 08 18 */	frsp f1, f1
/* 80532054  48 00 00 88 */	b lbl_805320DC
lbl_80532058:
/* 80532058  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 8053205C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80532060  40 80 00 10 */	bge lbl_80532070
/* 80532064  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80532068  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8053206C  48 00 00 70 */	b lbl_805320DC
lbl_80532070:
/* 80532070  D0 21 00 08 */	stfs f1, 8(r1)
/* 80532074  80 81 00 08 */	lwz r4, 8(r1)
/* 80532078  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8053207C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80532080  7C 03 00 00 */	cmpw r3, r0
/* 80532084  41 82 00 14 */	beq lbl_80532098
/* 80532088  40 80 00 40 */	bge lbl_805320C8
/* 8053208C  2C 03 00 00 */	cmpwi r3, 0
/* 80532090  41 82 00 20 */	beq lbl_805320B0
/* 80532094  48 00 00 34 */	b lbl_805320C8
lbl_80532098:
/* 80532098  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8053209C  41 82 00 0C */	beq lbl_805320A8
/* 805320A0  38 00 00 01 */	li r0, 1
/* 805320A4  48 00 00 28 */	b lbl_805320CC
lbl_805320A8:
/* 805320A8  38 00 00 02 */	li r0, 2
/* 805320AC  48 00 00 20 */	b lbl_805320CC
lbl_805320B0:
/* 805320B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805320B4  41 82 00 0C */	beq lbl_805320C0
/* 805320B8  38 00 00 05 */	li r0, 5
/* 805320BC  48 00 00 10 */	b lbl_805320CC
lbl_805320C0:
/* 805320C0  38 00 00 03 */	li r0, 3
/* 805320C4  48 00 00 08 */	b lbl_805320CC
lbl_805320C8:
/* 805320C8  38 00 00 04 */	li r0, 4
lbl_805320CC:
/* 805320CC  2C 00 00 01 */	cmpwi r0, 1
/* 805320D0  40 82 00 0C */	bne lbl_805320DC
/* 805320D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805320D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805320DC:
/* 805320DC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805320E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805320E4  40 80 01 30 */	bge lbl_80532214
/* 805320E8  38 00 00 04 */	li r0, 4
/* 805320EC  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 805320F0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 805320F4  4B D3 58 60 */	b cM_rndF__Ff
/* 805320F8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 805320FC  EC 00 08 2A */	fadds f0, f0, f1
/* 80532100  FC 00 00 1E */	fctiwz f0, f0
/* 80532104  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80532108  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8053210C  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 80532110  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80532114  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 80532118  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 8053211C  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 80532120  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80532124  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80532128  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 8053212C  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 80532130  FF E0 08 90 */	fmr f31, f1
lbl_80532134:
/* 80532134  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 80532138  FC 00 02 10 */	fabs f0, f0
/* 8053213C  FC 60 00 18 */	frsp f3, f0
/* 80532140  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80532144  C0 3E 05 C0 */	lfs f1, 0x5c0(r30)
/* 80532148  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 8053214C  4B D3 D8 F0 */	b cLib_addCalc2__FPffff
/* 80532150  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 80532154  FC 00 02 10 */	fabs f0, f0
/* 80532158  FC 60 00 18 */	frsp f3, f0
/* 8053215C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80532160  C0 5E 05 D8 */	lfs f2, 0x5d8(r30)
/* 80532164  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80532168  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 8053216C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80532170  EC 22 00 2A */	fadds f1, f2, f0
/* 80532174  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80532178  4B D3 D8 C4 */	b cLib_addCalc2__FPffff
/* 8053217C  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80532180  FC 00 02 10 */	fabs f0, f0
/* 80532184  FC 60 00 18 */	frsp f3, f0
/* 80532188  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8053218C  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 80532190  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80532194  4B D3 D8 A8 */	b cLib_addCalc2__FPffff
/* 80532198  38 7E 05 CE */	addi r3, r30, 0x5ce
/* 8053219C  38 80 F6 00 */	li r4, -2560
/* 805321A0  38 A0 00 20 */	li r5, 0x20
/* 805321A4  38 C0 00 50 */	li r6, 0x50
/* 805321A8  4B D3 E4 60 */	b cLib_addCalcAngleS2__FPssss
/* 805321AC  A8 1E 06 24 */	lha r0, 0x624(r30)
/* 805321B0  2C 00 00 00 */	cmpwi r0, 0
/* 805321B4  40 82 00 60 */	bne lbl_80532214
/* 805321B8  38 00 00 05 */	li r0, 5
/* 805321BC  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 805321C0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805321C4  4B D3 57 90 */	b cM_rndF__Ff
/* 805321C8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 805321CC  EC 00 08 2A */	fadds f0, f0, f1
/* 805321D0  FC 00 00 1E */	fctiwz f0, f0
/* 805321D4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805321D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805321DC  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 805321E0  48 00 00 34 */	b lbl_80532214
lbl_805321E4:
/* 805321E4  C3 FF 00 BC */	lfs f31, 0xbc(r31)
/* 805321E8  C3 DF 00 C0 */	lfs f30, 0xc0(r31)
/* 805321EC  38 7E 05 CE */	addi r3, r30, 0x5ce
/* 805321F0  38 80 F6 00 */	li r4, -2560
/* 805321F4  38 A0 00 20 */	li r5, 0x20
/* 805321F8  38 C0 00 50 */	li r6, 0x50
/* 805321FC  4B D3 E4 0C */	b cLib_addCalcAngleS2__FPssss
/* 80532200  A8 1E 06 24 */	lha r0, 0x624(r30)
/* 80532204  2C 00 00 00 */	cmpwi r0, 0
/* 80532208  40 82 00 0C */	bne lbl_80532214
/* 8053220C  38 00 00 00 */	li r0, 0
/* 80532210  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
lbl_80532214:
/* 80532214  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80532218  FC 20 F8 90 */	fmr f1, f31
/* 8053221C  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80532220  FC 60 F0 90 */	fmr f3, f30
/* 80532224  4B D3 D8 18 */	b cLib_addCalc2__FPffff
/* 80532228  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8053222C  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 80532230  38 A0 00 08 */	li r5, 8
/* 80532234  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 80532238  4B D3 E3 D0 */	b cLib_addCalcAngleS2__FPssss
/* 8053223C  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 80532240  A8 9E 05 CE */	lha r4, 0x5ce(r30)
/* 80532244  38 A0 00 08 */	li r5, 8
/* 80532248  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 8053224C  4B D3 E3 BC */	b cLib_addCalcAngleS2__FPssss
/* 80532250  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80532254  38 80 03 00 */	li r4, 0x300
/* 80532258  38 A0 00 01 */	li r5, 1
/* 8053225C  38 C0 00 10 */	li r6, 0x10
/* 80532260  4B D3 E3 A8 */	b cLib_addCalcAngleS2__FPssss
/* 80532264  38 60 00 00 */	li r3, 0
/* 80532268  38 80 00 00 */	li r4, 0
/* 8053226C  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 80532270  38 C5 9A 20 */	addi r6, r5, sincosTable___5JMath@l
/* 80532274  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80532278  38 00 00 03 */	li r0, 3
/* 8053227C  7C 09 03 A6 */	mtctr r0
lbl_80532280:
/* 80532280  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 80532284  1C 00 05 14 */	mulli r0, r0, 0x514
/* 80532288  7C 00 22 14 */	add r0, r0, r4
/* 8053228C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80532290  7C 06 04 2E */	lfsx f0, r6, r0
/* 80532294  EC 01 00 32 */	fmuls f0, f1, f0
/* 80532298  FC 00 00 1E */	fctiwz f0, f0
/* 8053229C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805322A0  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 805322A4  38 03 06 F2 */	addi r0, r3, 0x6f2
/* 805322A8  7C BE 03 2E */	sthx r5, r30, r0
/* 805322AC  38 63 00 06 */	addi r3, r3, 6
/* 805322B0  38 84 3E 80 */	addi r4, r4, 0x3e80
/* 805322B4  42 00 FF CC */	bdnz lbl_80532280
/* 805322B8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805322BC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805322C0  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805322C4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805322C8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805322CC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805322D0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805322D4  7C 08 03 A6 */	mtlr r0
/* 805322D8  38 21 00 60 */	addi r1, r1, 0x60
/* 805322DC  4E 80 00 20 */	blr 
