lbl_801B5D70:
/* 801B5D70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5D74  7C 08 02 A6 */	mflr r0
/* 801B5D78  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5D7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5D80  93 C1 00 08 */	stw r30, 8(r1)
/* 801B5D84  7C 7F 1B 78 */	mr r31, r3
/* 801B5D88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B5D8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B5D90  83 C3 5F 50 */	lwz r30, 0x5f50(r3)
/* 801B5D94  7F C3 F3 78 */	mr r3, r30
/* 801B5D98  81 9E 00 00 */	lwz r12, 0(r30)
/* 801B5D9C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B5DA0  7D 89 03 A6 */	mtctr r12
/* 801B5DA4  4E 80 04 21 */	bctrl 
/* 801B5DA8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B5DAC  C0 22 A5 28 */	lfs f1, lit_4481(r2)
/* 801B5DB0  FC 40 08 90 */	fmr f2, f1
/* 801B5DB4  7F C4 F3 78 */	mr r4, r30
/* 801B5DB8  48 14 31 1D */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801B5DBC  A0 1F 01 82 */	lhz r0, 0x182(r31)
/* 801B5DC0  28 00 00 00 */	cmplwi r0, 0
/* 801B5DC4  40 82 00 78 */	bne lbl_801B5E3C
/* 801B5DC8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B5DCC  3C 80 65 78 */	lis r4, 0x6578 /* 0x65787431@ha */
/* 801B5DD0  38 C4 74 31 */	addi r6, r4, 0x7431 /* 0x65787431@l */
/* 801B5DD4  3C 80 00 66 */	lis r4, 0x0066 /* 0x00665F74@ha */
/* 801B5DD8  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x00665F74@l */
/* 801B5DDC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5DE0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B5DE4  7D 89 03 A6 */	mtctr r12
/* 801B5DE8  4E 80 04 21 */	bctrl 
/* 801B5DEC  48 14 A8 6D */	bl getStringPtr__10J2DTextBoxCFv
/* 801B5DF0  3C 80 80 39 */	lis r4, d_menu_d_menu_collect__stringBase0@ha
/* 801B5DF4  38 84 53 30 */	addi r4, r4, d_menu_d_menu_collect__stringBase0@l
/* 801B5DF8  38 84 00 55 */	addi r4, r4, 0x55
/* 801B5DFC  48 1B 2D 31 */	bl strcpy
/* 801B5E00  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B5E04  3C 80 65 78 */	lis r4, 0x6578 /* 0x65787430@ha */
/* 801B5E08  38 C4 74 30 */	addi r6, r4, 0x7430 /* 0x65787430@l */
/* 801B5E0C  3C 80 00 66 */	lis r4, 0x0066 /* 0x00665F74@ha */
/* 801B5E10  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x00665F74@l */
/* 801B5E14  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5E18  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B5E1C  7D 89 03 A6 */	mtctr r12
/* 801B5E20  4E 80 04 21 */	bctrl 
/* 801B5E24  48 14 A8 35 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B5E28  3C 80 80 39 */	lis r4, d_menu_d_menu_collect__stringBase0@ha
/* 801B5E2C  38 84 53 30 */	addi r4, r4, d_menu_d_menu_collect__stringBase0@l
/* 801B5E30  38 84 00 55 */	addi r4, r4, 0x55
/* 801B5E34  48 1B 2C F9 */	bl strcpy
/* 801B5E38  48 00 00 E4 */	b lbl_801B5F1C
lbl_801B5E3C:
/* 801B5E3C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B5E40  3C 80 65 78 */	lis r4, 0x6578 /* 0x65787431@ha */
/* 801B5E44  38 C4 74 31 */	addi r6, r4, 0x7431 /* 0x65787431@l */
/* 801B5E48  3C 80 00 66 */	lis r4, 0x0066 /* 0x00665F74@ha */
/* 801B5E4C  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x00665F74@l */
/* 801B5E50  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5E54  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B5E58  7D 89 03 A6 */	mtctr r12
/* 801B5E5C  4E 80 04 21 */	bctrl 
/* 801B5E60  7C 65 1B 78 */	mr r5, r3
/* 801B5E64  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801B5E68  A0 9F 01 82 */	lhz r4, 0x182(r31)
/* 801B5E6C  38 C0 00 00 */	li r6, 0
/* 801B5E70  38 E0 00 00 */	li r7, 0
/* 801B5E74  39 00 00 00 */	li r8, 0
/* 801B5E78  39 20 00 00 */	li r9, 0
/* 801B5E7C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5E80  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B5E84  7D 89 03 A6 */	mtctr r12
/* 801B5E88  4E 80 04 21 */	bctrl 
/* 801B5E8C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B5E90  3C 80 65 78 */	lis r4, 0x6578 /* 0x65787430@ha */
/* 801B5E94  38 C4 74 30 */	addi r6, r4, 0x7430 /* 0x65787430@l */
/* 801B5E98  3C 80 00 66 */	lis r4, 0x0066 /* 0x00665F74@ha */
/* 801B5E9C  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x00665F74@l */
/* 801B5EA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5EA4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B5EA8  7D 89 03 A6 */	mtctr r12
/* 801B5EAC  4E 80 04 21 */	bctrl 
/* 801B5EB0  7C 65 1B 78 */	mr r5, r3
/* 801B5EB4  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801B5EB8  A0 9F 01 82 */	lhz r4, 0x182(r31)
/* 801B5EBC  38 C0 00 00 */	li r6, 0
/* 801B5EC0  38 E0 00 00 */	li r7, 0
/* 801B5EC4  39 00 00 00 */	li r8, 0
/* 801B5EC8  39 20 00 00 */	li r9, 0
/* 801B5ECC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5ED0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B5ED4  7D 89 03 A6 */	mtctr r12
/* 801B5ED8  4E 80 04 21 */	bctrl 
/* 801B5EDC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B5EE0  3C 80 65 78 */	lis r4, 0x6578 /* 0x65787430@ha */
/* 801B5EE4  38 C4 74 30 */	addi r6, r4, 0x7430 /* 0x65787430@l */
/* 801B5EE8  3C 80 00 66 */	lis r4, 0x0066 /* 0x00665F74@ha */
/* 801B5EEC  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x00665F74@l */
/* 801B5EF0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5EF4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B5EF8  7D 89 03 A6 */	mtctr r12
/* 801B5EFC  4E 80 04 21 */	bctrl 
/* 801B5F00  7C 64 1B 78 */	mr r4, r3
/* 801B5F04  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801B5F08  C0 22 A5 60 */	lfs f1, lit_5531(r2)
/* 801B5F0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5F10  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801B5F14  7D 89 03 A6 */	mtctr r12
/* 801B5F18  4E 80 04 21 */	bctrl 
lbl_801B5F1C:
/* 801B5F1C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801B5F20  81 83 00 00 */	lwz r12, 0(r3)
/* 801B5F24  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B5F28  7D 89 03 A6 */	mtctr r12
/* 801B5F2C  4E 80 04 21 */	bctrl 
/* 801B5F30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5F34  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B5F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5F3C  7C 08 03 A6 */	mtlr r0
/* 801B5F40  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5F44  4E 80 00 20 */	blr 
