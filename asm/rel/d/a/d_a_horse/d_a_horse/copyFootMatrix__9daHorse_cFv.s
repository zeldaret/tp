lbl_8083EA78:
/* 8083EA78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8083EA7C  7C 08 02 A6 */	mflr r0
/* 8083EA80  90 01 00 34 */	stw r0, 0x34(r1)
/* 8083EA84  39 61 00 30 */	addi r11, r1, 0x30
/* 8083EA88  4B B2 37 44 */	b _savegpr_25
/* 8083EA8C  7C 79 1B 78 */	mr r25, r3
/* 8083EA90  3B 99 13 24 */	addi r28, r25, 0x1324
/* 8083EA94  3B 60 00 00 */	li r27, 0
/* 8083EA98  3B E0 00 00 */	li r31, 0
/* 8083EA9C  3C 60 80 84 */	lis r3, m_footJointTable__9daHorse_c@ha
/* 8083EAA0  3B A3 54 C0 */	addi r29, r3, m_footJointTable__9daHorse_c@l
lbl_8083EAA4:
/* 8083EAA4  3B 40 00 00 */	li r26, 0
/* 8083EAA8  3B C0 00 00 */	li r30, 0
lbl_8083EAAC:
/* 8083EAAC  80 79 05 70 */	lwz r3, 0x570(r25)
/* 8083EAB0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8083EAB4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8083EAB8  7C 1D FA 2E */	lhzx r0, r29, r31
/* 8083EABC  7C 1A 02 14 */	add r0, r26, r0
/* 8083EAC0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8083EAC4  7C 63 02 14 */	add r3, r3, r0
/* 8083EAC8  38 9E 00 24 */	addi r4, r30, 0x24
/* 8083EACC  7C 9C 22 14 */	add r4, r28, r4
/* 8083EAD0  4B B0 79 E0 */	b PSMTXCopy
/* 8083EAD4  3B 5A 00 01 */	addi r26, r26, 1
/* 8083EAD8  2C 1A 00 04 */	cmpwi r26, 4
/* 8083EADC  3B DE 00 30 */	addi r30, r30, 0x30
/* 8083EAE0  41 80 FF CC */	blt lbl_8083EAAC
/* 8083EAE4  3B 7B 00 01 */	addi r27, r27, 1
/* 8083EAE8  2C 1B 00 04 */	cmpwi r27, 4
/* 8083EAEC  3B FF 00 02 */	addi r31, r31, 2
/* 8083EAF0  3B 9C 00 E4 */	addi r28, r28, 0xe4
/* 8083EAF4  41 80 FF B0 */	blt lbl_8083EAA4
/* 8083EAF8  39 61 00 30 */	addi r11, r1, 0x30
/* 8083EAFC  4B B2 37 1C */	b _restgpr_25
/* 8083EB00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8083EB04  7C 08 03 A6 */	mtlr r0
/* 8083EB08  38 21 00 30 */	addi r1, r1, 0x30
/* 8083EB0C  4E 80 00 20 */	blr 
