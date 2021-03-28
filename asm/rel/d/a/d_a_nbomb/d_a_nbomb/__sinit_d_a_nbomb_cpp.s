lbl_804CC268:
/* 804CC268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CC26C  7C 08 02 A6 */	mflr r0
/* 804CC270  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CC274  4B BD 16 10 */	b getAlinkArcName__9daAlink_cFv
/* 804CC278  3C 80 80 4D */	lis r4, m_arcNameList__9daNbomb_c@ha
/* 804CC27C  90 64 C5 18 */	stw r3, m_arcNameList__9daNbomb_c@l(r4)
/* 804CC280  4B BD 16 04 */	b getAlinkArcName__9daAlink_cFv
/* 804CC284  3C 80 80 4D */	lis r4, m_arcNameList__9daNbomb_c@ha
/* 804CC288  38 84 C5 18 */	addi r4, r4, m_arcNameList__9daNbomb_c@l
/* 804CC28C  90 64 00 04 */	stw r3, 4(r4)
/* 804CC290  4B BD 15 F4 */	b getAlinkArcName__9daAlink_cFv
/* 804CC294  3C 80 80 4D */	lis r4, m_arcNameList__9daNbomb_c@ha
/* 804CC298  38 84 C5 18 */	addi r4, r4, m_arcNameList__9daNbomb_c@l
/* 804CC29C  90 64 00 08 */	stw r3, 8(r4)
/* 804CC2A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CC2A4  7C 08 03 A6 */	mtlr r0
/* 804CC2A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804CC2AC  4E 80 00 20 */	blr 
