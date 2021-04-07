lbl_805E1C28:
/* 805E1C28  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805E1C2C  7C 08 02 A6 */	mflr r0
/* 805E1C30  90 01 00 84 */	stw r0, 0x84(r1)
/* 805E1C34  39 61 00 80 */	addi r11, r1, 0x80
/* 805E1C38  4B D8 05 91 */	bl _savegpr_24
/* 805E1C3C  7C 7A 1B 78 */	mr r26, r3
/* 805E1C40  3C 60 80 5F */	lis r3, lit_1109@ha /* 0x805ED6C0@ha */
/* 805E1C44  3B C3 D6 C0 */	addi r30, r3, lit_1109@l /* 0x805ED6C0@l */
/* 805E1C48  3C 60 80 5F */	lis r3, lit_3911@ha /* 0x805ED060@ha */
/* 805E1C4C  3B E3 D0 60 */	addi r31, r3, lit_3911@l /* 0x805ED060@l */
/* 805E1C50  3B 80 00 00 */	li r28, 0
/* 805E1C54  3B 60 00 00 */	li r27, 0
/* 805E1C58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E1C5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E1C60  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 805E1C64  88 1A 05 C7 */	lbz r0, 0x5c7(r26)
/* 805E1C68  2C 00 00 01 */	cmpwi r0, 1
/* 805E1C6C  41 82 03 30 */	beq lbl_805E1F9C
/* 805E1C70  40 80 00 10 */	bge lbl_805E1C80
/* 805E1C74  2C 00 00 00 */	cmpwi r0, 0
/* 805E1C78  40 80 00 14 */	bge lbl_805E1C8C
/* 805E1C7C  48 00 07 18 */	b lbl_805E2394
lbl_805E1C80:
/* 805E1C80  2C 00 00 03 */	cmpwi r0, 3
/* 805E1C84  40 80 07 10 */	bge lbl_805E2394
/* 805E1C88  48 00 05 70 */	b lbl_805E21F8
lbl_805E1C8C:
/* 805E1C8C  80 1A 0D 94 */	lwz r0, 0xd94(r26)
/* 805E1C90  60 00 00 01 */	ori r0, r0, 1
/* 805E1C94  90 1A 0D 94 */	stw r0, 0xd94(r26)
/* 805E1C98  80 1A 07 74 */	lwz r0, 0x774(r26)
/* 805E1C9C  60 00 00 01 */	ori r0, r0, 1
/* 805E1CA0  90 1A 07 74 */	stw r0, 0x774(r26)
/* 805E1CA4  80 1A 06 F0 */	lwz r0, 0x6f0(r26)
/* 805E1CA8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E1CAC  90 1A 06 F0 */	stw r0, 0x6f0(r26)
/* 805E1CB0  80 1A 0D 10 */	lwz r0, 0xd10(r26)
/* 805E1CB4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E1CB8  90 1A 0D 10 */	stw r0, 0xd10(r26)
/* 805E1CBC  80 1A 0B D4 */	lwz r0, 0xbd4(r26)
/* 805E1CC0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E1CC4  90 1A 0B D4 */	stw r0, 0xbd4(r26)
/* 805E1CC8  80 BA 05 D4 */	lwz r5, 0x5d4(r26)
/* 805E1CCC  2C 05 00 1B */	cmpwi r5, 0x1b
/* 805E1CD0  41 82 00 98 */	beq lbl_805E1D68
/* 805E1CD4  80 7A 0E 30 */	lwz r3, 0xe30(r26)
/* 805E1CD8  38 80 00 01 */	li r4, 1
/* 805E1CDC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E1CE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E1CE4  40 82 00 18 */	bne lbl_805E1CFC
/* 805E1CE8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E1CEC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E1CF0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E1CF4  41 82 00 08 */	beq lbl_805E1CFC
/* 805E1CF8  38 80 00 00 */	li r4, 0
lbl_805E1CFC:
/* 805E1CFC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E1D00  41 82 00 68 */	beq lbl_805E1D68
/* 805E1D04  2C 05 00 1D */	cmpwi r5, 0x1d
/* 805E1D08  41 82 00 60 */	beq lbl_805E1D68
/* 805E1D0C  80 1A 06 F0 */	lwz r0, 0x6f0(r26)
/* 805E1D10  60 00 00 01 */	ori r0, r0, 1
/* 805E1D14  90 1A 06 F0 */	stw r0, 0x6f0(r26)
/* 805E1D18  80 1A 0D 10 */	lwz r0, 0xd10(r26)
/* 805E1D1C  60 00 00 01 */	ori r0, r0, 1
/* 805E1D20  90 1A 0D 10 */	stw r0, 0xd10(r26)
/* 805E1D24  7F 43 D3 78 */	mr r3, r26
/* 805E1D28  38 80 00 1D */	li r4, 0x1d
/* 805E1D2C  38 A0 00 02 */	li r5, 2
/* 805E1D30  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E1D34  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E1D38  4B FF D2 2D */	bl SetAnm__8daB_GG_cFiiff
/* 805E1D3C  88 1A 05 B0 */	lbz r0, 0x5b0(r26)
/* 805E1D40  28 00 00 00 */	cmplwi r0, 0
/* 805E1D44  40 82 00 18 */	bne lbl_805E1D5C
/* 805E1D48  38 00 00 32 */	li r0, 0x32
/* 805E1D4C  B0 1A 05 D8 */	sth r0, 0x5d8(r26)
/* 805E1D50  38 00 00 01 */	li r0, 1
/* 805E1D54  98 1A 05 B0 */	stb r0, 0x5b0(r26)
/* 805E1D58  48 00 06 3C */	b lbl_805E2394
lbl_805E1D5C:
/* 805E1D5C  38 00 00 00 */	li r0, 0
/* 805E1D60  B0 1A 05 D8 */	sth r0, 0x5d8(r26)
/* 805E1D64  48 00 06 30 */	b lbl_805E2394
lbl_805E1D68:
/* 805E1D68  80 7A 0E 30 */	lwz r3, 0xe30(r26)
/* 805E1D6C  38 63 00 0C */	addi r3, r3, 0xc
/* 805E1D70  C0 3F 02 34 */	lfs f1, 0x234(r31)
/* 805E1D74  4B D4 66 B9 */	bl checkPass__12J3DFrameCtrlFf
/* 805E1D78  2C 03 00 00 */	cmpwi r3, 0
/* 805E1D7C  41 82 00 30 */	beq lbl_805E1DAC
/* 805E1D80  80 1A 05 D4 */	lwz r0, 0x5d4(r26)
/* 805E1D84  2C 00 00 1B */	cmpwi r0, 0x1b
/* 805E1D88  40 82 00 24 */	bne lbl_805E1DAC
/* 805E1D8C  C0 1F 02 38 */	lfs f0, 0x238(r31)
/* 805E1D90  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 805E1D94  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E1D98  D0 1A 05 C0 */	stfs f0, 0x5c0(r26)
/* 805E1D9C  C0 1F 02 3C */	lfs f0, 0x23c(r31)
/* 805E1DA0  D0 1A 05 30 */	stfs f0, 0x530(r26)
/* 805E1DA4  3B 60 00 01 */	li r27, 1
/* 805E1DA8  48 00 05 EC */	b lbl_805E2394
lbl_805E1DAC:
/* 805E1DAC  80 9A 0E 30 */	lwz r4, 0xe30(r26)
/* 805E1DB0  38 60 00 01 */	li r3, 1
/* 805E1DB4  88 04 00 11 */	lbz r0, 0x11(r4)
/* 805E1DB8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E1DBC  40 82 00 18 */	bne lbl_805E1DD4
/* 805E1DC0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E1DC4  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 805E1DC8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E1DCC  41 82 00 08 */	beq lbl_805E1DD4
/* 805E1DD0  38 60 00 00 */	li r3, 0
lbl_805E1DD4:
/* 805E1DD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E1DD8  41 82 00 8C */	beq lbl_805E1E64
/* 805E1DDC  80 1A 05 D4 */	lwz r0, 0x5d4(r26)
/* 805E1DE0  2C 00 00 1B */	cmpwi r0, 0x1b
/* 805E1DE4  40 82 00 80 */	bne lbl_805E1E64
/* 805E1DE8  88 7A 05 C7 */	lbz r3, 0x5c7(r26)
/* 805E1DEC  38 03 00 01 */	addi r0, r3, 1
/* 805E1DF0  98 1A 05 C7 */	stb r0, 0x5c7(r26)
/* 805E1DF4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E1DF8  D0 1A 05 30 */	stfs f0, 0x530(r26)
/* 805E1DFC  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 805E1E00  88 1A 05 CE */	lbz r0, 0x5ce(r26)
/* 805E1E04  28 00 00 FF */	cmplwi r0, 0xff
/* 805E1E08  41 82 00 3C */	beq lbl_805E1E44
/* 805E1E0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E1E10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E1E14  38 80 00 8E */	li r4, 0x8e
/* 805E1E18  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 805E1E1C  7C 05 07 74 */	extsb r5, r0
/* 805E1E20  4B A5 35 41 */	bl isSwitch__10dSv_info_cCFii
/* 805E1E24  2C 03 00 00 */	cmpwi r3, 0
/* 805E1E28  40 82 00 1C */	bne lbl_805E1E44
/* 805E1E2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E1E30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E1E34  38 80 00 8E */	li r4, 0x8e
/* 805E1E38  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 805E1E3C  7C 05 07 74 */	extsb r5, r0
/* 805E1E40  4B A5 33 C1 */	bl onSwitch__10dSv_info_cFii
lbl_805E1E44:
/* 805E1E44  7F 43 D3 78 */	mr r3, r26
/* 805E1E48  38 80 00 04 */	li r4, 4
/* 805E1E4C  38 A0 00 00 */	li r5, 0
/* 805E1E50  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E1E54  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E1E58  4B FF D1 0D */	bl SetAnm__8daB_GG_cFiiff
/* 805E1E5C  3B 60 00 01 */	li r27, 1
/* 805E1E60  48 00 05 34 */	b lbl_805E2394
lbl_805E1E64:
/* 805E1E64  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 805E1E68  C0 1F 02 34 */	lfs f0, 0x234(r31)
/* 805E1E6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E1E70  40 81 00 18 */	ble lbl_805E1E88
/* 805E1E74  80 1A 05 D4 */	lwz r0, 0x5d4(r26)
/* 805E1E78  2C 00 00 1B */	cmpwi r0, 0x1b
/* 805E1E7C  40 82 00 0C */	bne lbl_805E1E88
/* 805E1E80  3B 60 00 01 */	li r27, 1
/* 805E1E84  48 00 05 10 */	b lbl_805E2394
lbl_805E1E88:
/* 805E1E88  80 1A 05 D4 */	lwz r0, 0x5d4(r26)
/* 805E1E8C  2C 00 00 1D */	cmpwi r0, 0x1d
/* 805E1E90  40 82 05 04 */	bne lbl_805E2394
/* 805E1E94  A8 1A 05 D8 */	lha r0, 0x5d8(r26)
/* 805E1E98  2C 00 00 00 */	cmpwi r0, 0
/* 805E1E9C  40 82 04 F8 */	bne lbl_805E2394
/* 805E1EA0  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 805E1EA4  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 805E1EA8  90 1A 04 9C */	stw r0, 0x49c(r26)
/* 805E1EAC  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 805E1EB0  64 00 00 08 */	oris r0, r0, 8
/* 805E1EB4  90 1A 04 9C */	stw r0, 0x49c(r26)
/* 805E1EB8  7F 43 D3 78 */	mr r3, r26
/* 805E1EBC  38 80 00 1B */	li r4, 0x1b
/* 805E1EC0  38 A0 00 00 */	li r5, 0
/* 805E1EC4  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E1EC8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E1ECC  4B FF D0 99 */	bl SetAnm__8daB_GG_cFiiff
/* 805E1ED0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070505@ha */
/* 805E1ED4  38 03 05 05 */	addi r0, r3, 0x0505 /* 0x00070505@l */
/* 805E1ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E1EDC  38 7A 0E 4C */	addi r3, r26, 0xe4c
/* 805E1EE0  38 81 00 14 */	addi r4, r1, 0x14
/* 805E1EE4  38 A0 FF FF */	li r5, -1
/* 805E1EE8  81 9A 0E 4C */	lwz r12, 0xe4c(r26)
/* 805E1EEC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805E1EF0  7D 89 03 A6 */	mtctr r12
/* 805E1EF4  4E 80 04 21 */	bctrl 
/* 805E1EF8  7F 43 D3 78 */	mr r3, r26
/* 805E1EFC  4B FF DB 4D */	bl SpeedClear__8daB_GG_cFv
/* 805E1F00  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 805E1F04  38 9E 00 FC */	addi r4, r30, 0xfc
/* 805E1F08  4B C8 EC FD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805E1F0C  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 805E1F10  7C 00 18 50 */	subf r0, r0, r3
/* 805E1F14  7C 19 07 34 */	extsh r25, r0
/* 805E1F18  3B E0 00 01 */	li r31, 1
/* 805E1F1C  48 00 00 50 */	b lbl_805E1F6C
lbl_805E1F20:
/* 805E1F20  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 805E1F24  7F E0 07 34 */	extsh r0, r31
/* 805E1F28  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E1F2C  38 9E 00 FC */	addi r4, r30, 0xfc
/* 805E1F30  7C 84 02 14 */	add r4, r4, r0
/* 805E1F34  4B C8 EC D1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805E1F38  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 805E1F3C  7C 00 18 50 */	subf r0, r0, r3
/* 805E1F40  7C 18 07 34 */	extsh r24, r0
/* 805E1F44  7F 23 07 34 */	extsh r3, r25
/* 805E1F48  4B D8 31 89 */	bl abs
/* 805E1F4C  7C 7D 1B 78 */	mr r29, r3
/* 805E1F50  7F 03 C3 78 */	mr r3, r24
/* 805E1F54  4B D8 31 7D */	bl abs
/* 805E1F58  7C 03 E8 00 */	cmpw r3, r29
/* 805E1F5C  40 80 00 0C */	bge lbl_805E1F68
/* 805E1F60  7F FC FB 78 */	mr r28, r31
/* 805E1F64  7F 19 C3 78 */	mr r25, r24
lbl_805E1F68:
/* 805E1F68  3B FF 00 01 */	addi r31, r31, 1
lbl_805E1F6C:
/* 805E1F6C  7F E0 07 34 */	extsh r0, r31
/* 805E1F70  2C 00 00 03 */	cmpwi r0, 3
/* 805E1F74  41 80 FF AC */	blt lbl_805E1F20
/* 805E1F78  B3 9A 05 B4 */	sth r28, 0x5b4(r26)
/* 805E1F7C  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 805E1F80  A8 1A 05 B4 */	lha r0, 0x5b4(r26)
/* 805E1F84  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E1F88  38 9E 00 FC */	addi r4, r30, 0xfc
/* 805E1F8C  7C 84 02 14 */	add r4, r4, r0
/* 805E1F90  4B C8 EC 75 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805E1F94  B0 7A 05 BA */	sth r3, 0x5ba(r26)
/* 805E1F98  48 00 03 FC */	b lbl_805E2394
lbl_805E1F9C:
/* 805E1F9C  80 BA 05 D4 */	lwz r5, 0x5d4(r26)
/* 805E1FA0  2C 05 00 04 */	cmpwi r5, 4
/* 805E1FA4  40 82 01 C0 */	bne lbl_805E2164
/* 805E1FA8  80 7A 0E 30 */	lwz r3, 0xe30(r26)
/* 805E1FAC  38 80 00 01 */	li r4, 1
/* 805E1FB0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E1FB4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E1FB8  40 82 00 18 */	bne lbl_805E1FD0
/* 805E1FBC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E1FC0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E1FC4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E1FC8  41 82 00 08 */	beq lbl_805E1FD0
/* 805E1FCC  38 80 00 00 */	li r4, 0
lbl_805E1FD0:
/* 805E1FD0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E1FD4  41 82 01 90 */	beq lbl_805E2164
/* 805E1FD8  7F 43 D3 78 */	mr r3, r26
/* 805E1FDC  38 80 00 05 */	li r4, 5
/* 805E1FE0  38 A0 00 02 */	li r5, 2
/* 805E1FE4  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E1FE8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E1FEC  4B FF CF 79 */	bl SetAnm__8daB_GG_cFiiff
/* 805E1FF0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805E1FF4  D0 1A 05 BC */	stfs f0, 0x5bc(r26)
/* 805E1FF8  C0 1A 05 BC */	lfs f0, 0x5bc(r26)
/* 805E1FFC  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 805E2000  A8 1A 05 B4 */	lha r0, 0x5b4(r26)
/* 805E2004  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E2008  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 805E200C  7C 63 02 14 */	add r3, r3, r0
/* 805E2010  C0 5A 04 D8 */	lfs f2, 0x4d8(r26)
/* 805E2014  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 805E2018  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E201C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E2020  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805E2024  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 805E2028  C0 43 00 08 */	lfs f2, 8(r3)
/* 805E202C  C0 03 00 00 */	lfs f0, 0(r3)
/* 805E2030  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805E2034  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 805E2038  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 805E203C  38 61 00 18 */	addi r3, r1, 0x18
/* 805E2040  38 81 00 24 */	addi r4, r1, 0x24
/* 805E2044  4B D6 53 59 */	bl PSVECSquareDistance
/* 805E2048  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E204C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E2050  40 81 00 58 */	ble lbl_805E20A8
/* 805E2054  FC 00 08 34 */	frsqrte f0, f1
/* 805E2058  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805E205C  FC 44 00 32 */	fmul f2, f4, f0
/* 805E2060  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805E2064  FC 00 00 32 */	fmul f0, f0, f0
/* 805E2068  FC 01 00 32 */	fmul f0, f1, f0
/* 805E206C  FC 03 00 28 */	fsub f0, f3, f0
/* 805E2070  FC 02 00 32 */	fmul f0, f2, f0
/* 805E2074  FC 44 00 32 */	fmul f2, f4, f0
/* 805E2078  FC 00 00 32 */	fmul f0, f0, f0
/* 805E207C  FC 01 00 32 */	fmul f0, f1, f0
/* 805E2080  FC 03 00 28 */	fsub f0, f3, f0
/* 805E2084  FC 02 00 32 */	fmul f0, f2, f0
/* 805E2088  FC 44 00 32 */	fmul f2, f4, f0
/* 805E208C  FC 00 00 32 */	fmul f0, f0, f0
/* 805E2090  FC 01 00 32 */	fmul f0, f1, f0
/* 805E2094  FC 03 00 28 */	fsub f0, f3, f0
/* 805E2098  FC 02 00 32 */	fmul f0, f2, f0
/* 805E209C  FC 21 00 32 */	fmul f1, f1, f0
/* 805E20A0  FC 20 08 18 */	frsp f1, f1
/* 805E20A4  48 00 00 88 */	b lbl_805E212C
lbl_805E20A8:
/* 805E20A8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805E20AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E20B0  40 80 00 10 */	bge lbl_805E20C0
/* 805E20B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805E20B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805E20BC  48 00 00 70 */	b lbl_805E212C
lbl_805E20C0:
/* 805E20C0  D0 21 00 08 */	stfs f1, 8(r1)
/* 805E20C4  80 81 00 08 */	lwz r4, 8(r1)
/* 805E20C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805E20CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 805E20D0  7C 03 00 00 */	cmpw r3, r0
/* 805E20D4  41 82 00 14 */	beq lbl_805E20E8
/* 805E20D8  40 80 00 40 */	bge lbl_805E2118
/* 805E20DC  2C 03 00 00 */	cmpwi r3, 0
/* 805E20E0  41 82 00 20 */	beq lbl_805E2100
/* 805E20E4  48 00 00 34 */	b lbl_805E2118
lbl_805E20E8:
/* 805E20E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E20EC  41 82 00 0C */	beq lbl_805E20F8
/* 805E20F0  38 00 00 01 */	li r0, 1
/* 805E20F4  48 00 00 28 */	b lbl_805E211C
lbl_805E20F8:
/* 805E20F8  38 00 00 02 */	li r0, 2
/* 805E20FC  48 00 00 20 */	b lbl_805E211C
lbl_805E2100:
/* 805E2100  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E2104  41 82 00 0C */	beq lbl_805E2110
/* 805E2108  38 00 00 05 */	li r0, 5
/* 805E210C  48 00 00 10 */	b lbl_805E211C
lbl_805E2110:
/* 805E2110  38 00 00 03 */	li r0, 3
/* 805E2114  48 00 00 08 */	b lbl_805E211C
lbl_805E2118:
/* 805E2118  38 00 00 04 */	li r0, 4
lbl_805E211C:
/* 805E211C  2C 00 00 01 */	cmpwi r0, 1
/* 805E2120  40 82 00 0C */	bne lbl_805E212C
/* 805E2124  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805E2128  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805E212C:
/* 805E212C  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 805E2130  A8 1A 05 B4 */	lha r0, 0x5b4(r26)
/* 805E2134  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E2138  7C 63 02 14 */	add r3, r3, r0
/* 805E213C  C0 43 00 04 */	lfs f2, 4(r3)
/* 805E2140  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 805E2144  EC 42 00 28 */	fsubs f2, f2, f0
/* 805E2148  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 805E214C  EC 01 00 24 */	fdivs f0, f1, f0
/* 805E2150  EC 02 00 24 */	fdivs f0, f2, f0
/* 805E2154  D0 1A 05 C0 */	stfs f0, 0x5c0(r26)
/* 805E2158  C0 1A 05 C0 */	lfs f0, 0x5c0(r26)
/* 805E215C  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 805E2160  48 00 00 90 */	b lbl_805E21F0
lbl_805E2164:
/* 805E2164  2C 05 00 05 */	cmpwi r5, 5
/* 805E2168  40 82 00 88 */	bne lbl_805E21F0
/* 805E216C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070507@ha */
/* 805E2170  38 03 05 07 */	addi r0, r3, 0x0507 /* 0x00070507@l */
/* 805E2174  90 01 00 10 */	stw r0, 0x10(r1)
/* 805E2178  38 7A 0E 4C */	addi r3, r26, 0xe4c
/* 805E217C  38 81 00 10 */	addi r4, r1, 0x10
/* 805E2180  38 A0 00 00 */	li r5, 0
/* 805E2184  38 C0 FF FF */	li r6, -1
/* 805E2188  81 9A 0E 4C */	lwz r12, 0xe4c(r26)
/* 805E218C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805E2190  7D 89 03 A6 */	mtctr r12
/* 805E2194  4E 80 04 21 */	bctrl 
/* 805E2198  A8 1A 05 B4 */	lha r0, 0x5b4(r26)
/* 805E219C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E21A0  38 7E 00 FC */	addi r3, r30, 0xfc
/* 805E21A4  7C 63 02 14 */	add r3, r3, r0
/* 805E21A8  C0 03 00 00 */	lfs f0, 0(r3)
/* 805E21AC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805E21B0  C0 03 00 04 */	lfs f0, 4(r3)
/* 805E21B4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805E21B8  C0 03 00 08 */	lfs f0, 8(r3)
/* 805E21BC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805E21C0  7F 43 D3 78 */	mr r3, r26
/* 805E21C4  38 81 00 3C */	addi r4, r1, 0x3c
/* 805E21C8  48 00 34 55 */	bl F_A_TargetMove__8daB_GG_cF4cXyz
/* 805E21CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E21D0  41 82 00 20 */	beq lbl_805E21F0
/* 805E21D4  88 7A 05 C7 */	lbz r3, 0x5c7(r26)
/* 805E21D8  38 03 00 01 */	addi r0, r3, 1
/* 805E21DC  98 1A 05 C7 */	stb r0, 0x5c7(r26)
/* 805E21E0  38 00 00 14 */	li r0, 0x14
/* 805E21E4  B0 1A 05 D8 */	sth r0, 0x5d8(r26)
/* 805E21E8  38 00 00 00 */	li r0, 0
/* 805E21EC  90 1A 05 5C */	stw r0, 0x55c(r26)
lbl_805E21F0:
/* 805E21F0  3B 60 00 01 */	li r27, 1
/* 805E21F4  48 00 01 A0 */	b lbl_805E2394
lbl_805E21F8:
/* 805E21F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070507@ha */
/* 805E21FC  38 03 05 07 */	addi r0, r3, 0x0507 /* 0x00070507@l */
/* 805E2200  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E2204  38 7A 0E 4C */	addi r3, r26, 0xe4c
/* 805E2208  38 81 00 0C */	addi r4, r1, 0xc
/* 805E220C  38 A0 00 00 */	li r5, 0
/* 805E2210  38 C0 FF FF */	li r6, -1
/* 805E2214  81 9A 0E 4C */	lwz r12, 0xe4c(r26)
/* 805E2218  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805E221C  7D 89 03 A6 */	mtctr r12
/* 805E2220  4E 80 04 21 */	bctrl 
/* 805E2224  80 1A 05 D4 */	lwz r0, 0x5d4(r26)
/* 805E2228  2C 00 00 05 */	cmpwi r0, 5
/* 805E222C  40 82 01 64 */	bne lbl_805E2390
/* 805E2230  A8 1A 05 B4 */	lha r0, 0x5b4(r26)
/* 805E2234  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E2238  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 805E223C  7C 63 02 14 */	add r3, r3, r0
/* 805E2240  C0 03 00 00 */	lfs f0, 0(r3)
/* 805E2244  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805E2248  C0 03 00 04 */	lfs f0, 4(r3)
/* 805E224C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805E2250  C0 03 00 08 */	lfs f0, 8(r3)
/* 805E2254  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805E2258  7F 43 D3 78 */	mr r3, r26
/* 805E225C  38 81 00 30 */	addi r4, r1, 0x30
/* 805E2260  38 A0 00 01 */	li r5, 1
/* 805E2264  48 00 31 79 */	bl F_A_TargetMove__8daB_GG_cF4cXyzUc
/* 805E2268  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E226C  40 82 00 2C */	bne lbl_805E2298
/* 805E2270  7F 43 D3 78 */	mr r3, r26
/* 805E2274  38 80 00 02 */	li r4, 2
/* 805E2278  38 A0 00 00 */	li r5, 0
/* 805E227C  38 C0 00 00 */	li r6, 0
/* 805E2280  4B FF D8 0D */	bl GetAction__8daB_GG_cFUcUcUc
/* 805E2284  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E2288  40 82 01 08 */	bne lbl_805E2390
/* 805E228C  A8 1A 05 D8 */	lha r0, 0x5d8(r26)
/* 805E2290  2C 00 00 00 */	cmpwi r0, 0
/* 805E2294  40 82 00 FC */	bne lbl_805E2390
lbl_805E2298:
/* 805E2298  7F 43 D3 78 */	mr r3, r26
/* 805E229C  38 80 00 02 */	li r4, 2
/* 805E22A0  38 A0 00 01 */	li r5, 1
/* 805E22A4  38 C0 00 00 */	li r6, 0
/* 805E22A8  4B FF D7 BD */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E22AC  38 00 00 32 */	li r0, 0x32
/* 805E22B0  B0 1A 05 D8 */	sth r0, 0x5d8(r26)
/* 805E22B4  88 1A 05 B6 */	lbz r0, 0x5b6(r26)
/* 805E22B8  28 00 00 00 */	cmplwi r0, 0
/* 805E22BC  40 82 00 D4 */	bne lbl_805E2390
/* 805E22C0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E22C4  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 805E22C8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805E22CC  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 805E22D0  38 00 00 00 */	li r0, 0
/* 805E22D4  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 805E22D8  7F 43 D3 78 */	mr r3, r26
/* 805E22DC  4B FF DF 1D */	bl SetReleaseCam__8daB_GG_cFv
/* 805E22E0  C0 1F 02 28 */	lfs f0, 0x228(r31)
/* 805E22E4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805E22E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E22EC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805E22F0  C0 1F 02 2C */	lfs f0, 0x22c(r31)
/* 805E22F4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805E22F8  7F A3 EB 78 */	mr r3, r29
/* 805E22FC  38 81 00 48 */	addi r4, r1, 0x48
/* 805E2300  A8 BA 04 E6 */	lha r5, 0x4e6(r26)
/* 805E2304  38 C0 00 00 */	li r6, 0
/* 805E2308  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 805E230C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805E2310  7D 89 03 A6 */	mtctr r12
/* 805E2314  4E 80 04 21 */	bctrl 
/* 805E2318  88 1A 05 CE */	lbz r0, 0x5ce(r26)
/* 805E231C  28 00 00 FF */	cmplwi r0, 0xff
/* 805E2320  41 82 00 3C */	beq lbl_805E235C
/* 805E2324  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E2328  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E232C  38 80 00 8E */	li r4, 0x8e
/* 805E2330  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 805E2334  7C 05 07 74 */	extsb r5, r0
/* 805E2338  4B A5 30 29 */	bl isSwitch__10dSv_info_cCFii
/* 805E233C  2C 03 00 00 */	cmpwi r3, 0
/* 805E2340  41 82 00 1C */	beq lbl_805E235C
/* 805E2344  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E2348  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E234C  38 80 00 8E */	li r4, 0x8e
/* 805E2350  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 805E2354  7C 05 07 74 */	extsb r5, r0
/* 805E2358  4B A5 2E A9 */	bl onSwitch__10dSv_info_cFii
lbl_805E235C:
/* 805E235C  38 00 00 01 */	li r0, 1
/* 805E2360  98 1A 05 B6 */	stb r0, 0x5b6(r26)
/* 805E2364  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 805E2368  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 805E236C  EC 01 00 2A */	fadds f0, f1, f0
/* 805E2370  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 805E2374  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 805E2378  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 805E237C  38 00 00 28 */	li r0, 0x28
/* 805E2380  B0 1A 05 D8 */	sth r0, 0x5d8(r26)
/* 805E2384  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 805E2388  C0 03 00 04 */	lfs f0, 4(r3)
/* 805E238C  D0 1A 06 48 */	stfs f0, 0x648(r26)
lbl_805E2390:
/* 805E2390  3B 60 00 01 */	li r27, 1
lbl_805E2394:
/* 805E2394  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 805E2398  28 00 00 01 */	cmplwi r0, 1
/* 805E239C  40 82 00 34 */	bne lbl_805E23D0
/* 805E23A0  38 7A 04 DE */	addi r3, r26, 0x4de
/* 805E23A4  A8 9A 05 BA */	lha r4, 0x5ba(r26)
/* 805E23A8  38 A0 00 05 */	li r5, 5
/* 805E23AC  38 C0 10 00 */	li r6, 0x1000
/* 805E23B0  38 E0 00 00 */	li r7, 0
/* 805E23B4  4B C8 E1 8D */	bl cLib_addCalcAngleS__FPsssss
/* 805E23B8  38 7A 04 E6 */	addi r3, r26, 0x4e6
/* 805E23BC  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 805E23C0  38 A0 00 02 */	li r5, 2
/* 805E23C4  38 C0 10 00 */	li r6, 0x1000
/* 805E23C8  38 E0 00 00 */	li r7, 0
/* 805E23CC  4B C8 E1 75 */	bl cLib_addCalcAngleS__FPsssss
lbl_805E23D0:
/* 805E23D0  39 61 00 80 */	addi r11, r1, 0x80
/* 805E23D4  4B D7 FE 41 */	bl _restgpr_24
/* 805E23D8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805E23DC  7C 08 03 A6 */	mtlr r0
/* 805E23E0  38 21 00 80 */	addi r1, r1, 0x80
/* 805E23E4  4E 80 00 20 */	blr 
