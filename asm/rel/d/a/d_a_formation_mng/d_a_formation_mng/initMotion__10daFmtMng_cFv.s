lbl_80836C64:
/* 80836C64  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80836C68  7C 08 02 A6 */	mflr r0
/* 80836C6C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80836C70  39 61 00 40 */	addi r11, r1, 0x40
/* 80836C74  4B B2 B5 59 */	bl _savegpr_25
/* 80836C78  7C 7E 1B 78 */	mr r30, r3
/* 80836C7C  3C 60 80 83 */	lis r3, M_attr__10daFmtMng_c@ha /* 0x808378A8@ha */
/* 80836C80  3B E3 78 A8 */	addi r31, r3, M_attr__10daFmtMng_c@l /* 0x808378A8@l */
/* 80836C84  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80836C88  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80836C8C  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80836C90  80 64 00 00 */	lwz r3, 0(r4)
/* 80836C94  80 63 00 08 */	lwz r3, 8(r3)
/* 80836C98  80 04 00 04 */	lwz r0, 4(r4)
/* 80836C9C  54 00 20 36 */	slwi r0, r0, 4
/* 80836CA0  7C 63 02 14 */	add r3, r3, r0
/* 80836CA4  88 03 00 03 */	lbz r0, 3(r3)
/* 80836CA8  7C 1C 07 74 */	extsb r28, r0
/* 80836CAC  4B 97 58 D1 */	bl dKy_darkworld_check__Fv
/* 80836CB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80836CB4  41 82 00 10 */	beq lbl_80836CC4
/* 80836CB8  4B 96 8E 79 */	bl dKy_getDarktime_minute__Fv
/* 80836CBC  7C 7D 1B 78 */	mr r29, r3
/* 80836CC0  48 00 00 0C */	b lbl_80836CCC
lbl_80836CC4:
/* 80836CC4  4B 96 8D 79 */	bl dKy_getdaytime_minute__Fv
/* 80836CC8  7C 7D 1B 78 */	mr r29, r3
lbl_80836CCC:
/* 80836CCC  4B 97 58 B1 */	bl dKy_darkworld_check__Fv
/* 80836CD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80836CD4  41 82 00 0C */	beq lbl_80836CE0
/* 80836CD8  4B 96 8E 1D */	bl dKy_getDarktime_hour__Fv
/* 80836CDC  48 00 00 08 */	b lbl_80836CE4
lbl_80836CE0:
/* 80836CE0  4B 96 8D 31 */	bl dKy_getdaytime_hour__Fv
lbl_80836CE4:
/* 80836CE4  1C 63 00 3C */	mulli r3, r3, 0x3c
/* 80836CE8  1C 1C 00 0A */	mulli r0, r28, 0xa
/* 80836CEC  7C 03 02 14 */	add r0, r3, r0
/* 80836CF0  7C 1D 02 14 */	add r0, r29, r0
/* 80836CF4  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80836CF8  4B 97 1E 41 */	bl dKy_get_dayofweek__Fv
/* 80836CFC  90 7E 05 94 */	stw r3, 0x594(r30)
/* 80836D00  80 7E 05 9C */	lwz r3, 0x59c(r30)
/* 80836D04  2C 03 05 A0 */	cmpwi r3, 0x5a0
/* 80836D08  40 81 00 28 */	ble lbl_80836D30
/* 80836D0C  38 03 FA 60 */	addi r0, r3, -1440
/* 80836D10  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80836D14  80 7E 05 94 */	lwz r3, 0x594(r30)
/* 80836D18  38 83 00 01 */	addi r4, r3, 1
/* 80836D1C  38 60 00 07 */	li r3, 7
/* 80836D20  7C 04 1B D6 */	divw r0, r4, r3
/* 80836D24  7C 00 19 D6 */	mullw r0, r0, r3
/* 80836D28  7C 00 20 50 */	subf r0, r0, r4
/* 80836D2C  90 1E 05 94 */	stw r0, 0x594(r30)
lbl_80836D30:
/* 80836D30  3B 60 00 00 */	li r27, 0
/* 80836D34  80 1E 05 98 */	lwz r0, 0x598(r30)
/* 80836D38  2C 00 00 02 */	cmpwi r0, 2
/* 80836D3C  41 82 00 34 */	beq lbl_80836D70
/* 80836D40  40 80 00 14 */	bge lbl_80836D54
/* 80836D44  2C 00 00 00 */	cmpwi r0, 0
/* 80836D48  41 82 00 18 */	beq lbl_80836D60
/* 80836D4C  40 80 00 1C */	bge lbl_80836D68
/* 80836D50  48 00 00 2C */	b lbl_80836D7C
lbl_80836D54:
/* 80836D54  2C 00 00 04 */	cmpwi r0, 4
/* 80836D58  40 80 00 24 */	bge lbl_80836D7C
/* 80836D5C  48 00 00 1C */	b lbl_80836D78
lbl_80836D60:
/* 80836D60  3B 60 00 00 */	li r27, 0
/* 80836D64  48 00 00 18 */	b lbl_80836D7C
lbl_80836D68:
/* 80836D68  3B 60 00 01 */	li r27, 1
/* 80836D6C  48 00 00 10 */	b lbl_80836D7C
lbl_80836D70:
/* 80836D70  3B 60 00 06 */	li r27, 6
/* 80836D74  48 00 00 08 */	b lbl_80836D7C
lbl_80836D78:
/* 80836D78  3B 60 00 07 */	li r27, 7
lbl_80836D7C:
/* 80836D7C  83 5E 05 6C */	lwz r26, 0x56c(r30)
/* 80836D80  38 00 00 00 */	li r0, 0
/* 80836D84  90 01 00 08 */	stw r0, 8(r1)
/* 80836D88  3B 20 00 00 */	li r25, 0
/* 80836D8C  48 00 00 68 */	b lbl_80836DF4
lbl_80836D90:
/* 80836D90  80 7A 00 00 */	lwz r3, 0(r26)
/* 80836D94  38 81 00 08 */	addi r4, r1, 8
/* 80836D98  4B 7E 2C 25 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80836D9C  83 81 00 08 */	lwz r28, 8(r1)
/* 80836DA0  28 1C 00 00 */	cmplwi r28, 0
/* 80836DA4  41 82 00 48 */	beq lbl_80836DEC
/* 80836DA8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80836DAC  4B A3 0B A9 */	bl cM_rndF__Ff
/* 80836DB0  FC 00 08 1E */	fctiwz f0, f1
/* 80836DB4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80836DB8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80836DBC  7F 83 E3 78 */	mr r3, r28
/* 80836DC0  7F 64 DB 78 */	mr r4, r27
/* 80836DC4  80 BC 0A CC */	lwz r5, 0xacc(r28)
/* 80836DC8  4B 92 13 29 */	bl getAnmP__10daNpcCd2_cFii
/* 80836DCC  7C 64 1B 78 */	mr r4, r3
/* 80836DD0  7F 83 E3 78 */	mr r3, r28
/* 80836DD4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80836DD8  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80836DDC  38 A0 00 02 */	li r5, 2
/* 80836DE0  7F A6 EB 78 */	mr r6, r29
/* 80836DE4  38 E0 FF FF */	li r7, -1
/* 80836DE8  4B 92 21 19 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
lbl_80836DEC:
/* 80836DEC  3B 39 00 01 */	addi r25, r25, 1
/* 80836DF0  3B 5A 00 20 */	addi r26, r26, 0x20
lbl_80836DF4:
/* 80836DF4  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 80836DF8  80 1E 05 84 */	lwz r0, 0x584(r30)
/* 80836DFC  7C 03 01 D6 */	mullw r0, r3, r0
/* 80836E00  7C 19 00 00 */	cmpw r25, r0
/* 80836E04  41 80 FF 8C */	blt lbl_80836D90
/* 80836E08  39 61 00 40 */	addi r11, r1, 0x40
/* 80836E0C  4B B2 B4 0D */	bl _restgpr_25
/* 80836E10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80836E14  7C 08 03 A6 */	mtlr r0
/* 80836E18  38 21 00 40 */	addi r1, r1, 0x40
/* 80836E1C  4E 80 00 20 */	blr 
