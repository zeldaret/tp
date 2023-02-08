lbl_8051BF68:
/* 8051BF68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051BF6C  7C 08 02 A6 */	mflr r0
/* 8051BF70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BF74  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha /* 0x80450DB0@ha */
/* 8051BF78  38 63 0D B0 */	addi r3, r3, m_grass__9daGrass_c@l /* 0x80450DB0@l */
/* 8051BF7C  80 63 00 00 */	lwz r3, 0(r3)
/* 8051BF80  28 03 00 00 */	cmplwi r3, 0
/* 8051BF84  41 82 00 28 */	beq lbl_8051BFAC
/* 8051BF88  41 82 00 18 */	beq lbl_8051BFA0
/* 8051BF8C  38 80 00 01 */	li r4, 1
/* 8051BF90  81 83 00 00 */	lwz r12, 0(r3)
/* 8051BF94  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8051BF98  7D 89 03 A6 */	mtctr r12
/* 8051BF9C  4E 80 04 21 */	bctrl 
lbl_8051BFA0:
/* 8051BFA0  38 00 00 00 */	li r0, 0
/* 8051BFA4  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha /* 0x80450DB0@ha */
/* 8051BFA8  90 03 0D B0 */	stw r0, m_grass__9daGrass_c@l(r3)  /* 0x80450DB0@l */
lbl_8051BFAC:
/* 8051BFAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051BFB0  7C 08 03 A6 */	mtlr r0
/* 8051BFB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8051BFB8  4E 80 00 20 */	blr 
