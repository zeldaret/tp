lbl_8051C074:
/* 8051C074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C078  7C 08 02 A6 */	mflr r0
/* 8051C07C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C080  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha
/* 8051C084  38 63 0D B0 */	addi r3, r3, m_grass__9daGrass_c@l
/* 8051C088  80 63 00 00 */	lwz r3, 0(r3)
/* 8051C08C  28 03 00 00 */	cmplwi r3, 0
/* 8051C090  41 82 00 08 */	beq lbl_8051C098
/* 8051C094  48 00 3F 9D */	bl update__15dGrass_packet_cFv
lbl_8051C098:
/* 8051C098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C09C  7C 08 03 A6 */	mtlr r0
/* 8051C0A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C0A4  4E 80 00 20 */	blr 
