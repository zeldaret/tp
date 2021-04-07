lbl_800056C0:
/* 800056C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800056C4  7C 08 02 A6 */	mflr r0
/* 800056C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800056CC  3C 60 80 37 */	lis r3, m_Do_m_Do_main__stringBase0@ha /* 0x803739A0@ha */
/* 800056D0  38 63 39 A0 */	addi r3, r3, m_Do_m_Do_main__stringBase0@l /* 0x803739A0@l */
/* 800056D4  7C 64 1B 78 */	mr r4, r3
/* 800056D8  48 36 32 BD */	bl strcmp
/* 800056DC  2C 03 00 00 */	cmpwi r3, 0
/* 800056E0  40 82 00 20 */	bne lbl_80005700
/* 800056E4  3C 60 80 37 */	lis r3, m_Do_m_Do_main__stringBase0@ha /* 0x803739A0@ha */
/* 800056E8  38 63 39 A0 */	addi r3, r3, m_Do_m_Do_main__stringBase0@l /* 0x803739A0@l */
/* 800056EC  38 63 00 0A */	addi r3, r3, 0xa
/* 800056F0  7C 64 1B 78 */	mr r4, r3
/* 800056F4  48 36 32 A1 */	bl strcmp
/* 800056F8  2C 03 00 00 */	cmpwi r3, 0
/* 800056FC  41 82 00 1C */	beq lbl_80005718
lbl_80005700:
/* 80005700  3C 60 80 37 */	lis r3, m_Do_m_Do_main__stringBase0@ha /* 0x803739A0@ha */
/* 80005704  38 63 39 A0 */	addi r3, r3, m_Do_m_Do_main__stringBase0@l /* 0x803739A0@l */
/* 80005708  38 63 00 11 */	addi r3, r3, 0x11
/* 8000570C  4C C6 31 82 */	crclr 6
/* 80005710  48 00 14 FD */	bl OSReport_Error
lbl_80005714:
/* 80005714  48 00 00 00 */	b lbl_80005714
lbl_80005718:
/* 80005718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000571C  7C 08 03 A6 */	mtlr r0
/* 80005720  38 21 00 10 */	addi r1, r1, 0x10
/* 80005724  4E 80 00 20 */	blr 
