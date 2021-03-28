lbl_80017F8C:
/* 80017F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80017F90  7C 08 02 A6 */	mflr r0
/* 80017F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80017F98  3C 60 80 37 */	lis r3, m_Do_m_Do_machine_exception__stringBase0@ha
/* 80017F9C  38 63 44 60 */	addi r3, r3, m_Do_m_Do_machine_exception__stringBase0@l
/* 80017FA0  38 63 00 A5 */	addi r3, r3, 0xa5
/* 80017FA4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80017FA8  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l
/* 80017FAC  38 85 4E 00 */	addi r4, r5, 0x4e00
/* 80017FB0  88 05 4E 0A */	lbz r0, 0x4e0a(r5)
/* 80017FB4  7C 05 07 74 */	extsb r5, r0
/* 80017FB8  4C C6 31 82 */	crclr 6
/* 80017FBC  4B FF FD C1 */	bl print_f__FPCce
/* 80017FC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80017FC4  7C 08 03 A6 */	mtlr r0
/* 80017FC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80017FCC  4E 80 00 20 */	blr 
