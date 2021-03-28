lbl_80C92B9C:
/* 80C92B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C92BA0  7C 08 02 A6 */	mflr r0
/* 80C92BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C92BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C92BAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C92BB0  41 82 00 30 */	beq lbl_80C92BE0
/* 80C92BB4  3C 60 80 C9 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C92BB8  38 03 2D B8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C92BBC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C92BC0  41 82 00 10 */	beq lbl_80C92BD0
/* 80C92BC4  3C 60 80 C9 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C92BC8  38 03 2D AC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C92BCC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C92BD0:
/* 80C92BD0  7C 80 07 35 */	extsh. r0, r4
/* 80C92BD4  40 81 00 0C */	ble lbl_80C92BE0
/* 80C92BD8  7F E3 FB 78 */	mr r3, r31
/* 80C92BDC  4B 63 C1 60 */	b __dl__FPv
lbl_80C92BE0:
/* 80C92BE0  7F E3 FB 78 */	mr r3, r31
/* 80C92BE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C92BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C92BEC  7C 08 03 A6 */	mtlr r0
/* 80C92BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C92BF4  4E 80 00 20 */	blr 
