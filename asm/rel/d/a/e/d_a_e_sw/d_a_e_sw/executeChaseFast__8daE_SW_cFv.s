lbl_807A8B98:
/* 807A8B98  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 807A8B9C  7C 08 02 A6 */	mflr r0
/* 807A8BA0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 807A8BA4  39 61 00 E0 */	addi r11, r1, 0xe0
/* 807A8BA8  4B BB 96 34 */	b _savegpr_29
/* 807A8BAC  7C 7D 1B 78 */	mr r29, r3
/* 807A8BB0  3C 80 80 7B */	lis r4, lit_3909@ha
/* 807A8BB4  3B E4 FD 2C */	addi r31, r4, lit_3909@l
/* 807A8BB8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807A8BBC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807A8BC0  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 807A8BC4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807A8BC8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 807A8BCC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807A8BD0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 807A8BD4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807A8BD8  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 807A8BDC  4B FF EC D9 */	bl setSmokeEffect__8daE_SW_cFv
/* 807A8BE0  A8 1D 06 F0 */	lha r0, 0x6f0(r29)
/* 807A8BE4  2C 00 00 00 */	cmpwi r0, 0
/* 807A8BE8  41 82 00 0C */	beq lbl_807A8BF4
/* 807A8BEC  7F A3 EB 78 */	mr r3, r29
/* 807A8BF0  4B FF EA F5 */	bl setBeforeJumpEffect__8daE_SW_cFv
lbl_807A8BF4:
/* 807A8BF4  7F A3 EB 78 */	mr r3, r29
/* 807A8BF8  4B FF F0 D9 */	bl bomb_check__8daE_SW_cFv
/* 807A8BFC  2C 03 00 00 */	cmpwi r3, 0
/* 807A8C00  40 82 09 68 */	bne lbl_807A9568
/* 807A8C04  7F A3 EB 78 */	mr r3, r29
/* 807A8C08  38 80 00 01 */	li r4, 1
/* 807A8C0C  48 00 23 65 */	bl checkSuddenAttack__8daE_SW_cFi
/* 807A8C10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807A8C14  40 82 09 54 */	bne lbl_807A9568
/* 807A8C18  A8 1D 06 BC */	lha r0, 0x6bc(r29)
/* 807A8C1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A8C20  40 82 00 18 */	bne lbl_807A8C38
/* 807A8C24  7F A3 EB 78 */	mr r3, r29
/* 807A8C28  38 80 00 07 */	li r4, 7
/* 807A8C2C  38 A0 00 00 */	li r5, 0
/* 807A8C30  4B FF EF 35 */	bl setActionMode__8daE_SW_cFss
/* 807A8C34  48 00 09 34 */	b lbl_807A9568
lbl_807A8C38:
/* 807A8C38  7F A3 EB 78 */	mr r3, r29
/* 807A8C3C  4B FF F6 55 */	bl checkRunChase__8daE_SW_cFv
/* 807A8C40  2C 03 00 00 */	cmpwi r3, 0
/* 807A8C44  40 80 00 24 */	bge lbl_807A8C68
/* 807A8C48  A8 1D 06 80 */	lha r0, 0x680(r29)
/* 807A8C4C  2C 00 00 00 */	cmpwi r0, 0
/* 807A8C50  41 82 00 18 */	beq lbl_807A8C68
/* 807A8C54  7F A3 EB 78 */	mr r3, r29
/* 807A8C58  38 80 00 01 */	li r4, 1
/* 807A8C5C  38 A0 00 00 */	li r5, 0
/* 807A8C60  4B FF EF 05 */	bl setActionMode__8daE_SW_cFss
/* 807A8C64  48 00 09 04 */	b lbl_807A9568
lbl_807A8C68:
/* 807A8C68  C0 5D 04 B0 */	lfs f2, 0x4b0(r29)
/* 807A8C6C  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 807A8C70  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 807A8C74  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A8C78  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 807A8C7C  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 807A8C80  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 807A8C84  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807A8C88  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 807A8C8C  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 807A8C90  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 807A8C94  38 61 00 7C */	addi r3, r1, 0x7c
/* 807A8C98  38 81 00 88 */	addi r4, r1, 0x88
/* 807A8C9C  4B B9 E7 00 */	b PSVECSquareDistance
/* 807A8CA0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A8CA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A8CA8  40 81 00 58 */	ble lbl_807A8D00
/* 807A8CAC  FC 00 08 34 */	frsqrte f0, f1
/* 807A8CB0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807A8CB4  FC 44 00 32 */	fmul f2, f4, f0
/* 807A8CB8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807A8CBC  FC 00 00 32 */	fmul f0, f0, f0
/* 807A8CC0  FC 01 00 32 */	fmul f0, f1, f0
/* 807A8CC4  FC 03 00 28 */	fsub f0, f3, f0
/* 807A8CC8  FC 02 00 32 */	fmul f0, f2, f0
/* 807A8CCC  FC 44 00 32 */	fmul f2, f4, f0
/* 807A8CD0  FC 00 00 32 */	fmul f0, f0, f0
/* 807A8CD4  FC 01 00 32 */	fmul f0, f1, f0
/* 807A8CD8  FC 03 00 28 */	fsub f0, f3, f0
/* 807A8CDC  FC 02 00 32 */	fmul f0, f2, f0
/* 807A8CE0  FC 44 00 32 */	fmul f2, f4, f0
/* 807A8CE4  FC 00 00 32 */	fmul f0, f0, f0
/* 807A8CE8  FC 01 00 32 */	fmul f0, f1, f0
/* 807A8CEC  FC 03 00 28 */	fsub f0, f3, f0
/* 807A8CF0  FC 02 00 32 */	fmul f0, f2, f0
/* 807A8CF4  FC 21 00 32 */	fmul f1, f1, f0
/* 807A8CF8  FC 20 08 18 */	frsp f1, f1
/* 807A8CFC  48 00 00 88 */	b lbl_807A8D84
lbl_807A8D00:
/* 807A8D00  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807A8D04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A8D08  40 80 00 10 */	bge lbl_807A8D18
/* 807A8D0C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807A8D10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807A8D14  48 00 00 70 */	b lbl_807A8D84
lbl_807A8D18:
/* 807A8D18  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807A8D1C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 807A8D20  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807A8D24  3C 00 7F 80 */	lis r0, 0x7f80
/* 807A8D28  7C 03 00 00 */	cmpw r3, r0
/* 807A8D2C  41 82 00 14 */	beq lbl_807A8D40
/* 807A8D30  40 80 00 40 */	bge lbl_807A8D70
/* 807A8D34  2C 03 00 00 */	cmpwi r3, 0
/* 807A8D38  41 82 00 20 */	beq lbl_807A8D58
/* 807A8D3C  48 00 00 34 */	b lbl_807A8D70
lbl_807A8D40:
/* 807A8D40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A8D44  41 82 00 0C */	beq lbl_807A8D50
/* 807A8D48  38 00 00 01 */	li r0, 1
/* 807A8D4C  48 00 00 28 */	b lbl_807A8D74
lbl_807A8D50:
/* 807A8D50  38 00 00 02 */	li r0, 2
/* 807A8D54  48 00 00 20 */	b lbl_807A8D74
lbl_807A8D58:
/* 807A8D58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A8D5C  41 82 00 0C */	beq lbl_807A8D68
/* 807A8D60  38 00 00 05 */	li r0, 5
/* 807A8D64  48 00 00 10 */	b lbl_807A8D74
lbl_807A8D68:
/* 807A8D68  38 00 00 03 */	li r0, 3
/* 807A8D6C  48 00 00 08 */	b lbl_807A8D74
lbl_807A8D70:
/* 807A8D70  38 00 00 04 */	li r0, 4
lbl_807A8D74:
/* 807A8D74  2C 00 00 01 */	cmpwi r0, 1
/* 807A8D78  40 82 00 0C */	bne lbl_807A8D84
/* 807A8D7C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807A8D80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807A8D84:
/* 807A8D84  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 807A8D88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A8D8C  40 81 00 18 */	ble lbl_807A8DA4
/* 807A8D90  7F A3 EB 78 */	mr r3, r29
/* 807A8D94  38 80 00 06 */	li r4, 6
/* 807A8D98  38 A0 00 00 */	li r5, 0
/* 807A8D9C  4B FF ED C9 */	bl setActionMode__8daE_SW_cFss
/* 807A8DA0  48 00 07 C8 */	b lbl_807A9568
lbl_807A8DA4:
/* 807A8DA4  A8 1D 06 80 */	lha r0, 0x680(r29)
/* 807A8DA8  2C 00 00 01 */	cmpwi r0, 1
/* 807A8DAC  41 82 00 78 */	beq lbl_807A8E24
/* 807A8DB0  40 80 00 10 */	bge lbl_807A8DC0
/* 807A8DB4  2C 00 00 00 */	cmpwi r0, 0
/* 807A8DB8  40 80 00 14 */	bge lbl_807A8DCC
/* 807A8DBC  48 00 06 64 */	b lbl_807A9420
lbl_807A8DC0:
/* 807A8DC0  2C 00 00 03 */	cmpwi r0, 3
/* 807A8DC4  40 80 06 5C */	bge lbl_807A9420
/* 807A8DC8  48 00 00 D4 */	b lbl_807A8E9C
lbl_807A8DCC:
/* 807A8DCC  38 00 00 01 */	li r0, 1
/* 807A8DD0  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A8DD4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807A8DD8  4B AB EB B4 */	b cM_rndFX__Ff
/* 807A8DDC  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 807A8DE0  EC 00 00 72 */	fmuls f0, f0, f1
/* 807A8DE4  FC 00 00 1E */	fctiwz f0, f0
/* 807A8DE8  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 807A8DEC  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 807A8DF0  B0 1D 06 A0 */	sth r0, 0x6a0(r29)
/* 807A8DF4  38 00 00 00 */	li r0, 0
/* 807A8DF8  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
/* 807A8DFC  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 807A8E00  4B AB EB 54 */	b cM_rndF__Ff
/* 807A8E04  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807A8E08  EC 00 08 2A */	fadds f0, f0, f1
/* 807A8E0C  FC 00 00 1E */	fctiwz f0, f0
/* 807A8E10  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 807A8E14  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 807A8E18  B0 1D 06 EA */	sth r0, 0x6ea(r29)
/* 807A8E1C  38 00 00 1E */	li r0, 0x1e
/* 807A8E20  B0 1D 06 EE */	sth r0, 0x6ee(r29)
lbl_807A8E24:
/* 807A8E24  A8 1D 06 EA */	lha r0, 0x6ea(r29)
/* 807A8E28  2C 00 00 00 */	cmpwi r0, 0
/* 807A8E2C  40 82 00 70 */	bne lbl_807A8E9C
/* 807A8E30  3C 60 80 7B */	lis r3, struct_807B0200+0x0@ha
/* 807A8E34  38 83 02 00 */	addi r4, r3, struct_807B0200+0x0@l
/* 807A8E38  88 04 00 00 */	lbz r0, 0(r4)
/* 807A8E3C  28 00 00 00 */	cmplwi r0, 0
/* 807A8E40  40 82 00 3C */	bne lbl_807A8E7C
/* 807A8E44  C0 3D 06 C8 */	lfs f1, 0x6c8(r29)
/* 807A8E48  3C 60 80 7B */	lis r3, l_HIO@ha
/* 807A8E4C  38 63 02 10 */	addi r3, r3, l_HIO@l
/* 807A8E50  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807A8E54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A8E58  40 80 00 44 */	bge lbl_807A8E9C
/* 807A8E5C  38 00 00 02 */	li r0, 2
/* 807A8E60  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A8E64  38 00 00 3C */	li r0, 0x3c
/* 807A8E68  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 807A8E6C  38 00 00 01 */	li r0, 1
/* 807A8E70  98 04 00 00 */	stb r0, 0(r4)
/* 807A8E74  98 1D 06 E6 */	stb r0, 0x6e6(r29)
/* 807A8E78  48 00 00 24 */	b lbl_807A8E9C
lbl_807A8E7C:
/* 807A8E7C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 807A8E80  4B AB EA D4 */	b cM_rndF__Ff
/* 807A8E84  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807A8E88  EC 00 08 2A */	fadds f0, f0, f1
/* 807A8E8C  FC 00 00 1E */	fctiwz f0, f0
/* 807A8E90  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 807A8E94  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 807A8E98  B0 1D 06 EA */	sth r0, 0x6ea(r29)
lbl_807A8E9C:
/* 807A8E9C  A8 1D 06 80 */	lha r0, 0x680(r29)
/* 807A8EA0  2C 00 00 02 */	cmpwi r0, 2
/* 807A8EA4  40 82 00 48 */	bne lbl_807A8EEC
/* 807A8EA8  A8 1D 06 F0 */	lha r0, 0x6f0(r29)
/* 807A8EAC  2C 00 00 00 */	cmpwi r0, 0
/* 807A8EB0  40 82 00 3C */	bne lbl_807A8EEC
/* 807A8EB4  7F A3 EB 78 */	mr r3, r29
/* 807A8EB8  38 80 00 03 */	li r4, 3
/* 807A8EBC  38 A0 00 00 */	li r5, 0
/* 807A8EC0  4B FF EC A5 */	bl setActionMode__8daE_SW_cFss
/* 807A8EC4  38 00 00 02 */	li r0, 2
/* 807A8EC8  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 807A8ECC  88 1D 06 E6 */	lbz r0, 0x6e6(r29)
/* 807A8ED0  28 00 00 00 */	cmplwi r0, 0
/* 807A8ED4  41 82 06 94 */	beq lbl_807A9568
/* 807A8ED8  38 00 00 00 */	li r0, 0
/* 807A8EDC  3C 60 80 7B */	lis r3, struct_807B0200+0x0@ha
/* 807A8EE0  98 03 02 00 */	stb r0, struct_807B0200+0x0@l(r3)
/* 807A8EE4  98 1D 06 E6 */	stb r0, 0x6e6(r29)
/* 807A8EE8  48 00 06 80 */	b lbl_807A9568
lbl_807A8EEC:
/* 807A8EEC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A8EF0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 807A8EF4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 807A8EF8  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 807A8EFC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 807A8F00  38 61 00 A0 */	addi r3, r1, 0xa0
/* 807A8F04  38 81 00 AC */	addi r4, r1, 0xac
/* 807A8F08  A8 BD 06 A0 */	lha r5, 0x6a0(r29)
/* 807A8F0C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807A8F10  7C 05 02 14 */	add r0, r5, r0
/* 807A8F14  7C 05 07 34 */	extsh r5, r0
/* 807A8F18  38 C1 00 94 */	addi r6, r1, 0x94
/* 807A8F1C  4B AC 7E A4 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807A8F20  C0 3D 06 DC */	lfs f1, 0x6dc(r29)
/* 807A8F24  C8 1F 00 98 */	lfd f0, 0x98(r31)
/* 807A8F28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A8F2C  40 81 00 1C */	ble lbl_807A8F48
/* 807A8F30  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A8F34  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 807A8F38  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 807A8F3C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 807A8F40  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 807A8F44  48 00 00 18 */	b lbl_807A8F5C
lbl_807A8F48:
/* 807A8F48  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A8F4C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 807A8F50  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 807A8F54  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 807A8F58  D0 01 00 9C */	stfs f0, 0x9c(r1)
lbl_807A8F5C:
/* 807A8F5C  38 7D 06 68 */	addi r3, r29, 0x668
/* 807A8F60  38 81 00 A0 */	addi r4, r1, 0xa0
/* 807A8F64  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 807A8F68  38 C1 00 94 */	addi r6, r1, 0x94
/* 807A8F6C  4B AC 7E 54 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807A8F70  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 807A8F74  A8 1D 06 CC */	lha r0, 0x6cc(r29)
/* 807A8F78  7C 03 00 50 */	subf r0, r3, r0
/* 807A8F7C  7C 03 07 34 */	extsh r3, r0
/* 807A8F80  4B BB C1 50 */	b abs
/* 807A8F84  2C 03 40 00 */	cmpwi r3, 0x4000
/* 807A8F88  41 80 00 10 */	blt lbl_807A8F98
/* 807A8F8C  88 1D 06 E7 */	lbz r0, 0x6e7(r29)
/* 807A8F90  28 00 00 00 */	cmplwi r0, 0
/* 807A8F94  40 82 03 B0 */	bne lbl_807A9344
lbl_807A8F98:
/* 807A8F98  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807A8F9C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807A8FA0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807A8FA4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A8FA8  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 807A8FAC  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 807A8FB0  C0 5D 06 70 */	lfs f2, 0x670(r29)
/* 807A8FB4  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 807A8FB8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 807A8FBC  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 807A8FC0  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 807A8FC4  38 61 00 64 */	addi r3, r1, 0x64
/* 807A8FC8  38 81 00 70 */	addi r4, r1, 0x70
/* 807A8FCC  4B B9 E3 D0 */	b PSVECSquareDistance
/* 807A8FD0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A8FD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A8FD8  40 81 00 58 */	ble lbl_807A9030
/* 807A8FDC  FC 00 08 34 */	frsqrte f0, f1
/* 807A8FE0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807A8FE4  FC 44 00 32 */	fmul f2, f4, f0
/* 807A8FE8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807A8FEC  FC 00 00 32 */	fmul f0, f0, f0
/* 807A8FF0  FC 01 00 32 */	fmul f0, f1, f0
/* 807A8FF4  FC 03 00 28 */	fsub f0, f3, f0
/* 807A8FF8  FC 02 00 32 */	fmul f0, f2, f0
/* 807A8FFC  FC 44 00 32 */	fmul f2, f4, f0
/* 807A9000  FC 00 00 32 */	fmul f0, f0, f0
/* 807A9004  FC 01 00 32 */	fmul f0, f1, f0
/* 807A9008  FC 03 00 28 */	fsub f0, f3, f0
/* 807A900C  FC 02 00 32 */	fmul f0, f2, f0
/* 807A9010  FC 44 00 32 */	fmul f2, f4, f0
/* 807A9014  FC 00 00 32 */	fmul f0, f0, f0
/* 807A9018  FC 01 00 32 */	fmul f0, f1, f0
/* 807A901C  FC 03 00 28 */	fsub f0, f3, f0
/* 807A9020  FC 02 00 32 */	fmul f0, f2, f0
/* 807A9024  FC 21 00 32 */	fmul f1, f1, f0
/* 807A9028  FC 20 08 18 */	frsp f1, f1
/* 807A902C  48 00 00 88 */	b lbl_807A90B4
lbl_807A9030:
/* 807A9030  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807A9034  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A9038  40 80 00 10 */	bge lbl_807A9048
/* 807A903C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807A9040  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807A9044  48 00 00 70 */	b lbl_807A90B4
lbl_807A9048:
/* 807A9048  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807A904C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 807A9050  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807A9054  3C 00 7F 80 */	lis r0, 0x7f80
/* 807A9058  7C 03 00 00 */	cmpw r3, r0
/* 807A905C  41 82 00 14 */	beq lbl_807A9070
/* 807A9060  40 80 00 40 */	bge lbl_807A90A0
/* 807A9064  2C 03 00 00 */	cmpwi r3, 0
/* 807A9068  41 82 00 20 */	beq lbl_807A9088
/* 807A906C  48 00 00 34 */	b lbl_807A90A0
lbl_807A9070:
/* 807A9070  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A9074  41 82 00 0C */	beq lbl_807A9080
/* 807A9078  38 00 00 01 */	li r0, 1
/* 807A907C  48 00 00 28 */	b lbl_807A90A4
lbl_807A9080:
/* 807A9080  38 00 00 02 */	li r0, 2
/* 807A9084  48 00 00 20 */	b lbl_807A90A4
lbl_807A9088:
/* 807A9088  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A908C  41 82 00 0C */	beq lbl_807A9098
/* 807A9090  38 00 00 05 */	li r0, 5
/* 807A9094  48 00 00 10 */	b lbl_807A90A4
lbl_807A9098:
/* 807A9098  38 00 00 03 */	li r0, 3
/* 807A909C  48 00 00 08 */	b lbl_807A90A4
lbl_807A90A0:
/* 807A90A0  38 00 00 04 */	li r0, 4
lbl_807A90A4:
/* 807A90A4  2C 00 00 01 */	cmpwi r0, 1
/* 807A90A8  40 82 00 0C */	bne lbl_807A90B4
/* 807A90AC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807A90B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807A90B4:
/* 807A90B4  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807A90B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A90BC  40 80 00 0C */	bge lbl_807A90C8
/* 807A90C0  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 807A90C4  48 00 02 68 */	b lbl_807A932C
lbl_807A90C8:
/* 807A90C8  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807A90CC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807A90D0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807A90D4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A90D8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 807A90DC  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 807A90E0  C0 5D 06 70 */	lfs f2, 0x670(r29)
/* 807A90E4  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 807A90E8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807A90EC  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 807A90F0  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 807A90F4  38 61 00 4C */	addi r3, r1, 0x4c
/* 807A90F8  38 81 00 58 */	addi r4, r1, 0x58
/* 807A90FC  4B B9 E2 A0 */	b PSVECSquareDistance
/* 807A9100  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A9104  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A9108  40 81 00 58 */	ble lbl_807A9160
/* 807A910C  FC 00 08 34 */	frsqrte f0, f1
/* 807A9110  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807A9114  FC 44 00 32 */	fmul f2, f4, f0
/* 807A9118  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807A911C  FC 00 00 32 */	fmul f0, f0, f0
/* 807A9120  FC 01 00 32 */	fmul f0, f1, f0
/* 807A9124  FC 03 00 28 */	fsub f0, f3, f0
/* 807A9128  FC 02 00 32 */	fmul f0, f2, f0
/* 807A912C  FC 44 00 32 */	fmul f2, f4, f0
/* 807A9130  FC 00 00 32 */	fmul f0, f0, f0
/* 807A9134  FC 01 00 32 */	fmul f0, f1, f0
/* 807A9138  FC 03 00 28 */	fsub f0, f3, f0
/* 807A913C  FC 02 00 32 */	fmul f0, f2, f0
/* 807A9140  FC 44 00 32 */	fmul f2, f4, f0
/* 807A9144  FC 00 00 32 */	fmul f0, f0, f0
/* 807A9148  FC 01 00 32 */	fmul f0, f1, f0
/* 807A914C  FC 03 00 28 */	fsub f0, f3, f0
/* 807A9150  FC 02 00 32 */	fmul f0, f2, f0
/* 807A9154  FC 21 00 32 */	fmul f1, f1, f0
/* 807A9158  FC 20 08 18 */	frsp f1, f1
/* 807A915C  48 00 00 88 */	b lbl_807A91E4
lbl_807A9160:
/* 807A9160  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807A9164  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A9168  40 80 00 10 */	bge lbl_807A9178
/* 807A916C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807A9170  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807A9174  48 00 00 70 */	b lbl_807A91E4
lbl_807A9178:
/* 807A9178  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807A917C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 807A9180  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807A9184  3C 00 7F 80 */	lis r0, 0x7f80
/* 807A9188  7C 03 00 00 */	cmpw r3, r0
/* 807A918C  41 82 00 14 */	beq lbl_807A91A0
/* 807A9190  40 80 00 40 */	bge lbl_807A91D0
/* 807A9194  2C 03 00 00 */	cmpwi r3, 0
/* 807A9198  41 82 00 20 */	beq lbl_807A91B8
/* 807A919C  48 00 00 34 */	b lbl_807A91D0
lbl_807A91A0:
/* 807A91A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A91A4  41 82 00 0C */	beq lbl_807A91B0
/* 807A91A8  38 00 00 01 */	li r0, 1
/* 807A91AC  48 00 00 28 */	b lbl_807A91D4
lbl_807A91B0:
/* 807A91B0  38 00 00 02 */	li r0, 2
/* 807A91B4  48 00 00 20 */	b lbl_807A91D4
lbl_807A91B8:
/* 807A91B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A91BC  41 82 00 0C */	beq lbl_807A91C8
/* 807A91C0  38 00 00 05 */	li r0, 5
/* 807A91C4  48 00 00 10 */	b lbl_807A91D4
lbl_807A91C8:
/* 807A91C8  38 00 00 03 */	li r0, 3
/* 807A91CC  48 00 00 08 */	b lbl_807A91D4
lbl_807A91D0:
/* 807A91D0  38 00 00 04 */	li r0, 4
lbl_807A91D4:
/* 807A91D4  2C 00 00 01 */	cmpwi r0, 1
/* 807A91D8  40 82 00 0C */	bne lbl_807A91E4
/* 807A91DC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807A91E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807A91E4:
/* 807A91E4  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 807A91E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A91EC  40 80 00 0C */	bge lbl_807A91F8
/* 807A91F0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A91F4  48 00 01 38 */	b lbl_807A932C
lbl_807A91F8:
/* 807A91F8  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807A91FC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807A9200  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807A9204  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A9208  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807A920C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 807A9210  C0 5D 06 70 */	lfs f2, 0x670(r29)
/* 807A9214  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 807A9218  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807A921C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 807A9220  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 807A9224  38 61 00 34 */	addi r3, r1, 0x34
/* 807A9228  38 81 00 40 */	addi r4, r1, 0x40
/* 807A922C  4B B9 E1 70 */	b PSVECSquareDistance
/* 807A9230  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A9234  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A9238  40 81 00 58 */	ble lbl_807A9290
/* 807A923C  FC 00 08 34 */	frsqrte f0, f1
/* 807A9240  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807A9244  FC 44 00 32 */	fmul f2, f4, f0
/* 807A9248  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807A924C  FC 00 00 32 */	fmul f0, f0, f0
/* 807A9250  FC 01 00 32 */	fmul f0, f1, f0
/* 807A9254  FC 03 00 28 */	fsub f0, f3, f0
/* 807A9258  FC 02 00 32 */	fmul f0, f2, f0
/* 807A925C  FC 44 00 32 */	fmul f2, f4, f0
/* 807A9260  FC 00 00 32 */	fmul f0, f0, f0
/* 807A9264  FC 01 00 32 */	fmul f0, f1, f0
/* 807A9268  FC 03 00 28 */	fsub f0, f3, f0
/* 807A926C  FC 02 00 32 */	fmul f0, f2, f0
/* 807A9270  FC 44 00 32 */	fmul f2, f4, f0
/* 807A9274  FC 00 00 32 */	fmul f0, f0, f0
/* 807A9278  FC 01 00 32 */	fmul f0, f1, f0
/* 807A927C  FC 03 00 28 */	fsub f0, f3, f0
/* 807A9280  FC 02 00 32 */	fmul f0, f2, f0
/* 807A9284  FC 21 00 32 */	fmul f1, f1, f0
/* 807A9288  FC 20 08 18 */	frsp f1, f1
/* 807A928C  48 00 00 88 */	b lbl_807A9314
lbl_807A9290:
/* 807A9290  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807A9294  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A9298  40 80 00 10 */	bge lbl_807A92A8
/* 807A929C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807A92A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807A92A4  48 00 00 70 */	b lbl_807A9314
lbl_807A92A8:
/* 807A92A8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807A92AC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807A92B0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807A92B4  3C 00 7F 80 */	lis r0, 0x7f80
/* 807A92B8  7C 03 00 00 */	cmpw r3, r0
/* 807A92BC  41 82 00 14 */	beq lbl_807A92D0
/* 807A92C0  40 80 00 40 */	bge lbl_807A9300
/* 807A92C4  2C 03 00 00 */	cmpwi r3, 0
/* 807A92C8  41 82 00 20 */	beq lbl_807A92E8
/* 807A92CC  48 00 00 34 */	b lbl_807A9300
lbl_807A92D0:
/* 807A92D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A92D4  41 82 00 0C */	beq lbl_807A92E0
/* 807A92D8  38 00 00 01 */	li r0, 1
/* 807A92DC  48 00 00 28 */	b lbl_807A9304
lbl_807A92E0:
/* 807A92E0  38 00 00 02 */	li r0, 2
/* 807A92E4  48 00 00 20 */	b lbl_807A9304
lbl_807A92E8:
/* 807A92E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A92EC  41 82 00 0C */	beq lbl_807A92F8
/* 807A92F0  38 00 00 05 */	li r0, 5
/* 807A92F4  48 00 00 10 */	b lbl_807A9304
lbl_807A92F8:
/* 807A92F8  38 00 00 03 */	li r0, 3
/* 807A92FC  48 00 00 08 */	b lbl_807A9304
lbl_807A9300:
/* 807A9300  38 00 00 04 */	li r0, 4
lbl_807A9304:
/* 807A9304  2C 00 00 01 */	cmpwi r0, 1
/* 807A9308  40 82 00 0C */	bne lbl_807A9314
/* 807A930C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807A9310  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807A9314:
/* 807A9314  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 807A9318  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A931C  40 81 00 0C */	ble lbl_807A9328
/* 807A9320  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807A9324  48 00 00 08 */	b lbl_807A932C
lbl_807A9328:
/* 807A9328  C0 3F 00 68 */	lfs f1, 0x68(r31)
lbl_807A932C:
/* 807A932C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807A9330  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 807A9334  EC 21 00 2A */	fadds f1, f1, f0
/* 807A9338  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 807A933C  4B AC 74 04 */	b cLib_chaseF__FPfff
/* 807A9340  48 00 00 14 */	b lbl_807A9354
lbl_807A9344:
/* 807A9344  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807A9348  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807A934C  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 807A9350  4B AC 73 F0 */	b cLib_chaseF__FPfff
lbl_807A9354:
/* 807A9354  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807A9358  38 9D 06 68 */	addi r4, r29, 0x668
/* 807A935C  4B AC 78 A8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 807A9360  7C 64 1B 78 */	mr r4, r3
/* 807A9364  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807A9368  38 A0 00 10 */	li r5, 0x10
/* 807A936C  38 C0 04 00 */	li r6, 0x400
/* 807A9370  4B AC 72 98 */	b cLib_addCalcAngleS2__FPssss
/* 807A9374  A8 7D 06 A4 */	lha r3, 0x6a4(r29)
/* 807A9378  38 03 02 00 */	addi r0, r3, 0x200
/* 807A937C  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
/* 807A9380  A8 9D 06 A4 */	lha r4, 0x6a4(r29)
/* 807A9384  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 807A9388  7C 00 1E 70 */	srawi r0, r0, 3
/* 807A938C  54 00 18 38 */	slwi r0, r0, 3
/* 807A9390  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807A9394  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807A9398  7C 03 04 2E */	lfsx f0, r3, r0
/* 807A939C  FC 00 02 10 */	fabs f0, f0
/* 807A93A0  FC 20 00 18 */	frsp f1, f0
/* 807A93A4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 807A93A8  EC 20 00 72 */	fmuls f1, f0, f1
/* 807A93AC  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 807A93B0  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 807A93B4  7C 43 04 2E */	lfsx f2, r3, r0
/* 807A93B8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 807A93BC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807A93C0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 807A93C4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807A93C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807A93CC  7C 63 04 2E */	lfsx f3, r3, r0
/* 807A93D0  38 83 00 04 */	addi r4, r3, 4
/* 807A93D4  7C 84 04 2E */	lfsx f4, r4, r0
/* 807A93D8  C0 5D 04 D0 */	lfs f2, 0x4d0(r29)
/* 807A93DC  EC 21 01 32 */	fmuls f1, f1, f4
/* 807A93E0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 807A93E4  EC 01 00 2A */	fadds f0, f1, f0
/* 807A93E8  EC 02 00 2A */	fadds f0, f2, f0
/* 807A93EC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 807A93F0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807A93F4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807A93F8  7C 63 04 2E */	lfsx f3, r3, r0
/* 807A93FC  7C 24 04 2E */	lfsx f1, r4, r0
/* 807A9400  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807A9404  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 807A9408  EC 20 00 72 */	fmuls f1, f0, f1
/* 807A940C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 807A9410  EC 00 00 F2 */	fmuls f0, f0, f3
/* 807A9414  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A9418  EC 02 00 2A */	fadds f0, f2, f0
/* 807A941C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_807A9420:
/* 807A9420  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807A9424  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807A9428  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807A942C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A9430  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807A9434  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 807A9438  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 807A943C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A9440  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807A9444  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 807A9448  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807A944C  38 61 00 1C */	addi r3, r1, 0x1c
/* 807A9450  38 81 00 28 */	addi r4, r1, 0x28
/* 807A9454  4B B9 DF 48 */	b PSVECSquareDistance
/* 807A9458  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A945C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A9460  40 81 00 58 */	ble lbl_807A94B8
/* 807A9464  FC 00 08 34 */	frsqrte f0, f1
/* 807A9468  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807A946C  FC 44 00 32 */	fmul f2, f4, f0
/* 807A9470  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807A9474  FC 00 00 32 */	fmul f0, f0, f0
/* 807A9478  FC 01 00 32 */	fmul f0, f1, f0
/* 807A947C  FC 03 00 28 */	fsub f0, f3, f0
/* 807A9480  FC 02 00 32 */	fmul f0, f2, f0
/* 807A9484  FC 44 00 32 */	fmul f2, f4, f0
/* 807A9488  FC 00 00 32 */	fmul f0, f0, f0
/* 807A948C  FC 01 00 32 */	fmul f0, f1, f0
/* 807A9490  FC 03 00 28 */	fsub f0, f3, f0
/* 807A9494  FC 02 00 32 */	fmul f0, f2, f0
/* 807A9498  FC 44 00 32 */	fmul f2, f4, f0
/* 807A949C  FC 00 00 32 */	fmul f0, f0, f0
/* 807A94A0  FC 01 00 32 */	fmul f0, f1, f0
/* 807A94A4  FC 03 00 28 */	fsub f0, f3, f0
/* 807A94A8  FC 02 00 32 */	fmul f0, f2, f0
/* 807A94AC  FC 21 00 32 */	fmul f1, f1, f0
/* 807A94B0  FC 20 08 18 */	frsp f1, f1
/* 807A94B4  48 00 00 88 */	b lbl_807A953C
lbl_807A94B8:
/* 807A94B8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807A94BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A94C0  40 80 00 10 */	bge lbl_807A94D0
/* 807A94C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807A94C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807A94CC  48 00 00 70 */	b lbl_807A953C
lbl_807A94D0:
/* 807A94D0  D0 21 00 08 */	stfs f1, 8(r1)
/* 807A94D4  80 81 00 08 */	lwz r4, 8(r1)
/* 807A94D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807A94DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 807A94E0  7C 03 00 00 */	cmpw r3, r0
/* 807A94E4  41 82 00 14 */	beq lbl_807A94F8
/* 807A94E8  40 80 00 40 */	bge lbl_807A9528
/* 807A94EC  2C 03 00 00 */	cmpwi r3, 0
/* 807A94F0  41 82 00 20 */	beq lbl_807A9510
/* 807A94F4  48 00 00 34 */	b lbl_807A9528
lbl_807A94F8:
/* 807A94F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A94FC  41 82 00 0C */	beq lbl_807A9508
/* 807A9500  38 00 00 01 */	li r0, 1
/* 807A9504  48 00 00 28 */	b lbl_807A952C
lbl_807A9508:
/* 807A9508  38 00 00 02 */	li r0, 2
/* 807A950C  48 00 00 20 */	b lbl_807A952C
lbl_807A9510:
/* 807A9510  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A9514  41 82 00 0C */	beq lbl_807A9520
/* 807A9518  38 00 00 05 */	li r0, 5
/* 807A951C  48 00 00 10 */	b lbl_807A952C
lbl_807A9520:
/* 807A9520  38 00 00 03 */	li r0, 3
/* 807A9524  48 00 00 08 */	b lbl_807A952C
lbl_807A9528:
/* 807A9528  38 00 00 04 */	li r0, 4
lbl_807A952C:
/* 807A952C  2C 00 00 01 */	cmpwi r0, 1
/* 807A9530  40 82 00 0C */	bne lbl_807A953C
/* 807A9534  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807A9538  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807A953C:
/* 807A953C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 807A9540  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A9544  40 80 00 1C */	bge lbl_807A9560
/* 807A9548  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807A954C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807A9550  38 A0 00 08 */	li r5, 8
/* 807A9554  38 C0 04 00 */	li r6, 0x400
/* 807A9558  4B AC 70 B0 */	b cLib_addCalcAngleS2__FPssss
/* 807A955C  48 00 00 0C */	b lbl_807A9568
lbl_807A9560:
/* 807A9560  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807A9564  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_807A9568:
/* 807A9568  39 61 00 E0 */	addi r11, r1, 0xe0
/* 807A956C  4B BB 8C BC */	b _restgpr_29
/* 807A9570  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 807A9574  7C 08 03 A6 */	mtlr r0
/* 807A9578  38 21 00 E0 */	addi r1, r1, 0xe0
/* 807A957C  4E 80 00 20 */	blr 
