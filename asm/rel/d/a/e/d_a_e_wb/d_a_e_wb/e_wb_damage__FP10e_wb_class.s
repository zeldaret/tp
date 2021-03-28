lbl_807D8C3C:
/* 807D8C3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807D8C40  7C 08 02 A6 */	mflr r0
/* 807D8C44  90 01 00 34 */	stw r0, 0x34(r1)
/* 807D8C48  39 61 00 30 */	addi r11, r1, 0x30
/* 807D8C4C  4B B8 95 90 */	b _savegpr_29
/* 807D8C50  7C 7D 1B 78 */	mr r29, r3
/* 807D8C54  3C 80 80 7E */	lis r4, lit_3882@ha
/* 807D8C58  3B E4 29 8C */	addi r31, r4, lit_3882@l
/* 807D8C5C  38 00 00 0A */	li r0, 0xa
/* 807D8C60  B0 03 06 A0 */	sth r0, 0x6a0(r3)
/* 807D8C64  3B C0 00 00 */	li r30, 0
/* 807D8C68  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807D8C6C  2C 00 00 02 */	cmpwi r0, 2
/* 807D8C70  41 82 01 2C */	beq lbl_807D8D9C
/* 807D8C74  40 80 00 14 */	bge lbl_807D8C88
/* 807D8C78  2C 00 00 00 */	cmpwi r0, 0
/* 807D8C7C  41 82 00 1C */	beq lbl_807D8C98
/* 807D8C80  40 80 00 C0 */	bge lbl_807D8D40
/* 807D8C84  48 00 03 34 */	b lbl_807D8FB8
lbl_807D8C88:
/* 807D8C88  2C 00 00 04 */	cmpwi r0, 4
/* 807D8C8C  41 82 02 CC */	beq lbl_807D8F58
/* 807D8C90  40 80 03 28 */	bge lbl_807D8FB8
/* 807D8C94  48 00 01 BC */	b lbl_807D8E50
lbl_807D8C98:
/* 807D8C98  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807D8C9C  D0 01 00 08 */	stfs f0, 8(r1)
/* 807D8CA0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807D8CA4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807D8CA8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807D8CAC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807D8CB0  38 61 00 08 */	addi r3, r1, 8
/* 807D8CB4  38 80 00 64 */	li r4, 0x64
/* 807D8CB8  28 1D 00 00 */	cmplwi r29, 0
/* 807D8CBC  41 82 00 0C */	beq lbl_807D8CC8
/* 807D8CC0  80 BD 00 04 */	lwz r5, 4(r29)
/* 807D8CC4  48 00 00 08 */	b lbl_807D8CCC
lbl_807D8CC8:
/* 807D8CC8  38 A0 FF FF */	li r5, -1
lbl_807D8CCC:
/* 807D8CCC  38 C0 00 05 */	li r6, 5
/* 807D8CD0  4B 9C F4 F0 */	b dKy_Sound_set__F4cXyziUii
/* 807D8CD4  7F A3 EB 78 */	mr r3, r29
/* 807D8CD8  38 80 00 08 */	li r4, 8
/* 807D8CDC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807D8CE0  38 A0 00 00 */	li r5, 0
/* 807D8CE4  FC 40 08 90 */	fmr f2, f1
/* 807D8CE8  4B FF 98 61 */	bl anm_init__FP10e_wb_classifUcf
/* 807D8CEC  38 00 00 01 */	li r0, 1
/* 807D8CF0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D8CF4  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 807D8CF8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807D8CFC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 807D8D00  4B A8 EC 54 */	b cM_rndF__Ff
/* 807D8D04  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 807D8D08  EC 00 08 2A */	fadds f0, f0, f1
/* 807D8D0C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807D8D10  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 807D8D14  4B A8 EC 78 */	b cM_rndFX__Ff
/* 807D8D18  FC 00 08 1E */	fctiwz f0, f1
/* 807D8D1C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807D8D20  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 807D8D24  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807D8D28  7C 00 1A 14 */	add r0, r0, r3
/* 807D8D2C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807D8D30  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 807D8D34  60 00 00 40 */	ori r0, r0, 0x40
/* 807D8D38  B0 1D 06 BE */	sth r0, 0x6be(r29)
/* 807D8D3C  48 00 02 7C */	b lbl_807D8FB8
lbl_807D8D40:
/* 807D8D40  80 1D 08 18 */	lwz r0, 0x818(r29)
/* 807D8D44  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807D8D48  41 82 02 70 */	beq lbl_807D8FB8
/* 807D8D4C  38 00 00 02 */	li r0, 2
/* 807D8D50  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D8D54  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 807D8D58  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 807D8D5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 807D8D60  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807D8D64  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 807D8D68  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807D8D6C  38 80 00 22 */	li r4, 0x22
/* 807D8D70  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807D8D74  38 A0 00 00 */	li r5, 0
/* 807D8D78  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D8D7C  4B FF 97 CD */	bl anm_init__FP10e_wb_classifUcf
/* 807D8D80  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 807D8D84  4B A8 EC 08 */	b cM_rndFX__Ff
/* 807D8D88  FC 00 08 1E */	fctiwz f0, f1
/* 807D8D8C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807D8D90  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807D8D94  B0 1D 06 B6 */	sth r0, 0x6b6(r29)
/* 807D8D98  48 00 02 20 */	b lbl_807D8FB8
lbl_807D8D9C:
/* 807D8D9C  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 807D8DA0  38 80 00 01 */	li r4, 1
/* 807D8DA4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807D8DA8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D8DAC  40 82 00 18 */	bne lbl_807D8DC4
/* 807D8DB0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807D8DB4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807D8DB8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807D8DBC  41 82 00 08 */	beq lbl_807D8DC4
/* 807D8DC0  38 80 00 00 */	li r4, 0
lbl_807D8DC4:
/* 807D8DC4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807D8DC8  41 82 01 F0 */	beq lbl_807D8FB8
/* 807D8DCC  38 00 00 03 */	li r0, 3
/* 807D8DD0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D8DD4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807D8DD8  4B A8 EB 7C */	b cM_rndF__Ff
/* 807D8DDC  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 807D8DE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D8DE4  40 80 00 28 */	bge lbl_807D8E0C
/* 807D8DE8  7F A3 EB 78 */	mr r3, r29
/* 807D8DEC  38 80 00 0C */	li r4, 0xc
/* 807D8DF0  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807D8DF4  38 A0 00 00 */	li r5, 0
/* 807D8DF8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D8DFC  4B FF 97 4D */	bl anm_init__FP10e_wb_classifUcf
/* 807D8E00  38 00 00 00 */	li r0, 0
/* 807D8E04  98 1D 06 E4 */	stb r0, 0x6e4(r29)
/* 807D8E08  48 00 00 24 */	b lbl_807D8E2C
lbl_807D8E0C:
/* 807D8E0C  7F A3 EB 78 */	mr r3, r29
/* 807D8E10  38 80 00 0D */	li r4, 0xd
/* 807D8E14  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807D8E18  38 A0 00 00 */	li r5, 0
/* 807D8E1C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D8E20  4B FF 97 29 */	bl anm_init__FP10e_wb_classifUcf
/* 807D8E24  38 00 00 01 */	li r0, 1
/* 807D8E28  98 1D 06 E4 */	stb r0, 0x6e4(r29)
lbl_807D8E2C:
/* 807D8E2C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 807D8E30  4B A8 EB 24 */	b cM_rndF__Ff
/* 807D8E34  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 807D8E38  EC 00 08 2A */	fadds f0, f0, f1
/* 807D8E3C  FC 00 00 1E */	fctiwz f0, f0
/* 807D8E40  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807D8E44  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807D8E48  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 807D8E4C  48 00 01 6C */	b lbl_807D8FB8
lbl_807D8E50:
/* 807D8E50  3B C0 00 01 */	li r30, 1
/* 807D8E54  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 807D8E58  38 80 00 01 */	li r4, 1
/* 807D8E5C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807D8E60  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D8E64  40 82 00 18 */	bne lbl_807D8E7C
/* 807D8E68  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807D8E6C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807D8E70  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807D8E74  41 82 00 08 */	beq lbl_807D8E7C
/* 807D8E78  38 80 00 00 */	li r4, 0
lbl_807D8E7C:
/* 807D8E7C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807D8E80  41 82 00 4C */	beq lbl_807D8ECC
/* 807D8E84  80 1D 05 E8 */	lwz r0, 0x5e8(r29)
/* 807D8E88  2C 00 00 0C */	cmpwi r0, 0xc
/* 807D8E8C  40 82 00 20 */	bne lbl_807D8EAC
/* 807D8E90  7F A3 EB 78 */	mr r3, r29
/* 807D8E94  38 80 00 12 */	li r4, 0x12
/* 807D8E98  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807D8E9C  38 A0 00 02 */	li r5, 2
/* 807D8EA0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D8EA4  4B FF 96 A5 */	bl anm_init__FP10e_wb_classifUcf
/* 807D8EA8  48 00 00 24 */	b lbl_807D8ECC
lbl_807D8EAC:
/* 807D8EAC  2C 00 00 0D */	cmpwi r0, 0xd
/* 807D8EB0  40 82 00 1C */	bne lbl_807D8ECC
/* 807D8EB4  7F A3 EB 78 */	mr r3, r29
/* 807D8EB8  38 80 00 13 */	li r4, 0x13
/* 807D8EBC  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807D8EC0  38 A0 00 02 */	li r5, 2
/* 807D8EC4  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D8EC8  4B FF 96 81 */	bl anm_init__FP10e_wb_classifUcf
lbl_807D8ECC:
/* 807D8ECC  80 1D 08 18 */	lwz r0, 0x818(r29)
/* 807D8ED0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807D8ED4  41 82 00 20 */	beq lbl_807D8EF4
/* 807D8ED8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807D8EDC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807D8EE0  38 7D 06 B6 */	addi r3, r29, 0x6b6
/* 807D8EE4  38 80 00 00 */	li r4, 0
/* 807D8EE8  38 A0 00 01 */	li r5, 1
/* 807D8EEC  38 C0 00 96 */	li r6, 0x96
/* 807D8EF0  4B A9 77 18 */	b cLib_addCalcAngleS2__FPssss
lbl_807D8EF4:
/* 807D8EF4  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 807D8EF8  2C 00 00 00 */	cmpwi r0, 0
/* 807D8EFC  40 82 00 BC */	bne lbl_807D8FB8
/* 807D8F00  A8 1D 06 AE */	lha r0, 0x6ae(r29)
/* 807D8F04  2C 00 FE 00 */	cmpwi r0, -512
/* 807D8F08  40 81 00 B0 */	ble lbl_807D8FB8
/* 807D8F0C  88 1D 06 E4 */	lbz r0, 0x6e4(r29)
/* 807D8F10  7C 00 07 75 */	extsb. r0, r0
/* 807D8F14  40 82 00 20 */	bne lbl_807D8F34
/* 807D8F18  7F A3 EB 78 */	mr r3, r29
/* 807D8F1C  38 80 00 10 */	li r4, 0x10
/* 807D8F20  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807D8F24  38 A0 00 00 */	li r5, 0
/* 807D8F28  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D8F2C  4B FF 96 1D */	bl anm_init__FP10e_wb_classifUcf
/* 807D8F30  48 00 00 1C */	b lbl_807D8F4C
lbl_807D8F34:
/* 807D8F34  7F A3 EB 78 */	mr r3, r29
/* 807D8F38  38 80 00 11 */	li r4, 0x11
/* 807D8F3C  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807D8F40  38 A0 00 00 */	li r5, 0
/* 807D8F44  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D8F48  4B FF 96 01 */	bl anm_init__FP10e_wb_classifUcf
lbl_807D8F4C:
/* 807D8F4C  38 00 00 04 */	li r0, 4
/* 807D8F50  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D8F54  48 00 00 64 */	b lbl_807D8FB8
lbl_807D8F58:
/* 807D8F58  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 807D8F5C  38 80 00 01 */	li r4, 1
/* 807D8F60  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807D8F64  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807D8F68  40 82 00 18 */	bne lbl_807D8F80
/* 807D8F6C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807D8F70  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807D8F74  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807D8F78  41 82 00 08 */	beq lbl_807D8F80
/* 807D8F7C  38 80 00 00 */	li r4, 0
lbl_807D8F80:
/* 807D8F80  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807D8F84  41 82 00 34 */	beq lbl_807D8FB8
/* 807D8F88  38 80 00 00 */	li r4, 0
/* 807D8F8C  B0 9D 06 90 */	sth r4, 0x690(r29)
/* 807D8F90  B0 9D 05 B4 */	sth r4, 0x5b4(r29)
/* 807D8F94  B0 9D 06 AE */	sth r4, 0x6ae(r29)
/* 807D8F98  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 807D8F9C  A8 1D 06 B0 */	lha r0, 0x6b0(r29)
/* 807D8FA0  7C 03 02 14 */	add r0, r3, r0
/* 807D8FA4  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807D8FA8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807D8FAC  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 807D8FB0  B0 9D 06 B6 */	sth r4, 0x6b6(r29)
/* 807D8FB4  B0 9D 06 B0 */	sth r4, 0x6b0(r29)
lbl_807D8FB8:
/* 807D8FB8  A8 7D 06 B0 */	lha r3, 0x6b0(r29)
/* 807D8FBC  A8 1D 06 B6 */	lha r0, 0x6b6(r29)
/* 807D8FC0  7C 03 02 14 */	add r0, r3, r0
/* 807D8FC4  B0 1D 06 B0 */	sth r0, 0x6b0(r29)
/* 807D8FC8  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 807D8FCC  2C 00 00 03 */	cmpwi r0, 3
/* 807D8FD0  41 80 00 1C */	blt lbl_807D8FEC
/* 807D8FD4  38 7D 06 AE */	addi r3, r29, 0x6ae
/* 807D8FD8  38 80 00 00 */	li r4, 0
/* 807D8FDC  38 A0 00 01 */	li r5, 1
/* 807D8FE0  38 C0 06 00 */	li r6, 0x600
/* 807D8FE4  4B A9 76 24 */	b cLib_addCalcAngleS2__FPssss
/* 807D8FE8  48 00 00 18 */	b lbl_807D9000
lbl_807D8FEC:
/* 807D8FEC  38 7D 06 AE */	addi r3, r29, 0x6ae
/* 807D8FF0  38 80 C0 00 */	li r4, -16384
/* 807D8FF4  38 A0 00 01 */	li r5, 1
/* 807D8FF8  38 C0 02 00 */	li r6, 0x200
/* 807D8FFC  4B A9 76 0C */	b cLib_addCalcAngleS2__FPssss
lbl_807D9000:
/* 807D9000  7F C3 F3 78 */	mr r3, r30
/* 807D9004  39 61 00 30 */	addi r11, r1, 0x30
/* 807D9008  4B B8 92 20 */	b _restgpr_29
/* 807D900C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807D9010  7C 08 03 A6 */	mtlr r0
/* 807D9014  38 21 00 30 */	addi r1, r1, 0x30
/* 807D9018  4E 80 00 20 */	blr 
