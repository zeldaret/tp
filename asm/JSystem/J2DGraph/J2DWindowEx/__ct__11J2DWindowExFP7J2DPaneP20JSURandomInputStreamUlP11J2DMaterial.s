lbl_80300C94:
/* 80300C94  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80300C98  7C 08 02 A6 */	mflr r0
/* 80300C9C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80300CA0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80300CA4  48 06 15 2D */	bl _savegpr_26
/* 80300CA8  7C 7C 1B 78 */	mr r28, r3
/* 80300CAC  7C 9A 23 78 */	mr r26, r4
/* 80300CB0  7C BD 2B 78 */	mr r29, r5
/* 80300CB4  7C FE 3B 78 */	mr r30, r7
/* 80300CB8  4B FF 8D C5 */	bl __ct__9J2DWindowFv
/* 80300CBC  3C 60 80 3D */	lis r3, __vt__11J2DWindowEx@ha /* 0x803CD3E8@ha */
/* 80300CC0  38 03 D3 E8 */	addi r0, r3, __vt__11J2DWindowEx@l /* 0x803CD3E8@l */
/* 80300CC4  90 1C 00 00 */	stw r0, 0(r28)
/* 80300CC8  38 00 00 00 */	li r0, 0
/* 80300CCC  90 1C 01 74 */	stw r0, 0x174(r28)
/* 80300CD0  90 1C 01 78 */	stw r0, 0x178(r28)
/* 80300CD4  7F A3 EB 78 */	mr r3, r29
/* 80300CD8  81 9D 00 00 */	lwz r12, 0(r29)
/* 80300CDC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80300CE0  7D 89 03 A6 */	mtctr r12
/* 80300CE4  4E 80 04 21 */	bctrl 
/* 80300CE8  7C 7F 1B 78 */	mr r31, r3
/* 80300CEC  7F A3 EB 78 */	mr r3, r29
/* 80300CF0  38 81 00 14 */	addi r4, r1, 0x14
/* 80300CF4  38 A0 00 08 */	li r5, 8
/* 80300CF8  4B FD B5 A1 */	bl read__14JSUInputStreamFPvl
/* 80300CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80300D00  90 1C 00 08 */	stw r0, 8(r28)
/* 80300D04  7F A3 EB 78 */	mr r3, r29
/* 80300D08  81 9D 00 00 */	lwz r12, 0(r29)
/* 80300D0C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80300D10  7D 89 03 A6 */	mtctr r12
/* 80300D14  4E 80 04 21 */	bctrl 
/* 80300D18  7C 7B 1B 78 */	mr r27, r3
/* 80300D1C  7F A3 EB 78 */	mr r3, r29
/* 80300D20  38 81 00 0C */	addi r4, r1, 0xc
/* 80300D24  38 A0 00 08 */	li r5, 8
/* 80300D28  4B FD B7 31 */	bl peek__20JSURandomInputStreamFPvl
/* 80300D2C  7F 83 E3 78 */	mr r3, r28
/* 80300D30  7F 44 D3 78 */	mr r4, r26
/* 80300D34  7F A5 EB 78 */	mr r5, r29
/* 80300D38  4B FF 6D E1 */	bl makePaneExStream__7J2DPaneFP7J2DPaneP20JSURandomInputStream
/* 80300D3C  7F A3 EB 78 */	mr r3, r29
/* 80300D40  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80300D44  7C 9B 02 14 */	add r4, r27, r0
/* 80300D48  38 A0 00 00 */	li r5, 0
/* 80300D4C  4B FD B7 91 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 80300D50  7F A3 EB 78 */	mr r3, r29
/* 80300D54  38 81 00 2C */	addi r4, r1, 0x2c
/* 80300D58  38 A0 00 40 */	li r5, 0x40
/* 80300D5C  4B FD B5 3D */	bl read__14JSUInputStreamFPvl
/* 80300D60  3C 60 80 3A */	lis r3, lit_1508@ha /* 0x803A1C60@ha */
/* 80300D64  38 83 1C 60 */	addi r4, r3, lit_1508@l /* 0x803A1C60@l */
/* 80300D68  80 64 00 00 */	lwz r3, 0(r4)
/* 80300D6C  80 04 00 04 */	lwz r0, 4(r4)
/* 80300D70  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80300D74  90 01 00 20 */	stw r0, 0x20(r1)
/* 80300D78  80 64 00 08 */	lwz r3, 8(r4)
/* 80300D7C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80300D80  90 61 00 24 */	stw r3, 0x24(r1)
/* 80300D84  90 01 00 28 */	stw r0, 0x28(r1)
/* 80300D88  38 1C 01 28 */	addi r0, r28, 0x128
/* 80300D8C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80300D90  38 1C 01 2C */	addi r0, r28, 0x12c
/* 80300D94  90 01 00 20 */	stw r0, 0x20(r1)
/* 80300D98  38 1C 01 30 */	addi r0, r28, 0x130
/* 80300D9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80300DA0  38 1C 01 34 */	addi r0, r28, 0x134
/* 80300DA4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80300DA8  38 60 00 00 */	li r3, 0
/* 80300DAC  38 80 00 00 */	li r4, 0
/* 80300DB0  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80300DB4  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80300DB8  38 00 00 04 */	li r0, 4
/* 80300DBC  7C 09 03 A6 */	mtctr r0
lbl_80300DC0:
/* 80300DC0  39 21 00 2C */	addi r9, r1, 0x2c
/* 80300DC4  7D 29 22 14 */	add r9, r9, r4
/* 80300DC8  A0 09 00 10 */	lhz r0, 0x10(r9)
/* 80300DCC  39 04 01 58 */	addi r8, r4, 0x158
/* 80300DD0  7C 1C 43 2E */	sthx r0, r28, r8
/* 80300DD4  38 00 00 00 */	li r0, 0
/* 80300DD8  38 E3 01 48 */	addi r7, r3, 0x148
/* 80300DDC  7C 1C 39 2E */	stwx r0, r28, r7
/* 80300DE0  7C 1C 42 2E */	lhzx r0, r28, r8
/* 80300DE4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80300DE8  41 82 00 20 */	beq lbl_80300E08
/* 80300DEC  1C 00 00 88 */	mulli r0, r0, 0x88
/* 80300DF0  7C 1E 02 14 */	add r0, r30, r0
/* 80300DF4  7C 1C 39 2E */	stwx r0, r28, r7
/* 80300DF8  7C 1C 42 2E */	lhzx r0, r28, r8
/* 80300DFC  1C E0 00 88 */	mulli r7, r0, 0x88
/* 80300E00  38 07 00 04 */	addi r0, r7, 4
/* 80300E04  7F 9E 01 2E */	stwx r28, r30, r0
lbl_80300E08:
/* 80300E08  A0 E9 00 28 */	lhz r7, 0x28(r9)
/* 80300E0C  38 04 01 68 */	addi r0, r4, 0x168
/* 80300E10  7C FC 03 2E */	sthx r7, r28, r0
/* 80300E14  38 03 00 30 */	addi r0, r3, 0x30
/* 80300E18  7C 06 00 2E */	lwzx r0, r6, r0
/* 80300E1C  90 01 00 08 */	stw r0, 8(r1)
/* 80300E20  7C E5 18 2E */	lwzx r7, r5, r3
/* 80300E24  88 01 00 08 */	lbz r0, 8(r1)
/* 80300E28  98 07 00 00 */	stb r0, 0(r7)
/* 80300E2C  88 01 00 09 */	lbz r0, 9(r1)
/* 80300E30  98 07 00 01 */	stb r0, 1(r7)
/* 80300E34  88 01 00 0A */	lbz r0, 0xa(r1)
/* 80300E38  98 07 00 02 */	stb r0, 2(r7)
/* 80300E3C  88 01 00 0B */	lbz r0, 0xb(r1)
/* 80300E40  98 07 00 03 */	stb r0, 3(r7)
/* 80300E44  38 63 00 04 */	addi r3, r3, 4
/* 80300E48  38 84 00 02 */	addi r4, r4, 2
/* 80300E4C  42 00 FF 74 */	bdnz lbl_80300DC0
/* 80300E50  88 01 00 44 */	lbz r0, 0x44(r1)
/* 80300E54  98 1C 01 44 */	stb r0, 0x144(r28)
/* 80300E58  A0 81 00 48 */	lhz r4, 0x48(r1)
/* 80300E5C  A0 01 00 4C */	lhz r0, 0x4c(r1)
/* 80300E60  7C 04 02 14 */	add r0, r4, r0
/* 80300E64  C8 22 C8 A0 */	lfd f1, lit_1549(r2)
/* 80300E68  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80300E6C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80300E70  3C 60 43 30 */	lis r3, 0x4330
/* 80300E74  90 61 00 70 */	stw r3, 0x70(r1)
/* 80300E78  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 80300E7C  EC 80 08 28 */	fsubs f4, f0, f1
/* 80300E80  A0 A1 00 46 */	lhz r5, 0x46(r1)
/* 80300E84  A0 01 00 4A */	lhz r0, 0x4a(r1)
/* 80300E88  7C 05 02 14 */	add r0, r5, r0
/* 80300E8C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80300E90  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80300E94  90 61 00 78 */	stw r3, 0x78(r1)
/* 80300E98  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80300E9C  EC 60 08 28 */	fsubs f3, f0, f1
/* 80300EA0  C8 22 C8 A8 */	lfd f1, lit_1552(r2)
/* 80300EA4  90 81 00 84 */	stw r4, 0x84(r1)
/* 80300EA8  90 61 00 80 */	stw r3, 0x80(r1)
/* 80300EAC  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80300EB0  EC 40 08 28 */	fsubs f2, f0, f1
/* 80300EB4  90 A1 00 8C */	stw r5, 0x8c(r1)
/* 80300EB8  90 61 00 88 */	stw r3, 0x88(r1)
/* 80300EBC  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80300EC0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80300EC4  D0 1C 01 14 */	stfs f0, 0x114(r28)
/* 80300EC8  D0 5C 01 18 */	stfs f2, 0x118(r28)
/* 80300ECC  D0 7C 01 1C */	stfs f3, 0x11c(r28)
/* 80300ED0  D0 9C 01 20 */	stfs f4, 0x120(r28)
/* 80300ED4  A0 01 00 4E */	lhz r0, 0x4e(r1)
/* 80300ED8  B0 1C 01 66 */	sth r0, 0x166(r28)
/* 80300EDC  A0 01 00 50 */	lhz r0, 0x50(r1)
/* 80300EE0  B0 1C 01 64 */	sth r0, 0x164(r28)
/* 80300EE4  38 00 00 00 */	li r0, 0
/* 80300EE8  90 1C 01 60 */	stw r0, 0x160(r28)
/* 80300EEC  A0 1C 01 64 */	lhz r0, 0x164(r28)
/* 80300EF0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80300EF4  41 82 00 20 */	beq lbl_80300F14
/* 80300EF8  1C 00 00 88 */	mulli r0, r0, 0x88
/* 80300EFC  7C 1E 02 14 */	add r0, r30, r0
/* 80300F00  90 1C 01 60 */	stw r0, 0x160(r28)
/* 80300F04  A0 1C 01 64 */	lhz r0, 0x164(r28)
/* 80300F08  1C 00 00 88 */	mulli r0, r0, 0x88
/* 80300F0C  7C 7E 02 14 */	add r3, r30, r0
/* 80300F10  93 83 00 04 */	stw r28, 4(r3)
lbl_80300F14:
/* 80300F14  7F A3 EB 78 */	mr r3, r29
/* 80300F18  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80300F1C  7C 9F 02 14 */	add r4, r31, r0
/* 80300F20  38 A0 00 00 */	li r5, 0
/* 80300F24  4B FD B5 B9 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 80300F28  7F 83 E3 78 */	mr r3, r28
/* 80300F2C  81 9C 00 00 */	lwz r12, 0(r28)
/* 80300F30  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 80300F34  7D 89 03 A6 */	mtctr r12
/* 80300F38  4E 80 04 21 */	bctrl 
/* 80300F3C  38 00 00 00 */	li r0, 0
/* 80300F40  90 1C 01 00 */	stw r0, 0x100(r28)
/* 80300F44  90 1C 01 04 */	stw r0, 0x104(r28)
/* 80300F48  90 1C 01 08 */	stw r0, 0x108(r28)
/* 80300F4C  90 1C 01 0C */	stw r0, 0x10c(r28)
/* 80300F50  90 1C 01 24 */	stw r0, 0x124(r28)
/* 80300F54  90 1C 01 10 */	stw r0, 0x110(r28)
/* 80300F58  98 1C 01 70 */	stb r0, 0x170(r28)
/* 80300F5C  7F 83 E3 78 */	mr r3, r28
/* 80300F60  48 00 00 21 */	bl setMinSize__11J2DWindowExFv
/* 80300F64  7F 83 E3 78 */	mr r3, r28
/* 80300F68  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80300F6C  48 06 12 B1 */	bl _restgpr_26
/* 80300F70  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80300F74  7C 08 03 A6 */	mtlr r0
/* 80300F78  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80300F7C  4E 80 00 20 */	blr 
