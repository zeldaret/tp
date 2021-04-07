lbl_8051C040:
/* 8051C040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C044  7C 08 02 A6 */	mflr r0
/* 8051C048  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C04C  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha /* 0x80450DB0@ha */
/* 8051C050  38 63 0D B0 */	addi r3, r3, m_grass__9daGrass_c@l /* 0x80450DB0@l */
/* 8051C054  80 63 00 00 */	lwz r3, 0(r3)
/* 8051C058  28 03 00 00 */	cmplwi r3, 0
/* 8051C05C  41 82 00 08 */	beq lbl_8051C064
/* 8051C060  48 00 3A 5D */	bl calc__15dGrass_packet_cFv
lbl_8051C064:
/* 8051C064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C068  7C 08 03 A6 */	mtlr r0
/* 8051C06C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C070  4E 80 00 20 */	blr 
