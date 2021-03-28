lbl_805E6AB0:
/* 805E6AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E6AB4  7C 08 02 A6 */	mflr r0
/* 805E6AB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E6ABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E6AC0  93 C1 00 08 */	stw r30, 8(r1)
/* 805E6AC4  7C 7E 1B 78 */	mr r30, r3
/* 805E6AC8  3C 80 80 5F */	lis r4, lit_3911@ha
/* 805E6ACC  3B E4 D0 60 */	addi r31, r4, lit_3911@l
/* 805E6AD0  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 805E6AD4  C0 23 06 48 */	lfs f1, 0x648(r3)
/* 805E6AD8  C0 1F 02 70 */	lfs f0, 0x270(r31)
/* 805E6ADC  EC 01 00 28 */	fsubs f0, f1, f0
/* 805E6AE0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E6AE4  40 80 01 54 */	bge lbl_805E6C38
/* 805E6AE8  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 805E6AEC  28 00 00 00 */	cmplwi r0, 0
/* 805E6AF0  41 82 01 48 */	beq lbl_805E6C38
/* 805E6AF4  80 1E 0F 5C */	lwz r0, 0xf5c(r30)
/* 805E6AF8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805E6AFC  40 82 00 F0 */	bne lbl_805E6BEC
/* 805E6B00  38 80 00 00 */	li r4, 0
/* 805E6B04  38 A0 00 01 */	li r5, 1
/* 805E6B08  38 C0 00 00 */	li r6, 0
/* 805E6B0C  4B FF 8F 59 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E6B10  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 805E6B14  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 805E6B18  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 805E6B1C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 805E6B20  64 00 00 08 */	oris r0, r0, 8
/* 805E6B24  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 805E6B28  7F C3 F3 78 */	mr r3, r30
/* 805E6B2C  38 80 00 0E */	li r4, 0xe
/* 805E6B30  38 A0 00 02 */	li r5, 2
/* 805E6B34  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E6B38  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E6B3C  4B FF 84 29 */	bl SetAnm__8daB_GG_cFiiff
/* 805E6B40  80 1E 07 74 */	lwz r0, 0x774(r30)
/* 805E6B44  60 00 00 01 */	ori r0, r0, 1
/* 805E6B48  90 1E 07 74 */	stw r0, 0x774(r30)
/* 805E6B4C  80 1E 0D 94 */	lwz r0, 0xd94(r30)
/* 805E6B50  60 00 00 01 */	ori r0, r0, 1
/* 805E6B54  90 1E 0D 94 */	stw r0, 0xd94(r30)
/* 805E6B58  38 60 00 00 */	li r3, 0
/* 805E6B5C  38 80 00 07 */	li r4, 7
/* 805E6B60  38 00 00 03 */	li r0, 3
/* 805E6B64  7C 09 03 A6 */	mtctr r0
lbl_805E6B68:
/* 805E6B68  38 03 08 8B */	addi r0, r3, 0x88b
/* 805E6B6C  7C 9E 01 AE */	stbx r4, r30, r0
/* 805E6B70  38 63 01 38 */	addi r3, r3, 0x138
/* 805E6B74  42 00 FF F4 */	bdnz lbl_805E6B68
/* 805E6B78  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E6B7C  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 805E6B80  C0 1F 02 70 */	lfs f0, 0x270(r31)
/* 805E6B84  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 805E6B88  C0 1F 02 D8 */	lfs f0, 0x2d8(r31)
/* 805E6B8C  D0 1E 06 44 */	stfs f0, 0x644(r30)
/* 805E6B90  C0 1F 02 98 */	lfs f0, 0x298(r31)
/* 805E6B94  D0 1E 06 40 */	stfs f0, 0x640(r30)
/* 805E6B98  38 00 00 32 */	li r0, 0x32
/* 805E6B9C  B0 1E 05 DC */	sth r0, 0x5dc(r30)
/* 805E6BA0  D0 3E 05 30 */	stfs f1, 0x530(r30)
/* 805E6BA4  88 1E 05 CE */	lbz r0, 0x5ce(r30)
/* 805E6BA8  28 00 00 FF */	cmplwi r0, 0xff
/* 805E6BAC  41 82 00 70 */	beq lbl_805E6C1C
/* 805E6BB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E6BB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E6BB8  38 80 00 8E */	li r4, 0x8e
/* 805E6BBC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805E6BC0  7C 05 07 74 */	extsb r5, r0
/* 805E6BC4  4B A4 E7 9C */	b isSwitch__10dSv_info_cCFii
/* 805E6BC8  2C 03 00 00 */	cmpwi r3, 0
/* 805E6BCC  40 82 00 50 */	bne lbl_805E6C1C
/* 805E6BD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E6BD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E6BD8  38 80 00 8E */	li r4, 0x8e
/* 805E6BDC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805E6BE0  7C 05 07 74 */	extsb r5, r0
/* 805E6BE4  4B A4 E6 1C */	b onSwitch__10dSv_info_cFii
/* 805E6BE8  48 00 00 34 */	b lbl_805E6C1C
lbl_805E6BEC:
/* 805E6BEC  38 80 00 1D */	li r4, 0x1d
/* 805E6BF0  38 A0 00 02 */	li r5, 2
/* 805E6BF4  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E6BF8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E6BFC  4B FF 83 69 */	bl SetAnm__8daB_GG_cFiiff
/* 805E6C00  7F C3 F3 78 */	mr r3, r30
/* 805E6C04  38 80 00 02 */	li r4, 2
/* 805E6C08  38 A0 00 00 */	li r5, 0
/* 805E6C0C  38 C0 00 00 */	li r6, 0
/* 805E6C10  4B FF 8E 55 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E6C14  38 00 00 00 */	li r0, 0
/* 805E6C18  B0 1E 05 D8 */	sth r0, 0x5d8(r30)
lbl_805E6C1C:
/* 805E6C1C  80 1E 06 F0 */	lwz r0, 0x6f0(r30)
/* 805E6C20  60 00 00 01 */	ori r0, r0, 1
/* 805E6C24  90 1E 06 F0 */	stw r0, 0x6f0(r30)
/* 805E6C28  80 1E 0D 10 */	lwz r0, 0xd10(r30)
/* 805E6C2C  60 00 00 01 */	ori r0, r0, 1
/* 805E6C30  90 1E 0D 10 */	stw r0, 0xd10(r30)
/* 805E6C34  48 00 01 E4 */	b lbl_805E6E18
lbl_805E6C38:
/* 805E6C38  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E6C3C  40 80 00 48 */	bge lbl_805E6C84
/* 805E6C40  80 1E 0F 5C */	lwz r0, 0xf5c(r30)
/* 805E6C44  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805E6C48  41 82 00 3C */	beq lbl_805E6C84
/* 805E6C4C  7F C3 F3 78 */	mr r3, r30
/* 805E6C50  4B FF 8D F9 */	bl SpeedClear__8daB_GG_cFv
/* 805E6C54  7F C3 F3 78 */	mr r3, r30
/* 805E6C58  38 80 00 01 */	li r4, 1
/* 805E6C5C  38 A0 00 01 */	li r5, 1
/* 805E6C60  38 C0 00 04 */	li r6, 4
/* 805E6C64  4B FF 8E 01 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E6C68  80 1E 06 F0 */	lwz r0, 0x6f0(r30)
/* 805E6C6C  60 00 00 01 */	ori r0, r0, 1
/* 805E6C70  90 1E 06 F0 */	stw r0, 0x6f0(r30)
/* 805E6C74  80 1E 0D 10 */	lwz r0, 0xd10(r30)
/* 805E6C78  60 00 00 01 */	ori r0, r0, 1
/* 805E6C7C  90 1E 0D 10 */	stw r0, 0xd10(r30)
/* 805E6C80  48 00 01 98 */	b lbl_805E6E18
lbl_805E6C84:
/* 805E6C84  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E6C88  40 80 01 14 */	bge lbl_805E6D9C
/* 805E6C8C  7F C3 F3 78 */	mr r3, r30
/* 805E6C90  4B FF 8D B9 */	bl SpeedClear__8daB_GG_cFv
/* 805E6C94  7F C3 F3 78 */	mr r3, r30
/* 805E6C98  38 80 00 00 */	li r4, 0
/* 805E6C9C  38 A0 00 01 */	li r5, 1
/* 805E6CA0  38 C0 00 00 */	li r6, 0
/* 805E6CA4  4B FF 8D C1 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E6CA8  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 805E6CAC  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 805E6CB0  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 805E6CB4  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 805E6CB8  64 00 00 08 */	oris r0, r0, 8
/* 805E6CBC  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 805E6CC0  7F C3 F3 78 */	mr r3, r30
/* 805E6CC4  38 80 00 0E */	li r4, 0xe
/* 805E6CC8  38 A0 00 02 */	li r5, 2
/* 805E6CCC  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E6CD0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E6CD4  4B FF 82 91 */	bl SetAnm__8daB_GG_cFiiff
/* 805E6CD8  80 1E 07 74 */	lwz r0, 0x774(r30)
/* 805E6CDC  60 00 00 01 */	ori r0, r0, 1
/* 805E6CE0  90 1E 07 74 */	stw r0, 0x774(r30)
/* 805E6CE4  80 1E 0D 94 */	lwz r0, 0xd94(r30)
/* 805E6CE8  60 00 00 01 */	ori r0, r0, 1
/* 805E6CEC  90 1E 0D 94 */	stw r0, 0xd94(r30)
/* 805E6CF0  38 60 00 00 */	li r3, 0
/* 805E6CF4  38 80 00 07 */	li r4, 7
/* 805E6CF8  38 00 00 03 */	li r0, 3
/* 805E6CFC  7C 09 03 A6 */	mtctr r0
lbl_805E6D00:
/* 805E6D00  38 03 08 8B */	addi r0, r3, 0x88b
/* 805E6D04  7C 9E 01 AE */	stbx r4, r30, r0
/* 805E6D08  38 63 01 38 */	addi r3, r3, 0x138
/* 805E6D0C  42 00 FF F4 */	bdnz lbl_805E6D00
/* 805E6D10  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E6D14  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 805E6D18  C0 1F 02 70 */	lfs f0, 0x270(r31)
/* 805E6D1C  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 805E6D20  C0 1F 02 D8 */	lfs f0, 0x2d8(r31)
/* 805E6D24  D0 1E 06 44 */	stfs f0, 0x644(r30)
/* 805E6D28  C0 1F 02 98 */	lfs f0, 0x298(r31)
/* 805E6D2C  D0 1E 06 40 */	stfs f0, 0x640(r30)
/* 805E6D30  38 00 00 32 */	li r0, 0x32
/* 805E6D34  B0 1E 05 DC */	sth r0, 0x5dc(r30)
/* 805E6D38  D0 3E 05 30 */	stfs f1, 0x530(r30)
/* 805E6D3C  88 1E 05 CE */	lbz r0, 0x5ce(r30)
/* 805E6D40  28 00 00 FF */	cmplwi r0, 0xff
/* 805E6D44  41 82 00 3C */	beq lbl_805E6D80
/* 805E6D48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E6D4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E6D50  38 80 00 8E */	li r4, 0x8e
/* 805E6D54  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805E6D58  7C 05 07 74 */	extsb r5, r0
/* 805E6D5C  4B A4 E6 04 */	b isSwitch__10dSv_info_cCFii
/* 805E6D60  2C 03 00 00 */	cmpwi r3, 0
/* 805E6D64  40 82 00 1C */	bne lbl_805E6D80
/* 805E6D68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E6D6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E6D70  38 80 00 8E */	li r4, 0x8e
/* 805E6D74  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805E6D78  7C 05 07 74 */	extsb r5, r0
/* 805E6D7C  4B A4 E4 84 */	b onSwitch__10dSv_info_cFii
lbl_805E6D80:
/* 805E6D80  80 1E 06 F0 */	lwz r0, 0x6f0(r30)
/* 805E6D84  60 00 00 01 */	ori r0, r0, 1
/* 805E6D88  90 1E 06 F0 */	stw r0, 0x6f0(r30)
/* 805E6D8C  80 1E 0D 10 */	lwz r0, 0xd10(r30)
/* 805E6D90  60 00 00 01 */	ori r0, r0, 1
/* 805E6D94  90 1E 0D 10 */	stw r0, 0xd10(r30)
/* 805E6D98  48 00 00 80 */	b lbl_805E6E18
lbl_805E6D9C:
/* 805E6D9C  A8 7E 05 DC */	lha r3, 0x5dc(r30)
/* 805E6DA0  7C 60 07 35 */	extsh. r0, r3
/* 805E6DA4  40 82 00 40 */	bne lbl_805E6DE4
/* 805E6DA8  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 805E6DAC  28 00 00 00 */	cmplwi r0, 0
/* 805E6DB0  41 82 00 34 */	beq lbl_805E6DE4
/* 805E6DB4  7F C3 F3 78 */	mr r3, r30
/* 805E6DB8  38 80 00 01 */	li r4, 1
/* 805E6DBC  38 A0 00 01 */	li r5, 1
/* 805E6DC0  38 C0 00 00 */	li r6, 0
/* 805E6DC4  4B FF 8C A1 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E6DC8  80 1E 06 F0 */	lwz r0, 0x6f0(r30)
/* 805E6DCC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E6DD0  90 1E 06 F0 */	stw r0, 0x6f0(r30)
/* 805E6DD4  80 1E 0D 10 */	lwz r0, 0xd10(r30)
/* 805E6DD8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E6DDC  90 1E 0D 10 */	stw r0, 0xd10(r30)
/* 805E6DE0  48 00 00 38 */	b lbl_805E6E18
lbl_805E6DE4:
/* 805E6DE4  7C 60 07 35 */	extsh. r0, r3
/* 805E6DE8  40 82 00 30 */	bne lbl_805E6E18
/* 805E6DEC  7F C3 F3 78 */	mr r3, r30
/* 805E6DF0  38 80 00 01 */	li r4, 1
/* 805E6DF4  38 A0 00 01 */	li r5, 1
/* 805E6DF8  38 C0 00 00 */	li r6, 0
/* 805E6DFC  4B FF 8C 69 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E6E00  80 1E 06 F0 */	lwz r0, 0x6f0(r30)
/* 805E6E04  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E6E08  90 1E 06 F0 */	stw r0, 0x6f0(r30)
/* 805E6E0C  80 1E 0D 10 */	lwz r0, 0xd10(r30)
/* 805E6E10  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E6E14  90 1E 0D 10 */	stw r0, 0xd10(r30)
lbl_805E6E18:
/* 805E6E18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E6E1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E6E20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E6E24  7C 08 03 A6 */	mtlr r0
/* 805E6E28  38 21 00 10 */	addi r1, r1, 0x10
/* 805E6E2C  4E 80 00 20 */	blr 
