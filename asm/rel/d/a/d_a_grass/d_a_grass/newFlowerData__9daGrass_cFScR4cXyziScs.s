lbl_8051C280:
/* 8051C280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C284  7C 08 02 A6 */	mflr r0
/* 8051C288  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C28C  3C 60 80 45 */	lis r3, m_flower__9daGrass_c@ha /* 0x80450DB4@ha */
/* 8051C290  38 63 0D B4 */	addi r3, r3, m_flower__9daGrass_c@l /* 0x80450DB4@l */
/* 8051C294  80 63 00 00 */	lwz r3, 0(r3)
/* 8051C298  48 00 6B 91 */	bl newData__16dFlower_packet_cFScR4cXyziScs
/* 8051C29C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C2A0  7C 08 03 A6 */	mtlr r0
/* 8051C2A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C2A8  4E 80 00 20 */	blr 
