lbl_8051C0A8:
/* 8051C0A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C0AC  7C 08 02 A6 */	mflr r0
/* 8051C0B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C0B4  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha
/* 8051C0B8  38 63 0D B0 */	addi r3, r3, m_grass__9daGrass_c@l
/* 8051C0BC  80 63 00 00 */	lwz r3, 0(r3)
/* 8051C0C0  48 00 46 B1 */	bl newData__15dGrass_packet_cFR4cXyziUcUcsUc
/* 8051C0C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C0C8  7C 08 03 A6 */	mtlr r0
/* 8051C0CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C0D0  4E 80 00 20 */	blr 
