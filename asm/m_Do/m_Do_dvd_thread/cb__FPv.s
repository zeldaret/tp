lbl_80015A90:
/* 80015A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015A94  7C 08 02 A6 */	mflr r0
/* 80015A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015A9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80015AA0  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80015AA4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80015AA8  7D 89 03 A6 */	mtctr r12
/* 80015AAC  4E 80 04 21 */	bctrl 
/* 80015AB0  2C 03 00 01 */	cmpwi r3, 1
/* 80015AB4  41 82 00 14 */	beq lbl_80015AC8
/* 80015AB8  3C 60 80 37 */	lis r3, m_Do_m_Do_dvd_thread__stringBase0@ha
/* 80015ABC  38 63 41 A8 */	addi r3, r3, m_Do_m_Do_dvd_thread__stringBase0@l
/* 80015AC0  4C C6 31 82 */	crclr 6
/* 80015AC4  4B FF 11 49 */	bl OSReport_Error
lbl_80015AC8:
/* 80015AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80015ACC  7C 08 03 A6 */	mtlr r0
/* 80015AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80015AD4  4E 80 00 20 */	blr 
