lbl_8051D6CC:
/* 8051D6CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051D6D0  7C 08 02 A6 */	mflr r0
/* 8051D6D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051D6D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051D6DC  7C 7F 1B 78 */	mr r31, r3
/* 8051D6E0  3C 80 80 45 */	lis r4, m_myObj__9daGrass_c@ha
/* 8051D6E4  80 04 0D AC */	lwz r0, m_myObj__9daGrass_c@l(r4)
/* 8051D6E8  7C 00 F8 40 */	cmplw r0, r31
/* 8051D6EC  40 82 00 1C */	bne lbl_8051D708
/* 8051D6F0  4B FF E8 79 */	bl deleteGrass__9daGrass_cFv
/* 8051D6F4  7F E3 FB 78 */	mr r3, r31
/* 8051D6F8  4B FF EA 49 */	bl deleteFlower__9daGrass_cFv
/* 8051D6FC  38 00 00 00 */	li r0, 0
/* 8051D700  3C 60 80 45 */	lis r3, m_myObj__9daGrass_c@ha
/* 8051D704  90 03 0D AC */	stw r0, m_myObj__9daGrass_c@l(r3)
lbl_8051D708:
/* 8051D708  38 60 00 01 */	li r3, 1
/* 8051D70C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051D710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051D714  7C 08 03 A6 */	mtlr r0
/* 8051D718  38 21 00 10 */	addi r1, r1, 0x10
/* 8051D71C  4E 80 00 20 */	blr 
