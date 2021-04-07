lbl_80878D64:
/* 80878D64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878D68  7C 08 02 A6 */	mflr r0
/* 80878D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878D70  4B FF FB 65 */	bl daMP_ActivePlayer_Finish__Fv
/* 80878D74  38 00 00 00 */	li r0, 0
/* 80878D78  3C 60 80 45 */	lis r3, m_myObj__6daMP_c@ha /* 0x80450DB8@ha */
/* 80878D7C  90 03 0D B8 */	stw r0, m_myObj__6daMP_c@l(r3)  /* 0x80450DB8@l */
/* 80878D80  38 60 00 01 */	li r3, 1
/* 80878D84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878D88  7C 08 03 A6 */	mtlr r0
/* 80878D8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80878D90  4E 80 00 20 */	blr 
