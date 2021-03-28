lbl_801F5D84:
/* 801F5D84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F5D88  7C 08 02 A6 */	mflr r0
/* 801F5D8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F5D90  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F5D94  7C 7F 1B 78 */	mr r31, r3
/* 801F5D98  88 03 01 B6 */	lbz r0, 0x1b6(r3)
/* 801F5D9C  28 00 00 FF */	cmplwi r0, 0xff
/* 801F5DA0  41 82 01 40 */	beq lbl_801F5EE0
/* 801F5DA4  38 00 00 FF */	li r0, 0xff
/* 801F5DA8  98 01 00 08 */	stb r0, 8(r1)
/* 801F5DAC  98 01 00 09 */	stb r0, 9(r1)
/* 801F5DB0  98 01 00 0A */	stb r0, 0xa(r1)
/* 801F5DB4  98 01 00 0B */	stb r0, 0xb(r1)
/* 801F5DB8  80 01 00 08 */	lwz r0, 8(r1)
/* 801F5DBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F5DC0  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F5DC4  54 00 10 3A */	slwi r0, r0, 2
/* 801F5DC8  7C 7F 02 14 */	add r3, r31, r0
/* 801F5DCC  80 63 01 38 */	lwz r3, 0x138(r3)
/* 801F5DD0  80 63 00 04 */	lwz r3, 4(r3)
/* 801F5DD4  38 81 00 0C */	addi r4, r1, 0xc
/* 801F5DD8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F5DDC  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 801F5DE0  7D 89 03 A6 */	mtctr r12
/* 801F5DE4  4E 80 04 21 */	bctrl 
/* 801F5DE8  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F5DEC  54 00 10 3A */	slwi r0, r0, 2
/* 801F5DF0  7C 7F 02 14 */	add r3, r31, r0
/* 801F5DF4  80 63 01 18 */	lwz r3, 0x118(r3)
/* 801F5DF8  38 80 00 FF */	li r4, 0xff
/* 801F5DFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F5E00  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F5E04  7D 89 03 A6 */	mtctr r12
/* 801F5E08  4E 80 04 21 */	bctrl 
/* 801F5E0C  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F5E10  54 00 10 3A */	slwi r0, r0, 2
/* 801F5E14  7C 7F 02 14 */	add r3, r31, r0
/* 801F5E18  80 63 01 20 */	lwz r3, 0x120(r3)
/* 801F5E1C  38 80 00 FF */	li r4, 0xff
/* 801F5E20  81 83 00 00 */	lwz r12, 0(r3)
/* 801F5E24  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F5E28  7D 89 03 A6 */	mtctr r12
/* 801F5E2C  4E 80 04 21 */	bctrl 
/* 801F5E30  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F5E34  54 00 10 3A */	slwi r0, r0, 2
/* 801F5E38  7C 7F 02 14 */	add r3, r31, r0
/* 801F5E3C  80 63 01 28 */	lwz r3, 0x128(r3)
/* 801F5E40  38 80 00 FF */	li r4, 0xff
/* 801F5E44  81 83 00 00 */	lwz r12, 0(r3)
/* 801F5E48  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F5E4C  7D 89 03 A6 */	mtctr r12
/* 801F5E50  4E 80 04 21 */	bctrl 
/* 801F5E54  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F5E58  54 00 10 3A */	slwi r0, r0, 2
/* 801F5E5C  7C 7F 02 14 */	add r3, r31, r0
/* 801F5E60  80 83 00 84 */	lwz r4, 0x84(r3)
/* 801F5E64  38 61 00 10 */	addi r3, r1, 0x10
/* 801F5E68  80 A4 00 04 */	lwz r5, 4(r4)
/* 801F5E6C  38 C0 00 00 */	li r6, 0
/* 801F5E70  38 E0 00 00 */	li r7, 0
/* 801F5E74  48 05 F0 49 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801F5E78  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801F5E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F5E80  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801F5E84  90 01 00 20 */	stw r0, 0x20(r1)
/* 801F5E88  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801F5E8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F5E90  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F5E94  54 00 10 3A */	slwi r0, r0, 2
/* 801F5E98  7C 7F 02 14 */	add r3, r31, r0
/* 801F5E9C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 801F5EA0  80 83 00 04 */	lwz r4, 4(r3)
/* 801F5EA4  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F5EA8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801F5EAC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 801F5EB0  38 A0 00 01 */	li r5, 1
/* 801F5EB4  4B F9 F2 41 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 801F5EB8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F5EBC  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F5EC0  4B F9 F3 E1 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801F5EC4  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F5EC8  C0 22 AA 5C */	lfs f1, lit_4180(r2)
/* 801F5ECC  C0 42 AA 7C */	lfs f2, lit_6327(r2)
/* 801F5ED0  C0 62 AA 80 */	lfs f3, lit_6328(r2)
/* 801F5ED4  C0 82 AA 3C */	lfs f4, lit_3850(r2)
/* 801F5ED8  FC A0 20 90 */	fmr f5, f4
/* 801F5EDC  4B F9 F2 D5 */	bl setParam__16dSelect_cursor_cFfffff
lbl_801F5EE0:
/* 801F5EE0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F5EE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F5EE8  7C 08 03 A6 */	mtlr r0
/* 801F5EEC  38 21 00 30 */	addi r1, r1, 0x30
/* 801F5EF0  4E 80 00 20 */	blr 
