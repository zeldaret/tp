lbl_8002EC54:
/* 8002EC54  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 8002EC58  21 6B F7 80 */	subfic r11, r11, -2176
/* 8002EC5C  7C 2C 0B 78 */	mr r12, r1
/* 8002EC60  7C 21 59 6E */	stwux r1, r1, r11
/* 8002EC64  7C 08 02 A6 */	mflr r0
/* 8002EC68  90 0C 00 04 */	stw r0, 4(r12)
/* 8002EC6C  7D 8B 63 78 */	mr r11, r12
/* 8002EC70  48 33 35 5D */	bl _savegpr_25
/* 8002EC74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002EC78  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8002EC7C  80 7E 5C 68 */	lwz r3, 0x5c68(r30)
/* 8002EC80  38 81 00 60 */	addi r4, r1, 0x60
/* 8002EC84  38 A0 08 00 */	li r5, 0x800
/* 8002EC88  3C C0 80 38 */	lis r6, d_com_d_com_inf_game__stringBase0@ha
/* 8002EC8C  38 C6 8F 38 */	addi r6, r6, d_com_d_com_inf_game__stringBase0@l
/* 8002EC90  38 C6 01 52 */	addi r6, r6, 0x152
/* 8002EC94  81 83 00 00 */	lwz r12, 0(r3)
/* 8002EC98  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8002EC9C  7D 89 03 A6 */	mtctr r12
/* 8002ECA0  4E 80 04 21 */	bctrl 
/* 8002ECA4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8002ECA8  3B 81 00 60 */	addi r28, r1, 0x60
/* 8002ECAC  7F 9C 02 14 */	add r28, r28, r0
/* 8002ECB0  3B 7C 00 04 */	addi r27, r28, 4
/* 8002ECB4  3B 40 00 00 */	li r26, 0
/* 8002ECB8  38 80 00 FF */	li r4, 0xff
/* 8002ECBC  38 61 00 20 */	addi r3, r1, 0x20
/* 8002ECC0  38 00 00 40 */	li r0, 0x40
/* 8002ECC4  7C 09 03 A6 */	mtctr r0
lbl_8002ECC8:
/* 8002ECC8  98 83 00 00 */	stb r4, 0(r3)
/* 8002ECCC  38 63 00 01 */	addi r3, r3, 1
/* 8002ECD0  42 00 FF F8 */	bdnz lbl_8002ECC8
/* 8002ECD4  3B 20 00 00 */	li r25, 0
/* 8002ECD8  3B E0 00 00 */	li r31, 0
/* 8002ECDC  48 00 00 78 */	b lbl_8002ED54
lbl_8002ECE0:
/* 8002ECE0  38 61 00 60 */	addi r3, r1, 0x60
/* 8002ECE4  48 19 79 49 */	bl dMenuFmap_getStartStageName__FPv
/* 8002ECE8  7F BB FA 14 */	add r29, r27, r31
/* 8002ECEC  7F A4 EB 78 */	mr r4, r29
/* 8002ECF0  48 33 9C A5 */	bl strcmp
/* 8002ECF4  2C 03 00 00 */	cmpwi r3, 0
/* 8002ECF8  40 82 00 54 */	bne lbl_8002ED4C
/* 8002ECFC  88 9D 00 08 */	lbz r4, 8(r29)
/* 8002ED00  28 04 00 FF */	cmplwi r4, 0xff
/* 8002ED04  40 82 00 38 */	bne lbl_8002ED3C
/* 8002ED08  38 80 00 00 */	li r4, 0
/* 8002ED0C  38 61 00 20 */	addi r3, r1, 0x20
/* 8002ED10  38 00 00 40 */	li r0, 0x40
/* 8002ED14  7C 09 03 A6 */	mtctr r0
lbl_8002ED18:
/* 8002ED18  88 03 00 00 */	lbz r0, 0(r3)
/* 8002ED1C  28 00 00 FF */	cmplwi r0, 0xff
/* 8002ED20  40 82 00 0C */	bne lbl_8002ED2C
/* 8002ED24  88 1D 00 09 */	lbz r0, 9(r29)
/* 8002ED28  98 03 00 00 */	stb r0, 0(r3)
lbl_8002ED2C:
/* 8002ED2C  38 84 00 01 */	addi r4, r4, 1
/* 8002ED30  38 63 00 01 */	addi r3, r3, 1
/* 8002ED34  42 00 FF E4 */	bdnz lbl_8002ED18
/* 8002ED38  48 00 00 10 */	b lbl_8002ED48
lbl_8002ED3C:
/* 8002ED3C  88 1D 00 09 */	lbz r0, 9(r29)
/* 8002ED40  38 61 00 20 */	addi r3, r1, 0x20
/* 8002ED44  7C 03 21 AE */	stbx r0, r3, r4
lbl_8002ED48:
/* 8002ED48  3B 40 00 01 */	li r26, 1
lbl_8002ED4C:
/* 8002ED4C  3B 39 00 01 */	addi r25, r25, 1
/* 8002ED50  3B FF 00 14 */	addi r31, r31, 0x14
lbl_8002ED54:
/* 8002ED54  88 1C 00 00 */	lbz r0, 0(r28)
/* 8002ED58  7C 19 00 00 */	cmpw r25, r0
/* 8002ED5C  41 80 FF 84 */	blt lbl_8002ECE0
/* 8002ED60  80 7E 5C 68 */	lwz r3, 0x5c68(r30)
/* 8002ED64  81 83 00 00 */	lwz r12, 0(r3)
/* 8002ED68  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8002ED6C  7D 89 03 A6 */	mtctr r12
/* 8002ED70  4E 80 04 21 */	bctrl 
/* 8002ED74  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8002ED78  41 82 00 48 */	beq lbl_8002EDC0
/* 8002ED7C  38 00 FF FF */	li r0, -1
/* 8002ED80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002ED84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002ED88  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8002ED8C  28 03 00 00 */	cmplwi r3, 0
/* 8002ED90  41 82 00 0C */	beq lbl_8002ED9C
/* 8002ED94  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 8002ED98  7C 00 07 74 */	extsb r0, r0
lbl_8002ED9C:
/* 8002ED9C  2C 00 00 00 */	cmpwi r0, 0
/* 8002EDA0  40 80 00 14 */	bge lbl_8002EDB4
/* 8002EDA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002EDA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002EDAC  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 8002EDB0  7C 00 07 74 */	extsb r0, r0
lbl_8002EDB4:
/* 8002EDB4  38 61 00 20 */	addi r3, r1, 0x20
/* 8002EDB8  7C 63 00 AE */	lbzx r3, r3, r0
/* 8002EDBC  48 00 00 08 */	b lbl_8002EDC4
lbl_8002EDC0:
/* 8002EDC0  38 60 00 FF */	li r3, 0xff
lbl_8002EDC4:
/* 8002EDC4  81 41 00 00 */	lwz r10, 0(r1)
/* 8002EDC8  7D 4B 53 78 */	mr r11, r10
/* 8002EDCC  48 33 34 4D */	bl _restgpr_25
/* 8002EDD0  80 0A 00 04 */	lwz r0, 4(r10)
/* 8002EDD4  7C 08 03 A6 */	mtlr r0
/* 8002EDD8  7D 41 53 78 */	mr r1, r10
/* 8002EDDC  4E 80 00 20 */	blr 
