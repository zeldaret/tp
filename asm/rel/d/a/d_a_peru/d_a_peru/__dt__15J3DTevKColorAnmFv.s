lbl_80D474A0:
/* 80D474A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D474A4  7C 08 02 A6 */	mflr r0
/* 80D474A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D474AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D474B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D474B4  41 82 00 10 */	beq lbl_80D474C4
/* 80D474B8  7C 80 07 35 */	extsh. r0, r4
/* 80D474BC  40 81 00 08 */	ble lbl_80D474C4
/* 80D474C0  4B 58 78 7D */	bl __dl__FPv
lbl_80D474C4:
/* 80D474C4  7F E3 FB 78 */	mr r3, r31
/* 80D474C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D474CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D474D0  7C 08 03 A6 */	mtlr r0
/* 80D474D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D474D8  4E 80 00 20 */	blr 
