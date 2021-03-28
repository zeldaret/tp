lbl_80BC84C0:
/* 80BC84C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC84C4  7C 08 02 A6 */	mflr r0
/* 80BC84C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC84CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC84D0  7C 7F 1B 78 */	mr r31, r3
/* 80BC84D4  48 00 04 DD */	bl moveSwingFall__17daObjChandelier_cFv
/* 80BC84D8  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80BC84DC  2C 03 00 3C */	cmpwi r3, 0x3c
/* 80BC84E0  41 80 00 20 */	blt lbl_80BC8500
/* 80BC84E4  38 00 00 04 */	li r0, 4
/* 80BC84E8  98 1F 06 09 */	stb r0, 0x609(r31)
/* 80BC84EC  38 00 00 00 */	li r0, 0
/* 80BC84F0  90 1F 06 00 */	stw r0, 0x600(r31)
/* 80BC84F4  7F E3 FB 78 */	mr r3, r31
/* 80BC84F8  48 00 06 29 */	bl hookSwingInitParm__17daObjChandelier_cFv
/* 80BC84FC  48 00 00 0C */	b lbl_80BC8508
lbl_80BC8500:
/* 80BC8500  38 03 00 01 */	addi r0, r3, 1
/* 80BC8504  90 1F 06 00 */	stw r0, 0x600(r31)
lbl_80BC8508:
/* 80BC8508  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC850C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC8510  7C 08 03 A6 */	mtlr r0
/* 80BC8514  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC8518  4E 80 00 20 */	blr 
