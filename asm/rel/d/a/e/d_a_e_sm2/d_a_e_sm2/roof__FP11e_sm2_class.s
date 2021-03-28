lbl_80799DAC:
/* 80799DAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80799DB0  7C 08 02 A6 */	mflr r0
/* 80799DB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80799DB8  39 61 00 30 */	addi r11, r1, 0x30
/* 80799DBC  4B BC 84 20 */	b _savegpr_29
/* 80799DC0  7C 7E 1B 78 */	mr r30, r3
/* 80799DC4  3C 60 80 7A */	lis r3, lit_3790@ha
/* 80799DC8  3B E3 D5 B0 */	addi r31, r3, lit_3790@l
/* 80799DCC  3B A0 00 00 */	li r29, 0
/* 80799DD0  38 00 3F 00 */	li r0, 0x3f00
/* 80799DD4  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80799DD8  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80799DDC  38 00 00 02 */	li r0, 2
/* 80799DE0  98 1E 06 A9 */	stb r0, 0x6a9(r30)
/* 80799DE4  38 00 00 03 */	li r0, 3
/* 80799DE8  98 1E 06 A8 */	stb r0, 0x6a8(r30)
/* 80799DEC  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80799DF0  D0 1E 08 2C */	stfs f0, 0x82c(r30)
/* 80799DF4  A8 1E 06 84 */	lha r0, 0x684(r30)
/* 80799DF8  2C 00 00 02 */	cmpwi r0, 2
/* 80799DFC  41 82 01 B0 */	beq lbl_80799FAC
/* 80799E00  40 80 00 14 */	bge lbl_80799E14
/* 80799E04  2C 00 00 00 */	cmpwi r0, 0
/* 80799E08  41 82 00 18 */	beq lbl_80799E20
/* 80799E0C  40 80 00 70 */	bge lbl_80799E7C
/* 80799E10  48 00 03 A0 */	b lbl_8079A1B0
lbl_80799E14:
/* 80799E14  2C 00 00 04 */	cmpwi r0, 4
/* 80799E18  40 80 03 98 */	bge lbl_8079A1B0
/* 80799E1C  48 00 02 90 */	b lbl_8079A0AC
lbl_80799E20:
/* 80799E20  38 00 00 01 */	li r0, 1
/* 80799E24  B0 1E 06 84 */	sth r0, 0x684(r30)
/* 80799E28  38 60 00 00 */	li r3, 0
/* 80799E2C  38 80 00 00 */	li r4, 0
/* 80799E30  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80799E34  38 00 00 08 */	li r0, 8
/* 80799E38  7C 09 03 A6 */	mtctr r0
lbl_80799E3C:
/* 80799E3C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80799E40  7C BE 22 14 */	add r5, r30, r4
/* 80799E44  D0 25 07 08 */	stfs f1, 0x708(r5)
/* 80799E48  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80799E4C  D0 25 07 0C */	stfs f1, 0x70c(r5)
/* 80799E50  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80799E54  D0 25 07 10 */	stfs f1, 0x710(r5)
/* 80799E58  38 03 06 C8 */	addi r0, r3, 0x6c8
/* 80799E5C  7C 1E 05 2E */	stfsx f0, r30, r0
/* 80799E60  38 63 00 04 */	addi r3, r3, 4
/* 80799E64  38 84 00 0C */	addi r4, r4, 0xc
/* 80799E68  42 00 FF D4 */	bdnz lbl_80799E3C
/* 80799E6C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80799E70  D0 1E 08 30 */	stfs f0, 0x830(r30)
/* 80799E74  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80799E78  D0 1E 08 38 */	stfs f0, 0x838(r30)
lbl_80799E7C:
/* 80799E7C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80799E80  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80799E84  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80799E88  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80799E8C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80799E90  EC 41 00 2A */	fadds f2, f1, f0
/* 80799E94  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80799E98  C0 1E 08 30 */	lfs f0, 0x830(r30)
/* 80799E9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80799EA0  EC 02 00 2A */	fadds f0, f2, f0
/* 80799EA4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80799EA8  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 80799EAC  2C 04 00 00 */	cmpwi r4, 0
/* 80799EB0  41 82 00 58 */	beq lbl_80799F08
/* 80799EB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80799EB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80799EBC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80799EC0  7C 05 07 74 */	extsb r5, r0
/* 80799EC4  4B 89 B4 9C */	b isSwitch__10dSv_info_cCFii
/* 80799EC8  2C 03 00 00 */	cmpwi r3, 0
/* 80799ECC  41 82 02 E4 */	beq lbl_8079A1B0
/* 80799ED0  38 00 00 02 */	li r0, 2
/* 80799ED4  B0 1E 06 84 */	sth r0, 0x684(r30)
/* 80799ED8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80799EDC  4B AC DA 78 */	b cM_rndF__Ff
/* 80799EE0  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80799EE4  EC 00 08 2A */	fadds f0, f0, f1
/* 80799EE8  FC 00 00 1E */	fctiwz f0, f0
/* 80799EEC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80799EF0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80799EF4  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 80799EF8  A8 7E 06 86 */	lha r3, 0x686(r30)
/* 80799EFC  38 03 00 32 */	addi r0, r3, 0x32
/* 80799F00  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 80799F04  48 00 02 AC */	b lbl_8079A1B0
lbl_80799F08:
/* 80799F08  7F C3 F3 78 */	mr r3, r30
/* 80799F0C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80799F10  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80799F14  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80799F18  4B 88 0A 4C */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80799F1C  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80799F20  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 80799F24  C8 5F 00 B8 */	lfd f2, 0xb8(r31)
/* 80799F28  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80799F2C  3C 00 43 30 */	lis r0, 0x4330
/* 80799F30  90 01 00 18 */	stw r0, 0x18(r1)
/* 80799F34  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80799F38  EC 00 10 28 */	fsubs f0, f0, f2
/* 80799F3C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80799F40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80799F44  40 80 02 6C */	bge lbl_8079A1B0
/* 80799F48  38 00 00 02 */	li r0, 2
/* 80799F4C  B0 1E 06 84 */	sth r0, 0x684(r30)
/* 80799F50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80799F54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80799F58  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80799F5C  3C 80 80 7A */	lis r4, stringBase0@ha
/* 80799F60  38 84 D7 18 */	addi r4, r4, stringBase0@l
/* 80799F64  4B BC EA 30 */	b strcmp
/* 80799F68  2C 03 00 00 */	cmpwi r3, 0
/* 80799F6C  40 82 00 28 */	bne lbl_80799F94
/* 80799F70  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80799F74  4B AC D9 E0 */	b cM_rndF__Ff
/* 80799F78  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80799F7C  EC 00 08 2A */	fadds f0, f0, f1
/* 80799F80  FC 00 00 1E */	fctiwz f0, f0
/* 80799F84  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80799F88  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80799F8C  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 80799F90  48 00 00 0C */	b lbl_80799F9C
lbl_80799F94:
/* 80799F94  38 00 00 02 */	li r0, 2
/* 80799F98  B0 1E 06 86 */	sth r0, 0x686(r30)
lbl_80799F9C:
/* 80799F9C  A8 7E 06 86 */	lha r3, 0x686(r30)
/* 80799FA0  38 03 00 32 */	addi r0, r3, 0x32
/* 80799FA4  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 80799FA8  48 00 02 08 */	b lbl_8079A1B0
lbl_80799FAC:
/* 80799FAC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80799FB0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80799FB4  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80799FB8  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80799FBC  EC 41 00 2A */	fadds f2, f1, f0
/* 80799FC0  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80799FC4  C0 1E 08 30 */	lfs f0, 0x830(r30)
/* 80799FC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80799FCC  EC 02 00 2A */	fadds f0, f2, f0
/* 80799FD0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80799FD4  A8 1E 06 86 */	lha r0, 0x686(r30)
/* 80799FD8  2C 00 00 01 */	cmpwi r0, 1
/* 80799FDC  40 82 00 6C */	bne lbl_8079A048
/* 80799FE0  88 1E 08 3C */	lbz r0, 0x83c(r30)
/* 80799FE4  28 00 00 02 */	cmplwi r0, 2
/* 80799FE8  41 81 00 34 */	bgt lbl_8079A01C
/* 80799FEC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703C2@ha */
/* 80799FF0  38 03 03 C2 */	addi r0, r3, 0x03C2 /* 0x000703C2@l */
/* 80799FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80799FF8  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 80799FFC  38 81 00 14 */	addi r4, r1, 0x14
/* 8079A000  38 A0 00 00 */	li r5, 0
/* 8079A004  38 C0 FF FF */	li r6, -1
/* 8079A008  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 8079A00C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8079A010  7D 89 03 A6 */	mtctr r12
/* 8079A014  4E 80 04 21 */	bctrl 
/* 8079A018  48 00 00 30 */	b lbl_8079A048
lbl_8079A01C:
/* 8079A01C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703C3@ha */
/* 8079A020  38 03 03 C3 */	addi r0, r3, 0x03C3 /* 0x000703C3@l */
/* 8079A024  90 01 00 10 */	stw r0, 0x10(r1)
/* 8079A028  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 8079A02C  38 81 00 10 */	addi r4, r1, 0x10
/* 8079A030  38 A0 00 00 */	li r5, 0
/* 8079A034  38 C0 FF FF */	li r6, -1
/* 8079A038  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 8079A03C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8079A040  7D 89 03 A6 */	mtctr r12
/* 8079A044  4E 80 04 21 */	bctrl 
lbl_8079A048:
/* 8079A048  A8 1E 06 86 */	lha r0, 0x686(r30)
/* 8079A04C  2C 00 00 00 */	cmpwi r0, 0
/* 8079A050  40 82 01 60 */	bne lbl_8079A1B0
/* 8079A054  38 7E 08 30 */	addi r3, r30, 0x830
/* 8079A058  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8079A05C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8079A060  C0 7E 08 38 */	lfs f3, 0x838(r30)
/* 8079A064  4B AD 59 D8 */	b cLib_addCalc2__FPffff
/* 8079A068  A8 1E 06 88 */	lha r0, 0x688(r30)
/* 8079A06C  2C 00 00 00 */	cmpwi r0, 0
/* 8079A070  40 82 00 18 */	bne lbl_8079A088
/* 8079A074  38 7E 08 38 */	addi r3, r30, 0x838
/* 8079A078  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8079A07C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8079A080  C0 7F 00 B0 */	lfs f3, 0xb0(r31)
/* 8079A084  4B AD 59 B8 */	b cLib_addCalc2__FPffff
lbl_8079A088:
/* 8079A088  C0 3E 08 30 */	lfs f1, 0x830(r30)
/* 8079A08C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8079A090  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079A094  40 81 01 1C */	ble lbl_8079A1B0
/* 8079A098  38 00 00 03 */	li r0, 3
/* 8079A09C  B0 1E 06 84 */	sth r0, 0x684(r30)
/* 8079A0A0  38 00 00 05 */	li r0, 5
/* 8079A0A4  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 8079A0A8  48 00 01 08 */	b lbl_8079A1B0
lbl_8079A0AC:
/* 8079A0AC  A8 1E 06 86 */	lha r0, 0x686(r30)
/* 8079A0B0  2C 00 00 00 */	cmpwi r0, 0
/* 8079A0B4  40 82 00 08 */	bne lbl_8079A0BC
/* 8079A0B8  3B A0 00 01 */	li r29, 1
lbl_8079A0BC:
/* 8079A0BC  80 1E 08 C0 */	lwz r0, 0x8c0(r30)
/* 8079A0C0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8079A0C4  41 82 00 EC */	beq lbl_8079A1B0
/* 8079A0C8  38 00 00 00 */	li r0, 0
/* 8079A0CC  B0 1E 06 82 */	sth r0, 0x682(r30)
/* 8079A0D0  B0 1E 06 84 */	sth r0, 0x684(r30)
/* 8079A0D4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8079A0D8  4B AC D8 7C */	b cM_rndF__Ff
/* 8079A0DC  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 8079A0E0  EC 00 08 2A */	fadds f0, f0, f1
/* 8079A0E4  FC 00 00 1E */	fctiwz f0, f0
/* 8079A0E8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8079A0EC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8079A0F0  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 8079A0F4  38 00 00 00 */	li r0, 0
/* 8079A0F8  98 1E 06 A8 */	stb r0, 0x6a8(r30)
/* 8079A0FC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8079A100  D0 3E 08 30 */	stfs f1, 0x830(r30)
/* 8079A104  38 00 00 14 */	li r0, 0x14
/* 8079A108  98 1E 06 AA */	stb r0, 0x6aa(r30)
/* 8079A10C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8079A110  D0 1E 08 2C */	stfs f0, 0x82c(r30)
/* 8079A114  38 60 00 00 */	li r3, 0
/* 8079A118  38 00 00 08 */	li r0, 8
/* 8079A11C  7C 09 03 A6 */	mtctr r0
lbl_8079A120:
/* 8079A120  38 03 06 C8 */	addi r0, r3, 0x6c8
/* 8079A124  7C 3E 05 2E */	stfsx f1, r30, r0
/* 8079A128  38 63 00 04 */	addi r3, r3, 4
/* 8079A12C  42 00 FF F4 */	bdnz lbl_8079A120
/* 8079A130  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8079A134  4B AC D8 20 */	b cM_rndF__Ff
/* 8079A138  FC 00 08 1E */	fctiwz f0, f1
/* 8079A13C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8079A140  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8079A144  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8079A148  88 1E 08 3C */	lbz r0, 0x83c(r30)
/* 8079A14C  28 00 00 02 */	cmplwi r0, 2
/* 8079A150  41 81 00 34 */	bgt lbl_8079A184
/* 8079A154  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703C8@ha */
/* 8079A158  38 03 03 C8 */	addi r0, r3, 0x03C8 /* 0x000703C8@l */
/* 8079A15C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8079A160  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 8079A164  38 81 00 0C */	addi r4, r1, 0xc
/* 8079A168  38 A0 00 00 */	li r5, 0
/* 8079A16C  38 C0 FF FF */	li r6, -1
/* 8079A170  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 8079A174  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8079A178  7D 89 03 A6 */	mtctr r12
/* 8079A17C  4E 80 04 21 */	bctrl 
/* 8079A180  48 00 00 30 */	b lbl_8079A1B0
lbl_8079A184:
/* 8079A184  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703C9@ha */
/* 8079A188  38 03 03 C9 */	addi r0, r3, 0x03C9 /* 0x000703C9@l */
/* 8079A18C  90 01 00 08 */	stw r0, 8(r1)
/* 8079A190  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 8079A194  38 81 00 08 */	addi r4, r1, 8
/* 8079A198  38 A0 00 00 */	li r5, 0
/* 8079A19C  38 C0 FF FF */	li r6, -1
/* 8079A1A0  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 8079A1A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8079A1A8  7D 89 03 A6 */	mtctr r12
/* 8079A1AC  4E 80 04 21 */	bctrl 
lbl_8079A1B0:
/* 8079A1B0  7F A3 EB 78 */	mr r3, r29
/* 8079A1B4  39 61 00 30 */	addi r11, r1, 0x30
/* 8079A1B8  4B BC 80 70 */	b _restgpr_29
/* 8079A1BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8079A1C0  7C 08 03 A6 */	mtlr r0
/* 8079A1C4  38 21 00 30 */	addi r1, r1, 0x30
/* 8079A1C8  4E 80 00 20 */	blr 
