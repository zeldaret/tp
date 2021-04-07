lbl_80CBFEC4:
/* 80CBFEC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBFEC8  7C 08 02 A6 */	mflr r0
/* 80CBFECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBFED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBFED4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CBFED8  7C 7E 1B 78 */	mr r30, r3
/* 80CBFEDC  7C 9F 23 78 */	mr r31, r4
/* 80CBFEE0  48 00 00 3D */	bl procMain__11daRotTrap_cFv
/* 80CBFEE4  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CBFEE8  38 03 00 24 */	addi r0, r3, 0x24
/* 80CBFEEC  90 1F 00 00 */	stw r0, 0(r31)
/* 80CBFEF0  7F C3 F3 78 */	mr r3, r30
/* 80CBFEF4  4B FF FA 4D */	bl setBaseMtx__11daRotTrap_cFv
/* 80CBFEF8  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80CBFEFC  4B 3C 39 35 */	bl Move__10dCcD_GSttsFv
/* 80CBFF00  38 60 00 01 */	li r3, 1
/* 80CBFF04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBFF08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CBFF0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBFF10  7C 08 03 A6 */	mtlr r0
/* 80CBFF14  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBFF18  4E 80 00 20 */	blr 
