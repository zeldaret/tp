lbl_80AC6294:
/* 80AC6294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC6298  7C 08 02 A6 */	mflr r0
/* 80AC629C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC62A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC62A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC62A8  41 82 00 1C */	beq lbl_80AC62C4
/* 80AC62AC  3C A0 80 AC */	lis r5, __vt__10cCcD_GStts@ha
/* 80AC62B0  38 05 73 28 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80AC62B4  90 1F 00 00 */	stw r0, 0(r31)
/* 80AC62B8  7C 80 07 35 */	extsh. r0, r4
/* 80AC62BC  40 81 00 08 */	ble lbl_80AC62C4
/* 80AC62C0  4B 80 8A 7C */	b __dl__FPv
lbl_80AC62C4:
/* 80AC62C4  7F E3 FB 78 */	mr r3, r31
/* 80AC62C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC62CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC62D0  7C 08 03 A6 */	mtlr r0
/* 80AC62D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC62D8  4E 80 00 20 */	blr 
