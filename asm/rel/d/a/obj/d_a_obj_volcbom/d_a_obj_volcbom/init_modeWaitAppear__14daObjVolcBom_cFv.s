lbl_80D24B18:
/* 80D24B18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D24B1C  7C 08 02 A6 */	mflr r0
/* 80D24B20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D24B24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D24B28  7C 7F 1B 78 */	mr r31, r3
/* 80D24B2C  48 00 07 05 */	bl disappear__14daObjVolcBom_cFv
/* 80D24B30  7F E3 FB 78 */	mr r3, r31
/* 80D24B34  48 00 06 45 */	bl clrDzb__14daObjVolcBom_cFv
/* 80D24B38  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80D24B3C  3C 60 80 D2 */	lis r3, lit_3958@ha /* 0x80D26B90@ha */
/* 80D24B40  C0 03 6B 90 */	lfs f0, lit_3958@l(r3)  /* 0x80D26B90@l */
/* 80D24B44  EC 01 00 2A */	fadds f0, f1, f0
/* 80D24B48  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80D24B4C  38 00 00 00 */	li r0, 0
/* 80D24B50  98 1F 09 5D */	stb r0, 0x95d(r31)
/* 80D24B54  98 1F 09 61 */	stb r0, 0x961(r31)
/* 80D24B58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D24B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D24B60  7C 08 03 A6 */	mtlr r0
/* 80D24B64  38 21 00 10 */	addi r1, r1, 0x10
/* 80D24B68  4E 80 00 20 */	blr 
