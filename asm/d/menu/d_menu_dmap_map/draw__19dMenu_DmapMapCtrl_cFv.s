lbl_801C22A8:
/* 801C22A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C22AC  7C 08 02 A6 */	mflr r0
/* 801C22B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C22B4  88 03 00 EF */	lbz r0, 0xef(r3)
/* 801C22B8  28 00 00 00 */	cmplwi r0, 0
/* 801C22BC  41 82 00 2C */	beq lbl_801C22E8
/* 801C22C0  88 83 00 EB */	lbz r4, 0xeb(r3)
/* 801C22C4  7C 84 07 74 */	extsb r4, r4
/* 801C22C8  88 A3 00 EC */	lbz r5, 0xec(r3)
/* 801C22CC  7C A5 07 74 */	extsb r5, r5
/* 801C22D0  C0 23 00 9C */	lfs f1, 0x9c(r3)
/* 801C22D4  C0 43 00 A0 */	lfs f2, 0xa0(r3)
/* 801C22D8  C0 63 00 BC */	lfs f3, 0xbc(r3)
/* 801C22DC  38 C0 00 01 */	li r6, 1
/* 801C22E0  C0 83 00 D8 */	lfs f4, 0xd8(r3)
/* 801C22E4  4B FF EB 69 */	bl setPos__15dMenu_DmapMap_cFiifffbf
lbl_801C22E8:
/* 801C22E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C22EC  7C 08 03 A6 */	mtlr r0
/* 801C22F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801C22F4  4E 80 00 20 */	blr 
