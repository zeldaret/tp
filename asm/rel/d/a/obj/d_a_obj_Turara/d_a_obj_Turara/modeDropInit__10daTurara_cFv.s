lbl_80B9DA00:
/* 80B9DA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9DA04  7C 08 02 A6 */	mflr r0
/* 80B9DA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9DA0C  88 83 07 44 */	lbz r4, 0x744(r3)
/* 80B9DA10  28 04 00 00 */	cmplwi r4, 0
/* 80B9DA14  41 82 00 10 */	beq lbl_80B9DA24
/* 80B9DA18  38 04 FF FF */	addi r0, r4, -1
/* 80B9DA1C  98 03 07 44 */	stb r0, 0x744(r3)
/* 80B9DA20  48 00 00 14 */	b lbl_80B9DA34
lbl_80B9DA24:
/* 80B9DA24  3C 80 80 BA */	lis r4, lit_3825@ha /* 0x80B9E948@ha */
/* 80B9DA28  C0 04 E9 48 */	lfs f0, lit_3825@l(r4)  /* 0x80B9E948@l */
/* 80B9DA2C  D0 03 07 4C */	stfs f0, 0x74c(r3)
/* 80B9DA30  48 00 00 15 */	bl init_modeDrop__10daTurara_cFv
lbl_80B9DA34:
/* 80B9DA34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9DA38  7C 08 03 A6 */	mtlr r0
/* 80B9DA3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9DA40  4E 80 00 20 */	blr 
