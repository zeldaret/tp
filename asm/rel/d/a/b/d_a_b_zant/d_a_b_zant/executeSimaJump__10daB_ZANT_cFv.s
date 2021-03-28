lbl_80644A3C:
/* 80644A3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80644A40  7C 08 02 A6 */	mflr r0
/* 80644A44  90 01 00 44 */	stw r0, 0x44(r1)
/* 80644A48  39 61 00 40 */	addi r11, r1, 0x40
/* 80644A4C  4B D1 D7 90 */	b _savegpr_29
/* 80644A50  7C 7E 1B 78 */	mr r30, r3
/* 80644A54  3C 80 80 65 */	lis r4, lit_3757@ha
/* 80644A58  3B E4 EB 1C */	addi r31, r4, lit_3757@l
/* 80644A5C  80 03 06 DC */	lwz r0, 0x6dc(r3)
/* 80644A60  2C 00 00 0A */	cmpwi r0, 0xa
/* 80644A64  41 82 04 D0 */	beq lbl_80644F34
/* 80644A68  40 80 00 1C */	bge lbl_80644A84
/* 80644A6C  2C 00 00 00 */	cmpwi r0, 0
/* 80644A70  41 82 00 20 */	beq lbl_80644A90
/* 80644A74  41 80 05 88 */	blt lbl_80644FFC
/* 80644A78  2C 00 00 06 */	cmpwi r0, 6
/* 80644A7C  40 80 05 80 */	bge lbl_80644FFC
/* 80644A80  48 00 02 30 */	b lbl_80644CB0
lbl_80644A84:
/* 80644A84  2C 00 00 0C */	cmpwi r0, 0xc
/* 80644A88  40 80 05 74 */	bge lbl_80644FFC
/* 80644A8C  48 00 04 B4 */	b lbl_80644F40
lbl_80644A90:
/* 80644A90  38 80 00 01 */	li r4, 1
/* 80644A94  4B FF B4 D9 */	bl setTgHitBit__10daB_ZANT_cFi
/* 80644A98  80 1E 0A 7C */	lwz r0, 0xa7c(r30)
/* 80644A9C  60 00 00 04 */	ori r0, r0, 4
/* 80644AA0  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 80644AA4  80 1E 0B B4 */	lwz r0, 0xbb4(r30)
/* 80644AA8  60 00 00 04 */	ori r0, r0, 4
/* 80644AAC  90 1E 0B B4 */	stw r0, 0xbb4(r30)
/* 80644AB0  7F C3 F3 78 */	mr r3, r30
/* 80644AB4  38 80 00 41 */	li r4, 0x41
/* 80644AB8  38 A0 00 02 */	li r5, 2
/* 80644ABC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80644AC0  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80644AC4  4B FF 9B 01 */	bl setBck__10daB_ZANT_cFiUcff
/* 80644AC8  80 1E 06 D8 */	lwz r0, 0x6d8(r30)
/* 80644ACC  2C 00 00 00 */	cmpwi r0, 0
/* 80644AD0  40 82 00 80 */	bne lbl_80644B50
/* 80644AD4  38 00 00 00 */	li r0, 0
/* 80644AD8  98 1E 07 02 */	stb r0, 0x702(r30)
/* 80644ADC  38 00 00 0A */	li r0, 0xa
/* 80644AE0  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80644AE4  88 1E 07 1A */	lbz r0, 0x71a(r30)
/* 80644AE8  28 00 00 00 */	cmplwi r0, 0
/* 80644AEC  40 82 00 10 */	bne lbl_80644AFC
/* 80644AF0  38 00 00 78 */	li r0, 0x78
/* 80644AF4  90 1E 06 F0 */	stw r0, 0x6f0(r30)
/* 80644AF8  48 00 00 0C */	b lbl_80644B04
lbl_80644AFC:
/* 80644AFC  38 00 00 69 */	li r0, 0x69
/* 80644B00  90 1E 06 F0 */	stw r0, 0x6f0(r30)
lbl_80644B04:
/* 80644B04  38 00 00 04 */	li r0, 4
/* 80644B08  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80644B0C  7F C3 F3 78 */	mr r3, r30
/* 80644B10  38 80 00 20 */	li r4, 0x20
/* 80644B14  38 A0 00 02 */	li r5, 2
/* 80644B18  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80644B1C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80644B20  4B FF 9A A5 */	bl setBck__10daB_ZANT_cFiUcff
/* 80644B24  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704B1@ha */
/* 80644B28  38 03 04 B1 */	addi r0, r3, 0x04B1 /* 0x000704B1@l */
/* 80644B2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80644B30  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80644B34  38 81 00 10 */	addi r4, r1, 0x10
/* 80644B38  38 A0 FF FF */	li r5, -1
/* 80644B3C  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 80644B40  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80644B44  7D 89 03 A6 */	mtctr r12
/* 80644B48  4E 80 04 21 */	bctrl 
/* 80644B4C  48 00 04 B0 */	b lbl_80644FFC
lbl_80644B50:
/* 80644B50  2C 00 00 03 */	cmpwi r0, 3
/* 80644B54  41 82 00 0C */	beq lbl_80644B60
/* 80644B58  2C 00 00 02 */	cmpwi r0, 2
/* 80644B5C  40 82 00 10 */	bne lbl_80644B6C
lbl_80644B60:
/* 80644B60  38 00 00 0B */	li r0, 0xb
/* 80644B64  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80644B68  48 00 04 94 */	b lbl_80644FFC
lbl_80644B6C:
/* 80644B6C  38 00 00 04 */	li r0, 4
/* 80644B70  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80644B74  38 60 00 00 */	li r3, 0
/* 80644B78  90 7E 06 EC */	stw r3, 0x6ec(r30)
/* 80644B7C  38 00 00 01 */	li r0, 1
/* 80644B80  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80644B84  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 80644B88  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80644B8C  98 7E 06 FD */	stb r3, 0x6fd(r30)
/* 80644B90  88 1E 07 0F */	lbz r0, 0x70f(r30)
/* 80644B94  28 00 00 02 */	cmplwi r0, 2
/* 80644B98  40 80 00 24 */	bge lbl_80644BBC
/* 80644B9C  28 00 00 00 */	cmplwi r0, 0
/* 80644BA0  40 82 00 0C */	bne lbl_80644BAC
/* 80644BA4  38 00 00 96 */	li r0, 0x96
/* 80644BA8  90 1E 06 E8 */	stw r0, 0x6e8(r30)
lbl_80644BAC:
/* 80644BAC  88 7E 07 0F */	lbz r3, 0x70f(r30)
/* 80644BB0  38 03 00 01 */	addi r0, r3, 1
/* 80644BB4  98 1E 07 0F */	stb r0, 0x70f(r30)
/* 80644BB8  48 00 00 C8 */	b lbl_80644C80
lbl_80644BBC:
/* 80644BBC  C0 3F 01 98 */	lfs f1, 0x198(r31)
/* 80644BC0  4B C2 2D 94 */	b cM_rndF__Ff
/* 80644BC4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80644BC8  EC 00 08 2A */	fadds f0, f0, f1
/* 80644BCC  FC 00 00 1E */	fctiwz f0, f0
/* 80644BD0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80644BD4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80644BD8  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80644BDC  88 1E 07 0B */	lbz r0, 0x70b(r30)
/* 80644BE0  28 00 00 04 */	cmplwi r0, 4
/* 80644BE4  41 80 00 10 */	blt lbl_80644BF4
/* 80644BE8  38 00 00 00 */	li r0, 0
/* 80644BEC  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80644BF0  48 00 00 20 */	b lbl_80644C10
lbl_80644BF4:
/* 80644BF4  28 00 00 02 */	cmplwi r0, 2
/* 80644BF8  40 80 00 18 */	bge lbl_80644C10
/* 80644BFC  80 1E 06 E8 */	lwz r0, 0x6e8(r30)
/* 80644C00  2C 00 00 78 */	cmpwi r0, 0x78
/* 80644C04  40 80 00 0C */	bge lbl_80644C10
/* 80644C08  38 00 00 78 */	li r0, 0x78
/* 80644C0C  90 1E 06 E8 */	stw r0, 0x6e8(r30)
lbl_80644C10:
/* 80644C10  80 1E 06 E8 */	lwz r0, 0x6e8(r30)
/* 80644C14  2C 00 00 78 */	cmpwi r0, 0x78
/* 80644C18  40 80 00 68 */	bge lbl_80644C80
/* 80644C1C  38 00 00 00 */	li r0, 0
/* 80644C20  98 1E 07 0B */	stb r0, 0x70b(r30)
/* 80644C24  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80644C28  88 1E 07 1A */	lbz r0, 0x71a(r30)
/* 80644C2C  28 00 00 00 */	cmplwi r0, 0
/* 80644C30  40 82 00 24 */	bne lbl_80644C54
/* 80644C34  3C 60 80 65 */	lis r3, l_HIO@ha
/* 80644C38  38 63 F6 04 */	addi r3, r3, l_HIO@l
/* 80644C3C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80644C40  FC 00 00 1E */	fctiwz f0, f0
/* 80644C44  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80644C48  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80644C4C  98 1E 07 03 */	stb r0, 0x703(r30)
/* 80644C50  48 00 00 0C */	b lbl_80644C5C
lbl_80644C54:
/* 80644C54  38 00 00 08 */	li r0, 8
/* 80644C58  98 1E 07 03 */	stb r0, 0x703(r30)
lbl_80644C5C:
/* 80644C5C  38 00 00 00 */	li r0, 0
/* 80644C60  98 1E 07 11 */	stb r0, 0x711(r30)
/* 80644C64  7F C3 F3 78 */	mr r3, r30
/* 80644C68  38 80 00 00 */	li r4, 0
/* 80644C6C  38 A0 00 00 */	li r5, 0
/* 80644C70  4B FF 9A 55 */	bl setActionMode__10daB_ZANT_cFii
/* 80644C74  38 00 00 00 */	li r0, 0
/* 80644C78  98 1E 07 02 */	stb r0, 0x702(r30)
/* 80644C7C  48 00 03 80 */	b lbl_80644FFC
lbl_80644C80:
/* 80644C80  88 7E 07 0B */	lbz r3, 0x70b(r30)
/* 80644C84  38 03 00 01 */	addi r0, r3, 1
/* 80644C88  98 1E 07 0B */	stb r0, 0x70b(r30)
/* 80644C8C  88 1E 07 1A */	lbz r0, 0x71a(r30)
/* 80644C90  28 00 00 00 */	cmplwi r0, 0
/* 80644C94  41 82 00 10 */	beq lbl_80644CA4
/* 80644C98  80 7E 06 E8 */	lwz r3, 0x6e8(r30)
/* 80644C9C  38 03 FF CE */	addi r0, r3, -50
/* 80644CA0  90 1E 06 E8 */	stw r0, 0x6e8(r30)
lbl_80644CA4:
/* 80644CA4  7F C3 F3 78 */	mr r3, r30
/* 80644CA8  38 80 00 00 */	li r4, 0
/* 80644CAC  4B FF B2 C1 */	bl setTgHitBit__10daB_ZANT_cFi
lbl_80644CB0:
/* 80644CB0  7F C3 F3 78 */	mr r3, r30
/* 80644CB4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80644CB8  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80644CBC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80644CC0  4B 9D 5A 50 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80644CC4  7C 64 1B 78 */	mr r4, r3
/* 80644CC8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80644CCC  38 A0 00 08 */	li r5, 8
/* 80644CD0  38 C0 08 00 */	li r6, 0x800
/* 80644CD4  38 E0 00 80 */	li r7, 0x80
/* 80644CD8  4B C2 B8 68 */	b cLib_addCalcAngleS__FPsssss
/* 80644CDC  7F C3 F3 78 */	mr r3, r30
/* 80644CE0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80644CE4  4B 9D 5A FC */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80644CE8  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 80644CEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80644CF0  40 80 00 1C */	bge lbl_80644D0C
/* 80644CF4  80 1E 07 F8 */	lwz r0, 0x7f8(r30)
/* 80644CF8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80644CFC  41 82 00 30 */	beq lbl_80644D2C
/* 80644D00  38 00 00 0B */	li r0, 0xb
/* 80644D04  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80644D08  48 00 02 F4 */	b lbl_80644FFC
lbl_80644D0C:
/* 80644D0C  7F C3 F3 78 */	mr r3, r30
/* 80644D10  38 80 00 00 */	li r4, 0
/* 80644D14  4B FF AD A1 */	bl checkAvoidWeapon__10daB_ZANT_cFi
/* 80644D18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80644D1C  41 82 00 10 */	beq lbl_80644D2C
/* 80644D20  38 00 00 0B */	li r0, 0xb
/* 80644D24  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80644D28  48 00 02 D4 */	b lbl_80644FFC
lbl_80644D2C:
/* 80644D2C  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 80644D30  2C 00 00 01 */	cmpwi r0, 1
/* 80644D34  40 82 00 40 */	bne lbl_80644D74
/* 80644D38  80 1E 07 F8 */	lwz r0, 0x7f8(r30)
/* 80644D3C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80644D40  41 82 01 D0 */	beq lbl_80644F10
/* 80644D44  80 1E 06 EC */	lwz r0, 0x6ec(r30)
/* 80644D48  2C 00 00 00 */	cmpwi r0, 0
/* 80644D4C  40 82 01 C4 */	bne lbl_80644F10
/* 80644D50  7F C3 F3 78 */	mr r3, r30
/* 80644D54  38 80 00 1A */	li r4, 0x1a
/* 80644D58  38 A0 00 00 */	li r5, 0
/* 80644D5C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80644D60  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80644D64  4B FF 98 61 */	bl setBck__10daB_ZANT_cFiUcff
/* 80644D68  38 00 00 02 */	li r0, 2
/* 80644D6C  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80644D70  48 00 01 A0 */	b lbl_80644F10
lbl_80644D74:
/* 80644D74  2C 00 00 02 */	cmpwi r0, 2
/* 80644D78  40 82 00 70 */	bne lbl_80644DE8
/* 80644D7C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80644D80  38 63 00 0C */	addi r3, r3, 0xc
/* 80644D84  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80644D88  4B CE 36 A4 */	b checkPass__12J3DFrameCtrlFf
/* 80644D8C  2C 03 00 00 */	cmpwi r3, 0
/* 80644D90  41 82 00 2C */	beq lbl_80644DBC
/* 80644D94  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070421@ha */
/* 80644D98  38 03 04 21 */	addi r0, r3, 0x0421 /* 0x00070421@l */
/* 80644D9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80644DA0  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80644DA4  38 81 00 0C */	addi r4, r1, 0xc
/* 80644DA8  38 A0 FF FF */	li r5, -1
/* 80644DAC  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 80644DB0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80644DB4  7D 89 03 A6 */	mtctr r12
/* 80644DB8  4E 80 04 21 */	bctrl 
lbl_80644DBC:
/* 80644DBC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80644DC0  38 63 00 0C */	addi r3, r3, 0xc
/* 80644DC4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80644DC8  4B CE 36 64 */	b checkPass__12J3DFrameCtrlFf
/* 80644DCC  2C 03 00 00 */	cmpwi r3, 0
/* 80644DD0  41 82 01 40 */	beq lbl_80644F10
/* 80644DD4  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 80644DD8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80644DDC  38 00 00 03 */	li r0, 3
/* 80644DE0  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80644DE4  48 00 01 2C */	b lbl_80644F10
lbl_80644DE8:
/* 80644DE8  2C 00 00 03 */	cmpwi r0, 3
/* 80644DEC  40 82 00 3C */	bne lbl_80644E28
/* 80644DF0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80644DF4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80644DF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80644DFC  4C 40 13 82 */	cror 2, 0, 2
/* 80644E00  40 82 01 10 */	bne lbl_80644F10
/* 80644E04  7F C3 F3 78 */	mr r3, r30
/* 80644E08  38 80 00 1B */	li r4, 0x1b
/* 80644E0C  38 A0 00 00 */	li r5, 0
/* 80644E10  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80644E14  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80644E18  4B FF 97 AD */	bl setBck__10daB_ZANT_cFiUcff
/* 80644E1C  38 00 00 04 */	li r0, 4
/* 80644E20  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80644E24  48 00 00 EC */	b lbl_80644F10
lbl_80644E28:
/* 80644E28  2C 00 00 04 */	cmpwi r0, 4
/* 80644E2C  40 82 00 84 */	bne lbl_80644EB0
/* 80644E30  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80644E34  38 63 00 0C */	addi r3, r3, 0xc
/* 80644E38  C0 3F 01 D8 */	lfs f1, 0x1d8(r31)
/* 80644E3C  4B CE 35 F0 */	b checkPass__12J3DFrameCtrlFf
/* 80644E40  2C 03 00 00 */	cmpwi r3, 0
/* 80644E44  41 82 00 10 */	beq lbl_80644E54
/* 80644E48  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80644E4C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80644E50  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80644E54:
/* 80644E54  80 1E 07 F8 */	lwz r0, 0x7f8(r30)
/* 80644E58  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80644E5C  41 82 00 B4 */	beq lbl_80644F10
/* 80644E60  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070422@ha */
/* 80644E64  38 03 04 22 */	addi r0, r3, 0x0422 /* 0x00070422@l */
/* 80644E68  90 01 00 08 */	stw r0, 8(r1)
/* 80644E6C  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80644E70  38 81 00 08 */	addi r4, r1, 8
/* 80644E74  38 A0 00 00 */	li r5, 0
/* 80644E78  38 C0 FF FF */	li r6, -1
/* 80644E7C  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 80644E80  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80644E84  7D 89 03 A6 */	mtctr r12
/* 80644E88  4E 80 04 21 */	bctrl 
/* 80644E8C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80644E90  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80644E94  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80644E98  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 80644E9C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80644EA0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80644EA4  38 00 00 05 */	li r0, 5
/* 80644EA8  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80644EAC  48 00 00 64 */	b lbl_80644F10
lbl_80644EB0:
/* 80644EB0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80644EB4  38 80 00 01 */	li r4, 1
/* 80644EB8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80644EBC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80644EC0  40 82 00 18 */	bne lbl_80644ED8
/* 80644EC4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80644EC8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80644ECC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80644ED0  41 82 00 08 */	beq lbl_80644ED8
/* 80644ED4  38 80 00 00 */	li r4, 0
lbl_80644ED8:
/* 80644ED8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80644EDC  41 82 00 34 */	beq lbl_80644F10
/* 80644EE0  38 7E 38 94 */	addi r3, r30, 0x3894
/* 80644EE4  38 9E 38 98 */	addi r4, r30, 0x3898
/* 80644EE8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80644EEC  38 C0 00 00 */	li r6, 0
/* 80644EF0  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80644EF4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80644EF8  39 00 00 01 */	li r8, 1
/* 80644EFC  4B 9D 81 24 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80644F00  38 00 00 01 */	li r0, 1
/* 80644F04  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80644F08  38 00 00 05 */	li r0, 5
/* 80644F0C  90 1E 06 EC */	stw r0, 0x6ec(r30)
lbl_80644F10:
/* 80644F10  80 1E 07 F8 */	lwz r0, 0x7f8(r30)
/* 80644F14  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80644F18  41 82 00 E4 */	beq lbl_80644FFC
/* 80644F1C  80 1E 06 E8 */	lwz r0, 0x6e8(r30)
/* 80644F20  2C 00 00 00 */	cmpwi r0, 0
/* 80644F24  40 82 00 D8 */	bne lbl_80644FFC
/* 80644F28  38 00 00 0B */	li r0, 0xb
/* 80644F2C  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80644F30  48 00 00 CC */	b lbl_80644FFC
lbl_80644F34:
/* 80644F34  80 1E 06 F0 */	lwz r0, 0x6f0(r30)
/* 80644F38  2C 00 00 00 */	cmpwi r0, 0
/* 80644F3C  40 82 00 C0 */	bne lbl_80644FFC
lbl_80644F40:
/* 80644F40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80644F44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80644F48  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80644F4C  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 80644F50  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80644F54  4B C2 27 20 */	b cM_atan2s__Fff
/* 80644F58  7C 7D 1B 78 */	mr r29, r3
/* 80644F5C  C0 3F 01 E4 */	lfs f1, 0x1e4(r31)
/* 80644F60  4B C2 2A 2C */	b cM_rndFX__Ff
/* 80644F64  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 80644F68  EC 40 00 72 */	fmuls f2, f0, f1
/* 80644F6C  7F A3 07 34 */	extsh r3, r29
/* 80644F70  3C 63 00 01 */	addis r3, r3, 1
/* 80644F74  38 03 80 00 */	addi r0, r3, -32768
/* 80644F78  C8 3F 01 80 */	lfd f1, 0x180(r31)
/* 80644F7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80644F80  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80644F84  3C 00 43 30 */	lis r0, 0x4330
/* 80644F88  90 01 00 18 */	stw r0, 0x18(r1)
/* 80644F8C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80644F90  EC 00 08 28 */	fsubs f0, f0, f1
/* 80644F94  EC 00 10 2A */	fadds f0, f0, f2
/* 80644F98  FC 00 00 1E */	fctiwz f0, f0
/* 80644F9C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80644FA0  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 80644FA4  C0 3F 01 E8 */	lfs f1, 0x1e8(r31)
/* 80644FA8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80644FAC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80644FB0  54 A0 04 38 */	rlwinm r0, r5, 0, 0x10, 0x1c
/* 80644FB4  7C 64 02 14 */	add r3, r4, r0
/* 80644FB8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80644FBC  EC 41 00 32 */	fmuls f2, f1, f0
/* 80644FC0  7C 04 04 2E */	lfsx f0, r4, r0
/* 80644FC4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80644FC8  D0 1E 06 A0 */	stfs f0, 0x6a0(r30)
/* 80644FCC  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 80644FD0  D0 1E 06 A4 */	stfs f0, 0x6a4(r30)
/* 80644FD4  D0 5E 06 A8 */	stfs f2, 0x6a8(r30)
/* 80644FD8  3C 65 00 01 */	addis r3, r5, 1
/* 80644FDC  38 03 80 00 */	addi r0, r3, -32768
/* 80644FE0  B0 1E 06 B8 */	sth r0, 0x6b8(r30)
/* 80644FE4  38 00 00 00 */	li r0, 0
/* 80644FE8  98 1E 07 11 */	stb r0, 0x711(r30)
/* 80644FEC  7F C3 F3 78 */	mr r3, r30
/* 80644FF0  38 80 00 01 */	li r4, 1
/* 80644FF4  38 A0 00 00 */	li r5, 0
/* 80644FF8  4B FF 96 CD */	bl setActionMode__10daB_ZANT_cFii
lbl_80644FFC:
/* 80644FFC  39 61 00 40 */	addi r11, r1, 0x40
/* 80645000  4B D1 D2 28 */	b _restgpr_29
/* 80645004  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80645008  7C 08 03 A6 */	mtlr r0
/* 8064500C  38 21 00 40 */	addi r1, r1, 0x40
/* 80645010  4E 80 00 20 */	blr 
