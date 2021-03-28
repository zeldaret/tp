lbl_8051C140:
/* 8051C140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C144  7C 08 02 A6 */	mflr r0
/* 8051C148  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C14C  3C 60 80 45 */	lis r3, m_flower__9daGrass_c@ha
/* 8051C150  38 63 0D B4 */	addi r3, r3, m_flower__9daGrass_c@l
/* 8051C154  80 63 00 00 */	lwz r3, 0(r3)
/* 8051C158  28 03 00 00 */	cmplwi r3, 0
/* 8051C15C  41 82 00 28 */	beq lbl_8051C184
/* 8051C160  41 82 00 18 */	beq lbl_8051C178
/* 8051C164  38 80 00 01 */	li r4, 1
/* 8051C168  81 83 00 00 */	lwz r12, 0(r3)
/* 8051C16C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8051C170  7D 89 03 A6 */	mtctr r12
/* 8051C174  4E 80 04 21 */	bctrl 
lbl_8051C178:
/* 8051C178  38 00 00 00 */	li r0, 0
/* 8051C17C  3C 60 80 45 */	lis r3, m_flower__9daGrass_c@ha
/* 8051C180  90 03 0D B4 */	stw r0, m_flower__9daGrass_c@l(r3)
lbl_8051C184:
/* 8051C184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C188  7C 08 03 A6 */	mtlr r0
/* 8051C18C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C190  4E 80 00 20 */	blr 
