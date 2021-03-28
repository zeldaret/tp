lbl_8099DA24:
/* 8099DA24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099DA28  7C 08 02 A6 */	mflr r0
/* 8099DA2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099DA30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099DA34  7C 7F 1B 79 */	or. r31, r3, r3
/* 8099DA38  41 82 00 10 */	beq lbl_8099DA48
/* 8099DA3C  7C 80 07 35 */	extsh. r0, r4
/* 8099DA40  40 81 00 08 */	ble lbl_8099DA48
/* 8099DA44  4B 93 12 F8 */	b __dl__FPv
lbl_8099DA48:
/* 8099DA48  7F E3 FB 78 */	mr r3, r31
/* 8099DA4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099DA50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099DA54  7C 08 03 A6 */	mtlr r0
/* 8099DA58  38 21 00 10 */	addi r1, r1, 0x10
/* 8099DA5C  4E 80 00 20 */	blr 
