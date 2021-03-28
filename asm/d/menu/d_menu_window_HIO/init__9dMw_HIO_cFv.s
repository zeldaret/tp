lbl_801F9B38:
/* 801F9B38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F9B3C  7C 08 02 A6 */	mflr r0
/* 801F9B40  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F9B44  39 61 00 20 */	addi r11, r1, 0x20
/* 801F9B48  48 16 86 89 */	bl _savegpr_26
/* 801F9B4C  7C 7F 1B 78 */	mr r31, r3
/* 801F9B50  38 80 00 00 */	li r4, 0
/* 801F9B54  98 83 01 1B */	stb r4, 0x11b(r3)
/* 801F9B58  98 83 01 1D */	stb r4, 0x11d(r3)
/* 801F9B5C  98 83 01 1C */	stb r4, 0x11c(r3)
/* 801F9B60  B0 83 00 24 */	sth r4, 0x24(r3)
/* 801F9B64  B0 83 00 06 */	sth r4, 6(r3)
/* 801F9B68  B0 83 00 26 */	sth r4, 0x26(r3)
/* 801F9B6C  B0 83 00 08 */	sth r4, 8(r3)
/* 801F9B70  98 83 00 28 */	stb r4, 0x28(r3)
/* 801F9B74  98 83 00 0A */	stb r4, 0xa(r3)
/* 801F9B78  98 83 00 29 */	stb r4, 0x29(r3)
/* 801F9B7C  98 83 00 0B */	stb r4, 0xb(r3)
/* 801F9B80  90 83 00 2C */	stw r4, 0x2c(r3)
/* 801F9B84  90 83 00 0C */	stw r4, 0xc(r3)
/* 801F9B88  90 83 00 30 */	stw r4, 0x30(r3)
/* 801F9B8C  90 83 00 10 */	stw r4, 0x10(r3)
/* 801F9B90  90 83 00 34 */	stw r4, 0x34(r3)
/* 801F9B94  90 83 00 14 */	stw r4, 0x14(r3)
/* 801F9B98  90 83 00 38 */	stw r4, 0x38(r3)
/* 801F9B9C  90 83 00 18 */	stw r4, 0x18(r3)
/* 801F9BA0  98 83 00 3C */	stb r4, 0x3c(r3)
/* 801F9BA4  98 83 00 1C */	stb r4, 0x1c(r3)
/* 801F9BA8  98 83 00 3D */	stb r4, 0x3d(r3)
/* 801F9BAC  98 83 00 1D */	stb r4, 0x1d(r3)
/* 801F9BB0  B0 83 00 3E */	sth r4, 0x3e(r3)
/* 801F9BB4  B0 83 00 1E */	sth r4, 0x1e(r3)
/* 801F9BB8  B0 83 00 40 */	sth r4, 0x40(r3)
/* 801F9BBC  B0 83 00 20 */	sth r4, 0x20(r3)
/* 801F9BC0  98 83 00 46 */	stb r4, 0x46(r3)
/* 801F9BC4  98 83 00 22 */	stb r4, 0x22(r3)
/* 801F9BC8  98 83 00 47 */	stb r4, 0x47(r3)
/* 801F9BCC  98 83 00 23 */	stb r4, 0x23(r3)
/* 801F9BD0  98 83 01 1A */	stb r4, 0x11a(r3)
/* 801F9BD4  98 83 01 19 */	stb r4, 0x119(r3)
/* 801F9BD8  98 83 00 49 */	stb r4, 0x49(r3)
/* 801F9BDC  98 83 00 48 */	stb r4, 0x48(r3)
/* 801F9BE0  B0 83 00 44 */	sth r4, 0x44(r3)
/* 801F9BE4  B0 83 00 42 */	sth r4, 0x42(r3)
/* 801F9BE8  38 C0 00 00 */	li r6, 0
/* 801F9BEC  38 60 00 FF */	li r3, 0xff
/* 801F9BF0  38 00 00 18 */	li r0, 0x18
/* 801F9BF4  7C 09 03 A6 */	mtctr r0
lbl_801F9BF8:
/* 801F9BF8  7C BF 32 14 */	add r5, r31, r6
/* 801F9BFC  98 65 00 62 */	stb r3, 0x62(r5)
/* 801F9C00  98 65 00 4A */	stb r3, 0x4a(r5)
/* 801F9C04  98 85 00 7A */	stb r4, 0x7a(r5)
/* 801F9C08  38 C6 00 01 */	addi r6, r6, 1
/* 801F9C0C  42 00 FF EC */	bdnz lbl_801F9BF8
/* 801F9C10  38 A0 00 00 */	li r5, 0
/* 801F9C14  38 60 00 00 */	li r3, 0
/* 801F9C18  38 00 00 04 */	li r0, 4
/* 801F9C1C  7C 09 03 A6 */	mtctr r0
lbl_801F9C20:
/* 801F9C20  7C 9F 2A 14 */	add r4, r31, r5
/* 801F9C24  98 64 00 F5 */	stb r3, 0xf5(r4)
/* 801F9C28  98 64 00 EB */	stb r3, 0xeb(r4)
/* 801F9C2C  38 A5 00 01 */	addi r5, r5, 1
/* 801F9C30  42 00 FF F0 */	bdnz lbl_801F9C20
/* 801F9C34  38 A0 00 00 */	li r5, 0
/* 801F9C38  38 60 00 00 */	li r3, 0
/* 801F9C3C  38 00 00 03 */	li r0, 3
/* 801F9C40  7C 09 03 A6 */	mtctr r0
lbl_801F9C44:
/* 801F9C44  7C 9F 2A 14 */	add r4, r31, r5
/* 801F9C48  98 64 00 F1 */	stb r3, 0xf1(r4)
/* 801F9C4C  98 64 00 E7 */	stb r3, 0xe7(r4)
/* 801F9C50  38 A5 00 01 */	addi r5, r5, 1
/* 801F9C54  42 00 FF F0 */	bdnz lbl_801F9C44
/* 801F9C58  38 00 00 FF */	li r0, 0xff
/* 801F9C5C  98 1F 00 A7 */	stb r0, 0xa7(r31)
/* 801F9C60  98 1F 00 A6 */	stb r0, 0xa6(r31)
/* 801F9C64  38 00 00 00 */	li r0, 0
/* 801F9C68  98 1F 00 A8 */	stb r0, 0xa8(r31)
/* 801F9C6C  98 1F 00 F4 */	stb r0, 0xf4(r31)
/* 801F9C70  98 1F 00 EA */	stb r0, 0xea(r31)
/* 801F9C74  3B 60 00 00 */	li r27, 0
/* 801F9C78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801F9C7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801F9C80  3B 83 00 CC */	addi r28, r3, 0xcc
/* 801F9C84  3B AD 81 CC */	la r29, m_sword_item(r13) /* 8045074C-_SDA_BASE_ */
lbl_801F9C88:
/* 801F9C88  7F 83 E3 78 */	mr r3, r28
/* 801F9C8C  88 9D 00 00 */	lbz r4, 0(r29)
/* 801F9C90  4B E3 A2 39 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801F9C94  30 03 FF FF */	addic r0, r3, -1
/* 801F9C98  7C 00 19 10 */	subfe r0, r0, r3
/* 801F9C9C  7C 7F DA 14 */	add r3, r31, r27
/* 801F9CA0  98 03 00 9C */	stb r0, 0x9c(r3)
/* 801F9CA4  98 03 00 92 */	stb r0, 0x92(r3)
/* 801F9CA8  3B 7B 00 01 */	addi r27, r27, 1
/* 801F9CAC  2C 1B 00 04 */	cmpwi r27, 4
/* 801F9CB0  3B BD 00 01 */	addi r29, r29, 1
/* 801F9CB4  41 80 FF D4 */	blt lbl_801F9C88
/* 801F9CB8  3B 40 00 00 */	li r26, 0
/* 801F9CBC  3B AD 81 D0 */	la r29, m_shield_item(r13) /* 80450750-_SDA_BASE_ */
/* 801F9CC0  3B CD 81 C8 */	la r30, m_cloth_item(r13) /* 80450748-_SDA_BASE_ */
lbl_801F9CC4:
/* 801F9CC4  7F 83 E3 78 */	mr r3, r28
/* 801F9CC8  88 9D 00 00 */	lbz r4, 0(r29)
/* 801F9CCC  4B E3 A1 FD */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801F9CD0  30 03 FF FF */	addic r0, r3, -1
/* 801F9CD4  7C 00 19 10 */	subfe r0, r0, r3
/* 801F9CD8  7F 7F D2 14 */	add r27, r31, r26
/* 801F9CDC  98 1B 00 A0 */	stb r0, 0xa0(r27)
/* 801F9CE0  98 1B 00 96 */	stb r0, 0x96(r27)
/* 801F9CE4  7F 83 E3 78 */	mr r3, r28
/* 801F9CE8  88 9E 00 00 */	lbz r4, 0(r30)
/* 801F9CEC  4B E3 A1 DD */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801F9CF0  30 03 FF FF */	addic r0, r3, -1
/* 801F9CF4  7C 00 19 10 */	subfe r0, r0, r3
/* 801F9CF8  98 1B 00 A3 */	stb r0, 0xa3(r27)
/* 801F9CFC  98 1B 00 99 */	stb r0, 0x99(r27)
/* 801F9D00  3B 5A 00 01 */	addi r26, r26, 1
/* 801F9D04  2C 1A 00 03 */	cmpwi r26, 3
/* 801F9D08  3B DE 00 01 */	addi r30, r30, 1
/* 801F9D0C  3B BD 00 01 */	addi r29, r29, 1
/* 801F9D10  41 80 FF B4 */	blt lbl_801F9CC4
/* 801F9D14  38 60 00 00 */	li r3, 0
/* 801F9D18  98 7F 00 AA */	stb r3, 0xaa(r31)
/* 801F9D1C  98 7F 00 A9 */	stb r3, 0xa9(r31)
/* 801F9D20  38 A0 00 00 */	li r5, 0
/* 801F9D24  38 00 00 03 */	li r0, 3
/* 801F9D28  7C 09 03 A6 */	mtctr r0
lbl_801F9D2C:
/* 801F9D2C  7C 9F 2A 14 */	add r4, r31, r5
/* 801F9D30  98 64 00 AE */	stb r3, 0xae(r4)
/* 801F9D34  98 64 00 AB */	stb r3, 0xab(r4)
/* 801F9D38  38 A5 00 01 */	addi r5, r5, 1
/* 801F9D3C  42 00 FF F0 */	bdnz lbl_801F9D2C
/* 801F9D40  38 A0 00 00 */	li r5, 0
/* 801F9D44  38 60 00 00 */	li r3, 0
/* 801F9D48  38 00 00 02 */	li r0, 2
/* 801F9D4C  7C 09 03 A6 */	mtctr r0
lbl_801F9D50:
/* 801F9D50  7C 9F 2A 14 */	add r4, r31, r5
/* 801F9D54  98 64 00 B3 */	stb r3, 0xb3(r4)
/* 801F9D58  98 64 00 B1 */	stb r3, 0xb1(r4)
/* 801F9D5C  38 A5 00 01 */	addi r5, r5, 1
/* 801F9D60  42 00 FF F0 */	bdnz lbl_801F9D50
/* 801F9D64  38 A0 00 00 */	li r5, 0
/* 801F9D68  38 60 00 00 */	li r3, 0
/* 801F9D6C  38 00 00 18 */	li r0, 0x18
/* 801F9D70  7C 09 03 A6 */	mtctr r0
lbl_801F9D74:
/* 801F9D74  7C 9F 2A 14 */	add r4, r31, r5
/* 801F9D78  98 64 00 CD */	stb r3, 0xcd(r4)
/* 801F9D7C  98 64 00 B5 */	stb r3, 0xb5(r4)
/* 801F9D80  38 A5 00 01 */	addi r5, r5, 1
/* 801F9D84  42 00 FF F0 */	bdnz lbl_801F9D74
/* 801F9D88  38 A0 00 00 */	li r5, 0
/* 801F9D8C  38 60 00 00 */	li r3, 0
/* 801F9D90  38 00 00 08 */	li r0, 8
/* 801F9D94  7C 09 03 A6 */	mtctr r0
lbl_801F9D98:
/* 801F9D98  7C 9F 2A 14 */	add r4, r31, r5
/* 801F9D9C  98 64 01 01 */	stb r3, 0x101(r4)
/* 801F9DA0  98 64 00 F9 */	stb r3, 0xf9(r4)
/* 801F9DA4  98 64 01 11 */	stb r3, 0x111(r4)
/* 801F9DA8  98 64 01 09 */	stb r3, 0x109(r4)
/* 801F9DAC  38 A5 00 01 */	addi r5, r5, 1
/* 801F9DB0  42 00 FF E8 */	bdnz lbl_801F9D98
/* 801F9DB4  38 A0 00 00 */	li r5, 0
/* 801F9DB8  38 60 00 00 */	li r3, 0
/* 801F9DBC  38 00 00 04 */	li r0, 4
/* 801F9DC0  7C 09 03 A6 */	mtctr r0
lbl_801F9DC4:
/* 801F9DC4  7C 9F 2A 14 */	add r4, r31, r5
/* 801F9DC8  98 64 01 22 */	stb r3, 0x122(r4)
/* 801F9DCC  98 64 01 1E */	stb r3, 0x11e(r4)
/* 801F9DD0  38 A5 00 01 */	addi r5, r5, 1
/* 801F9DD4  42 00 FF F0 */	bdnz lbl_801F9DC4
/* 801F9DD8  38 A0 00 00 */	li r5, 0
/* 801F9DDC  38 60 00 00 */	li r3, 0
/* 801F9DE0  38 00 00 04 */	li r0, 4
/* 801F9DE4  7C 09 03 A6 */	mtctr r0
lbl_801F9DE8:
/* 801F9DE8  7C 9F 2A 14 */	add r4, r31, r5
/* 801F9DEC  98 64 01 2A */	stb r3, 0x12a(r4)
/* 801F9DF0  98 64 01 26 */	stb r3, 0x126(r4)
/* 801F9DF4  38 A5 00 01 */	addi r5, r5, 1
/* 801F9DF8  42 00 FF F0 */	bdnz lbl_801F9DE8
/* 801F9DFC  39 61 00 20 */	addi r11, r1, 0x20
/* 801F9E00  48 16 84 1D */	bl _restgpr_26
/* 801F9E04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F9E08  7C 08 03 A6 */	mtlr r0
/* 801F9E0C  38 21 00 20 */	addi r1, r1, 0x20
/* 801F9E10  4E 80 00 20 */	blr 
