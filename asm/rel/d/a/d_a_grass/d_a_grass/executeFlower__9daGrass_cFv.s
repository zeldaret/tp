lbl_8051C218:
/* 8051C218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C21C  7C 08 02 A6 */	mflr r0
/* 8051C220  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C224  3C 60 80 45 */	lis r3, m_flower__9daGrass_c@ha /* 0x80450DB4@ha */
/* 8051C228  38 63 0D B4 */	addi r3, r3, m_flower__9daGrass_c@l /* 0x80450DB4@l */
/* 8051C22C  80 63 00 00 */	lwz r3, 0(r3)
/* 8051C230  28 03 00 00 */	cmplwi r3, 0
/* 8051C234  41 82 00 08 */	beq lbl_8051C23C
/* 8051C238  48 00 65 3D */	bl calc__16dFlower_packet_cFv
lbl_8051C23C:
/* 8051C23C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C240  7C 08 03 A6 */	mtlr r0
/* 8051C244  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C248  4E 80 00 20 */	blr 
