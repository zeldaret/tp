lbl_80B09A3C:
/* 80B09A3C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B09A40  7C 08 02 A6 */	mflr r0
/* 80B09A44  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B09A48  39 61 00 50 */	addi r11, r1, 0x50
/* 80B09A4C  4B 85 87 90 */	b _savegpr_29
/* 80B09A50  7C 7D 1B 78 */	mr r29, r3
/* 80B09A54  3C 60 80 B1 */	lis r3, lit_3999@ha
/* 80B09A58  3B E3 C1 C4 */	addi r31, r3, lit_3999@l
/* 80B09A5C  38 60 02 9C */	li r3, 0x29c
/* 80B09A60  38 81 00 14 */	addi r4, r1, 0x14
/* 80B09A64  4B 50 FF C8 */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 80B09A68  2C 03 00 00 */	cmpwi r3, 0
/* 80B09A6C  41 82 09 C0 */	beq lbl_80B0A42C
/* 80B09A70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B09A74  28 00 00 00 */	cmplwi r0, 0
/* 80B09A78  40 82 00 08 */	bne lbl_80B09A80
/* 80B09A7C  48 00 09 B0 */	b lbl_80B0A42C
lbl_80B09A80:
/* 80B09A80  AB DD 04 E6 */	lha r30, 0x4e6(r29)
/* 80B09A84  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 80B09A88  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B09A8C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80B09A90  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B09A94  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 80B09A98  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B09A9C  80 1D 06 94 */	lwz r0, 0x694(r29)
/* 80B09AA0  28 00 00 08 */	cmplwi r0, 8
/* 80B09AA4  41 81 09 48 */	bgt lbl_80B0A3EC
/* 80B09AA8  3C 60 80 B1 */	lis r3, lit_7455@ha
/* 80B09AAC  38 63 C4 78 */	addi r3, r3, lit_7455@l
/* 80B09AB0  54 00 10 3A */	slwi r0, r0, 2
/* 80B09AB4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B09AB8  7C 09 03 A6 */	mtctr r0
/* 80B09ABC  4E 80 04 20 */	bctr 
lbl_80B09AC0:
/* 80B09AC0  38 00 00 00 */	li r0, 0
/* 80B09AC4  B0 1D 06 A0 */	sth r0, 0x6a0(r29)
/* 80B09AC8  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
/* 80B09ACC  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80B09AD0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B09AD4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80B09AD8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B09ADC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80B09AE0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B09AE4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B09AE8  38 81 00 18 */	addi r4, r1, 0x18
/* 80B09AEC  38 A0 E0 51 */	li r5, -8111
/* 80B09AF0  38 C1 00 30 */	addi r6, r1, 0x30
/* 80B09AF4  4B 76 72 CC */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B09AF8  38 00 B0 51 */	li r0, -20399
/* 80B09AFC  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80B09B00  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80B09B04  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80B09B08  38 00 08 00 */	li r0, 0x800
/* 80B09B0C  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80B09B10  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B09B14  7C 00 00 D0 */	neg r0, r0
/* 80B09B18  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80B09B1C  38 00 00 00 */	li r0, 0
/* 80B09B20  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80B09B24  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80B09B28  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 80B09B2C  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 80B09B30  38 00 00 01 */	li r0, 1
/* 80B09B34  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B09B38  38 00 00 1E */	li r0, 0x1e
/* 80B09B3C  90 1D 06 B0 */	stw r0, 0x6b0(r29)
/* 80B09B40  7F A3 EB 78 */	mr r3, r29
/* 80B09B44  38 80 00 06 */	li r4, 6
/* 80B09B48  38 A0 00 02 */	li r5, 2
/* 80B09B4C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80B09B50  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B09B54  4B FF 79 45 */	bl setBck__10daNPC_TK_cFiUcff
lbl_80B09B58:
/* 80B09B58  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80B09B5C  2C 00 00 00 */	cmpwi r0, 0
/* 80B09B60  40 82 00 2C */	bne lbl_80B09B8C
/* 80B09B64  38 7D 06 9C */	addi r3, r29, 0x69c
/* 80B09B68  38 80 04 00 */	li r4, 0x400
/* 80B09B6C  38 A0 00 10 */	li r5, 0x10
/* 80B09B70  4B 76 70 20 */	b cLib_chaseAngleS__FPsss
/* 80B09B74  A8 7D 06 9C */	lha r3, 0x69c(r29)
/* 80B09B78  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80B09B7C  7C 03 00 50 */	subf r0, r3, r0
/* 80B09B80  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80B09B84  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80B09B88  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_80B09B8C:
/* 80B09B8C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B09B90  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80B09B94  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B09B98  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B09B9C  7C 64 02 14 */	add r3, r4, r0
/* 80B09BA0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B09BA4  FC 00 02 10 */	fabs f0, f0
/* 80B09BA8  FC 20 00 18 */	frsp f1, f0
/* 80B09BAC  C0 1D 06 78 */	lfs f0, 0x678(r29)
/* 80B09BB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B09BB4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80B09BB8  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B09BBC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B09BC0  7C 24 04 2E */	lfsx f1, r4, r0
/* 80B09BC4  C0 1D 06 78 */	lfs f0, 0x678(r29)
/* 80B09BC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B09BCC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80B09BD0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B09BD4  38 81 00 18 */	addi r4, r1, 0x18
/* 80B09BD8  4B 76 70 2C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B09BDC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80B09BE0  7C 03 00 50 */	subf r0, r3, r0
/* 80B09BE4  7C 03 07 34 */	extsh r3, r0
/* 80B09BE8  4B 85 B4 E8 */	b abs
/* 80B09BEC  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80B09BF0  40 80 07 FC */	bge lbl_80B0A3EC
/* 80B09BF4  38 00 00 02 */	li r0, 2
/* 80B09BF8  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B09BFC  7F A3 EB 78 */	mr r3, r29
/* 80B09C00  38 80 00 08 */	li r4, 8
/* 80B09C04  38 A0 00 02 */	li r5, 2
/* 80B09C08  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80B09C0C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B09C10  4B FF 78 89 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B09C14  48 00 07 D8 */	b lbl_80B0A3EC
lbl_80B09C18:
/* 80B09C18  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80B09C1C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B09C20  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80B09C24  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B09C28  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B09C2C  38 61 00 24 */	addi r3, r1, 0x24
/* 80B09C30  38 81 00 18 */	addi r4, r1, 0x18
/* 80B09C34  38 A0 E0 51 */	li r5, -8111
/* 80B09C38  38 C1 00 30 */	addi r6, r1, 0x30
/* 80B09C3C  4B 76 71 84 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B09C40  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B09C44  38 81 00 24 */	addi r4, r1, 0x24
/* 80B09C48  4B 76 70 2C */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B09C4C  7C 64 1B 78 */	mr r4, r3
/* 80B09C50  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80B09C54  38 A0 00 04 */	li r5, 4
/* 80B09C58  38 C0 02 00 */	li r6, 0x200
/* 80B09C5C  38 E0 00 10 */	li r7, 0x10
/* 80B09C60  4B 76 68 E0 */	b cLib_addCalcAngleS__FPsssss
/* 80B09C64  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B09C68  7C 00 00 D0 */	neg r0, r0
/* 80B09C6C  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80B09C70  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B09C74  38 81 00 24 */	addi r4, r1, 0x24
/* 80B09C78  4B 76 6F 8C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B09C7C  7C 64 1B 78 */	mr r4, r3
/* 80B09C80  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80B09C84  38 A0 00 08 */	li r5, 8
/* 80B09C88  38 C0 04 00 */	li r6, 0x400
/* 80B09C8C  38 E0 00 10 */	li r7, 0x10
/* 80B09C90  4B 76 68 B0 */	b cLib_addCalcAngleS__FPsssss
/* 80B09C94  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B09C98  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80B09C9C  38 7D 06 78 */	addi r3, r29, 0x678
/* 80B09CA0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80B09CA4  C0 5F 01 64 */	lfs f2, 0x164(r31)
/* 80B09CA8  4B 76 6A 98 */	b cLib_chaseF__FPfff
/* 80B09CAC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B09CB0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80B09CB4  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B09CB8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B09CBC  7C 64 02 14 */	add r3, r4, r0
/* 80B09CC0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B09CC4  FC 00 02 10 */	fabs f0, f0
/* 80B09CC8  FC 20 00 18 */	frsp f1, f0
/* 80B09CCC  C0 1D 06 78 */	lfs f0, 0x678(r29)
/* 80B09CD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B09CD4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80B09CD8  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B09CDC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B09CE0  7C 24 04 2E */	lfsx f1, r4, r0
/* 80B09CE4  C0 1D 06 78 */	lfs f0, 0x678(r29)
/* 80B09CE8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B09CEC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80B09CF0  38 61 00 24 */	addi r3, r1, 0x24
/* 80B09CF4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B09CF8  4B 83 D6 A4 */	b PSVECSquareDistance
/* 80B09CFC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B09D00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B09D04  40 81 00 58 */	ble lbl_80B09D5C
/* 80B09D08  FC 00 08 34 */	frsqrte f0, f1
/* 80B09D0C  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B09D10  FC 44 00 32 */	fmul f2, f4, f0
/* 80B09D14  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B09D18  FC 00 00 32 */	fmul f0, f0, f0
/* 80B09D1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B09D20  FC 03 00 28 */	fsub f0, f3, f0
/* 80B09D24  FC 02 00 32 */	fmul f0, f2, f0
/* 80B09D28  FC 44 00 32 */	fmul f2, f4, f0
/* 80B09D2C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B09D30  FC 01 00 32 */	fmul f0, f1, f0
/* 80B09D34  FC 03 00 28 */	fsub f0, f3, f0
/* 80B09D38  FC 02 00 32 */	fmul f0, f2, f0
/* 80B09D3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B09D40  FC 00 00 32 */	fmul f0, f0, f0
/* 80B09D44  FC 01 00 32 */	fmul f0, f1, f0
/* 80B09D48  FC 03 00 28 */	fsub f0, f3, f0
/* 80B09D4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B09D50  FC 21 00 32 */	fmul f1, f1, f0
/* 80B09D54  FC 20 08 18 */	frsp f1, f1
/* 80B09D58  48 00 00 88 */	b lbl_80B09DE0
lbl_80B09D5C:
/* 80B09D5C  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B09D60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B09D64  40 80 00 10 */	bge lbl_80B09D74
/* 80B09D68  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B09D6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B09D70  48 00 00 70 */	b lbl_80B09DE0
lbl_80B09D74:
/* 80B09D74  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B09D78  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B09D7C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B09D80  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B09D84  7C 03 00 00 */	cmpw r3, r0
/* 80B09D88  41 82 00 14 */	beq lbl_80B09D9C
/* 80B09D8C  40 80 00 40 */	bge lbl_80B09DCC
/* 80B09D90  2C 03 00 00 */	cmpwi r3, 0
/* 80B09D94  41 82 00 20 */	beq lbl_80B09DB4
/* 80B09D98  48 00 00 34 */	b lbl_80B09DCC
lbl_80B09D9C:
/* 80B09D9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B09DA0  41 82 00 0C */	beq lbl_80B09DAC
/* 80B09DA4  38 00 00 01 */	li r0, 1
/* 80B09DA8  48 00 00 28 */	b lbl_80B09DD0
lbl_80B09DAC:
/* 80B09DAC  38 00 00 02 */	li r0, 2
/* 80B09DB0  48 00 00 20 */	b lbl_80B09DD0
lbl_80B09DB4:
/* 80B09DB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B09DB8  41 82 00 0C */	beq lbl_80B09DC4
/* 80B09DBC  38 00 00 05 */	li r0, 5
/* 80B09DC0  48 00 00 10 */	b lbl_80B09DD0
lbl_80B09DC4:
/* 80B09DC4  38 00 00 03 */	li r0, 3
/* 80B09DC8  48 00 00 08 */	b lbl_80B09DD0
lbl_80B09DCC:
/* 80B09DCC  38 00 00 04 */	li r0, 4
lbl_80B09DD0:
/* 80B09DD0  2C 00 00 01 */	cmpwi r0, 1
/* 80B09DD4  40 82 00 0C */	bne lbl_80B09DE0
/* 80B09DD8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B09DDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B09DE0:
/* 80B09DE0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80B09DE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B09DE8  40 80 06 04 */	bge lbl_80B0A3EC
/* 80B09DEC  38 00 00 03 */	li r0, 3
/* 80B09DF0  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B09DF4  38 00 00 00 */	li r0, 0
/* 80B09DF8  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 80B09DFC  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80B09E00  D0 1D 06 10 */	stfs f0, 0x610(r29)
/* 80B09E04  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 80B09E08  D0 1D 06 14 */	stfs f0, 0x614(r29)
/* 80B09E0C  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 80B09E10  D0 1D 06 18 */	stfs f0, 0x618(r29)
/* 80B09E14  C0 1F 01 B0 */	lfs f0, 0x1b0(r31)
/* 80B09E18  D0 1D 06 04 */	stfs f0, 0x604(r29)
/* 80B09E1C  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 80B09E20  D0 1D 06 08 */	stfs f0, 0x608(r29)
/* 80B09E24  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B09E28  D0 1D 06 0C */	stfs f0, 0x60c(r29)
/* 80B09E2C  48 00 05 C0 */	b lbl_80B0A3EC
lbl_80B09E30:
/* 80B09E30  C0 1D 06 10 */	lfs f0, 0x610(r29)
/* 80B09E34  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B09E38  C0 1D 06 14 */	lfs f0, 0x614(r29)
/* 80B09E3C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B09E40  C0 1D 06 18 */	lfs f0, 0x618(r29)
/* 80B09E44  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B09E48  38 7D 06 9C */	addi r3, r29, 0x69c
/* 80B09E4C  38 80 04 00 */	li r4, 0x400
/* 80B09E50  38 A0 00 20 */	li r5, 0x20
/* 80B09E54  4B 76 6D 3C */	b cLib_chaseAngleS__FPsss
/* 80B09E58  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B09E5C  38 81 00 24 */	addi r4, r1, 0x24
/* 80B09E60  4B 76 6E 14 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B09E64  7C 64 1B 78 */	mr r4, r3
/* 80B09E68  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80B09E6C  38 A0 00 08 */	li r5, 8
/* 80B09E70  A8 DD 06 9C */	lha r6, 0x69c(r29)
/* 80B09E74  38 E0 00 10 */	li r7, 0x10
/* 80B09E78  4B 76 66 C8 */	b cLib_addCalcAngleS__FPsssss
/* 80B09E7C  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B09E80  7C 00 00 D0 */	neg r0, r0
/* 80B09E84  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80B09E88  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B09E8C  38 81 00 24 */	addi r4, r1, 0x24
/* 80B09E90  4B 76 6D 74 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B09E94  7C 64 1B 78 */	mr r4, r3
/* 80B09E98  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80B09E9C  38 A0 00 08 */	li r5, 8
/* 80B09EA0  A8 DD 06 9C */	lha r6, 0x69c(r29)
/* 80B09EA4  38 E0 00 10 */	li r7, 0x10
/* 80B09EA8  4B 76 66 98 */	b cLib_addCalcAngleS__FPsssss
/* 80B09EAC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B09EB0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80B09EB4  38 7D 06 78 */	addi r3, r29, 0x678
/* 80B09EB8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80B09EBC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B09EC0  4B 76 68 80 */	b cLib_chaseF__FPfff
/* 80B09EC4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B09EC8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80B09ECC  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B09ED0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B09ED4  7C 64 02 14 */	add r3, r4, r0
/* 80B09ED8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B09EDC  FC 00 02 10 */	fabs f0, f0
/* 80B09EE0  FC 20 00 18 */	frsp f1, f0
/* 80B09EE4  C0 1D 06 78 */	lfs f0, 0x678(r29)
/* 80B09EE8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B09EEC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80B09EF0  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B09EF4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B09EF8  7C 24 04 2E */	lfsx f1, r4, r0
/* 80B09EFC  C0 1D 06 78 */	lfs f0, 0x678(r29)
/* 80B09F00  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B09F04  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80B09F08  38 61 00 24 */	addi r3, r1, 0x24
/* 80B09F0C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B09F10  4B 83 D4 8C */	b PSVECSquareDistance
/* 80B09F14  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B09F18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B09F1C  40 81 00 58 */	ble lbl_80B09F74
/* 80B09F20  FC 00 08 34 */	frsqrte f0, f1
/* 80B09F24  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80B09F28  FC 44 00 32 */	fmul f2, f4, f0
/* 80B09F2C  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80B09F30  FC 00 00 32 */	fmul f0, f0, f0
/* 80B09F34  FC 01 00 32 */	fmul f0, f1, f0
/* 80B09F38  FC 03 00 28 */	fsub f0, f3, f0
/* 80B09F3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B09F40  FC 44 00 32 */	fmul f2, f4, f0
/* 80B09F44  FC 00 00 32 */	fmul f0, f0, f0
/* 80B09F48  FC 01 00 32 */	fmul f0, f1, f0
/* 80B09F4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B09F50  FC 02 00 32 */	fmul f0, f2, f0
/* 80B09F54  FC 44 00 32 */	fmul f2, f4, f0
/* 80B09F58  FC 00 00 32 */	fmul f0, f0, f0
/* 80B09F5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B09F60  FC 03 00 28 */	fsub f0, f3, f0
/* 80B09F64  FC 02 00 32 */	fmul f0, f2, f0
/* 80B09F68  FC 21 00 32 */	fmul f1, f1, f0
/* 80B09F6C  FC 20 08 18 */	frsp f1, f1
/* 80B09F70  48 00 00 88 */	b lbl_80B09FF8
lbl_80B09F74:
/* 80B09F74  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80B09F78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B09F7C  40 80 00 10 */	bge lbl_80B09F8C
/* 80B09F80  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B09F84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B09F88  48 00 00 70 */	b lbl_80B09FF8
lbl_80B09F8C:
/* 80B09F8C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B09F90  80 81 00 08 */	lwz r4, 8(r1)
/* 80B09F94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B09F98  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B09F9C  7C 03 00 00 */	cmpw r3, r0
/* 80B09FA0  41 82 00 14 */	beq lbl_80B09FB4
/* 80B09FA4  40 80 00 40 */	bge lbl_80B09FE4
/* 80B09FA8  2C 03 00 00 */	cmpwi r3, 0
/* 80B09FAC  41 82 00 20 */	beq lbl_80B09FCC
/* 80B09FB0  48 00 00 34 */	b lbl_80B09FE4
lbl_80B09FB4:
/* 80B09FB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B09FB8  41 82 00 0C */	beq lbl_80B09FC4
/* 80B09FBC  38 00 00 01 */	li r0, 1
/* 80B09FC0  48 00 00 28 */	b lbl_80B09FE8
lbl_80B09FC4:
/* 80B09FC4  38 00 00 02 */	li r0, 2
/* 80B09FC8  48 00 00 20 */	b lbl_80B09FE8
lbl_80B09FCC:
/* 80B09FCC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B09FD0  41 82 00 0C */	beq lbl_80B09FDC
/* 80B09FD4  38 00 00 05 */	li r0, 5
/* 80B09FD8  48 00 00 10 */	b lbl_80B09FE8
lbl_80B09FDC:
/* 80B09FDC  38 00 00 03 */	li r0, 3
/* 80B09FE0  48 00 00 08 */	b lbl_80B09FE8
lbl_80B09FE4:
/* 80B09FE4  38 00 00 04 */	li r0, 4
lbl_80B09FE8:
/* 80B09FE8  2C 00 00 01 */	cmpwi r0, 1
/* 80B09FEC  40 82 00 0C */	bne lbl_80B09FF8
/* 80B09FF0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B09FF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B09FF8:
/* 80B09FF8  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80B09FFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0A000  40 80 03 EC */	bge lbl_80B0A3EC
/* 80B0A004  38 00 00 04 */	li r0, 4
/* 80B0A008  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B0A00C  7F A3 EB 78 */	mr r3, r29
/* 80B0A010  38 80 00 07 */	li r4, 7
/* 80B0A014  38 A0 00 02 */	li r5, 2
/* 80B0A018  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B0A01C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B0A020  4B FF 74 79 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B0A024  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0A028  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 80B0A02C  38 00 00 00 */	li r0, 0
/* 80B0A030  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 80B0A034  48 00 03 B8 */	b lbl_80B0A3EC
lbl_80B0A038:
/* 80B0A038  C0 1D 06 04 */	lfs f0, 0x604(r29)
/* 80B0A03C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B0A040  C0 1D 06 08 */	lfs f0, 0x608(r29)
/* 80B0A044  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B0A048  C0 1D 06 0C */	lfs f0, 0x60c(r29)
/* 80B0A04C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B0A050  38 7D 06 9C */	addi r3, r29, 0x69c
/* 80B0A054  38 80 04 00 */	li r4, 0x400
/* 80B0A058  38 A0 00 40 */	li r5, 0x40
/* 80B0A05C  4B 76 6B 34 */	b cLib_chaseAngleS__FPsss
/* 80B0A060  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B0A064  38 81 00 24 */	addi r4, r1, 0x24
/* 80B0A068  4B 76 6B 9C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B0A06C  7C 64 1B 78 */	mr r4, r3
/* 80B0A070  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80B0A074  38 A0 00 08 */	li r5, 8
/* 80B0A078  A8 DD 06 9C */	lha r6, 0x69c(r29)
/* 80B0A07C  38 E0 00 10 */	li r7, 0x10
/* 80B0A080  4B 76 64 C0 */	b cLib_addCalcAngleS__FPsssss
/* 80B0A084  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B0A088  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80B0A08C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80B0A090  C0 5D 04 FC */	lfs f2, 0x4fc(r29)
/* 80B0A094  4B 75 D5 E0 */	b cM_atan2s__Fff
/* 80B0A098  38 03 C0 00 */	addi r0, r3, -16384
/* 80B0A09C  7C 04 07 34 */	extsh r4, r0
/* 80B0A0A0  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80B0A0A4  38 A0 00 08 */	li r5, 8
/* 80B0A0A8  38 C0 02 00 */	li r6, 0x200
/* 80B0A0AC  38 E0 00 10 */	li r7, 0x10
/* 80B0A0B0  4B 76 64 90 */	b cLib_addCalcAngleS__FPsssss
/* 80B0A0B4  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B0A0B8  7C 00 00 D0 */	neg r0, r0
/* 80B0A0BC  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80B0A0C0  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80B0A0C4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B0A0C8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B0A0CC  4B 76 66 74 */	b cLib_chaseF__FPfff
/* 80B0A0D0  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80B0A0D4  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80B0A0D8  C0 5F 01 BC */	lfs f2, 0x1bc(r31)
/* 80B0A0DC  4B 76 66 64 */	b cLib_chaseF__FPfff
/* 80B0A0E0  2C 03 00 00 */	cmpwi r3, 0
/* 80B0A0E4  41 82 03 08 */	beq lbl_80B0A3EC
/* 80B0A0E8  38 00 00 05 */	li r0, 5
/* 80B0A0EC  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B0A0F0  48 00 02 FC */	b lbl_80B0A3EC
lbl_80B0A0F4:
/* 80B0A0F4  C0 1D 06 04 */	lfs f0, 0x604(r29)
/* 80B0A0F8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B0A0FC  C0 1D 06 08 */	lfs f0, 0x608(r29)
/* 80B0A100  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B0A104  C0 1D 06 0C */	lfs f0, 0x60c(r29)
/* 80B0A108  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B0A10C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B0A110  38 81 00 24 */	addi r4, r1, 0x24
/* 80B0A114  4B 76 6A F0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B0A118  7C 64 1B 78 */	mr r4, r3
/* 80B0A11C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80B0A120  38 A0 00 08 */	li r5, 8
/* 80B0A124  A8 DD 06 9C */	lha r6, 0x69c(r29)
/* 80B0A128  38 E0 00 10 */	li r7, 0x10
/* 80B0A12C  4B 76 64 14 */	b cLib_addCalcAngleS__FPsssss
/* 80B0A130  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80B0A134  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B0A138  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 80B0A13C  38 04 28 00 */	addi r0, r4, 0x2800
/* 80B0A140  7C 04 07 34 */	extsh r4, r0
/* 80B0A144  38 A0 00 08 */	li r5, 8
/* 80B0A148  38 C0 04 00 */	li r6, 0x400
/* 80B0A14C  38 E0 00 10 */	li r7, 0x10
/* 80B0A150  4B 76 63 F0 */	b cLib_addCalcAngleS__FPsssss
/* 80B0A154  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80B0A158  38 80 00 00 */	li r4, 0
/* 80B0A15C  38 A0 00 08 */	li r5, 8
/* 80B0A160  38 C0 01 00 */	li r6, 0x100
/* 80B0A164  38 E0 00 10 */	li r7, 0x10
/* 80B0A168  4B 76 63 D8 */	b cLib_addCalcAngleS__FPsssss
/* 80B0A16C  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B0A170  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80B0A174  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80B0A178  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80B0A17C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B0A180  4B 76 65 C0 */	b cLib_chaseF__FPfff
/* 80B0A184  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80B0A188  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B0A18C  C0 5F 00 FC */	lfs f2, 0xfc(r31)
/* 80B0A190  4B 76 65 B0 */	b cLib_chaseF__FPfff
/* 80B0A194  2C 03 00 00 */	cmpwi r3, 0
/* 80B0A198  41 82 02 54 */	beq lbl_80B0A3EC
/* 80B0A19C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0A1A0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80B0A1A4  38 00 00 06 */	li r0, 6
/* 80B0A1A8  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B0A1AC  7F A3 EB 78 */	mr r3, r29
/* 80B0A1B0  38 80 00 09 */	li r4, 9
/* 80B0A1B4  38 A0 00 00 */	li r5, 0
/* 80B0A1B8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80B0A1BC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B0A1C0  4B FF 72 D9 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B0A1C4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0A1C8  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 80B0A1CC  48 00 02 20 */	b lbl_80B0A3EC
lbl_80B0A1D0:
/* 80B0A1D0  C0 1D 06 04 */	lfs f0, 0x604(r29)
/* 80B0A1D4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B0A1D8  C0 1D 06 08 */	lfs f0, 0x608(r29)
/* 80B0A1DC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B0A1E0  C0 1D 06 0C */	lfs f0, 0x60c(r29)
/* 80B0A1E4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B0A1E8  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80B0A1EC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B0A1F0  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 80B0A1F4  4B 76 65 4C */	b cLib_chaseF__FPfff
/* 80B0A1F8  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80B0A1FC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B0A200  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 80B0A204  38 04 30 00 */	addi r0, r4, 0x3000
/* 80B0A208  7C 04 07 34 */	extsh r4, r0
/* 80B0A20C  38 A0 00 08 */	li r5, 8
/* 80B0A210  A8 DD 06 9C */	lha r6, 0x69c(r29)
/* 80B0A214  38 E0 00 10 */	li r7, 0x10
/* 80B0A218  4B 76 63 28 */	b cLib_addCalcAngleS__FPsssss
/* 80B0A21C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80B0A220  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B0A224  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 80B0A228  38 04 28 00 */	addi r0, r4, 0x2800
/* 80B0A22C  7C 04 07 34 */	extsh r4, r0
/* 80B0A230  38 A0 00 08 */	li r5, 8
/* 80B0A234  38 C0 04 00 */	li r6, 0x400
/* 80B0A238  38 E0 00 10 */	li r7, 0x10
/* 80B0A23C  4B 76 63 04 */	b cLib_addCalcAngleS__FPsssss
/* 80B0A240  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80B0A244  38 80 00 00 */	li r4, 0
/* 80B0A248  38 A0 00 08 */	li r5, 8
/* 80B0A24C  38 C0 01 00 */	li r6, 0x100
/* 80B0A250  38 E0 00 10 */	li r7, 0x10
/* 80B0A254  4B 76 62 EC */	b cLib_addCalcAngleS__FPsssss
/* 80B0A258  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B0A25C  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80B0A260  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 80B0A264  38 80 FC 00 */	li r4, -1024
/* 80B0A268  38 A0 00 08 */	li r5, 8
/* 80B0A26C  38 C0 02 00 */	li r6, 0x200
/* 80B0A270  38 E0 00 10 */	li r7, 0x10
/* 80B0A274  4B 76 62 CC */	b cLib_addCalcAngleS__FPsssss
/* 80B0A278  38 7D 06 78 */	addi r3, r29, 0x678
/* 80B0A27C  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80B0A280  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B0A284  4B 76 64 BC */	b cLib_chaseF__FPfff
/* 80B0A288  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B0A28C  38 81 00 24 */	addi r4, r1, 0x24
/* 80B0A290  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 80B0A294  4B 76 65 18 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B0A298  2C 03 00 00 */	cmpwi r3, 0
/* 80B0A29C  41 82 01 90 */	beq lbl_80B0A42C
/* 80B0A2A0  38 00 00 07 */	li r0, 7
/* 80B0A2A4  90 1D 06 94 */	stw r0, 0x694(r29)
/* 80B0A2A8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0A2AC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80B0A2B0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80B0A2B4  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050026@ha */
/* 80B0A2B8  38 03 00 26 */	addi r0, r3, 0x0026 /* 0x00050026@l */
/* 80B0A2BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B0A2C0  38 7D 05 74 */	addi r3, r29, 0x574
/* 80B0A2C4  38 81 00 10 */	addi r4, r1, 0x10
/* 80B0A2C8  38 A0 FF FF */	li r5, -1
/* 80B0A2CC  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 80B0A2D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B0A2D4  7D 89 03 A6 */	mtctr r12
/* 80B0A2D8  4E 80 04 21 */	bctrl 
/* 80B0A2DC  48 00 01 50 */	b lbl_80B0A42C
lbl_80B0A2E0:
/* 80B0A2E0  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80B0A2E4  38 80 00 01 */	li r4, 1
/* 80B0A2E8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80B0A2EC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B0A2F0  40 82 00 18 */	bne lbl_80B0A308
/* 80B0A2F4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80B0A2F8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B0A2FC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B0A300  41 82 00 08 */	beq lbl_80B0A308
/* 80B0A304  38 80 00 00 */	li r4, 0
lbl_80B0A308:
/* 80B0A308  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80B0A30C  41 82 00 1C */	beq lbl_80B0A328
/* 80B0A310  7F A3 EB 78 */	mr r3, r29
/* 80B0A314  38 80 00 0C */	li r4, 0xc
/* 80B0A318  38 A0 00 02 */	li r5, 2
/* 80B0A31C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80B0A320  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B0A324  4B FF 71 75 */	bl setBck__10daNPC_TK_cFiUcff
lbl_80B0A328:
/* 80B0A328  38 7D 06 A2 */	addi r3, r29, 0x6a2
/* 80B0A32C  38 80 DC 00 */	li r4, -9216
/* 80B0A330  38 A0 00 08 */	li r5, 8
/* 80B0A334  38 C0 02 00 */	li r6, 0x200
/* 80B0A338  4B 76 62 D0 */	b cLib_addCalcAngleS2__FPssss
/* 80B0A33C  38 7D 06 A0 */	addi r3, r29, 0x6a0
/* 80B0A340  38 80 10 00 */	li r4, 0x1000
/* 80B0A344  38 A0 00 08 */	li r5, 8
/* 80B0A348  38 C0 02 00 */	li r6, 0x200
/* 80B0A34C  4B 76 62 BC */	b cLib_addCalcAngleS2__FPssss
/* 80B0A350  38 7D 06 AA */	addi r3, r29, 0x6aa
/* 80B0A354  38 80 20 00 */	li r4, 0x2000
/* 80B0A358  38 A0 00 08 */	li r5, 8
/* 80B0A35C  38 C0 02 00 */	li r6, 0x200
/* 80B0A360  4B 76 62 A8 */	b cLib_addCalcAngleS2__FPssss
/* 80B0A364  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0A368  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80B0A36C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80B0A370  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B0A374  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80B0A378  80 63 00 04 */	lwz r3, 4(r3)
/* 80B0A37C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B0A380  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B0A384  38 63 03 30 */	addi r3, r3, 0x330
/* 80B0A388  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B0A38C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B0A390  4B 83 C1 20 */	b PSMTXCopy
/* 80B0A394  C0 3F 01 C0 */	lfs f1, 0x1c0(r31)
/* 80B0A398  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 80B0A39C  C0 7F 00 B0 */	lfs f3, 0xb0(r31)
/* 80B0A3A0  4B 50 29 FC */	b transM__14mDoMtx_stack_cFfff
/* 80B0A3A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B0A3A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B0A3AC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B0A3B0  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80B0A3B4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B0A3B8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80B0A3BC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B0A3C0  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80B0A3C4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B0A3C8  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 80B0A3CC  38 03 28 00 */	addi r0, r3, 0x2800
/* 80B0A3D0  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80B0A3D4  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80B0A3D8  38 00 00 00 */	li r0, 0
/* 80B0A3DC  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80B0A3E0  38 00 FC 00 */	li r0, -1024
/* 80B0A3E4  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80B0A3E8  48 00 00 44 */	b lbl_80B0A42C
lbl_80B0A3EC:
/* 80B0A3EC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80B0A3F0  7C 00 F0 50 */	subf r0, r0, r30
/* 80B0A3F4  1C 00 00 0A */	mulli r0, r0, 0xa
/* 80B0A3F8  7C 04 07 34 */	extsh r4, r0
/* 80B0A3FC  2C 04 E0 00 */	cmpwi r4, -8192
/* 80B0A400  40 80 00 08 */	bge lbl_80B0A408
/* 80B0A404  38 80 E0 00 */	li r4, -8192
lbl_80B0A408:
/* 80B0A408  7C 80 07 34 */	extsh r0, r4
/* 80B0A40C  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80B0A410  40 81 00 08 */	ble lbl_80B0A418
/* 80B0A414  38 80 20 00 */	li r4, 0x2000
lbl_80B0A418:
/* 80B0A418  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 80B0A41C  38 A0 00 10 */	li r5, 0x10
/* 80B0A420  38 C0 02 00 */	li r6, 0x200
/* 80B0A424  38 E0 00 10 */	li r7, 0x10
/* 80B0A428  4B 76 61 18 */	b cLib_addCalcAngleS__FPsssss
lbl_80B0A42C:
/* 80B0A42C  39 61 00 50 */	addi r11, r1, 0x50
/* 80B0A430  4B 85 7D F8 */	b _restgpr_29
/* 80B0A434  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B0A438  7C 08 03 A6 */	mtlr r0
/* 80B0A43C  38 21 00 50 */	addi r1, r1, 0x50
/* 80B0A440  4E 80 00 20 */	blr 
