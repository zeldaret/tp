lbl_80507B90:
/* 80507B90  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80507B94  7C 08 02 A6 */	mflr r0
/* 80507B98  90 01 00 44 */	stw r0, 0x44(r1)
/* 80507B9C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80507BA0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80507BA4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80507BA8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80507BAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80507BB0  4B E5 A6 28 */	b _savegpr_28
/* 80507BB4  7C 7E 1B 78 */	mr r30, r3
/* 80507BB8  3C 60 80 52 */	lis r3, lit_4208@ha
/* 80507BBC  3B E3 85 84 */	addi r31, r3, lit_4208@l
/* 80507BC0  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80507BC4  3C 60 80 52 */	lis r3, data_80519200@ha
/* 80507BC8  88 03 92 00 */	lbz r0, data_80519200@l(r3)
/* 80507BCC  28 00 00 00 */	cmplwi r0, 0
/* 80507BD0  41 82 00 0C */	beq lbl_80507BDC
/* 80507BD4  C3 DF 00 B4 */	lfs f30, 0xb4(r31)
/* 80507BD8  48 00 00 10 */	b lbl_80507BE8
lbl_80507BDC:
/* 80507BDC  3C 60 80 52 */	lis r3, l_HIO@ha
/* 80507BE0  38 63 91 94 */	addi r3, r3, l_HIO@l
/* 80507BE4  C3 C3 00 14 */	lfs f30, 0x14(r3)
lbl_80507BE8:
/* 80507BE8  7F C3 F3 78 */	mr r3, r30
/* 80507BEC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80507BF0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80507BF4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80507BF8  4B B1 2B 18 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80507BFC  7C 7D 1B 78 */	mr r29, r3
/* 80507C00  3B 80 00 00 */	li r28, 0
/* 80507C04  A8 7E 05 B4 */	lha r3, 0x5b4(r30)
/* 80507C08  38 03 00 14 */	addi r0, r3, 0x14
/* 80507C0C  28 00 00 16 */	cmplwi r0, 0x16
/* 80507C10  41 81 02 14 */	bgt lbl_80507E24
/* 80507C14  3C 60 80 52 */	lis r3, lit_5775@ha
/* 80507C18  38 63 8A 48 */	addi r3, r3, lit_5775@l
/* 80507C1C  54 00 10 3A */	slwi r0, r0, 2
/* 80507C20  7C 03 00 2E */	lwzx r0, r3, r0
/* 80507C24  7C 09 03 A6 */	mtctr r0
/* 80507C28  4E 80 04 20 */	bctr 
lbl_80507C2C:
/* 80507C2C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 80507C30  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80507C34  FC 00 00 1E */	fctiwz f0, f0
/* 80507C38  D8 01 00 08 */	stfd f0, 8(r1)
/* 80507C3C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80507C40  2C 00 00 0B */	cmpwi r0, 0xb
/* 80507C44  40 82 00 0C */	bne lbl_80507C50
/* 80507C48  38 00 00 00 */	li r0, 0
/* 80507C4C  98 1E 05 BD */	stb r0, 0x5bd(r30)
lbl_80507C50:
/* 80507C50  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 80507C54  38 80 00 01 */	li r4, 1
/* 80507C58  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80507C5C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80507C60  40 82 00 18 */	bne lbl_80507C78
/* 80507C64  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80507C68  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80507C6C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80507C70  41 82 00 08 */	beq lbl_80507C78
/* 80507C74  38 80 00 00 */	li r4, 0
lbl_80507C78:
/* 80507C78  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80507C7C  41 82 01 A8 */	beq lbl_80507E24
/* 80507C80  38 00 00 00 */	li r0, 0
/* 80507C84  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80507C88  48 00 01 9C */	b lbl_80507E24
lbl_80507C8C:
/* 80507C8C  7F C3 F3 78 */	mr r3, r30
/* 80507C90  38 80 00 40 */	li r4, 0x40
/* 80507C94  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80507C98  38 A0 00 02 */	li r5, 2
/* 80507C9C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80507CA0  4B FF CF 35 */	bl anm_init__FP10e_rd_classifUcf
/* 80507CA4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80507CA8  4B D5 FC AC */	b cM_rndF__Ff
/* 80507CAC  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80507CB0  EC 00 08 2A */	fadds f0, f0, f1
/* 80507CB4  FC 00 00 1E */	fctiwz f0, f0
/* 80507CB8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80507CBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80507CC0  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 80507CC4  38 00 FF F7 */	li r0, -9
/* 80507CC8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80507CCC  48 00 01 58 */	b lbl_80507E24
lbl_80507CD0:
/* 80507CD0  38 00 00 01 */	li r0, 1
/* 80507CD4  98 1E 09 C8 */	stb r0, 0x9c8(r30)
/* 80507CD8  A8 1E 09 90 */	lha r0, 0x990(r30)
/* 80507CDC  2C 00 00 00 */	cmpwi r0, 0
/* 80507CE0  40 82 01 44 */	bne lbl_80507E24
/* 80507CE4  38 00 00 00 */	li r0, 0
/* 80507CE8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80507CEC  48 00 01 38 */	b lbl_80507E24
lbl_80507CF0:
/* 80507CF0  88 1E 05 BD */	lbz r0, 0x5bd(r30)
/* 80507CF4  7C 00 07 75 */	extsb. r0, r0
/* 80507CF8  41 82 00 28 */	beq lbl_80507D20
/* 80507CFC  7F C3 F3 78 */	mr r3, r30
/* 80507D00  38 80 00 04 */	li r4, 4
/* 80507D04  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80507D08  38 A0 00 00 */	li r5, 0
/* 80507D0C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80507D10  4B FF CE C5 */	bl anm_init__FP10e_rd_classifUcf
/* 80507D14  38 00 FF EC */	li r0, -20
/* 80507D18  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80507D1C  48 00 01 08 */	b lbl_80507E24
lbl_80507D20:
/* 80507D20  7F C3 F3 78 */	mr r3, r30
/* 80507D24  38 80 00 32 */	li r4, 0x32
/* 80507D28  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80507D2C  38 A0 00 02 */	li r5, 2
/* 80507D30  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80507D34  4B FF CE A1 */	bl anm_init__FP10e_rd_classifUcf
/* 80507D38  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80507D3C  4B D5 FC 18 */	b cM_rndF__Ff
/* 80507D40  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80507D44  EC 00 08 2A */	fadds f0, f0, f1
/* 80507D48  FC 00 00 1E */	fctiwz f0, f0
/* 80507D4C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80507D50  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80507D54  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 80507D58  C0 7E 09 78 */	lfs f3, 0x978(r30)
/* 80507D5C  3C 60 80 52 */	lis r3, l_HIO@ha
/* 80507D60  38 63 91 94 */	addi r3, r3, l_HIO@l
/* 80507D64  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 80507D68  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80507D6C  EC 02 08 28 */	fsubs f0, f2, f1
/* 80507D70  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80507D74  40 80 00 10 */	bge lbl_80507D84
/* 80507D78  38 00 00 01 */	li r0, 1
/* 80507D7C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80507D80  48 00 00 A4 */	b lbl_80507E24
lbl_80507D84:
/* 80507D84  EC 01 10 2A */	fadds f0, f1, f2
/* 80507D88  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80507D8C  40 81 00 10 */	ble lbl_80507D9C
/* 80507D90  38 00 00 02 */	li r0, 2
/* 80507D94  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80507D98  48 00 00 8C */	b lbl_80507E24
lbl_80507D9C:
/* 80507D9C  3B 80 00 01 */	li r28, 1
/* 80507DA0  48 00 00 84 */	b lbl_80507E24
lbl_80507DA4:
/* 80507DA4  FF E0 F0 90 */	fmr f31, f30
/* 80507DA8  3F BD 00 01 */	addis r29, r29, 1
/* 80507DAC  C0 3E 09 78 */	lfs f1, 0x978(r30)
/* 80507DB0  3C 60 80 52 */	lis r3, l_HIO@ha
/* 80507DB4  38 63 91 94 */	addi r3, r3, l_HIO@l
/* 80507DB8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80507DBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80507DC0  3B BD 80 00 */	addi r29, r29, -32768
/* 80507DC4  41 81 00 30 */	bgt lbl_80507DF4
/* 80507DC8  A8 1E 09 90 */	lha r0, 0x990(r30)
/* 80507DCC  2C 00 00 00 */	cmpwi r0, 0
/* 80507DD0  41 82 00 24 */	beq lbl_80507DF4
/* 80507DD4  80 1E 0B 70 */	lwz r0, 0xb70(r30)
/* 80507DD8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80507DDC  40 82 00 18 */	bne lbl_80507DF4
/* 80507DE0  7F C3 F3 78 */	mr r3, r30
/* 80507DE4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80507DE8  4B FF E9 B9 */	bl move_gake_check__FP10e_rd_classf
/* 80507DEC  2C 03 00 00 */	cmpwi r3, 0
/* 80507DF0  41 82 00 08 */	beq lbl_80507DF8
lbl_80507DF4:
/* 80507DF4  3B 80 00 01 */	li r28, 1
lbl_80507DF8:
/* 80507DF8  38 00 00 14 */	li r0, 0x14
/* 80507DFC  B0 1E 09 94 */	sth r0, 0x994(r30)
/* 80507E00  48 00 00 24 */	b lbl_80507E24
lbl_80507E04:
/* 80507E04  FF E0 F0 90 */	fmr f31, f30
/* 80507E08  C0 3E 09 78 */	lfs f1, 0x978(r30)
/* 80507E0C  3C 60 80 52 */	lis r3, l_HIO@ha
/* 80507E10  38 63 91 94 */	addi r3, r3, l_HIO@l
/* 80507E14  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80507E18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80507E1C  40 80 00 08 */	bge lbl_80507E24
/* 80507E20  3B 80 00 01 */	li r28, 1
lbl_80507E24:
/* 80507E24  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80507E28  FC 20 F8 90 */	fmr f1, f31
/* 80507E2C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80507E30  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80507E34  4B D6 7C 08 */	b cLib_addCalc2__FPffff
/* 80507E38  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 80507E3C  2C 00 00 00 */	cmpwi r0, 0
/* 80507E40  41 80 00 18 */	blt lbl_80507E58
/* 80507E44  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80507E48  7F A4 EB 78 */	mr r4, r29
/* 80507E4C  38 A0 00 04 */	li r5, 4
/* 80507E50  38 C0 10 00 */	li r6, 0x1000
/* 80507E54  4B D6 87 B4 */	b cLib_addCalcAngleS2__FPssss
lbl_80507E58:
/* 80507E58  88 1E 05 BD */	lbz r0, 0x5bd(r30)
/* 80507E5C  7C 00 07 75 */	extsb. r0, r0
/* 80507E60  40 82 00 50 */	bne lbl_80507EB0
/* 80507E64  7F 80 07 75 */	extsb. r0, r28
/* 80507E68  41 82 00 48 */	beq lbl_80507EB0
/* 80507E6C  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 80507E70  28 00 00 03 */	cmplwi r0, 3
/* 80507E74  40 82 00 10 */	bne lbl_80507E84
/* 80507E78  38 00 00 07 */	li r0, 7
/* 80507E7C  B0 1E 09 72 */	sth r0, 0x972(r30)
/* 80507E80  48 00 00 0C */	b lbl_80507E8C
lbl_80507E84:
/* 80507E84  38 00 00 06 */	li r0, 6
/* 80507E88  B0 1E 09 72 */	sth r0, 0x972(r30)
lbl_80507E8C:
/* 80507E8C  38 00 00 00 */	li r0, 0
/* 80507E90  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80507E94  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80507E98  4B D5 FA BC */	b cM_rndF__Ff
/* 80507E9C  FC 00 08 1E */	fctiwz f0, f1
/* 80507EA0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80507EA4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80507EA8  B0 1E 09 92 */	sth r0, 0x992(r30)
/* 80507EAC  48 00 00 B0 */	b lbl_80507F5C
lbl_80507EB0:
/* 80507EB0  A8 1E 09 94 */	lha r0, 0x994(r30)
/* 80507EB4  2C 00 00 00 */	cmpwi r0, 0
/* 80507EB8  40 82 00 6C */	bne lbl_80507F24
/* 80507EBC  7F C3 F3 78 */	mr r3, r30
/* 80507EC0  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80507EC4  C0 1E 09 80 */	lfs f0, 0x980(r30)
/* 80507EC8  EC 21 00 2A */	fadds f1, f1, f0
/* 80507ECC  38 80 7F FF */	li r4, 0x7fff
/* 80507ED0  4B FF E7 05 */	bl pl_check__FP10e_rd_classfs
/* 80507ED4  2C 03 00 00 */	cmpwi r3, 0
/* 80507ED8  40 82 00 4C */	bne lbl_80507F24
/* 80507EDC  38 00 00 00 */	li r0, 0
/* 80507EE0  B0 1E 09 72 */	sth r0, 0x972(r30)
/* 80507EE4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80507EE8  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80507EEC  4B D5 FA 68 */	b cM_rndF__Ff
/* 80507EF0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80507EF4  EC 00 08 2A */	fadds f0, f0, f1
/* 80507EF8  FC 00 00 1E */	fctiwz f0, f0
/* 80507EFC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80507F00  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80507F04  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 80507F08  7F C3 F3 78 */	mr r3, r30
/* 80507F0C  38 80 00 1D */	li r4, 0x1d
/* 80507F10  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80507F14  38 A0 00 02 */	li r5, 2
/* 80507F18  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80507F1C  4B FF CC B9 */	bl anm_init__FP10e_rd_classifUcf
/* 80507F20  48 00 00 3C */	b lbl_80507F5C
lbl_80507F24:
/* 80507F24  A8 1E 09 70 */	lha r0, 0x970(r30)
/* 80507F28  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80507F2C  40 82 00 30 */	bne lbl_80507F5C
/* 80507F30  7F C3 F3 78 */	mr r3, r30
/* 80507F34  38 80 30 00 */	li r4, 0x3000
/* 80507F38  4B FF E4 F5 */	bl wb_check__FP10e_rd_classs
/* 80507F3C  7F C3 F3 78 */	mr r3, r30
/* 80507F40  4B FF E8 19 */	bl bomb_view_check__FP10e_rd_class
/* 80507F44  28 03 00 00 */	cmplwi r3, 0
/* 80507F48  41 82 00 14 */	beq lbl_80507F5C
/* 80507F4C  38 00 00 13 */	li r0, 0x13
/* 80507F50  B0 1E 09 72 */	sth r0, 0x972(r30)
/* 80507F54  38 00 00 00 */	li r0, 0
/* 80507F58  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_80507F5C:
/* 80507F5C  A8 1E 09 72 */	lha r0, 0x972(r30)
/* 80507F60  2C 00 00 05 */	cmpwi r0, 5
/* 80507F64  41 82 00 0C */	beq lbl_80507F70
/* 80507F68  38 00 00 00 */	li r0, 0
/* 80507F6C  98 1E 09 C8 */	stb r0, 0x9c8(r30)
lbl_80507F70:
/* 80507F70  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80507F74  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80507F78  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80507F7C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80507F80  39 61 00 20 */	addi r11, r1, 0x20
/* 80507F84  4B E5 A2 A0 */	b _restgpr_28
/* 80507F88  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80507F8C  7C 08 03 A6 */	mtlr r0
/* 80507F90  38 21 00 40 */	addi r1, r1, 0x40
/* 80507F94  4E 80 00 20 */	blr 
