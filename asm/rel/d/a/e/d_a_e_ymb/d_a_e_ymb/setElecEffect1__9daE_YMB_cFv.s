lbl_808173B0:
/* 808173B0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 808173B4  7C 08 02 A6 */	mflr r0
/* 808173B8  90 01 00 64 */	stw r0, 0x64(r1)
/* 808173BC  39 61 00 60 */	addi r11, r1, 0x60
/* 808173C0  4B B4 AE 1C */	b _savegpr_29
/* 808173C4  7C 7E 1B 78 */	mr r30, r3
/* 808173C8  3C 60 80 82 */	lis r3, lit_3791@ha
/* 808173CC  3B E3 18 AC */	addi r31, r3, lit_3791@l
/* 808173D0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 808173D4  80 63 00 04 */	lwz r3, 4(r3)
/* 808173D8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 808173DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 808173E0  C0 43 02 FC */	lfs f2, 0x2fc(r3)
/* 808173E4  C0 23 02 EC */	lfs f1, 0x2ec(r3)
/* 808173E8  C0 03 02 DC */	lfs f0, 0x2dc(r3)
/* 808173EC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 808173F0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 808173F4  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 808173F8  3C 60 80 82 */	lis r3, l_HIO@ha
/* 808173FC  38 63 1E 64 */	addi r3, r3, l_HIO@l
/* 80817400  C0 03 00 08 */	lfs f0, 8(r3)
/* 80817404  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80817408  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8081740C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80817410  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80817414  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80817418  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8081741C  38 00 00 FF */	li r0, 0xff
/* 80817420  90 01 00 08 */	stw r0, 8(r1)
/* 80817424  38 80 00 00 */	li r4, 0
/* 80817428  90 81 00 0C */	stw r4, 0xc(r1)
/* 8081742C  38 00 FF FF */	li r0, -1
/* 80817430  90 01 00 10 */	stw r0, 0x10(r1)
/* 80817434  90 81 00 14 */	stw r4, 0x14(r1)
/* 80817438  90 81 00 18 */	stw r4, 0x18(r1)
/* 8081743C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80817440  80 9E 14 80 */	lwz r4, 0x1480(r30)
/* 80817444  38 A0 00 00 */	li r5, 0
/* 80817448  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008630@ha */
/* 8081744C  38 C6 86 30 */	addi r6, r6, 0x8630 /* 0x00008630@l */
/* 80817450  38 E1 00 30 */	addi r7, r1, 0x30
/* 80817454  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80817458  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8081745C  39 41 00 24 */	addi r10, r1, 0x24
/* 80817460  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80817464  4B 83 60 68 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80817468  90 7E 14 80 */	stw r3, 0x1480(r30)
/* 8081746C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80817470  38 63 02 10 */	addi r3, r3, 0x210
/* 80817474  80 9E 14 80 */	lwz r4, 0x1480(r30)
/* 80817478  4B 83 44 A0 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 8081747C  28 03 00 00 */	cmplwi r3, 0
/* 80817480  41 82 00 20 */	beq lbl_808174A0
/* 80817484  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80817488  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8081748C  C0 1E 06 C4 */	lfs f0, 0x6c4(r30)
/* 80817490  FC 00 00 1E */	fctiwz f0, f0
/* 80817494  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80817498  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8081749C  98 03 00 BB */	stb r0, 0xbb(r3)
lbl_808174A0:
/* 808174A0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 808174A4  38 00 00 FF */	li r0, 0xff
/* 808174A8  90 01 00 08 */	stw r0, 8(r1)
/* 808174AC  38 80 00 00 */	li r4, 0
/* 808174B0  90 81 00 0C */	stw r4, 0xc(r1)
/* 808174B4  38 00 FF FF */	li r0, -1
/* 808174B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 808174BC  90 81 00 14 */	stw r4, 0x14(r1)
/* 808174C0  90 81 00 18 */	stw r4, 0x18(r1)
/* 808174C4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 808174C8  80 9E 14 84 */	lwz r4, 0x1484(r30)
/* 808174CC  38 A0 00 00 */	li r5, 0
/* 808174D0  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008631@ha */
/* 808174D4  38 C6 86 31 */	addi r6, r6, 0x8631 /* 0x00008631@l */
/* 808174D8  38 E1 00 30 */	addi r7, r1, 0x30
/* 808174DC  39 1E 01 0C */	addi r8, r30, 0x10c
/* 808174E0  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 808174E4  39 41 00 24 */	addi r10, r1, 0x24
/* 808174E8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 808174EC  4B 83 5F E0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 808174F0  90 7E 14 84 */	stw r3, 0x1484(r30)
/* 808174F4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 808174F8  38 63 02 10 */	addi r3, r3, 0x210
/* 808174FC  80 9E 14 84 */	lwz r4, 0x1484(r30)
/* 80817500  4B 83 44 18 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80817504  28 03 00 00 */	cmplwi r3, 0
/* 80817508  41 82 00 20 */	beq lbl_80817528
/* 8081750C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80817510  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80817514  C0 1E 06 C4 */	lfs f0, 0x6c4(r30)
/* 80817518  FC 00 00 1E */	fctiwz f0, f0
/* 8081751C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80817520  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80817524  98 03 00 BB */	stb r0, 0xbb(r3)
lbl_80817528:
/* 80817528  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029E@ha */
/* 8081752C  38 03 02 9E */	addi r0, r3, 0x029E /* 0x0007029E@l */
/* 80817530  90 01 00 20 */	stw r0, 0x20(r1)
/* 80817534  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80817538  38 81 00 20 */	addi r4, r1, 0x20
/* 8081753C  38 A0 00 00 */	li r5, 0
/* 80817540  38 C0 FF FF */	li r6, -1
/* 80817544  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80817548  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081754C  7D 89 03 A6 */	mtctr r12
/* 80817550  4E 80 04 21 */	bctrl 
/* 80817554  39 61 00 60 */	addi r11, r1, 0x60
/* 80817558  4B B4 AC D0 */	b _restgpr_29
/* 8081755C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80817560  7C 08 03 A6 */	mtlr r0
/* 80817564  38 21 00 60 */	addi r1, r1, 0x60
/* 80817568  4E 80 00 20 */	blr 
