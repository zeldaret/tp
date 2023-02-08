lbl_801D6EDC:
/* 801D6EDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D6EE0  7C 08 02 A6 */	mflr r0
/* 801D6EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D6EE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D6EEC  7C 9F 23 78 */	mr r31, r4
/* 801D6EF0  80 63 00 08 */	lwz r3, 8(r3)
/* 801D6EF4  3C 80 6F 74 */	lis r4, 0x6F74 /* 0x6F745F30@ha */
/* 801D6EF8  38 C4 5F 30 */	addi r6, r4, 0x5F30 /* 0x6F745F30@l */
/* 801D6EFC  38 A0 73 70 */	li r5, 0x7370
/* 801D6F00  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6F04  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D6F08  7D 89 03 A6 */	mtctr r12
/* 801D6F0C  4E 80 04 21 */	bctrl 
/* 801D6F10  7F E4 FB 78 */	mr r4, r31
/* 801D6F14  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6F18  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801D6F1C  7D 89 03 A6 */	mtctr r12
/* 801D6F20  4E 80 04 21 */	bctrl 
/* 801D6F24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D6F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D6F2C  7C 08 03 A6 */	mtlr r0
/* 801D6F30  38 21 00 10 */	addi r1, r1, 0x10
/* 801D6F34  4E 80 00 20 */	blr 
