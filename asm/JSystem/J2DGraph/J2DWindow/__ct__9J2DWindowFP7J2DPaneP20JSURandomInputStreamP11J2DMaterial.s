lbl_802F9C10:
/* 802F9C10  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 802F9C14  7C 08 02 A6 */	mflr r0
/* 802F9C18  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 802F9C1C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 802F9C20  48 06 85 B1 */	bl _savegpr_26
/* 802F9C24  7C 7B 1B 78 */	mr r27, r3
/* 802F9C28  7C 9A 23 78 */	mr r26, r4
/* 802F9C2C  7C BC 2B 78 */	mr r28, r5
/* 802F9C30  7C DD 33 78 */	mr r29, r6
/* 802F9C34  4B FF BF C5 */	bl __ct__7J2DPaneFv
/* 802F9C38  3C 60 80 3D */	lis r3, __vt__9J2DWindow@ha
/* 802F9C3C  38 03 D1 08 */	addi r0, r3, __vt__9J2DWindow@l
/* 802F9C40  90 1B 00 00 */	stw r0, 0(r27)
/* 802F9C44  38 00 00 00 */	li r0, 0
/* 802F9C48  90 1B 01 00 */	stw r0, 0x100(r27)
/* 802F9C4C  90 1B 01 04 */	stw r0, 0x104(r27)
/* 802F9C50  90 1B 01 08 */	stw r0, 0x108(r27)
/* 802F9C54  90 1B 01 0C */	stw r0, 0x10c(r27)
/* 802F9C58  90 1B 01 10 */	stw r0, 0x110(r27)
/* 802F9C5C  90 1B 01 24 */	stw r0, 0x124(r27)
/* 802F9C60  38 00 FF FF */	li r0, -1
/* 802F9C64  90 1B 01 28 */	stw r0, 0x128(r27)
/* 802F9C68  90 1B 01 2C */	stw r0, 0x12c(r27)
/* 802F9C6C  90 1B 01 30 */	stw r0, 0x130(r27)
/* 802F9C70  90 1B 01 34 */	stw r0, 0x134(r27)
/* 802F9C74  90 1B 01 38 */	stw r0, 0x138(r27)
/* 802F9C78  90 1B 01 3C */	stw r0, 0x13c(r27)
/* 802F9C7C  7F 83 E3 78 */	mr r3, r28
/* 802F9C80  81 9C 00 00 */	lwz r12, 0(r28)
/* 802F9C84  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F9C88  7D 89 03 A6 */	mtctr r12
/* 802F9C8C  4E 80 04 21 */	bctrl 
/* 802F9C90  7C 7F 1B 78 */	mr r31, r3
/* 802F9C94  7F 83 E3 78 */	mr r3, r28
/* 802F9C98  38 81 00 2C */	addi r4, r1, 0x2c
/* 802F9C9C  38 A0 00 08 */	li r5, 8
/* 802F9CA0  4B FE 25 F9 */	bl read__14JSUInputStreamFPvl
/* 802F9CA4  3C 60 57 49 */	lis r3, 0x5749 /* 0x57494E31@ha */
/* 802F9CA8  38 03 4E 31 */	addi r0, r3, 0x4E31 /* 0x57494E31@l */
/* 802F9CAC  90 1B 00 08 */	stw r0, 8(r27)
/* 802F9CB0  7F 83 E3 78 */	mr r3, r28
/* 802F9CB4  81 9C 00 00 */	lwz r12, 0(r28)
/* 802F9CB8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F9CBC  7D 89 03 A6 */	mtctr r12
/* 802F9CC0  4E 80 04 21 */	bctrl 
/* 802F9CC4  7C 7E 1B 78 */	mr r30, r3
/* 802F9CC8  7F 83 E3 78 */	mr r3, r28
/* 802F9CCC  38 81 00 24 */	addi r4, r1, 0x24
/* 802F9CD0  38 A0 00 08 */	li r5, 8
/* 802F9CD4  4B FE 27 85 */	bl peek__20JSURandomInputStreamFPvl
/* 802F9CD8  7F 63 DB 78 */	mr r3, r27
/* 802F9CDC  7F 44 D3 78 */	mr r4, r26
/* 802F9CE0  7F 85 E3 78 */	mr r5, r28
/* 802F9CE4  4B FF DE 35 */	bl makePaneExStream__7J2DPaneFP7J2DPaneP20JSURandomInputStream
/* 802F9CE8  7F 83 E3 78 */	mr r3, r28
/* 802F9CEC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 802F9CF0  7C 9E 02 14 */	add r4, r30, r0
/* 802F9CF4  38 A0 00 00 */	li r5, 0
/* 802F9CF8  4B FE 27 E5 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802F9CFC  7F 83 E3 78 */	mr r3, r28
/* 802F9D00  38 81 00 64 */	addi r4, r1, 0x64
/* 802F9D04  38 A0 00 40 */	li r5, 0x40
/* 802F9D08  4B FE 25 91 */	bl read__14JSUInputStreamFPvl
/* 802F9D0C  3C 60 80 3A */	lis r3, lit_1831@ha
/* 802F9D10  38 83 1C 10 */	addi r4, r3, lit_1831@l
/* 802F9D14  80 64 00 00 */	lwz r3, 0(r4)
/* 802F9D18  80 04 00 04 */	lwz r0, 4(r4)
/* 802F9D1C  90 61 00 54 */	stw r3, 0x54(r1)
/* 802F9D20  90 01 00 58 */	stw r0, 0x58(r1)
/* 802F9D24  80 64 00 08 */	lwz r3, 8(r4)
/* 802F9D28  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802F9D2C  90 61 00 5C */	stw r3, 0x5c(r1)
/* 802F9D30  90 01 00 60 */	stw r0, 0x60(r1)
/* 802F9D34  38 1B 01 28 */	addi r0, r27, 0x128
/* 802F9D38  90 01 00 54 */	stw r0, 0x54(r1)
/* 802F9D3C  38 1B 01 2C */	addi r0, r27, 0x12c
/* 802F9D40  90 01 00 58 */	stw r0, 0x58(r1)
/* 802F9D44  38 1B 01 30 */	addi r0, r27, 0x130
/* 802F9D48  90 01 00 5C */	stw r0, 0x5c(r1)
/* 802F9D4C  38 1B 01 34 */	addi r0, r27, 0x134
/* 802F9D50  90 01 00 60 */	stw r0, 0x60(r1)
/* 802F9D54  38 60 00 00 */	li r3, 0
/* 802F9D58  38 80 00 00 */	li r4, 0
/* 802F9D5C  38 C1 00 64 */	addi r6, r1, 0x64
/* 802F9D60  39 01 00 1C */	addi r8, r1, 0x1c
/* 802F9D64  39 21 00 44 */	addi r9, r1, 0x44
/* 802F9D68  38 A1 00 54 */	addi r5, r1, 0x54
/* 802F9D6C  38 00 00 04 */	li r0, 4
/* 802F9D70  7C 09 03 A6 */	mtctr r0
lbl_802F9D74:
/* 802F9D74  38 04 00 10 */	addi r0, r4, 0x10
/* 802F9D78  7C 06 02 2E */	lhzx r0, r6, r0
/* 802F9D7C  7C 08 23 2E */	sthx r0, r8, r4
/* 802F9D80  38 00 00 00 */	li r0, 0
/* 802F9D84  7C 09 19 2E */	stwx r0, r9, r3
/* 802F9D88  7C 08 22 2E */	lhzx r0, r8, r4
/* 802F9D8C  28 00 FF FF */	cmplwi r0, 0xffff
/* 802F9D90  41 82 00 10 */	beq lbl_802F9DA0
/* 802F9D94  1C 00 00 88 */	mulli r0, r0, 0x88
/* 802F9D98  7C 1D 02 14 */	add r0, r29, r0
/* 802F9D9C  7C 09 19 2E */	stwx r0, r9, r3
lbl_802F9DA0:
/* 802F9DA0  38 03 00 30 */	addi r0, r3, 0x30
/* 802F9DA4  7C 06 00 2E */	lwzx r0, r6, r0
/* 802F9DA8  90 01 00 18 */	stw r0, 0x18(r1)
/* 802F9DAC  7C E5 18 2E */	lwzx r7, r5, r3
/* 802F9DB0  88 01 00 18 */	lbz r0, 0x18(r1)
/* 802F9DB4  98 07 00 00 */	stb r0, 0(r7)
/* 802F9DB8  88 01 00 19 */	lbz r0, 0x19(r1)
/* 802F9DBC  98 07 00 01 */	stb r0, 1(r7)
/* 802F9DC0  88 01 00 1A */	lbz r0, 0x1a(r1)
/* 802F9DC4  98 07 00 02 */	stb r0, 2(r7)
/* 802F9DC8  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 802F9DCC  98 07 00 03 */	stb r0, 3(r7)
/* 802F9DD0  38 63 00 04 */	addi r3, r3, 4
/* 802F9DD4  38 84 00 02 */	addi r4, r4, 2
/* 802F9DD8  42 00 FF 9C */	bdnz lbl_802F9D74
/* 802F9DDC  88 01 00 7C */	lbz r0, 0x7c(r1)
/* 802F9DE0  98 1B 01 44 */	stb r0, 0x144(r27)
/* 802F9DE4  A0 81 00 80 */	lhz r4, 0x80(r1)
/* 802F9DE8  A0 01 00 84 */	lhz r0, 0x84(r1)
/* 802F9DEC  7C 04 02 14 */	add r0, r4, r0
/* 802F9DF0  C8 22 C8 40 */	lfd f1, lit_1971(r2)
/* 802F9DF4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F9DF8  90 01 00 AC */	stw r0, 0xac(r1)
/* 802F9DFC  3C 60 43 30 */	lis r3, 0x4330
/* 802F9E00  90 61 00 A8 */	stw r3, 0xa8(r1)
/* 802F9E04  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 802F9E08  EC 80 08 28 */	fsubs f4, f0, f1
/* 802F9E0C  A0 A1 00 7E */	lhz r5, 0x7e(r1)
/* 802F9E10  A0 01 00 82 */	lhz r0, 0x82(r1)
/* 802F9E14  7C 05 02 14 */	add r0, r5, r0
/* 802F9E18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F9E1C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 802F9E20  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 802F9E24  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 802F9E28  EC 60 08 28 */	fsubs f3, f0, f1
/* 802F9E2C  C8 22 C8 48 */	lfd f1, lit_1974(r2)
/* 802F9E30  90 81 00 BC */	stw r4, 0xbc(r1)
/* 802F9E34  90 61 00 B8 */	stw r3, 0xb8(r1)
/* 802F9E38  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 802F9E3C  EC 40 08 28 */	fsubs f2, f0, f1
/* 802F9E40  90 A1 00 C4 */	stw r5, 0xc4(r1)
/* 802F9E44  90 61 00 C0 */	stw r3, 0xc0(r1)
/* 802F9E48  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 802F9E4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802F9E50  D0 1B 01 14 */	stfs f0, 0x114(r27)
/* 802F9E54  D0 5B 01 18 */	stfs f2, 0x118(r27)
/* 802F9E58  D0 7B 01 1C */	stfs f3, 0x11c(r27)
/* 802F9E5C  D0 9B 01 20 */	stfs f4, 0x120(r27)
/* 802F9E60  A0 01 00 88 */	lhz r0, 0x88(r1)
/* 802F9E64  3B C0 00 00 */	li r30, 0
/* 802F9E68  28 00 FF FF */	cmplwi r0, 0xffff
/* 802F9E6C  41 82 00 0C */	beq lbl_802F9E78
/* 802F9E70  1C 00 00 88 */	mulli r0, r0, 0x88
/* 802F9E74  7F DD 02 14 */	add r30, r29, r0
lbl_802F9E78:
/* 802F9E78  7F 83 E3 78 */	mr r3, r28
/* 802F9E7C  80 01 00 30 */	lwz r0, 0x30(r1)
/* 802F9E80  7C 9F 02 14 */	add r4, r31, r0
/* 802F9E84  38 A0 00 00 */	li r5, 0
/* 802F9E88  4B FE 26 55 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802F9E8C  80 61 00 44 */	lwz r3, 0x44(r1)
/* 802F9E90  28 03 00 00 */	cmplwi r3, 0
/* 802F9E94  41 82 00 0C */	beq lbl_802F9EA0
/* 802F9E98  88 03 00 13 */	lbz r0, 0x13(r3)
/* 802F9E9C  98 1B 00 B2 */	stb r0, 0xb2(r27)
lbl_802F9EA0:
/* 802F9EA0  38 00 00 00 */	li r0, 0
/* 802F9EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F9EA8  88 01 00 14 */	lbz r0, 0x14(r1)
/* 802F9EAC  98 1B 01 3C */	stb r0, 0x13c(r27)
/* 802F9EB0  88 01 00 15 */	lbz r0, 0x15(r1)
/* 802F9EB4  98 1B 01 3D */	stb r0, 0x13d(r27)
/* 802F9EB8  88 01 00 16 */	lbz r0, 0x16(r1)
/* 802F9EBC  98 1B 01 3E */	stb r0, 0x13e(r27)
/* 802F9EC0  88 01 00 17 */	lbz r0, 0x17(r1)
/* 802F9EC4  98 1B 01 3F */	stb r0, 0x13f(r27)
/* 802F9EC8  38 00 FF FF */	li r0, -1
/* 802F9ECC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802F9ED0  88 01 00 10 */	lbz r0, 0x10(r1)
/* 802F9ED4  98 1B 01 38 */	stb r0, 0x138(r27)
/* 802F9ED8  88 01 00 11 */	lbz r0, 0x11(r1)
/* 802F9EDC  98 1B 01 39 */	stb r0, 0x139(r27)
/* 802F9EE0  88 01 00 12 */	lbz r0, 0x12(r1)
/* 802F9EE4  98 1B 01 3A */	stb r0, 0x13a(r27)
/* 802F9EE8  88 01 00 13 */	lbz r0, 0x13(r1)
/* 802F9EEC  98 1B 01 3B */	stb r0, 0x13b(r27)
/* 802F9EF0  80 61 00 44 */	lwz r3, 0x44(r1)
/* 802F9EF4  28 03 00 00 */	cmplwi r3, 0
/* 802F9EF8  41 82 00 EC */	beq lbl_802F9FE4
/* 802F9EFC  80 63 00 70 */	lwz r3, 0x70(r3)
/* 802F9F00  28 03 00 00 */	cmplwi r3, 0
/* 802F9F04  41 82 00 E0 */	beq lbl_802F9FE4
/* 802F9F08  81 83 00 00 */	lwz r12, 0(r3)
/* 802F9F0C  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 802F9F10  7D 89 03 A6 */	mtctr r12
/* 802F9F14  4E 80 04 21 */	bctrl 
/* 802F9F18  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802F9F1C  28 00 00 01 */	cmplwi r0, 1
/* 802F9F20  41 82 00 C4 */	beq lbl_802F9FE4
/* 802F9F24  80 61 00 44 */	lwz r3, 0x44(r1)
/* 802F9F28  80 63 00 70 */	lwz r3, 0x70(r3)
/* 802F9F2C  38 80 00 00 */	li r4, 0
/* 802F9F30  81 83 00 00 */	lwz r12, 0(r3)
/* 802F9F34  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802F9F38  7D 89 03 A6 */	mtctr r12
/* 802F9F3C  4E 80 04 21 */	bctrl 
/* 802F9F40  AB 83 00 00 */	lha r28, 0(r3)
/* 802F9F44  AB A3 00 02 */	lha r29, 2(r3)
/* 802F9F48  AB E3 00 04 */	lha r31, 4(r3)
/* 802F9F4C  AB 43 00 06 */	lha r26, 6(r3)
/* 802F9F50  80 61 00 44 */	lwz r3, 0x44(r1)
/* 802F9F54  80 63 00 70 */	lwz r3, 0x70(r3)
/* 802F9F58  38 80 00 01 */	li r4, 1
/* 802F9F5C  81 83 00 00 */	lwz r12, 0(r3)
/* 802F9F60  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802F9F64  7D 89 03 A6 */	mtctr r12
/* 802F9F68  4E 80 04 21 */	bctrl 
/* 802F9F6C  A8 83 00 00 */	lha r4, 0(r3)
/* 802F9F70  A8 A3 00 02 */	lha r5, 2(r3)
/* 802F9F74  A8 C3 00 04 */	lha r6, 4(r3)
/* 802F9F78  A8 63 00 06 */	lha r3, 6(r3)
/* 802F9F7C  57 A0 82 1E */	rlwinm r0, r29, 0x10, 8, 0xf
/* 802F9F80  53 80 C0 0E */	rlwimi r0, r28, 0x18, 0, 7
/* 802F9F84  53 E0 44 2E */	rlwimi r0, r31, 8, 0x10, 0x17
/* 802F9F88  53 40 06 3E */	rlwimi r0, r26, 0, 0x18, 0x1f
/* 802F9F8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802F9F90  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802F9F94  98 1B 01 3C */	stb r0, 0x13c(r27)
/* 802F9F98  88 01 00 0D */	lbz r0, 0xd(r1)
/* 802F9F9C  98 1B 01 3D */	stb r0, 0x13d(r27)
/* 802F9FA0  88 01 00 0E */	lbz r0, 0xe(r1)
/* 802F9FA4  98 1B 01 3E */	stb r0, 0x13e(r27)
/* 802F9FA8  88 01 00 0F */	lbz r0, 0xf(r1)
/* 802F9FAC  98 1B 01 3F */	stb r0, 0x13f(r27)
/* 802F9FB0  54 A0 82 1E */	rlwinm r0, r5, 0x10, 8, 0xf
/* 802F9FB4  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 802F9FB8  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 802F9FBC  50 60 06 3E */	rlwimi r0, r3, 0, 0x18, 0x1f
/* 802F9FC0  90 01 00 08 */	stw r0, 8(r1)
/* 802F9FC4  88 01 00 08 */	lbz r0, 8(r1)
/* 802F9FC8  98 1B 01 38 */	stb r0, 0x138(r27)
/* 802F9FCC  88 01 00 09 */	lbz r0, 9(r1)
/* 802F9FD0  98 1B 01 39 */	stb r0, 0x139(r27)
/* 802F9FD4  88 01 00 0A */	lbz r0, 0xa(r1)
/* 802F9FD8  98 1B 01 3A */	stb r0, 0x13a(r27)
/* 802F9FDC  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802F9FE0  98 1B 01 3B */	stb r0, 0x13b(r27)
lbl_802F9FE4:
/* 802F9FE4  3C 60 80 3A */	lis r3, lit_1849@ha
/* 802F9FE8  38 83 1C 20 */	addi r4, r3, lit_1849@l
/* 802F9FEC  80 64 00 00 */	lwz r3, 0(r4)
/* 802F9FF0  80 04 00 04 */	lwz r0, 4(r4)
/* 802F9FF4  90 61 00 34 */	stw r3, 0x34(r1)
/* 802F9FF8  90 01 00 38 */	stw r0, 0x38(r1)
/* 802F9FFC  80 64 00 08 */	lwz r3, 8(r4)
/* 802FA000  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802FA004  90 61 00 3C */	stw r3, 0x3c(r1)
/* 802FA008  90 01 00 40 */	stw r0, 0x40(r1)
/* 802FA00C  38 1B 01 00 */	addi r0, r27, 0x100
/* 802FA010  90 01 00 34 */	stw r0, 0x34(r1)
/* 802FA014  38 1B 01 04 */	addi r0, r27, 0x104
/* 802FA018  90 01 00 38 */	stw r0, 0x38(r1)
/* 802FA01C  38 1B 01 08 */	addi r0, r27, 0x108
/* 802FA020  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802FA024  38 1B 01 0C */	addi r0, r27, 0x10c
/* 802FA028  90 01 00 40 */	stw r0, 0x40(r1)
/* 802FA02C  3B E0 00 00 */	li r31, 0
/* 802FA030  3B 80 00 00 */	li r28, 0
/* 802FA034  3B A1 00 44 */	addi r29, r1, 0x44
lbl_802FA038:
/* 802FA038  7F 5D E0 2E */	lwzx r26, r29, r28
/* 802FA03C  28 1A 00 00 */	cmplwi r26, 0
/* 802FA040  41 82 00 50 */	beq lbl_802FA090
/* 802FA044  80 7A 00 70 */	lwz r3, 0x70(r26)
/* 802FA048  28 03 00 00 */	cmplwi r3, 0
/* 802FA04C  41 82 00 44 */	beq lbl_802FA090
/* 802FA050  38 80 00 00 */	li r4, 0
/* 802FA054  81 83 00 00 */	lwz r12, 0(r3)
/* 802FA058  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 802FA05C  7D 89 03 A6 */	mtctr r12
/* 802FA060  4E 80 04 21 */	bctrl 
/* 802FA064  28 03 00 00 */	cmplwi r3, 0
/* 802FA068  41 82 00 28 */	beq lbl_802FA090
/* 802FA06C  38 81 00 34 */	addi r4, r1, 0x34
/* 802FA070  7C 84 E0 2E */	lwzx r4, r4, r28
/* 802FA074  90 64 00 00 */	stw r3, 0(r4)
/* 802FA078  80 7A 00 70 */	lwz r3, 0x70(r26)
/* 802FA07C  38 80 00 FE */	li r4, 0xfe
/* 802FA080  81 83 00 00 */	lwz r12, 0(r3)
/* 802FA084  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 802FA088  7D 89 03 A6 */	mtctr r12
/* 802FA08C  4E 80 04 21 */	bctrl 
lbl_802FA090:
/* 802FA090  3B FF 00 01 */	addi r31, r31, 1
/* 802FA094  28 1F 00 04 */	cmplwi r31, 4
/* 802FA098  3B 9C 00 04 */	addi r28, r28, 4
/* 802FA09C  41 80 FF 9C */	blt lbl_802FA038
/* 802FA0A0  38 00 00 00 */	li r0, 0
/* 802FA0A4  90 1B 01 10 */	stw r0, 0x110(r27)
/* 802FA0A8  28 1E 00 00 */	cmplwi r30, 0
/* 802FA0AC  41 82 00 48 */	beq lbl_802FA0F4
/* 802FA0B0  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802FA0B4  28 03 00 00 */	cmplwi r3, 0
/* 802FA0B8  41 82 00 3C */	beq lbl_802FA0F4
/* 802FA0BC  38 80 00 00 */	li r4, 0
/* 802FA0C0  81 83 00 00 */	lwz r12, 0(r3)
/* 802FA0C4  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 802FA0C8  7D 89 03 A6 */	mtctr r12
/* 802FA0CC  4E 80 04 21 */	bctrl 
/* 802FA0D0  28 03 00 00 */	cmplwi r3, 0
/* 802FA0D4  41 82 00 20 */	beq lbl_802FA0F4
/* 802FA0D8  90 7B 01 10 */	stw r3, 0x110(r27)
/* 802FA0DC  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802FA0E0  38 80 00 FE */	li r4, 0xfe
/* 802FA0E4  81 83 00 00 */	lwz r12, 0(r3)
/* 802FA0E8  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 802FA0EC  7D 89 03 A6 */	mtctr r12
/* 802FA0F0  4E 80 04 21 */	bctrl 
lbl_802FA0F4:
/* 802FA0F4  7F 63 DB 78 */	mr r3, r27
/* 802FA0F8  48 00 05 0D */	bl initinfo2__9J2DWindowFv
/* 802FA0FC  7F 63 DB 78 */	mr r3, r27
/* 802FA100  39 61 00 E0 */	addi r11, r1, 0xe0
/* 802FA104  48 06 81 19 */	bl _restgpr_26
/* 802FA108  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 802FA10C  7C 08 03 A6 */	mtlr r0
/* 802FA110  38 21 00 E0 */	addi r1, r1, 0xe0
/* 802FA114  4E 80 00 20 */	blr 
