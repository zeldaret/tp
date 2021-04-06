lbl_80B11CCC:
/* 80B11CCC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80B11CD0  7C 08 02 A6 */	mflr r0
/* 80B11CD4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B11CD8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80B11CDC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80B11CE0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80B11CE4  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80B11CE8  7C 7E 1B 78 */	mr r30, r3
/* 80B11CEC  3C 80 80 B1 */	lis r4, lit_3648@ha /* 0x80B142DC@ha */
/* 80B11CF0  3B E4 42 DC */	addi r31, r4, lit_3648@l /* 0x80B142DC@l */
/* 80B11CF4  C3 FF 00 08 */	lfs f31, 8(r31)
/* 80B11CF8  D3 E1 00 38 */	stfs f31, 0x38(r1)
/* 80B11CFC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80B11D00  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80B11D04  FC 00 F8 90 */	fmr f0, f31
/* 80B11D08  D3 E1 00 40 */	stfs f31, 0x40(r1)
/* 80B11D0C  A8 03 06 0A */	lha r0, 0x60a(r3)
/* 80B11D10  2C 00 00 02 */	cmpwi r0, 2
/* 80B11D14  41 82 01 E4 */	beq lbl_80B11EF8
/* 80B11D18  40 80 00 14 */	bge lbl_80B11D2C
/* 80B11D1C  2C 00 00 00 */	cmpwi r0, 0
/* 80B11D20  41 82 00 24 */	beq lbl_80B11D44
/* 80B11D24  40 80 00 80 */	bge lbl_80B11DA4
/* 80B11D28  48 00 03 6C */	b lbl_80B12094
lbl_80B11D2C:
/* 80B11D2C  2C 00 00 0B */	cmpwi r0, 0xb
/* 80B11D30  41 82 03 38 */	beq lbl_80B12068
/* 80B11D34  40 80 03 60 */	bge lbl_80B12094
/* 80B11D38  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B11D3C  40 80 02 C8 */	bge lbl_80B12004
/* 80B11D40  48 00 03 54 */	b lbl_80B12094
lbl_80B11D44:
/* 80B11D44  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80B11D48  4B 75 5C 0D */	bl cM_rndF__Ff
/* 80B11D4C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80B11D50  EC 00 08 2A */	fadds f0, f0, f1
/* 80B11D54  FC 00 00 1E */	fctiwz f0, f0
/* 80B11D58  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80B11D5C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B11D60  B0 1E 06 10 */	sth r0, 0x610(r30)
/* 80B11D64  7F C3 F3 78 */	mr r3, r30
/* 80B11D68  38 80 00 0A */	li r4, 0xa
/* 80B11D6C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80B11D70  38 A0 00 02 */	li r5, 2
/* 80B11D74  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B11D78  4B FF F0 A9 */	bl anm_init__FP14npc_tkj2_classifUcf
/* 80B11D7C  A8 7E 06 0A */	lha r3, 0x60a(r30)
/* 80B11D80  38 03 00 01 */	addi r0, r3, 1
/* 80B11D84  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80B11D88  88 1E 06 30 */	lbz r0, 0x630(r30)
/* 80B11D8C  28 00 00 00 */	cmplwi r0, 0
/* 80B11D90  41 82 03 04 */	beq lbl_80B12094
/* 80B11D94  A8 7E 06 0A */	lha r3, 0x60a(r30)
/* 80B11D98  38 03 00 01 */	addi r0, r3, 1
/* 80B11D9C  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80B11DA0  48 00 02 F4 */	b lbl_80B12094
lbl_80B11DA4:
/* 80B11DA4  A8 1E 06 10 */	lha r0, 0x610(r30)
/* 80B11DA8  2C 00 00 00 */	cmpwi r0, 0
/* 80B11DAC  40 82 02 E8 */	bne lbl_80B12094
/* 80B11DB0  38 00 00 0A */	li r0, 0xa
/* 80B11DB4  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80B11DB8  D3 E1 00 38 */	stfs f31, 0x38(r1)
/* 80B11DBC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80B11DC0  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80B11DC4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B11DC8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B11DCC  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80B11DD0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B11DD4  4B 75 4D 61 */	bl __mi__4cXyzCFRC3Vec
/* 80B11DD8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B11DDC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B11DE0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B11DE4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B11DE8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B11DEC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B11DF0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80B11DF4  4B 75 5B 99 */	bl cM_rndFX__Ff
/* 80B11DF8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B11DFC  EC 00 08 2A */	fadds f0, f0, f1
/* 80B11E00  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B11E04  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80B11E08  4B 75 5B 85 */	bl cM_rndFX__Ff
/* 80B11E0C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80B11E10  EC 40 08 2A */	fadds f2, f0, f1
/* 80B11E14  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80B11E18  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80B11E1C  4B 75 58 59 */	bl cM_atan2s__Fff
/* 80B11E20  B0 7E 05 C4 */	sth r3, 0x5c4(r30)
/* 80B11E24  FC 00 F8 18 */	frsp f0, f31
/* 80B11E28  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B11E2C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B11E30  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B11E34  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80B11E38  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B11E3C  7F C3 F3 78 */	mr r3, r30
/* 80B11E40  38 81 00 20 */	addi r4, r1, 0x20
/* 80B11E44  4B FF FE 05 */	bl GndCheck__FP14npc_tkj2_class4cXyz
/* 80B11E48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B11E4C  41 82 00 30 */	beq lbl_80B11E7C
/* 80B11E50  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80B11E54  4B 75 5B 39 */	bl cM_rndFX__Ff
/* 80B11E58  FC 00 08 1E */	fctiwz f0, f1
/* 80B11E5C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80B11E60  80 81 00 64 */	lwz r4, 0x64(r1)
/* 80B11E64  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80B11E68  3C 03 00 01 */	addis r0, r3, 1
/* 80B11E6C  7C 60 22 14 */	add r3, r0, r4
/* 80B11E70  38 03 80 00 */	addi r0, r3, -32768
/* 80B11E74  B0 1E 05 C4 */	sth r0, 0x5c4(r30)
/* 80B11E78  48 00 00 44 */	b lbl_80B11EBC
lbl_80B11E7C:
/* 80B11E7C  7F C3 F3 78 */	mr r3, r30
/* 80B11E80  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80B11E84  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80B11E88  4B 50 B0 49 */	bl fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 80B11E8C  2C 03 00 00 */	cmpwi r3, 0
/* 80B11E90  41 82 00 2C */	beq lbl_80B11EBC
/* 80B11E94  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80B11E98  4B 75 5A F5 */	bl cM_rndFX__Ff
/* 80B11E9C  FC 00 08 1E */	fctiwz f0, f1
/* 80B11EA0  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80B11EA4  80 81 00 64 */	lwz r4, 0x64(r1)
/* 80B11EA8  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80B11EAC  3C 03 00 01 */	addis r0, r3, 1
/* 80B11EB0  7C 60 22 14 */	add r3, r0, r4
/* 80B11EB4  38 03 80 00 */	addi r0, r3, -32768
/* 80B11EB8  B0 1E 05 C4 */	sth r0, 0x5c4(r30)
lbl_80B11EBC:
/* 80B11EBC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80B11EC0  4B 75 5A 95 */	bl cM_rndF__Ff
/* 80B11EC4  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80B11EC8  EC 00 08 2A */	fadds f0, f0, f1
/* 80B11ECC  FC 00 00 1E */	fctiwz f0, f0
/* 80B11ED0  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80B11ED4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B11ED8  B0 1E 06 10 */	sth r0, 0x610(r30)
/* 80B11EDC  7F C3 F3 78 */	mr r3, r30
/* 80B11EE0  38 80 00 0B */	li r4, 0xb
/* 80B11EE4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80B11EE8  38 A0 00 02 */	li r5, 2
/* 80B11EEC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B11EF0  4B FF EF 31 */	bl anm_init__FP14npc_tkj2_classifUcf
/* 80B11EF4  48 00 01 A0 */	b lbl_80B12094
lbl_80B11EF8:
/* 80B11EF8  A8 1E 06 10 */	lha r0, 0x610(r30)
/* 80B11EFC  2C 00 00 00 */	cmpwi r0, 0
/* 80B11F00  40 82 01 94 */	bne lbl_80B12094
/* 80B11F04  38 00 00 0B */	li r0, 0xb
/* 80B11F08  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80B11F0C  D3 E1 00 38 */	stfs f31, 0x38(r1)
/* 80B11F10  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80B11F14  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80B11F18  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B11F1C  38 61 00 14 */	addi r3, r1, 0x14
/* 80B11F20  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80B11F24  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B11F28  4B 75 4C 0D */	bl __mi__4cXyzCFRC3Vec
/* 80B11F2C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B11F30  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B11F34  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B11F38  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B11F3C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B11F40  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B11F44  FC 00 F8 90 */	fmr f0, f31
/* 80B11F48  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B11F4C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B11F50  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B11F54  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80B11F58  4B 4F AF B5 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B11F5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B11F60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B11F64  38 81 00 50 */	addi r4, r1, 0x50
/* 80B11F68  38 A1 00 44 */	addi r5, r1, 0x44
/* 80B11F6C  4B 83 4E 01 */	bl PSMTXMultVec
/* 80B11F70  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80B11F74  4B 75 5A 19 */	bl cM_rndFX__Ff
/* 80B11F78  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B11F7C  EC 00 08 2A */	fadds f0, f0, f1
/* 80B11F80  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B11F84  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80B11F88  4B 75 5A 05 */	bl cM_rndFX__Ff
/* 80B11F8C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B11F90  EC 40 08 2A */	fadds f2, f0, f1
/* 80B11F94  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80B11F98  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80B11F9C  4B 75 56 D9 */	bl cM_atan2s__Fff
/* 80B11FA0  B0 7E 05 C4 */	sth r3, 0x5c4(r30)
/* 80B11FA4  7F C3 F3 78 */	mr r3, r30
/* 80B11FA8  A8 9E 05 C4 */	lha r4, 0x5c4(r30)
/* 80B11FAC  4B FF F7 39 */	bl CheckWall__FP14npc_tkj2_classs
/* 80B11FB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B11FB4  40 82 00 14 */	bne lbl_80B11FC8
/* 80B11FB8  A8 7E 05 C4 */	lha r3, 0x5c4(r30)
/* 80B11FBC  3C 63 00 01 */	addis r3, r3, 1
/* 80B11FC0  38 03 80 00 */	addi r0, r3, -32768
/* 80B11FC4  B0 1E 05 C4 */	sth r0, 0x5c4(r30)
lbl_80B11FC8:
/* 80B11FC8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80B11FCC  4B 75 59 89 */	bl cM_rndF__Ff
/* 80B11FD0  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80B11FD4  EC 00 08 2A */	fadds f0, f0, f1
/* 80B11FD8  FC 00 00 1E */	fctiwz f0, f0
/* 80B11FDC  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80B11FE0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B11FE4  B0 1E 06 10 */	sth r0, 0x610(r30)
/* 80B11FE8  7F C3 F3 78 */	mr r3, r30
/* 80B11FEC  38 80 00 0B */	li r4, 0xb
/* 80B11FF0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80B11FF4  38 A0 00 02 */	li r5, 2
/* 80B11FF8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B11FFC  4B FF EE 25 */	bl anm_init__FP14npc_tkj2_classifUcf
/* 80B12000  48 00 00 94 */	b lbl_80B12094
lbl_80B12004:
/* 80B12004  C3 FF 00 1C */	lfs f31, 0x1c(r31)
/* 80B12008  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B1200C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80B12010  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80B12014  FC 00 00 18 */	frsp f0, f0
/* 80B12018  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B1201C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B12020  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B12024  38 81 00 08 */	addi r4, r1, 8
/* 80B12028  4B FF FC 21 */	bl GndCheck__FP14npc_tkj2_class4cXyz
/* 80B1202C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B12030  41 82 00 14 */	beq lbl_80B12044
/* 80B12034  38 00 00 01 */	li r0, 1
/* 80B12038  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80B1203C  38 00 00 00 */	li r0, 0
/* 80B12040  B0 1E 06 10 */	sth r0, 0x610(r30)
lbl_80B12044:
/* 80B12044  A8 1E 06 10 */	lha r0, 0x610(r30)
/* 80B12048  2C 00 00 00 */	cmpwi r0, 0
/* 80B1204C  40 82 00 48 */	bne lbl_80B12094
/* 80B12050  38 00 00 00 */	li r0, 0
/* 80B12054  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80B12058  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80B1205C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B12060  C3 FF 00 58 */	lfs f31, 0x58(r31)
/* 80B12064  48 00 00 30 */	b lbl_80B12094
lbl_80B12068:
/* 80B12068  C3 FF 00 1C */	lfs f31, 0x1c(r31)
/* 80B1206C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80B12070  4B FF F6 75 */	bl CheckWall__FP14npc_tkj2_classs
/* 80B12074  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B12078  40 82 00 08 */	bne lbl_80B12080
/* 80B1207C  C3 FF 00 08 */	lfs f31, 8(r31)
lbl_80B12080:
/* 80B12080  A8 1E 06 10 */	lha r0, 0x610(r30)
/* 80B12084  2C 00 00 00 */	cmpwi r0, 0
/* 80B12088  40 82 00 0C */	bne lbl_80B12094
/* 80B1208C  38 00 00 00 */	li r0, 0
/* 80B12090  B0 1E 06 0A */	sth r0, 0x60a(r30)
lbl_80B12094:
/* 80B12094  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80B12098  A8 9E 05 C4 */	lha r4, 0x5c4(r30)
/* 80B1209C  38 A0 00 08 */	li r5, 8
/* 80B120A0  38 C0 04 00 */	li r6, 0x400
/* 80B120A4  4B 75 E5 65 */	bl cLib_addCalcAngleS2__FPssss
/* 80B120A8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80B120AC  FC 20 F8 90 */	fmr f1, f31
/* 80B120B0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B120B4  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80B120B8  4B 75 D9 85 */	bl cLib_addCalc2__FPffff
/* 80B120BC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80B120C0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80B120C4  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80B120C8  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80B120CC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80B120D0  7C 08 03 A6 */	mtlr r0
/* 80B120D4  38 21 00 80 */	addi r1, r1, 0x80
/* 80B120D8  4E 80 00 20 */	blr 
