lbl_80249F00:
/* 80249F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80249F04  7C 08 02 A6 */	mflr r0
/* 80249F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80249F0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80249F10  7C 7F 1B 78 */	mr r31, r3
/* 80249F14  3C 80 80 3C */	lis r4, __vt__10dMsgFlow_c@ha
/* 80249F18  38 04 1F 40 */	addi r0, r4, __vt__10dMsgFlow_c@l
/* 80249F1C  90 03 00 00 */	stw r0, 0(r3)
/* 80249F20  38 00 00 00 */	li r0, 0
/* 80249F24  98 03 00 48 */	stb r0, 0x48(r3)
/* 80249F28  38 80 00 01 */	li r4, 1
/* 80249F2C  48 00 06 55 */	bl setInitValue__10dMsgFlow_cFi
/* 80249F30  7F E3 FB 78 */	mr r3, r31
/* 80249F34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80249F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80249F3C  7C 08 03 A6 */	mtlr r0
/* 80249F40  38 21 00 10 */	addi r1, r1, 0x10
/* 80249F44  4E 80 00 20 */	blr 
