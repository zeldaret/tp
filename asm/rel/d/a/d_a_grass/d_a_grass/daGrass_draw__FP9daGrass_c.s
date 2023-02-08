lbl_8051D77C:
/* 8051D77C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051D780  7C 08 02 A6 */	mflr r0
/* 8051D784  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051D788  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051D78C  7C 7F 1B 78 */	mr r31, r3
/* 8051D790  4B FF E8 E5 */	bl drawGrass__9daGrass_cFv
/* 8051D794  7F E3 FB 78 */	mr r3, r31
/* 8051D798  4B FF EA B5 */	bl drawFlower__9daGrass_cFv
/* 8051D79C  38 60 00 01 */	li r3, 1
/* 8051D7A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051D7A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051D7A8  7C 08 03 A6 */	mtlr r0
/* 8051D7AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8051D7B0  4E 80 00 20 */	blr 
