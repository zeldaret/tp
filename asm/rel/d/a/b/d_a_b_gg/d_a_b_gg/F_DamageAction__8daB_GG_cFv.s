lbl_805E4914:
/* 805E4914  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E4918  7C 08 02 A6 */	mflr r0
/* 805E491C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E4920  39 61 00 40 */	addi r11, r1, 0x40
/* 805E4924  4B D7 D8 B5 */	bl _savegpr_28
/* 805E4928  7C 7D 1B 78 */	mr r29, r3
/* 805E492C  3C 80 80 5F */	lis r4, lit_1109@ha /* 0x805ED6C0@ha */
/* 805E4930  3B C4 D6 C0 */	addi r30, r4, lit_1109@l /* 0x805ED6C0@l */
/* 805E4934  3C 80 80 5F */	lis r4, lit_3911@ha /* 0x805ED060@ha */
/* 805E4938  3B E4 D0 60 */	addi r31, r4, lit_3911@l /* 0x805ED060@l */
/* 805E493C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E4940  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E4944  83 84 5D AC */	lwz r28, 0x5dac(r4)
/* 805E4948  88 03 05 C7 */	lbz r0, 0x5c7(r3)
/* 805E494C  28 00 00 0D */	cmplwi r0, 0xd
/* 805E4950  41 81 08 28 */	bgt lbl_805E5178
/* 805E4954  3C 80 80 5F */	lis r4, lit_6629@ha /* 0x805ED498@ha */
/* 805E4958  38 84 D4 98 */	addi r4, r4, lit_6629@l /* 0x805ED498@l */
/* 805E495C  54 00 10 3A */	slwi r0, r0, 2
/* 805E4960  7C 04 00 2E */	lwzx r0, r4, r0
/* 805E4964  7C 09 03 A6 */	mtctr r0
/* 805E4968  4E 80 04 20 */	bctr 
lbl_805E496C:
/* 805E496C  80 1D 0B D4 */	lwz r0, 0xbd4(r29)
/* 805E4970  60 00 00 01 */	ori r0, r0, 1
/* 805E4974  90 1D 0B D4 */	stw r0, 0xbd4(r29)
/* 805E4978  38 80 00 0A */	li r4, 0xa
/* 805E497C  38 A0 00 00 */	li r5, 0
/* 805E4980  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805E4984  FC 40 08 90 */	fmr f2, f1
/* 805E4988  4B FF A5 DD */	bl SetAnm__8daB_GG_cFiiff
/* 805E498C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E4990  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 805E4994  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E4998  88 7D 05 C7 */	lbz r3, 0x5c7(r29)
/* 805E499C  38 03 00 02 */	addi r0, r3, 2
/* 805E49A0  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E49A4  48 00 07 D4 */	b lbl_805E5178
lbl_805E49A8:
/* 805E49A8  38 80 00 0A */	li r4, 0xa
/* 805E49AC  38 A0 00 00 */	li r5, 0
/* 805E49B0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805E49B4  FC 40 08 90 */	fmr f2, f1
/* 805E49B8  4B FF A5 AD */	bl SetAnm__8daB_GG_cFiiff
/* 805E49BC  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 805E49C0  3C 63 00 01 */	addis r3, r3, 1
/* 805E49C4  38 03 80 00 */	addi r0, r3, -32768
/* 805E49C8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805E49CC  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 805E49D0  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E49D4  C0 1F 02 C0 */	lfs f0, 0x2c0(r31)
/* 805E49D8  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 805E49DC  88 7D 05 C7 */	lbz r3, 0x5c7(r29)
/* 805E49E0  38 03 00 01 */	addi r0, r3, 1
/* 805E49E4  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E49E8  48 00 07 90 */	b lbl_805E5178
lbl_805E49EC:
/* 805E49EC  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E49F0  38 80 00 01 */	li r4, 1
/* 805E49F4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E49F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E49FC  40 82 00 18 */	bne lbl_805E4A14
/* 805E4A00  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E4A04  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E4A08  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E4A0C  41 82 00 08 */	beq lbl_805E4A14
/* 805E4A10  38 80 00 00 */	li r4, 0
lbl_805E4A14:
/* 805E4A14  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E4A18  41 82 07 60 */	beq lbl_805E5178
/* 805E4A1C  7F A3 EB 78 */	mr r3, r29
/* 805E4A20  38 80 00 00 */	li r4, 0
/* 805E4A24  38 A0 00 02 */	li r5, 2
/* 805E4A28  38 C0 00 0A */	li r6, 0xa
/* 805E4A2C  4B FF B0 39 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E4A30  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805E4A34  60 00 00 01 */	ori r0, r0, 1
/* 805E4A38  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805E4A3C  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805E4A40  60 00 00 01 */	ori r0, r0, 1
/* 805E4A44  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805E4A48  38 00 00 01 */	li r0, 1
/* 805E4A4C  98 1D 06 BA */	stb r0, 0x6ba(r29)
/* 805E4A50  48 00 07 28 */	b lbl_805E5178
lbl_805E4A54:
/* 805E4A54  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E4A58  2C 00 00 12 */	cmpwi r0, 0x12
/* 805E4A5C  41 82 00 0C */	beq lbl_805E4A68
/* 805E4A60  2C 00 00 09 */	cmpwi r0, 9
/* 805E4A64  40 82 00 F8 */	bne lbl_805E4B5C
lbl_805E4A68:
/* 805E4A68  38 00 00 01 */	li r0, 1
/* 805E4A6C  98 1D 05 C5 */	stb r0, 0x5c5(r29)
/* 805E4A70  38 00 00 03 */	li r0, 3
/* 805E4A74  98 1D 05 C6 */	stb r0, 0x5c6(r29)
/* 805E4A78  38 00 00 0A */	li r0, 0xa
/* 805E4A7C  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E4A80  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E4A84  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E4A88  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E4A8C  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 805E4A90  28 00 00 00 */	cmplwi r0, 0
/* 805E4A94  41 82 00 44 */	beq lbl_805E4AD8
/* 805E4A98  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 805E4A9C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 805E4AA0  A8 03 00 14 */	lha r0, 0x14(r3)
/* 805E4AA4  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 805E4AA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E4AAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E4AB0  3C 00 43 30 */	lis r0, 0x4330
/* 805E4AB4  90 01 00 20 */	stw r0, 0x20(r1)
/* 805E4AB8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805E4ABC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E4AC0  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E4AC4  FC 00 00 1E */	fctiwz f0, f0
/* 805E4AC8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805E4ACC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805E4AD0  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 805E4AD4  48 00 00 40 */	b lbl_805E4B14
lbl_805E4AD8:
/* 805E4AD8  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 805E4ADC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 805E4AE0  A8 03 00 0C */	lha r0, 0xc(r3)
/* 805E4AE4  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 805E4AE8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E4AEC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805E4AF0  3C 00 43 30 */	lis r0, 0x4330
/* 805E4AF4  90 01 00 28 */	stw r0, 0x28(r1)
/* 805E4AF8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805E4AFC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E4B00  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E4B04  FC 00 00 1E */	fctiwz f0, f0
/* 805E4B08  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805E4B0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E4B10  B0 1D 05 DC */	sth r0, 0x5dc(r29)
lbl_805E4B14:
/* 805E4B14  88 1D 05 CE */	lbz r0, 0x5ce(r29)
/* 805E4B18  28 00 00 FF */	cmplwi r0, 0xff
/* 805E4B1C  41 82 01 08 */	beq lbl_805E4C24
/* 805E4B20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E4B24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E4B28  38 80 00 8E */	li r4, 0x8e
/* 805E4B2C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805E4B30  7C 05 07 74 */	extsb r5, r0
/* 805E4B34  4B A5 08 2D */	bl isSwitch__10dSv_info_cCFii
/* 805E4B38  2C 03 00 00 */	cmpwi r3, 0
/* 805E4B3C  41 82 00 E8 */	beq lbl_805E4C24
/* 805E4B40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E4B44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E4B48  38 80 00 8E */	li r4, 0x8e
/* 805E4B4C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805E4B50  7C 05 07 74 */	extsb r5, r0
/* 805E4B54  4B A5 07 5D */	bl offSwitch__10dSv_info_cFii
/* 805E4B58  48 00 00 CC */	b lbl_805E4C24
lbl_805E4B5C:
/* 805E4B5C  2C 00 00 08 */	cmpwi r0, 8
/* 805E4B60  41 82 00 64 */	beq lbl_805E4BC4
/* 805E4B64  2C 00 00 0C */	cmpwi r0, 0xc
/* 805E4B68  41 82 00 5C */	beq lbl_805E4BC4
/* 805E4B6C  38 80 00 08 */	li r4, 8
/* 805E4B70  38 A0 00 00 */	li r5, 0
/* 805E4B74  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E4B78  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E4B7C  4B FF A3 E9 */	bl SetAnm__8daB_GG_cFiiff
/* 805E4B80  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070506@ha */
/* 805E4B84  38 03 05 06 */	addi r0, r3, 0x0506 /* 0x00070506@l */
/* 805E4B88  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E4B8C  38 7D 0E 4C */	addi r3, r29, 0xe4c
/* 805E4B90  38 81 00 0C */	addi r4, r1, 0xc
/* 805E4B94  38 A0 FF FF */	li r5, -1
/* 805E4B98  81 9D 0E 4C */	lwz r12, 0xe4c(r29)
/* 805E4B9C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805E4BA0  7D 89 03 A6 */	mtctr r12
/* 805E4BA4  4E 80 04 21 */	bctrl 
/* 805E4BA8  C0 1F 02 C4 */	lfs f0, 0x2c4(r31)
/* 805E4BAC  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 805E4BB0  38 60 00 1F */	li r3, 0x1f
/* 805E4BB4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805E4BB8  7C 04 07 74 */	extsb r4, r0
/* 805E4BBC  4B A4 8D 91 */	bl dComIfGs_onZoneSwitch__Fii
/* 805E4BC0  48 00 00 64 */	b lbl_805E4C24
lbl_805E4BC4:
/* 805E4BC4  2C 00 00 08 */	cmpwi r0, 8
/* 805E4BC8  40 82 00 5C */	bne lbl_805E4C24
/* 805E4BCC  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E4BD0  38 80 00 01 */	li r4, 1
/* 805E4BD4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E4BD8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E4BDC  40 82 00 18 */	bne lbl_805E4BF4
/* 805E4BE0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E4BE4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E4BE8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E4BEC  41 82 00 08 */	beq lbl_805E4BF4
/* 805E4BF0  38 80 00 00 */	li r4, 0
lbl_805E4BF4:
/* 805E4BF4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E4BF8  41 82 00 2C */	beq lbl_805E4C24
/* 805E4BFC  7F A3 EB 78 */	mr r3, r29
/* 805E4C00  38 80 00 0C */	li r4, 0xc
/* 805E4C04  38 A0 00 02 */	li r5, 2
/* 805E4C08  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E4C0C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E4C10  4B FF A3 55 */	bl SetAnm__8daB_GG_cFiiff
/* 805E4C14  7F A3 EB 78 */	mr r3, r29
/* 805E4C18  4B FF AE 31 */	bl SpeedClear__8daB_GG_cFv
/* 805E4C1C  38 00 00 01 */	li r0, 1
/* 805E4C20  B0 1D 05 D8 */	sth r0, 0x5d8(r29)
lbl_805E4C24:
/* 805E4C24  A8 1D 05 D8 */	lha r0, 0x5d8(r29)
/* 805E4C28  2C 00 00 01 */	cmpwi r0, 1
/* 805E4C2C  40 82 05 4C */	bne lbl_805E5178
/* 805E4C30  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E4C34  2C 00 00 0C */	cmpwi r0, 0xc
/* 805E4C38  40 82 05 40 */	bne lbl_805E5178
/* 805E4C3C  88 7D 05 C7 */	lbz r3, 0x5c7(r29)
/* 805E4C40  38 03 00 01 */	addi r0, r3, 1
/* 805E4C44  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E4C48  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 805E4C4C  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 805E4C50  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 805E4C54  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 805E4C58  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 805E4C5C  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 805E4C60  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 805E4C64  64 00 00 20 */	oris r0, r0, 0x20
/* 805E4C68  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 805E4C6C  38 00 00 05 */	li r0, 5
/* 805E4C70  B0 1D 05 D8 */	sth r0, 0x5d8(r29)
/* 805E4C74  48 00 05 04 */	b lbl_805E5178
lbl_805E4C78:
/* 805E4C78  7F 83 E3 78 */	mr r3, r28
/* 805E4C7C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 805E4C80  81 8C 02 4C */	lwz r12, 0x24c(r12)
/* 805E4C84  7D 89 03 A6 */	mtctr r12
/* 805E4C88  4E 80 04 21 */	bctrl 
/* 805E4C8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E4C90  40 82 00 D0 */	bne lbl_805E4D60
/* 805E4C94  C0 1F 02 C4 */	lfs f0, 0x2c4(r31)
/* 805E4C98  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 805E4C9C  7F A3 EB 78 */	mr r3, r29
/* 805E4CA0  38 80 00 09 */	li r4, 9
/* 805E4CA4  38 A0 00 00 */	li r5, 0
/* 805E4CA8  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E4CAC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E4CB0  4B FF A2 B5 */	bl SetAnm__8daB_GG_cFiiff
/* 805E4CB4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E4CB8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805E4CBC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E4CC0  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E4CC4  88 7D 05 C7 */	lbz r3, 0x5c7(r29)
/* 805E4CC8  38 03 00 01 */	addi r0, r3, 1
/* 805E4CCC  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E4CD0  38 60 00 00 */	li r3, 0
/* 805E4CD4  7C 64 1B 78 */	mr r4, r3
/* 805E4CD8  38 00 00 03 */	li r0, 3
/* 805E4CDC  7C 09 03 A6 */	mtctr r0
lbl_805E4CE0:
/* 805E4CE0  7C BD 1A 14 */	add r5, r29, r3
/* 805E4CE4  98 85 08 8B */	stb r4, 0x88b(r5)
/* 805E4CE8  80 05 08 14 */	lwz r0, 0x814(r5)
/* 805E4CEC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E4CF0  90 05 08 14 */	stw r0, 0x814(r5)
/* 805E4CF4  38 63 01 38 */	addi r3, r3, 0x138
/* 805E4CF8  42 00 FF E8 */	bdnz lbl_805E4CE0
/* 805E4CFC  38 80 00 00 */	li r4, 0
/* 805E4D00  B0 9D 05 CC */	sth r4, 0x5cc(r29)
/* 805E4D04  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 805E4D08  C0 23 00 04 */	lfs f1, 4(r3)
/* 805E4D0C  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 805E4D10  EC 01 00 28 */	fsubs f0, f1, f0
/* 805E4D14  D0 1D 06 48 */	stfs f0, 0x648(r29)
/* 805E4D18  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805E4D1C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E4D20  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805E4D24  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E4D28  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E4D2C  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805E4D30  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805E4D34  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E4D38  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805E4D3C  B0 9E 00 8C */	sth r4, 0x8c(r30)
/* 805E4D40  B0 9E 00 8E */	sth r4, 0x8e(r30)
/* 805E4D44  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 805E4D48  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 805E4D4C  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 805E4D50  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 805E4D54  64 00 00 20 */	oris r0, r0, 0x20
/* 805E4D58  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 805E4D5C  48 00 01 28 */	b lbl_805E4E84
lbl_805E4D60:
/* 805E4D60  7F 83 E3 78 */	mr r3, r28
/* 805E4D64  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 805E4D68  81 8C 02 48 */	lwz r12, 0x248(r12)
/* 805E4D6C  7D 89 03 A6 */	mtctr r12
/* 805E4D70  4E 80 04 21 */	bctrl 
/* 805E4D74  7C 7E 1B 78 */	mr r30, r3
/* 805E4D78  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E4D7C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805E4D80  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805E4D84  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E4D88  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E4D8C  80 63 00 04 */	lwz r3, 4(r3)
/* 805E4D90  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805E4D94  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805E4D98  38 63 02 10 */	addi r3, r3, 0x210
/* 805E4D9C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805E4DA0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805E4DA4  4B D6 17 0D */	bl PSMTXCopy
/* 805E4DA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805E4DAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805E4DB0  38 81 00 10 */	addi r4, r1, 0x10
/* 805E4DB4  7C 85 23 78 */	mr r5, r4
/* 805E4DB8  4B D6 1F B5 */	bl PSMTXMultVec
/* 805E4DBC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805E4DC0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805E4DC4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805E4DC8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805E4DCC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805E4DD0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E4DD4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805E4DD8  EC 01 00 28 */	fsubs f0, f1, f0
/* 805E4DDC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805E4DE0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 805E4DE4  38 81 00 10 */	addi r4, r1, 0x10
/* 805E4DE8  C0 3F 01 98 */	lfs f1, 0x198(r31)
/* 805E4DEC  4B C8 B9 C1 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 805E4DF0  80 1D 0F 5C */	lwz r0, 0xf5c(r29)
/* 805E4DF4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 805E4DF8  41 82 00 8C */	beq lbl_805E4E84
/* 805E4DFC  A8 1D 05 D8 */	lha r0, 0x5d8(r29)
/* 805E4E00  2C 00 00 00 */	cmpwi r0, 0
/* 805E4E04  40 82 00 80 */	bne lbl_805E4E84
/* 805E4E08  7F A3 EB 78 */	mr r3, r29
/* 805E4E0C  38 80 00 00 */	li r4, 0
/* 805E4E10  38 A0 00 01 */	li r5, 1
/* 805E4E14  38 C0 00 00 */	li r6, 0
/* 805E4E18  4B FF AC 4D */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E4E1C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 805E4E20  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 805E4E24  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 805E4E28  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 805E4E2C  64 00 00 08 */	oris r0, r0, 8
/* 805E4E30  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 805E4E34  7F A3 EB 78 */	mr r3, r29
/* 805E4E38  38 80 00 0E */	li r4, 0xe
/* 805E4E3C  38 A0 00 02 */	li r5, 2
/* 805E4E40  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E4E44  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E4E48  4B FF A1 1D */	bl SetAnm__8daB_GG_cFiiff
/* 805E4E4C  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805E4E50  60 00 00 01 */	ori r0, r0, 1
/* 805E4E54  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805E4E58  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805E4E5C  60 00 00 01 */	ori r0, r0, 1
/* 805E4E60  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805E4E64  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E4E68  60 00 00 01 */	ori r0, r0, 1
/* 805E4E6C  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805E4E70  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E4E74  D0 3D 04 FC */	stfs f1, 0x4fc(r29)
/* 805E4E78  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 805E4E7C  D0 1D 06 44 */	stfs f0, 0x644(r29)
/* 805E4E80  D0 3D 05 30 */	stfs f1, 0x530(r29)
lbl_805E4E84:
/* 805E4E84  38 7D 06 C4 */	addi r3, r29, 0x6c4
/* 805E4E88  38 80 00 00 */	li r4, 0
/* 805E4E8C  38 A0 20 00 */	li r5, 0x2000
/* 805E4E90  4B C8 BD 01 */	bl cLib_chaseAngleS__FPsss
/* 805E4E94  48 00 02 E4 */	b lbl_805E5178
lbl_805E4E98:
/* 805E4E98  38 7D 06 C4 */	addi r3, r29, 0x6c4
/* 805E4E9C  38 80 00 00 */	li r4, 0
/* 805E4EA0  38 A0 20 00 */	li r5, 0x2000
/* 805E4EA4  4B C8 BC ED */	bl cLib_chaseAngleS__FPsss
/* 805E4EA8  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E4EAC  38 80 00 01 */	li r4, 1
/* 805E4EB0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E4EB4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E4EB8  40 82 00 18 */	bne lbl_805E4ED0
/* 805E4EBC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E4EC0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E4EC4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E4EC8  41 82 00 08 */	beq lbl_805E4ED0
/* 805E4ECC  38 80 00 00 */	li r4, 0
lbl_805E4ED0:
/* 805E4ED0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E4ED4  41 82 01 08 */	beq lbl_805E4FDC
/* 805E4ED8  80 1D 0F 5C */	lwz r0, 0xf5c(r29)
/* 805E4EDC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805E4EE0  41 82 00 FC */	beq lbl_805E4FDC
/* 805E4EE4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805E4EE8  D0 1D 06 48 */	stfs f0, 0x648(r29)
/* 805E4EEC  C0 1F 02 C4 */	lfs f0, 0x2c4(r31)
/* 805E4EF0  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 805E4EF4  88 7D 05 C7 */	lbz r3, 0x5c7(r29)
/* 805E4EF8  38 03 00 01 */	addi r0, r3, 1
/* 805E4EFC  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E4F00  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E4F04  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E4F08  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E4F0C  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 805E4F10  28 00 00 00 */	cmplwi r0, 0
/* 805E4F14  41 82 00 44 */	beq lbl_805E4F58
/* 805E4F18  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 805E4F1C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 805E4F20  A8 03 00 14 */	lha r0, 0x14(r3)
/* 805E4F24  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 805E4F28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E4F2C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805E4F30  3C 00 43 30 */	lis r0, 0x4330
/* 805E4F34  90 01 00 28 */	stw r0, 0x28(r1)
/* 805E4F38  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805E4F3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E4F40  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E4F44  FC 00 00 1E */	fctiwz f0, f0
/* 805E4F48  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805E4F4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E4F50  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 805E4F54  48 00 00 40 */	b lbl_805E4F94
lbl_805E4F58:
/* 805E4F58  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 805E4F5C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 805E4F60  A8 03 00 0C */	lha r0, 0xc(r3)
/* 805E4F64  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 805E4F68  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E4F6C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805E4F70  3C 00 43 30 */	lis r0, 0x4330
/* 805E4F74  90 01 00 28 */	stw r0, 0x28(r1)
/* 805E4F78  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805E4F7C  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E4F80  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E4F84  FC 00 00 1E */	fctiwz f0, f0
/* 805E4F88  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805E4F8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E4F90  B0 1D 05 DC */	sth r0, 0x5dc(r29)
lbl_805E4F94:
/* 805E4F94  88 1D 05 CE */	lbz r0, 0x5ce(r29)
/* 805E4F98  28 00 00 FF */	cmplwi r0, 0xff
/* 805E4F9C  41 82 01 DC */	beq lbl_805E5178
/* 805E4FA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E4FA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E4FA8  38 80 00 8E */	li r4, 0x8e
/* 805E4FAC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805E4FB0  7C 05 07 74 */	extsb r5, r0
/* 805E4FB4  4B A5 03 AD */	bl isSwitch__10dSv_info_cCFii
/* 805E4FB8  2C 03 00 00 */	cmpwi r3, 0
/* 805E4FBC  41 82 01 BC */	beq lbl_805E5178
/* 805E4FC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E4FC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E4FC8  38 80 00 8E */	li r4, 0x8e
/* 805E4FCC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805E4FD0  7C 05 07 74 */	extsb r5, r0
/* 805E4FD4  4B A5 02 DD */	bl offSwitch__10dSv_info_cFii
/* 805E4FD8  48 00 01 A0 */	b lbl_805E5178
lbl_805E4FDC:
/* 805E4FDC  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 805E4FE0  C0 3D 06 48 */	lfs f1, 0x648(r29)
/* 805E4FE4  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 805E4FE8  EC 01 00 28 */	fsubs f0, f1, f0
/* 805E4FEC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805E4FF0  40 80 01 88 */	bge lbl_805E5178
/* 805E4FF4  7F A3 EB 78 */	mr r3, r29
/* 805E4FF8  38 80 00 00 */	li r4, 0
/* 805E4FFC  38 A0 00 01 */	li r5, 1
/* 805E5000  38 C0 00 00 */	li r6, 0
/* 805E5004  4B FF AA 61 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E5008  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 805E500C  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 805E5010  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 805E5014  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 805E5018  64 00 00 08 */	oris r0, r0, 8
/* 805E501C  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 805E5020  7F A3 EB 78 */	mr r3, r29
/* 805E5024  38 80 00 0E */	li r4, 0xe
/* 805E5028  38 A0 00 02 */	li r5, 2
/* 805E502C  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E5030  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E5034  4B FF 9F 31 */	bl SetAnm__8daB_GG_cFiiff
/* 805E5038  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805E503C  60 00 00 01 */	ori r0, r0, 1
/* 805E5040  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805E5044  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805E5048  60 00 00 01 */	ori r0, r0, 1
/* 805E504C  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805E5050  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E5054  60 00 00 01 */	ori r0, r0, 1
/* 805E5058  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805E505C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E5060  D0 3D 04 FC */	stfs f1, 0x4fc(r29)
/* 805E5064  C0 1F 02 70 */	lfs f0, 0x270(r31)
/* 805E5068  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 805E506C  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 805E5070  D0 1D 06 44 */	stfs f0, 0x644(r29)
/* 805E5074  D0 3D 05 30 */	stfs f1, 0x530(r29)
/* 805E5078  48 00 01 00 */	b lbl_805E5178
lbl_805E507C:
/* 805E507C  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E5080  2C 00 00 12 */	cmpwi r0, 0x12
/* 805E5084  41 82 00 34 */	beq lbl_805E50B8
/* 805E5088  38 80 00 12 */	li r4, 0x12
/* 805E508C  38 A0 00 00 */	li r5, 0
/* 805E5090  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E5094  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E5098  4B FF 9E CD */	bl SetAnm__8daB_GG_cFiiff
/* 805E509C  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 805E50A0  3C 63 00 01 */	addis r3, r3, 1
/* 805E50A4  38 03 80 00 */	addi r0, r3, -32768
/* 805E50A8  B0 1D 05 BA */	sth r0, 0x5ba(r29)
/* 805E50AC  A8 1D 05 BA */	lha r0, 0x5ba(r29)
/* 805E50B0  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805E50B4  48 00 00 C4 */	b lbl_805E5178
lbl_805E50B8:
/* 805E50B8  40 82 00 34 */	bne lbl_805E50EC
/* 805E50BC  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E50C0  38 63 00 0C */	addi r3, r3, 0xc
/* 805E50C4  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E50C8  4B D4 33 65 */	bl checkPass__12J3DFrameCtrlFf
/* 805E50CC  2C 03 00 00 */	cmpwi r3, 0
/* 805E50D0  41 82 00 1C */	beq lbl_805E50EC
/* 805E50D4  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 805E50D8  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E50DC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E50E0  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 805E50E4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805E50E8  48 00 00 90 */	b lbl_805E5178
lbl_805E50EC:
/* 805E50EC  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E50F0  2C 00 00 12 */	cmpwi r0, 0x12
/* 805E50F4  40 82 00 84 */	bne lbl_805E5178
/* 805E50F8  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E50FC  38 63 00 0C */	addi r3, r3, 0xc
/* 805E5100  C0 3F 02 C8 */	lfs f1, 0x2c8(r31)
/* 805E5104  4B D4 33 29 */	bl checkPass__12J3DFrameCtrlFf
/* 805E5108  2C 03 00 00 */	cmpwi r3, 0
/* 805E510C  41 82 00 6C */	beq lbl_805E5178
/* 805E5110  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E5114  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E5118  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805E511C  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E5120  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704AD@ha */
/* 805E5124  38 03 04 AD */	addi r0, r3, 0x04AD /* 0x000704AD@l */
/* 805E5128  90 01 00 08 */	stw r0, 8(r1)
/* 805E512C  38 7D 0E 4C */	addi r3, r29, 0xe4c
/* 805E5130  38 81 00 08 */	addi r4, r1, 8
/* 805E5134  38 A0 00 00 */	li r5, 0
/* 805E5138  38 C0 FF FF */	li r6, -1
/* 805E513C  81 9D 0E 4C */	lwz r12, 0xe4c(r29)
/* 805E5140  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805E5144  7D 89 03 A6 */	mtctr r12
/* 805E5148  4E 80 04 21 */	bctrl 
/* 805E514C  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 805E5150  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E5154  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 805E5158  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E515C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E5160  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805E5164  7F A3 EB 78 */	mr r3, r29
/* 805E5168  38 80 00 01 */	li r4, 1
/* 805E516C  38 A0 00 01 */	li r5, 1
/* 805E5170  38 C0 00 00 */	li r6, 0
/* 805E5174  4B FF A8 F1 */	bl SetAction__8daB_GG_cFUcUcUc
lbl_805E5178:
/* 805E5178  39 61 00 40 */	addi r11, r1, 0x40
/* 805E517C  4B D7 D0 A9 */	bl _restgpr_28
/* 805E5180  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E5184  7C 08 03 A6 */	mtlr r0
/* 805E5188  38 21 00 40 */	addi r1, r1, 0x40
/* 805E518C  4E 80 00 20 */	blr 
