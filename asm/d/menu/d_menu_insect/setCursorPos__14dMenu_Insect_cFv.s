lbl_801DA1EC:
/* 801DA1EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801DA1F0  7C 08 02 A6 */	mflr r0
/* 801DA1F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 801DA1F8  39 61 00 40 */	addi r11, r1, 0x40
/* 801DA1FC  48 18 7F D9 */	bl _savegpr_27
/* 801DA200  7C 7E 1B 78 */	mr r30, r3
/* 801DA204  88 63 00 F4 */	lbz r3, 0xf4(r3)
/* 801DA208  88 1E 00 F5 */	lbz r0, 0xf5(r30)
/* 801DA20C  1C 00 00 06 */	mulli r0, r0, 6
/* 801DA210  7F E3 02 14 */	add r31, r3, r0
/* 801DA214  57 E0 10 3A */	slwi r0, r31, 2
/* 801DA218  7F 9E 02 14 */	add r28, r30, r0
/* 801DA21C  80 9C 00 6C */	lwz r4, 0x6c(r28)
/* 801DA220  38 61 00 08 */	addi r3, r1, 8
/* 801DA224  80 A4 00 04 */	lwz r5, 4(r4)
/* 801DA228  38 C0 00 00 */	li r6, 0
/* 801DA22C  38 E0 00 00 */	li r7, 0
/* 801DA230  48 07 AC 8D */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801DA234  80 61 00 08 */	lwz r3, 8(r1)
/* 801DA238  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801DA23C  90 61 00 14 */	stw r3, 0x14(r1)
/* 801DA240  90 01 00 18 */	stw r0, 0x18(r1)
/* 801DA244  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801DA248  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801DA24C  80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 801DA250  80 83 00 04 */	lwz r4, 4(r3)
/* 801DA254  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801DA258  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801DA25C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801DA260  38 A0 00 00 */	li r5, 0
/* 801DA264  4B FB AE 91 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 801DA268  3B 60 00 00 */	li r27, 0
/* 801DA26C  3B A0 00 00 */	li r29, 0
/* 801DA270  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801DA274  3B 83 EB C8 */	addi r28, r3, g_drawHIO@l
lbl_801DA278:
/* 801DA278  7C 1B F8 00 */	cmpw r27, r31
/* 801DA27C  40 82 00 30 */	bne lbl_801DA2AC
/* 801DA280  C0 1C 09 E8 */	lfs f0, 0x9e8(r28)
/* 801DA284  38 1D 00 6C */	addi r0, r29, 0x6c
/* 801DA288  7C 7E 00 2E */	lwzx r3, r30, r0
/* 801DA28C  80 63 00 04 */	lwz r3, 4(r3)
/* 801DA290  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801DA294  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801DA298  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA29C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DA2A0  7D 89 03 A6 */	mtctr r12
/* 801DA2A4  4E 80 04 21 */	bctrl 
/* 801DA2A8  48 00 00 2C */	b lbl_801DA2D4
lbl_801DA2AC:
/* 801DA2AC  C0 1C 09 E4 */	lfs f0, 0x9e4(r28)
/* 801DA2B0  38 1D 00 6C */	addi r0, r29, 0x6c
/* 801DA2B4  7C 7E 00 2E */	lwzx r3, r30, r0
/* 801DA2B8  80 63 00 04 */	lwz r3, 4(r3)
/* 801DA2BC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801DA2C0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801DA2C4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DA2C8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801DA2CC  7D 89 03 A6 */	mtctr r12
/* 801DA2D0  4E 80 04 21 */	bctrl 
lbl_801DA2D4:
/* 801DA2D4  3B 7B 00 01 */	addi r27, r27, 1
/* 801DA2D8  2C 1B 00 18 */	cmpwi r27, 0x18
/* 801DA2DC  3B BD 00 04 */	addi r29, r29, 4
/* 801DA2E0  41 80 FF 98 */	blt lbl_801DA278
/* 801DA2E4  39 61 00 40 */	addi r11, r1, 0x40
/* 801DA2E8  48 18 7F 39 */	bl _restgpr_27
/* 801DA2EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801DA2F0  7C 08 03 A6 */	mtlr r0
/* 801DA2F4  38 21 00 40 */	addi r1, r1, 0x40
/* 801DA2F8  4E 80 00 20 */	blr 
