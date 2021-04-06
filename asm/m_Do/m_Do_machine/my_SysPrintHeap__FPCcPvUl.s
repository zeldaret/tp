lbl_8000BCF8:
/* 8000BCF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000BCFC  7C 08 02 A6 */	mflr r0
/* 8000BD00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000BD04  7C 67 1B 78 */	mr r7, r3
/* 8000BD08  7C 86 23 78 */	mr r6, r4
/* 8000BD0C  7C A0 2B 78 */	mr r0, r5
/* 8000BD10  3C 60 80 37 */	lis r3, m_Do_m_Do_machine__stringBase0@ha /* 0x80373DE8@ha */
/* 8000BD14  38 63 3D E8 */	addi r3, r3, m_Do_m_Do_machine__stringBase0@l /* 0x80373DE8@l */
/* 8000BD18  38 63 02 2F */	addi r3, r3, 0x22f
/* 8000BD1C  7C E4 3B 78 */	mr r4, r7
/* 8000BD20  7C C5 33 78 */	mr r5, r6
/* 8000BD24  7C C6 02 14 */	add r6, r6, r0
/* 8000BD28  54 07 B2 BE */	srwi r7, r0, 0xa
/* 8000BD2C  4C C6 31 82 */	crclr 6
/* 8000BD30  4B FF B0 9D */	bl OSReport_System
/* 8000BD34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000BD38  7C 08 03 A6 */	mtlr r0
/* 8000BD3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8000BD40  4E 80 00 20 */	blr 
