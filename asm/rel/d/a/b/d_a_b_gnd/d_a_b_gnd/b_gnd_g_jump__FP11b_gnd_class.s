lbl_805F8C20:
/* 805F8C20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F8C24  7C 08 02 A6 */	mflr r0
/* 805F8C28  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F8C2C  39 61 00 30 */	addi r11, r1, 0x30
/* 805F8C30  4B D6 95 A9 */	bl _savegpr_28
/* 805F8C34  7C 7D 1B 78 */	mr r29, r3
/* 805F8C38  3C 60 80 60 */	lis r3, lit_3815@ha /* 0x80602664@ha */
/* 805F8C3C  3B E3 26 64 */	addi r31, r3, lit_3815@l /* 0x80602664@l */
/* 805F8C40  3B C0 00 01 */	li r30, 1
/* 805F8C44  80 1D 1F B4 */	lwz r0, 0x1fb4(r29)
/* 805F8C48  90 01 00 08 */	stw r0, 8(r1)
/* 805F8C4C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805F8C50  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805F8C54  38 81 00 08 */	addi r4, r1, 8
/* 805F8C58  4B A2 0B A1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805F8C5C  7C 7C 1B 78 */	mr r28, r3
/* 805F8C60  A8 1D 05 BC */	lha r0, 0x5bc(r29)
/* 805F8C64  2C 00 00 03 */	cmpwi r0, 3
/* 805F8C68  41 82 03 04 */	beq lbl_805F8F6C
/* 805F8C6C  40 80 00 1C */	bge lbl_805F8C88
/* 805F8C70  2C 00 00 01 */	cmpwi r0, 1
/* 805F8C74  41 82 00 50 */	beq lbl_805F8CC4
/* 805F8C78  40 80 01 2C */	bge lbl_805F8DA4
/* 805F8C7C  2C 00 00 00 */	cmpwi r0, 0
/* 805F8C80  40 80 00 18 */	bge lbl_805F8C98
/* 805F8C84  48 00 02 E8 */	b lbl_805F8F6C
lbl_805F8C88:
/* 805F8C88  2C 00 00 05 */	cmpwi r0, 5
/* 805F8C8C  41 82 02 84 */	beq lbl_805F8F10
/* 805F8C90  40 80 02 DC */	bge lbl_805F8F6C
/* 805F8C94  48 00 01 EC */	b lbl_805F8E80
lbl_805F8C98:
/* 805F8C98  7F A3 EB 78 */	mr r3, r29
/* 805F8C9C  38 80 00 2C */	li r4, 0x2c
/* 805F8CA0  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805F8CA4  38 A0 00 00 */	li r5, 0
/* 805F8CA8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F8CAC  4B FF BD E9 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F8CB0  38 00 00 01 */	li r0, 1
/* 805F8CB4  B0 1D 05 BC */	sth r0, 0x5bc(r29)
/* 805F8CB8  38 00 00 64 */	li r0, 0x64
/* 805F8CBC  B0 1D 0C 58 */	sth r0, 0xc58(r29)
/* 805F8CC0  48 00 02 AC */	b lbl_805F8F6C
lbl_805F8CC4:
/* 805F8CC4  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 805F8CC8  38 80 00 01 */	li r4, 1
/* 805F8CCC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F8CD0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F8CD4  40 82 00 18 */	bne lbl_805F8CEC
/* 805F8CD8  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805F8CDC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F8CE0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F8CE4  41 82 00 08 */	beq lbl_805F8CEC
/* 805F8CE8  38 80 00 00 */	li r4, 0
lbl_805F8CEC:
/* 805F8CEC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F8CF0  41 82 02 7C */	beq lbl_805F8F6C
/* 805F8CF4  7F A3 EB 78 */	mr r3, r29
/* 805F8CF8  38 80 00 2D */	li r4, 0x2d
/* 805F8CFC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805F8D00  38 A0 00 02 */	li r5, 2
/* 805F8D04  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F8D08  4B FF BD 8D */	bl anm_init__FP11b_gnd_classifUcf
/* 805F8D0C  38 00 00 02 */	li r0, 2
/* 805F8D10  B0 1D 05 BC */	sth r0, 0x5bc(r29)
/* 805F8D14  C0 3D 0C 38 */	lfs f1, 0xc38(r29)
/* 805F8D18  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 805F8D1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F8D20  40 81 00 3C */	ble lbl_805F8D5C
/* 805F8D24  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 805F8D28  4B C6 EC 2D */	bl cM_rndF__Ff
/* 805F8D2C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 805F8D30  EC 00 08 2A */	fadds f0, f0, f1
/* 805F8D34  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805F8D38  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 805F8D3C  4B C6 EC 51 */	bl cM_rndFX__Ff
/* 805F8D40  FC 00 08 1E */	fctiwz f0, f1
/* 805F8D44  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805F8D48  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805F8D4C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 805F8D50  7C 00 1A 14 */	add r0, r0, r3
/* 805F8D54  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805F8D58  48 00 00 38 */	b lbl_805F8D90
lbl_805F8D5C:
/* 805F8D5C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 805F8D60  4B C6 EB F5 */	bl cM_rndF__Ff
/* 805F8D64  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 805F8D68  EC 00 08 2A */	fadds f0, f0, f1
/* 805F8D6C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805F8D70  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805F8D74  4B C6 EC 19 */	bl cM_rndFX__Ff
/* 805F8D78  FC 00 08 1E */	fctiwz f0, f1
/* 805F8D7C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805F8D80  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805F8D84  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 805F8D88  7C 00 1A 14 */	add r0, r0, r3
/* 805F8D8C  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_805F8D90:
/* 805F8D90  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 805F8D94  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805F8D98  38 00 00 01 */	li r0, 1
/* 805F8D9C  98 1D 26 98 */	stb r0, 0x2698(r29)
/* 805F8DA0  48 00 01 CC */	b lbl_805F8F6C
lbl_805F8DA4:
/* 805F8DA4  3B C0 00 00 */	li r30, 0
/* 805F8DA8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 805F8DAC  A8 9D 0C 3C */	lha r4, 0xc3c(r29)
/* 805F8DB0  38 A0 00 02 */	li r5, 2
/* 805F8DB4  38 C0 06 00 */	li r6, 0x600
/* 805F8DB8  4B C7 78 51 */	bl cLib_addCalcAngleS2__FPssss
/* 805F8DBC  38 00 00 01 */	li r0, 1
/* 805F8DC0  98 1C 39 64 */	stb r0, 0x3964(r28)
/* 805F8DC4  80 1D 0D 00 */	lwz r0, 0xd00(r29)
/* 805F8DC8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805F8DCC  41 82 01 A0 */	beq lbl_805F8F6C
/* 805F8DD0  C0 3D 0C 38 */	lfs f1, 0xc38(r29)
/* 805F8DD4  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 805F8DD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F8DDC  40 80 00 18 */	bge lbl_805F8DF4
/* 805F8DE0  38 00 00 0B */	li r0, 0xb
/* 805F8DE4  B0 1D 0A FE */	sth r0, 0xafe(r29)
/* 805F8DE8  38 00 00 06 */	li r0, 6
/* 805F8DEC  B0 1D 05 BC */	sth r0, 0x5bc(r29)
/* 805F8DF0  48 00 00 38 */	b lbl_805F8E28
lbl_805F8DF4:
/* 805F8DF4  38 00 00 0B */	li r0, 0xb
/* 805F8DF8  B0 1D 0A FE */	sth r0, 0xafe(r29)
/* 805F8DFC  38 00 00 03 */	li r0, 3
/* 805F8E00  B0 1D 05 BC */	sth r0, 0x5bc(r29)
/* 805F8E04  7F A3 EB 78 */	mr r3, r29
/* 805F8E08  38 80 00 14 */	li r4, 0x14
/* 805F8E0C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 805F8E10  38 A0 00 00 */	li r5, 0
/* 805F8E14  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F8E18  4B FF BC 7D */	bl anm_init__FP11b_gnd_classifUcf
/* 805F8E1C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 805F8E20  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 805F8E24  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_805F8E28:
/* 805F8E28  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805F8E2C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805F8E30  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805F8E34  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805F8E38  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805F8E3C  D0 1C 39 5C */	stfs f0, 0x395c(r28)
/* 805F8E40  38 00 00 00 */	li r0, 0
/* 805F8E44  B0 1D 0C 58 */	sth r0, 0xc58(r29)
/* 805F8E48  38 00 00 01 */	li r0, 1
/* 805F8E4C  98 1D 26 98 */	stb r0, 0x2698(r29)
/* 805F8E50  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070556@ha */
/* 805F8E54  38 03 05 56 */	addi r0, r3, 0x0556 /* 0x00070556@l */
/* 805F8E58  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F8E5C  38 7D 05 DC */	addi r3, r29, 0x5dc
/* 805F8E60  38 81 00 0C */	addi r4, r1, 0xc
/* 805F8E64  38 A0 00 00 */	li r5, 0
/* 805F8E68  38 C0 FF FF */	li r6, -1
/* 805F8E6C  81 9D 05 DC */	lwz r12, 0x5dc(r29)
/* 805F8E70  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805F8E74  7D 89 03 A6 */	mtctr r12
/* 805F8E78  4E 80 04 21 */	bctrl 
/* 805F8E7C  48 00 00 F0 */	b lbl_805F8F6C
lbl_805F8E80:
/* 805F8E80  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 805F8E84  A8 9D 0C 3C */	lha r4, 0xc3c(r29)
/* 805F8E88  38 A0 00 02 */	li r5, 2
/* 805F8E8C  38 C0 06 00 */	li r6, 0x600
/* 805F8E90  4B C7 77 79 */	bl cLib_addCalcAngleS2__FPssss
/* 805F8E94  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805F8E98  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805F8E9C  A8 1D 0C 44 */	lha r0, 0xc44(r29)
/* 805F8EA0  2C 00 00 00 */	cmpwi r0, 0
/* 805F8EA4  40 82 00 C8 */	bne lbl_805F8F6C
/* 805F8EA8  38 00 00 0B */	li r0, 0xb
/* 805F8EAC  B0 1D 0A FE */	sth r0, 0xafe(r29)
/* 805F8EB0  C0 3D 0C 38 */	lfs f1, 0xc38(r29)
/* 805F8EB4  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 805F8EB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F8EBC  40 80 00 10 */	bge lbl_805F8ECC
/* 805F8EC0  38 00 00 04 */	li r0, 4
/* 805F8EC4  B0 1D 05 BC */	sth r0, 0x5bc(r29)
/* 805F8EC8  48 00 00 A4 */	b lbl_805F8F6C
lbl_805F8ECC:
/* 805F8ECC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 805F8ED0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F8ED4  40 80 00 10 */	bge lbl_805F8EE4
/* 805F8ED8  38 00 00 00 */	li r0, 0
/* 805F8EDC  B0 1D 05 BC */	sth r0, 0x5bc(r29)
/* 805F8EE0  48 00 00 8C */	b lbl_805F8F6C
lbl_805F8EE4:
/* 805F8EE4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805F8EE8  4B C6 EA 6D */	bl cM_rndF__Ff
/* 805F8EEC  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 805F8EF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F8EF4  40 80 00 10 */	bge lbl_805F8F04
/* 805F8EF8  38 00 00 02 */	li r0, 2
/* 805F8EFC  B0 1D 05 BC */	sth r0, 0x5bc(r29)
/* 805F8F00  48 00 00 6C */	b lbl_805F8F6C
lbl_805F8F04:
/* 805F8F04  38 00 00 0A */	li r0, 0xa
/* 805F8F08  B0 1D 05 BC */	sth r0, 0x5bc(r29)
/* 805F8F0C  48 00 00 60 */	b lbl_805F8F6C
lbl_805F8F10:
/* 805F8F10  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 805F8F14  38 80 00 01 */	li r4, 1
/* 805F8F18  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F8F1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F8F20  40 82 00 18 */	bne lbl_805F8F38
/* 805F8F24  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805F8F28  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F8F2C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F8F30  41 82 00 08 */	beq lbl_805F8F38
/* 805F8F34  38 80 00 00 */	li r4, 0
lbl_805F8F38:
/* 805F8F38  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F8F3C  41 82 00 1C */	beq lbl_805F8F58
/* 805F8F40  7F A3 EB 78 */	mr r3, r29
/* 805F8F44  38 80 00 5B */	li r4, 0x5b
/* 805F8F48  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 805F8F4C  38 A0 00 02 */	li r5, 2
/* 805F8F50  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F8F54  4B FF BB 41 */	bl anm_init__FP11b_gnd_classifUcf
lbl_805F8F58:
/* 805F8F58  A8 1D 0C 44 */	lha r0, 0xc44(r29)
/* 805F8F5C  2C 00 00 00 */	cmpwi r0, 0
/* 805F8F60  40 82 00 0C */	bne lbl_805F8F6C
/* 805F8F64  38 00 00 04 */	li r0, 4
/* 805F8F68  B0 1D 05 BC */	sth r0, 0x5bc(r29)
lbl_805F8F6C:
/* 805F8F6C  7F C3 F3 78 */	mr r3, r30
/* 805F8F70  39 61 00 30 */	addi r11, r1, 0x30
/* 805F8F74  4B D6 92 B1 */	bl _restgpr_28
/* 805F8F78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F8F7C  7C 08 03 A6 */	mtlr r0
/* 805F8F80  38 21 00 30 */	addi r1, r1, 0x30
/* 805F8F84  4E 80 00 20 */	blr 
