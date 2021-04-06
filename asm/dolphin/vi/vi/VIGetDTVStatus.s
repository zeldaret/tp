lbl_8034DB04:
/* 8034DB04  7C 08 02 A6 */	mflr r0
/* 8034DB08  90 01 00 04 */	stw r0, 4(r1)
/* 8034DB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034DB10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034DB14  4B FE FB E1 */	bl OSDisableInterrupts
/* 8034DB18  3C 80 CC 00 */	lis r4, 0xCC00 /* 0xCC00206E@ha */
/* 8034DB1C  A0 04 20 6E */	lhz r0, 0x206E(r4)  /* 0xCC00206E@l */
/* 8034DB20  54 1F 07 BE */	clrlwi r31, r0, 0x1e
/* 8034DB24  4B FE FB F9 */	bl OSRestoreInterrupts
/* 8034DB28  57 E3 07 FE */	clrlwi r3, r31, 0x1f
/* 8034DB2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034DB30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034DB34  38 21 00 10 */	addi r1, r1, 0x10
/* 8034DB38  7C 08 03 A6 */	mtlr r0
/* 8034DB3C  4E 80 00 20 */	blr 
