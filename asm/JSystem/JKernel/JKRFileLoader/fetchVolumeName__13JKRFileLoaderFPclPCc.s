lbl_802D44C4:
/* 802D44C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D44C8  7C 08 02 A6 */	mflr r0
/* 802D44CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D44D0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D44D4  48 08 DD 09 */	bl _savegpr_29
/* 802D44D8  7C 7D 1B 78 */	mr r29, r3
/* 802D44DC  7C 9E 23 78 */	mr r30, r4
/* 802D44E0  7C BF 2B 78 */	mr r31, r5
/* 802D44E4  7F E3 FB 78 */	mr r3, r31
/* 802D44E8  3C 80 80 3A */	lis r4, JKRFileLoader__stringBase0@ha
/* 802D44EC  38 84 D1 50 */	addi r4, r4, JKRFileLoader__stringBase0@l
/* 802D44F0  48 09 44 A5 */	bl strcmp
/* 802D44F4  2C 03 00 00 */	cmpwi r3, 0
/* 802D44F8  40 82 00 18 */	bne lbl_802D4510
/* 802D44FC  7F A3 EB 78 */	mr r3, r29
/* 802D4500  38 8D 83 40 */	la r4, rootPath(r13) /* 804508C0-_SDA_BASE_ */
/* 802D4504  48 09 46 29 */	bl strcpy
/* 802D4508  38 6D 83 40 */	la r3, rootPath(r13) /* 804508C0-_SDA_BASE_ */
/* 802D450C  48 00 00 7C */	b lbl_802D4588
lbl_802D4510:
/* 802D4510  3C 60 80 3D */	lis r3, __lower_map@ha
/* 802D4514  38 63 2D 18 */	addi r3, r3, __lower_map@l
/* 802D4518  3B FF 00 01 */	addi r31, r31, 1
/* 802D451C  48 00 00 38 */	b lbl_802D4554
lbl_802D4520:
/* 802D4520  2C 1E 00 01 */	cmpwi r30, 1
/* 802D4524  40 81 00 2C */	ble lbl_802D4550
/* 802D4528  7C 80 07 74 */	extsb r0, r4
/* 802D452C  2C 00 FF FF */	cmpwi r0, -1
/* 802D4530  40 82 00 0C */	bne lbl_802D453C
/* 802D4534  38 00 FF FF */	li r0, -1
/* 802D4538  48 00 00 0C */	b lbl_802D4544
lbl_802D453C:
/* 802D453C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802D4540  7C 03 00 AE */	lbzx r0, r3, r0
lbl_802D4544:
/* 802D4544  98 1D 00 00 */	stb r0, 0(r29)
/* 802D4548  3B BD 00 01 */	addi r29, r29, 1
/* 802D454C  3B DE FF FF */	addi r30, r30, -1
lbl_802D4550:
/* 802D4550  3B FF 00 01 */	addi r31, r31, 1
lbl_802D4554:
/* 802D4554  88 9F 00 00 */	lbz r4, 0(r31)
/* 802D4558  7C 80 07 75 */	extsb. r0, r4
/* 802D455C  41 82 00 10 */	beq lbl_802D456C
/* 802D4560  7C 80 07 74 */	extsb r0, r4
/* 802D4564  2C 00 00 2F */	cmpwi r0, 0x2f
/* 802D4568  40 82 FF B8 */	bne lbl_802D4520
lbl_802D456C:
/* 802D456C  38 00 00 00 */	li r0, 0
/* 802D4570  98 1D 00 00 */	stb r0, 0(r29)
/* 802D4574  88 1F 00 00 */	lbz r0, 0(r31)
/* 802D4578  7C 00 07 75 */	extsb. r0, r0
/* 802D457C  40 82 00 08 */	bne lbl_802D4584
/* 802D4580  3B ED 83 40 */	la r31, rootPath(r13) /* 804508C0-_SDA_BASE_ */
lbl_802D4584:
/* 802D4584  7F E3 FB 78 */	mr r3, r31
lbl_802D4588:
/* 802D4588  39 61 00 20 */	addi r11, r1, 0x20
/* 802D458C  48 08 DC 9D */	bl _restgpr_29
/* 802D4590  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D4594  7C 08 03 A6 */	mtlr r0
/* 802D4598  38 21 00 20 */	addi r1, r1, 0x20
/* 802D459C  4E 80 00 20 */	blr 
