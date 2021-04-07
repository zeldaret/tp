lbl_801EC3B0:
/* 801EC3B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801EC3B4  7C 08 02 A6 */	mflr r0
/* 801EC3B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801EC3BC  39 61 00 30 */	addi r11, r1, 0x30
/* 801EC3C0  48 17 5E 19 */	bl _savegpr_28
/* 801EC3C4  7C 7C 1B 78 */	mr r28, r3
/* 801EC3C8  7C 9D 23 78 */	mr r29, r4
/* 801EC3CC  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801EC3D0  3C 80 6D 5F */	lis r4, 0x6D5F /* 0x6D5F6E31@ha */
/* 801EC3D4  38 C4 6E 31 */	addi r6, r4, 0x6E31 /* 0x6D5F6E31@l */
/* 801EC3D8  3C 80 66 69 */	lis r4, 0x6669 /* 0x66697465@ha */
/* 801EC3DC  38 A4 74 65 */	addi r5, r4, 0x7465 /* 0x66697465@l */
/* 801EC3E0  81 83 00 00 */	lwz r12, 0(r3)
/* 801EC3E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EC3E8  7D 89 03 A6 */	mtctr r12
/* 801EC3EC  4E 80 04 21 */	bctrl 
/* 801EC3F0  90 61 00 08 */	stw r3, 8(r1)
/* 801EC3F4  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 801EC3F8  3C 80 6D 5F */	lis r4, 0x6D5F /* 0x6D5F6E32@ha */
/* 801EC3FC  38 C4 6E 32 */	addi r6, r4, 0x6E32 /* 0x6D5F6E32@l */
/* 801EC400  3C 80 66 69 */	lis r4, 0x6669 /* 0x66697465@ha */
/* 801EC404  38 A4 74 65 */	addi r5, r4, 0x7465 /* 0x66697465@l */
/* 801EC408  81 83 00 00 */	lwz r12, 0(r3)
/* 801EC40C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EC410  7D 89 03 A6 */	mtctr r12
/* 801EC414  4E 80 04 21 */	bctrl 
/* 801EC418  90 61 00 0C */	stw r3, 0xc(r1)
/* 801EC41C  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 801EC420  3C 80 6D 5F */	lis r4, 0x6D5F /* 0x6D5F6E33@ha */
/* 801EC424  38 C4 6E 33 */	addi r6, r4, 0x6E33 /* 0x6D5F6E33@l */
/* 801EC428  3C 80 66 69 */	lis r4, 0x6669 /* 0x66697465@ha */
/* 801EC42C  38 A4 74 65 */	addi r5, r4, 0x7465 /* 0x66697465@l */
/* 801EC430  81 83 00 00 */	lwz r12, 0(r3)
/* 801EC434  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EC438  7D 89 03 A6 */	mtctr r12
/* 801EC43C  4E 80 04 21 */	bctrl 
/* 801EC440  90 61 00 10 */	stw r3, 0x10(r1)
/* 801EC444  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 801EC448  3C 80 6D 5F */	lis r4, 0x6D5F /* 0x6D5F6E34@ha */
/* 801EC44C  38 C4 6E 34 */	addi r6, r4, 0x6E34 /* 0x6D5F6E34@l */
/* 801EC450  3C 80 66 69 */	lis r4, 0x6669 /* 0x66697465@ha */
/* 801EC454  38 A4 74 65 */	addi r5, r4, 0x7465 /* 0x66697465@l */
/* 801EC458  81 83 00 00 */	lwz r12, 0(r3)
/* 801EC45C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801EC460  7D 89 03 A6 */	mtctr r12
/* 801EC464  4E 80 04 21 */	bctrl 
/* 801EC468  90 61 00 14 */	stw r3, 0x14(r1)
/* 801EC46C  80 1C 06 30 */	lwz r0, 0x630(r28)
/* 801EC470  7C 00 E8 40 */	cmplw r0, r29
/* 801EC474  41 82 00 78 */	beq lbl_801EC4EC
/* 801EC478  3B C0 00 00 */	li r30, 0
/* 801EC47C  3B E0 00 00 */	li r31, 0
lbl_801EC480:
/* 801EC480  28 1D 00 00 */	cmplwi r29, 0
/* 801EC484  40 82 00 24 */	bne lbl_801EC4A8
/* 801EC488  38 61 00 08 */	addi r3, r1, 8
/* 801EC48C  7C 63 F8 2E */	lwzx r3, r3, r31
/* 801EC490  48 11 41 C9 */	bl getStringPtr__10J2DTextBoxCFv
/* 801EC494  3C 80 80 39 */	lis r4, d_menu_d_menu_ring__stringBase0@ha /* 0x803978C8@ha */
/* 801EC498  38 84 78 C8 */	addi r4, r4, d_menu_d_menu_ring__stringBase0@l /* 0x803978C8@l */
/* 801EC49C  38 84 00 2D */	addi r4, r4, 0x2d
/* 801EC4A0  48 17 C6 8D */	bl strcpy
/* 801EC4A4  48 00 00 34 */	b lbl_801EC4D8
lbl_801EC4A8:
/* 801EC4A8  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 801EC4AC  7F A4 EB 78 */	mr r4, r29
/* 801EC4B0  38 A1 00 08 */	addi r5, r1, 8
/* 801EC4B4  7C A5 F8 2E */	lwzx r5, r5, r31
/* 801EC4B8  38 C0 00 00 */	li r6, 0
/* 801EC4BC  38 E0 00 00 */	li r7, 0
/* 801EC4C0  39 00 00 00 */	li r8, 0
/* 801EC4C4  39 20 00 00 */	li r9, 0
/* 801EC4C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801EC4CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EC4D0  7D 89 03 A6 */	mtctr r12
/* 801EC4D4  4E 80 04 21 */	bctrl 
lbl_801EC4D8:
/* 801EC4D8  3B DE 00 01 */	addi r30, r30, 1
/* 801EC4DC  2C 1E 00 04 */	cmpwi r30, 4
/* 801EC4E0  3B FF 00 04 */	addi r31, r31, 4
/* 801EC4E4  41 80 FF 9C */	blt lbl_801EC480
/* 801EC4E8  93 BC 06 30 */	stw r29, 0x630(r28)
lbl_801EC4EC:
/* 801EC4EC  39 61 00 30 */	addi r11, r1, 0x30
/* 801EC4F0  48 17 5D 35 */	bl _restgpr_28
/* 801EC4F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801EC4F8  7C 08 03 A6 */	mtlr r0
/* 801EC4FC  38 21 00 30 */	addi r1, r1, 0x30
/* 801EC500  4E 80 00 20 */	blr 
