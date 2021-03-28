lbl_801B6344:
/* 801B6344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B6348  7C 08 02 A6 */	mflr r0
/* 801B634C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B6350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B6354  7C 7F 1B 78 */	mr r31, r3
/* 801B6358  38 00 00 00 */	li r0, 0
/* 801B635C  B0 03 01 82 */	sth r0, 0x182(r3)
/* 801B6360  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801B6364  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3034@ha */
/* 801B6368  38 C4 30 34 */	addi r6, r4, 0x3034 /* 0x5F6E3034@l */
/* 801B636C  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B6370  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B6374  81 83 00 00 */	lwz r12, 0(r3)
/* 801B6378  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B637C  7D 89 03 A6 */	mtctr r12
/* 801B6380  4E 80 04 21 */	bctrl 
/* 801B6384  48 14 A2 D5 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B6388  3C 80 80 39 */	lis r4, d_menu_d_menu_collect__stringBase0@ha
/* 801B638C  38 84 53 30 */	addi r4, r4, d_menu_d_menu_collect__stringBase0@l
/* 801B6390  38 84 00 55 */	addi r4, r4, 0x55
/* 801B6394  48 1B 27 99 */	bl strcpy
/* 801B6398  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B639C  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3035@ha */
/* 801B63A0  38 C4 30 35 */	addi r6, r4, 0x3035 /* 0x5F6E3035@l */
/* 801B63A4  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B63A8  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B63AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B63B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B63B4  7D 89 03 A6 */	mtctr r12
/* 801B63B8  4E 80 04 21 */	bctrl 
/* 801B63BC  48 14 A2 9D */	bl getStringPtr__10J2DTextBoxCFv
/* 801B63C0  3C 80 80 39 */	lis r4, d_menu_d_menu_collect__stringBase0@ha
/* 801B63C4  38 84 53 30 */	addi r4, r4, d_menu_d_menu_collect__stringBase0@l
/* 801B63C8  38 84 00 55 */	addi r4, r4, 0x55
/* 801B63CC  48 1B 27 61 */	bl strcpy
/* 801B63D0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B63D4  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3036@ha */
/* 801B63D8  38 C4 30 36 */	addi r6, r4, 0x3036 /* 0x5F6E3036@l */
/* 801B63DC  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B63E0  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B63E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B63E8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B63EC  7D 89 03 A6 */	mtctr r12
/* 801B63F0  4E 80 04 21 */	bctrl 
/* 801B63F4  48 14 A2 65 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B63F8  3C 80 80 39 */	lis r4, d_menu_d_menu_collect__stringBase0@ha
/* 801B63FC  38 84 53 30 */	addi r4, r4, d_menu_d_menu_collect__stringBase0@l
/* 801B6400  38 84 00 55 */	addi r4, r4, 0x55
/* 801B6404  48 1B 27 29 */	bl strcpy
/* 801B6408  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B640C  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3037@ha */
/* 801B6410  38 C4 30 37 */	addi r6, r4, 0x3037 /* 0x5F6E3037@l */
/* 801B6414  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B6418  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B641C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B6420  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B6424  7D 89 03 A6 */	mtctr r12
/* 801B6428  4E 80 04 21 */	bctrl 
/* 801B642C  48 14 A2 2D */	bl getStringPtr__10J2DTextBoxCFv
/* 801B6430  3C 80 80 39 */	lis r4, d_menu_d_menu_collect__stringBase0@ha
/* 801B6434  38 84 53 30 */	addi r4, r4, d_menu_d_menu_collect__stringBase0@l
/* 801B6438  38 84 00 55 */	addi r4, r4, 0x55
/* 801B643C  48 1B 26 F1 */	bl strcpy
/* 801B6440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B6444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B6448  7C 08 03 A6 */	mtlr r0
/* 801B644C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B6450  4E 80 00 20 */	blr 
