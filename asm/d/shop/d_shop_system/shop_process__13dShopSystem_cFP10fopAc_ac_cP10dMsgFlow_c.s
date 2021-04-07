lbl_8019A158:
/* 8019A158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019A15C  7C 08 02 A6 */	mflr r0
/* 8019A160  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019A164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019A168  93 C1 00 08 */	stw r30, 8(r1)
/* 8019A16C  7C 7F 1B 78 */	mr r31, r3
/* 8019A170  88 03 0F 70 */	lbz r0, 0xf70(r3)
/* 8019A174  1C E0 00 0C */	mulli r7, r0, 0xc
/* 8019A178  3C C0 80 3C */	lis r6, process@ha /* 0x803BB974@ha */
/* 8019A17C  38 06 B9 74 */	addi r0, r6, process@l /* 0x803BB974@l */
/* 8019A180  7D 80 3A 14 */	add r12, r0, r7
/* 8019A184  48 1C 7F 01 */	bl __ptmf_scall
/* 8019A188  60 00 00 00 */	nop 
/* 8019A18C  7C 7E 1B 78 */	mr r30, r3
/* 8019A190  88 7F 0F 72 */	lbz r3, 0xf72(r31)
/* 8019A194  28 03 00 00 */	cmplwi r3, 0
/* 8019A198  41 82 00 0C */	beq lbl_8019A1A4
/* 8019A19C  38 03 FF FF */	addi r0, r3, -1
/* 8019A1A0  98 1F 0F 72 */	stb r0, 0xf72(r31)
lbl_8019A1A4:
/* 8019A1A4  88 1F 0F 7A */	lbz r0, 0xf7a(r31)
/* 8019A1A8  28 00 00 00 */	cmplwi r0, 0
/* 8019A1AC  41 82 00 10 */	beq lbl_8019A1BC
/* 8019A1B0  48 08 48 21 */	bl dMeter2Info_set2DVibration__Fv
/* 8019A1B4  38 00 00 00 */	li r0, 0
/* 8019A1B8  98 1F 0F 7A */	stb r0, 0xf7a(r31)
lbl_8019A1BC:
/* 8019A1BC  2C 1E 00 00 */	cmpwi r30, 0
/* 8019A1C0  41 82 00 40 */	beq lbl_8019A200
/* 8019A1C4  38 00 00 00 */	li r0, 0
/* 8019A1C8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8019A1CC  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8019A1D0  98 03 00 BD */	stb r0, 0xbd(r3)
/* 8019A1D4  88 1F 0F 70 */	lbz r0, 0xf70(r31)
/* 8019A1D8  28 00 00 00 */	cmplwi r0, 0
/* 8019A1DC  41 82 00 10 */	beq lbl_8019A1EC
/* 8019A1E0  7F E3 FB 78 */	mr r3, r31
/* 8019A1E4  38 80 00 00 */	li r4, 0
/* 8019A1E8  48 00 01 5D */	bl setSeq__13dShopSystem_cFUc
lbl_8019A1EC:
/* 8019A1EC  2C 1E 00 02 */	cmpwi r30, 2
/* 8019A1F0  41 82 00 10 */	beq lbl_8019A200
/* 8019A1F4  38 00 00 00 */	li r0, 0
/* 8019A1F8  98 1F 0F 6E */	stb r0, 0xf6e(r31)
/* 8019A1FC  98 1F 0F 6F */	stb r0, 0xf6f(r31)
lbl_8019A200:
/* 8019A200  88 7F 0F 70 */	lbz r3, 0xf70(r31)
/* 8019A204  88 1F 0F 71 */	lbz r0, 0xf71(r31)
/* 8019A208  7C 03 00 40 */	cmplw r3, r0
/* 8019A20C  41 82 00 10 */	beq lbl_8019A21C
/* 8019A210  98 7F 0F 71 */	stb r3, 0xf71(r31)
/* 8019A214  38 00 00 01 */	li r0, 1
/* 8019A218  98 1F 0F 79 */	stb r0, 0xf79(r31)
lbl_8019A21C:
/* 8019A21C  7F C3 F3 78 */	mr r3, r30
/* 8019A220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019A224  83 C1 00 08 */	lwz r30, 8(r1)
/* 8019A228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019A22C  7C 08 03 A6 */	mtlr r0
/* 8019A230  38 21 00 10 */	addi r1, r1, 0x10
/* 8019A234  4E 80 00 20 */	blr 
