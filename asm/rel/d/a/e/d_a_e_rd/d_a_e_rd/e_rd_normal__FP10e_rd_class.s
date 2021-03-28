lbl_80506C8C:
/* 80506C8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80506C90  7C 08 02 A6 */	mflr r0
/* 80506C94  90 01 00 44 */	stw r0, 0x44(r1)
/* 80506C98  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80506C9C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80506CA0  39 61 00 30 */	addi r11, r1, 0x30
/* 80506CA4  4B E5 B5 34 */	b _savegpr_28
/* 80506CA8  7C 7C 1B 78 */	mr r28, r3
/* 80506CAC  3C 60 80 52 */	lis r3, lit_1109@ha
/* 80506CB0  3B C3 91 40 */	addi r30, r3, lit_1109@l
/* 80506CB4  3C 60 80 52 */	lis r3, lit_4208@ha
/* 80506CB8  3B E3 85 84 */	addi r31, r3, lit_4208@l
/* 80506CBC  88 1C 05 B6 */	lbz r0, 0x5b6(r28)
/* 80506CC0  28 00 00 01 */	cmplwi r0, 1
/* 80506CC4  41 82 00 0C */	beq lbl_80506CD0
/* 80506CC8  28 00 00 02 */	cmplwi r0, 2
/* 80506CCC  40 82 00 20 */	bne lbl_80506CEC
lbl_80506CD0:
/* 80506CD0  7F 83 E3 78 */	mr r3, r28
/* 80506CD4  4B FF F8 49 */	bl wb_init_ride__FP10e_rd_class
/* 80506CD8  2C 03 00 00 */	cmpwi r3, 0
/* 80506CDC  41 82 04 48 */	beq lbl_80507124
/* 80506CE0  38 00 00 00 */	li r0, 0
/* 80506CE4  98 1C 05 B6 */	stb r0, 0x5b6(r28)
/* 80506CE8  48 00 04 3C */	b lbl_80507124
lbl_80506CEC:
/* 80506CEC  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80506CF0  3B A0 40 00 */	li r29, 0x4000
/* 80506CF4  88 7E 00 C0 */	lbz r3, 0xc0(r30)
/* 80506CF8  28 03 00 00 */	cmplwi r3, 0
/* 80506CFC  41 82 00 08 */	beq lbl_80506D04
/* 80506D00  3B A0 60 00 */	li r29, 0x6000
lbl_80506D04:
/* 80506D04  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 80506D08  2C 00 00 02 */	cmpwi r0, 2
/* 80506D0C  41 82 00 C4 */	beq lbl_80506DD0
/* 80506D10  40 80 00 14 */	bge lbl_80506D24
/* 80506D14  2C 00 00 00 */	cmpwi r0, 0
/* 80506D18  41 82 00 1C */	beq lbl_80506D34
/* 80506D1C  40 80 00 54 */	bge lbl_80506D70
/* 80506D20  48 00 02 C0 */	b lbl_80506FE0
lbl_80506D24:
/* 80506D24  2C 00 00 04 */	cmpwi r0, 4
/* 80506D28  41 82 02 3C */	beq lbl_80506F64
/* 80506D2C  40 80 02 B4 */	bge lbl_80506FE0
/* 80506D30  48 00 01 48 */	b lbl_80506E78
lbl_80506D34:
/* 80506D34  88 1C 05 BD */	lbz r0, 0x5bd(r28)
/* 80506D38  7C 00 07 75 */	extsb. r0, r0
/* 80506D3C  41 82 00 28 */	beq lbl_80506D64
/* 80506D40  7F 83 E3 78 */	mr r3, r28
/* 80506D44  38 80 00 04 */	li r4, 4
/* 80506D48  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80506D4C  38 A0 00 00 */	li r5, 0
/* 80506D50  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80506D54  4B FF DE 81 */	bl anm_init__FP10e_rd_classifUcf
/* 80506D58  38 00 00 01 */	li r0, 1
/* 80506D5C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80506D60  48 00 02 80 */	b lbl_80506FE0
lbl_80506D64:
/* 80506D64  38 00 00 02 */	li r0, 2
/* 80506D68  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80506D6C  48 00 02 74 */	b lbl_80506FE0
lbl_80506D70:
/* 80506D70  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 80506D74  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80506D78  FC 00 00 1E */	fctiwz f0, f0
/* 80506D7C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80506D80  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80506D84  2C 00 00 0B */	cmpwi r0, 0xb
/* 80506D88  40 82 00 0C */	bne lbl_80506D94
/* 80506D8C  38 00 00 00 */	li r0, 0
/* 80506D90  98 1C 05 BD */	stb r0, 0x5bd(r28)
lbl_80506D94:
/* 80506D94  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 80506D98  38 80 00 01 */	li r4, 1
/* 80506D9C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80506DA0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80506DA4  40 82 00 18 */	bne lbl_80506DBC
/* 80506DA8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80506DAC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80506DB0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80506DB4  41 82 00 08 */	beq lbl_80506DBC
/* 80506DB8  38 80 00 00 */	li r4, 0
lbl_80506DBC:
/* 80506DBC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80506DC0  41 82 02 20 */	beq lbl_80506FE0
/* 80506DC4  38 00 00 02 */	li r0, 2
/* 80506DC8  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80506DCC  48 00 02 14 */	b lbl_80506FE0
lbl_80506DD0:
/* 80506DD0  A8 1C 09 90 */	lha r0, 0x990(r28)
/* 80506DD4  2C 00 00 00 */	cmpwi r0, 0
/* 80506DD8  40 82 00 88 */	bne lbl_80506E60
/* 80506DDC  80 1C 0A FC */	lwz r0, 0xafc(r28)
/* 80506DE0  28 00 00 00 */	cmplwi r0, 0
/* 80506DE4  41 82 00 28 */	beq lbl_80506E0C
/* 80506DE8  7F 83 E3 78 */	mr r3, r28
/* 80506DEC  4B FF FC 75 */	bl path_check__FP10e_rd_class
/* 80506DF0  2C 03 00 00 */	cmpwi r3, 0
/* 80506DF4  41 82 00 18 */	beq lbl_80506E0C
/* 80506DF8  38 00 00 33 */	li r0, 0x33
/* 80506DFC  B0 1C 09 72 */	sth r0, 0x972(r28)
/* 80506E00  38 00 00 00 */	li r0, 0
/* 80506E04  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80506E08  48 00 03 1C */	b lbl_80507124
lbl_80506E0C:
/* 80506E0C  7F 83 E3 78 */	mr r3, r28
/* 80506E10  4B FF FA 81 */	bl way_check__FP10e_rd_class
/* 80506E14  2C 03 00 00 */	cmpwi r3, 0
/* 80506E18  41 82 01 C8 */	beq lbl_80506FE0
/* 80506E1C  7F 83 E3 78 */	mr r3, r28
/* 80506E20  38 80 00 41 */	li r4, 0x41
/* 80506E24  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80506E28  38 A0 00 02 */	li r5, 2
/* 80506E2C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80506E30  4B FF DD A5 */	bl anm_init__FP10e_rd_classifUcf
/* 80506E34  38 00 00 03 */	li r0, 3
/* 80506E38  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80506E3C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80506E40  4B D6 0B 14 */	b cM_rndF__Ff
/* 80506E44  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80506E48  EC 00 08 2A */	fadds f0, f0, f1
/* 80506E4C  FC 00 00 1E */	fctiwz f0, f0
/* 80506E50  D8 01 00 08 */	stfd f0, 8(r1)
/* 80506E54  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80506E58  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 80506E5C  48 00 01 84 */	b lbl_80506FE0
lbl_80506E60:
/* 80506E60  28 03 00 00 */	cmplwi r3, 0
/* 80506E64  41 82 00 0C */	beq lbl_80506E70
/* 80506E68  3B A0 70 00 */	li r29, 0x7000
/* 80506E6C  48 00 01 74 */	b lbl_80506FE0
lbl_80506E70:
/* 80506E70  3B A0 60 00 */	li r29, 0x6000
/* 80506E74  48 00 01 6C */	b lbl_80506FE0
lbl_80506E78:
/* 80506E78  38 7E 00 54 */	addi r3, r30, 0x54
/* 80506E7C  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 80506E80  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80506E84  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80506E88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80506E8C  4C 41 13 82 */	cror 2, 1, 2
/* 80506E90  40 82 00 5C */	bne lbl_80506EEC
/* 80506E94  7F 83 E3 78 */	mr r3, r28
/* 80506E98  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80506E9C  4B FF F9 05 */	bl move_gake_check__FP10e_rd_classf
/* 80506EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80506EA4  41 82 00 48 */	beq lbl_80506EEC
/* 80506EA8  38 00 00 04 */	li r0, 4
/* 80506EAC  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80506EB0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80506EB4  4B D6 0A A0 */	b cM_rndF__Ff
/* 80506EB8  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80506EBC  EC 00 08 2A */	fadds f0, f0, f1
/* 80506EC0  FC 00 00 1E */	fctiwz f0, f0
/* 80506EC4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80506EC8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80506ECC  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 80506ED0  7F 83 E3 78 */	mr r3, r28
/* 80506ED4  38 80 00 1D */	li r4, 0x1d
/* 80506ED8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80506EDC  38 A0 00 02 */	li r5, 2
/* 80506EE0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80506EE4  4B FF DC F1 */	bl anm_init__FP10e_rd_classifUcf
/* 80506EE8  48 00 00 F8 */	b lbl_80506FE0
lbl_80506EEC:
/* 80506EEC  A8 1C 09 90 */	lha r0, 0x990(r28)
/* 80506EF0  2C 00 00 00 */	cmpwi r0, 0
/* 80506EF4  41 82 00 2C */	beq lbl_80506F20
/* 80506EF8  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80506EFC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80506F00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80506F04  4C 41 13 82 */	cror 2, 1, 2
/* 80506F08  40 82 00 D8 */	bne lbl_80506FE0
/* 80506F0C  7F 83 E3 78 */	mr r3, r28
/* 80506F10  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80506F14  4B FF EF 31 */	bl way_bg_check__FP10e_rd_classf
/* 80506F18  2C 03 00 00 */	cmpwi r3, 0
/* 80506F1C  41 82 00 C4 */	beq lbl_80506FE0
lbl_80506F20:
/* 80506F20  38 00 00 02 */	li r0, 2
/* 80506F24  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80506F28  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80506F2C  4B D6 0A 28 */	b cM_rndF__Ff
/* 80506F30  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80506F34  EC 00 08 2A */	fadds f0, f0, f1
/* 80506F38  FC 00 00 1E */	fctiwz f0, f0
/* 80506F3C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80506F40  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80506F44  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 80506F48  7F 83 E3 78 */	mr r3, r28
/* 80506F4C  38 80 00 1D */	li r4, 0x1d
/* 80506F50  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80506F54  38 A0 00 02 */	li r5, 2
/* 80506F58  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80506F5C  4B FF DC 79 */	bl anm_init__FP10e_rd_classifUcf
/* 80506F60  48 00 00 80 */	b lbl_80506FE0
lbl_80506F64:
/* 80506F64  38 00 FF FF */	li r0, -1
/* 80506F68  98 1C 09 C8 */	stb r0, 0x9c8(r28)
/* 80506F6C  A8 1C 09 90 */	lha r0, 0x990(r28)
/* 80506F70  2C 00 00 00 */	cmpwi r0, 0
/* 80506F74  40 82 00 6C */	bne lbl_80506FE0
/* 80506F78  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80506F7C  4B D6 0A 10 */	b cM_rndFX__Ff
/* 80506F80  FC 00 08 1E */	fctiwz f0, f1
/* 80506F84  D8 01 00 08 */	stfd f0, 8(r1)
/* 80506F88  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80506F8C  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 80506F90  3C 03 00 01 */	addis r0, r3, 1
/* 80506F94  7C 60 22 14 */	add r3, r0, r4
/* 80506F98  38 03 80 00 */	addi r0, r3, -32768
/* 80506F9C  B0 1C 05 CC */	sth r0, 0x5cc(r28)
/* 80506FA0  7F 83 E3 78 */	mr r3, r28
/* 80506FA4  38 80 00 41 */	li r4, 0x41
/* 80506FA8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80506FAC  38 A0 00 02 */	li r5, 2
/* 80506FB0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80506FB4  4B FF DC 21 */	bl anm_init__FP10e_rd_classifUcf
/* 80506FB8  38 00 00 03 */	li r0, 3
/* 80506FBC  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80506FC0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80506FC4  4B D6 09 90 */	b cM_rndF__Ff
/* 80506FC8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80506FCC  EC 00 08 2A */	fadds f0, f0, f1
/* 80506FD0  FC 00 00 1E */	fctiwz f0, f0
/* 80506FD4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80506FD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80506FDC  B0 1C 09 90 */	sth r0, 0x990(r28)
lbl_80506FE0:
/* 80506FE0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80506FE4  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80506FE8  41 82 00 3C */	beq lbl_80507024
/* 80506FEC  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80506FF0  A8 9C 05 CC */	lha r4, 0x5cc(r28)
/* 80506FF4  38 A0 00 08 */	li r5, 8
/* 80506FF8  38 C0 04 00 */	li r6, 0x400
/* 80506FFC  4B D6 96 0C */	b cLib_addCalcAngleS2__FPssss
/* 80507000  A8 7C 05 CC */	lha r3, 0x5cc(r28)
/* 80507004  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80507008  7C 03 00 50 */	subf r0, r3, r0
/* 8050700C  7C 00 07 34 */	extsh r0, r0
/* 80507010  2C 00 04 00 */	cmpwi r0, 0x400
/* 80507014  41 81 00 0C */	bgt lbl_80507020
/* 80507018  2C 00 FC 00 */	cmpwi r0, -1024
/* 8050701C  40 80 00 08 */	bge lbl_80507024
lbl_80507020:
/* 80507020  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_80507024:
/* 80507024  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80507028  FC 20 F8 90 */	fmr f1, f31
/* 8050702C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80507030  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80507034  4B D6 8A 08 */	b cLib_addCalc2__FPffff
/* 80507038  C0 3C 09 80 */	lfs f1, 0x980(r28)
/* 8050703C  38 80 00 00 */	li r4, 0
/* 80507040  88 7C 09 A1 */	lbz r3, 0x9a1(r28)
/* 80507044  2C 03 00 01 */	cmpwi r3, 1
/* 80507048  41 82 00 10 */	beq lbl_80507058
/* 8050704C  A8 1E 00 A4 */	lha r0, 0xa4(r30)
/* 80507050  2C 00 00 00 */	cmpwi r0, 0
/* 80507054  41 82 00 1C */	beq lbl_80507070
lbl_80507058:
/* 80507058  7C 60 07 74 */	extsb r0, r3
/* 8050705C  2C 00 00 01 */	cmpwi r0, 1
/* 80507060  40 82 00 08 */	bne lbl_80507068
/* 80507064  38 80 00 01 */	li r4, 1
lbl_80507068:
/* 80507068  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8050706C  3B A0 7F FF */	li r29, 0x7fff
lbl_80507070:
/* 80507070  A8 7C 09 70 */	lha r3, 0x970(r28)
/* 80507074  54 60 07 7F */	clrlwi. r0, r3, 0x1d
/* 80507078  41 82 00 0C */	beq lbl_80507084
/* 8050707C  2C 04 00 00 */	cmpwi r4, 0
/* 80507080  41 82 00 A4 */	beq lbl_80507124
lbl_80507084:
/* 80507084  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 80507088  2C 00 00 02 */	cmpwi r0, 2
/* 8050708C  41 80 00 98 */	blt lbl_80507124
/* 80507090  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80507094  41 82 00 1C */	beq lbl_805070B0
/* 80507098  2C 04 00 00 */	cmpwi r4, 0
/* 8050709C  40 82 00 14 */	bne lbl_805070B0
/* 805070A0  7F 83 E3 78 */	mr r3, r28
/* 805070A4  7F A4 EB 78 */	mr r4, r29
/* 805070A8  4B FF F3 85 */	bl wb_check__FP10e_rd_classs
/* 805070AC  48 00 00 78 */	b lbl_80507124
lbl_805070B0:
/* 805070B0  7F 83 E3 78 */	mr r3, r28
/* 805070B4  7F A4 EB 78 */	mr r4, r29
/* 805070B8  4B FF F5 1D */	bl pl_check__FP10e_rd_classfs
/* 805070BC  2C 03 00 00 */	cmpwi r3, 0
/* 805070C0  41 82 00 44 */	beq lbl_80507104
/* 805070C4  88 1C 05 BC */	lbz r0, 0x5bc(r28)
/* 805070C8  28 00 00 01 */	cmplwi r0, 1
/* 805070CC  40 82 00 20 */	bne lbl_805070EC
/* 805070D0  38 00 00 03 */	li r0, 3
/* 805070D4  B0 1C 09 72 */	sth r0, 0x972(r28)
/* 805070D8  38 00 FF F6 */	li r0, -10
/* 805070DC  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 805070E0  38 00 00 3C */	li r0, 0x3c
/* 805070E4  B0 1C 09 90 */	sth r0, 0x990(r28)
/* 805070E8  48 00 00 1C */	b lbl_80507104
lbl_805070EC:
/* 805070EC  28 00 00 02 */	cmplwi r0, 2
/* 805070F0  41 80 00 14 */	blt lbl_80507104
/* 805070F4  38 00 00 05 */	li r0, 5
/* 805070F8  B0 1C 09 72 */	sth r0, 0x972(r28)
/* 805070FC  38 00 FF F6 */	li r0, -10
/* 80507100  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_80507104:
/* 80507104  7F 83 E3 78 */	mr r3, r28
/* 80507108  4B FF F6 51 */	bl bomb_view_check__FP10e_rd_class
/* 8050710C  28 03 00 00 */	cmplwi r3, 0
/* 80507110  41 82 00 14 */	beq lbl_80507124
/* 80507114  38 00 00 13 */	li r0, 0x13
/* 80507118  B0 1C 09 72 */	sth r0, 0x972(r28)
/* 8050711C  38 00 00 00 */	li r0, 0
/* 80507120  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_80507124:
/* 80507124  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80507128  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8050712C  39 61 00 30 */	addi r11, r1, 0x30
/* 80507130  4B E5 B0 F4 */	b _restgpr_28
/* 80507134  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80507138  7C 08 03 A6 */	mtlr r0
/* 8050713C  38 21 00 40 */	addi r1, r1, 0x40
/* 80507140  4E 80 00 20 */	blr 
