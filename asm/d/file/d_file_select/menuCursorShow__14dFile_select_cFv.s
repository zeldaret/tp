lbl_8018DA10:
/* 8018DA10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8018DA14  7C 08 02 A6 */	mflr r0
/* 8018DA18  90 01 00 34 */	stw r0, 0x34(r1)
/* 8018DA1C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8018DA20  7C 7F 1B 78 */	mr r31, r3
/* 8018DA24  88 03 02 67 */	lbz r0, 0x267(r3)
/* 8018DA28  28 00 00 FF */	cmplwi r0, 0xff
/* 8018DA2C  41 82 01 40 */	beq lbl_8018DB6C
/* 8018DA30  38 00 00 FF */	li r0, 0xff
/* 8018DA34  98 01 00 08 */	stb r0, 8(r1)
/* 8018DA38  98 01 00 09 */	stb r0, 9(r1)
/* 8018DA3C  98 01 00 0A */	stb r0, 0xa(r1)
/* 8018DA40  98 01 00 0B */	stb r0, 0xb(r1)
/* 8018DA44  80 01 00 08 */	lwz r0, 8(r1)
/* 8018DA48  90 01 00 0C */	stw r0, 0xc(r1)
/* 8018DA4C  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 8018DA50  54 00 10 3A */	slwi r0, r0, 2
/* 8018DA54  7C 7F 02 14 */	add r3, r31, r0
/* 8018DA58  80 63 03 94 */	lwz r3, 0x394(r3)
/* 8018DA5C  80 63 00 04 */	lwz r3, 4(r3)
/* 8018DA60  38 81 00 0C */	addi r4, r1, 0xc
/* 8018DA64  81 83 00 00 */	lwz r12, 0(r3)
/* 8018DA68  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8018DA6C  7D 89 03 A6 */	mtctr r12
/* 8018DA70  4E 80 04 21 */	bctrl 
/* 8018DA74  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 8018DA78  54 00 10 3A */	slwi r0, r0, 2
/* 8018DA7C  7C 7F 02 14 */	add r3, r31, r0
/* 8018DA80  80 63 03 64 */	lwz r3, 0x364(r3)
/* 8018DA84  38 80 00 FF */	li r4, 0xff
/* 8018DA88  81 83 00 00 */	lwz r12, 0(r3)
/* 8018DA8C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018DA90  7D 89 03 A6 */	mtctr r12
/* 8018DA94  4E 80 04 21 */	bctrl 
/* 8018DA98  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 8018DA9C  54 00 10 3A */	slwi r0, r0, 2
/* 8018DAA0  7C 7F 02 14 */	add r3, r31, r0
/* 8018DAA4  80 63 03 70 */	lwz r3, 0x370(r3)
/* 8018DAA8  38 80 00 FF */	li r4, 0xff
/* 8018DAAC  81 83 00 00 */	lwz r12, 0(r3)
/* 8018DAB0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018DAB4  7D 89 03 A6 */	mtctr r12
/* 8018DAB8  4E 80 04 21 */	bctrl 
/* 8018DABC  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 8018DAC0  54 00 10 3A */	slwi r0, r0, 2
/* 8018DAC4  7C 7F 02 14 */	add r3, r31, r0
/* 8018DAC8  80 63 03 7C */	lwz r3, 0x37c(r3)
/* 8018DACC  38 80 00 FF */	li r4, 0xff
/* 8018DAD0  81 83 00 00 */	lwz r12, 0(r3)
/* 8018DAD4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018DAD8  7D 89 03 A6 */	mtctr r12
/* 8018DADC  4E 80 04 21 */	bctrl 
/* 8018DAE0  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 8018DAE4  54 00 10 3A */	slwi r0, r0, 2
/* 8018DAE8  7C 7F 02 14 */	add r3, r31, r0
/* 8018DAEC  80 83 03 40 */	lwz r4, 0x340(r3)
/* 8018DAF0  38 61 00 10 */	addi r3, r1, 0x10
/* 8018DAF4  80 A4 00 04 */	lwz r5, 4(r4)
/* 8018DAF8  38 C0 00 00 */	li r6, 0
/* 8018DAFC  38 E0 00 00 */	li r7, 0
/* 8018DB00  48 0C 73 BD */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 8018DB04  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8018DB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018DB0C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8018DB10  90 01 00 20 */	stw r0, 0x20(r1)
/* 8018DB14  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8018DB18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018DB1C  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 8018DB20  54 00 10 3A */	slwi r0, r0, 2
/* 8018DB24  7C 7F 02 14 */	add r3, r31, r0
/* 8018DB28  80 63 03 40 */	lwz r3, 0x340(r3)
/* 8018DB2C  80 83 00 04 */	lwz r4, 4(r3)
/* 8018DB30  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8018DB34  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8018DB38  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8018DB3C  38 A0 00 01 */	li r5, 1
/* 8018DB40  48 00 75 B5 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 8018DB44  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8018DB48  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8018DB4C  48 00 77 55 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 8018DB50  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8018DB54  C0 22 9F 68 */	lfs f1, lit_6069(r2)
/* 8018DB58  C0 42 9F 6C */	lfs f2, lit_6070(r2)
/* 8018DB5C  C0 62 9F 70 */	lfs f3, lit_6071(r2)
/* 8018DB60  C0 82 9F 30 */	lfs f4, lit_4166(r2)
/* 8018DB64  FC A0 20 90 */	fmr f5, f4
/* 8018DB68  48 00 76 49 */	bl setParam__16dSelect_cursor_cFfffff
lbl_8018DB6C:
/* 8018DB6C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8018DB70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8018DB74  7C 08 03 A6 */	mtlr r0
/* 8018DB78  38 21 00 30 */	addi r1, r1, 0x30
/* 8018DB7C  4E 80 00 20 */	blr 
