lbl_8074BA20:
/* 8074BA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074BA24  7C 08 02 A6 */	mflr r0
/* 8074BA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074BA2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8074BA30  7C 7F 1B 79 */	or. r31, r3, r3
/* 8074BA34  41 82 00 1C */	beq lbl_8074BA50
/* 8074BA38  3C A0 80 75 */	lis r5, __vt__10cCcD_GStts@ha /* 0x8074C298@ha */
/* 8074BA3C  38 05 C2 98 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x8074C298@l */
/* 8074BA40  90 1F 00 00 */	stw r0, 0(r31)
/* 8074BA44  7C 80 07 35 */	extsh. r0, r4
/* 8074BA48  40 81 00 08 */	ble lbl_8074BA50
/* 8074BA4C  4B B8 32 F1 */	bl __dl__FPv
lbl_8074BA50:
/* 8074BA50  7F E3 FB 78 */	mr r3, r31
/* 8074BA54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8074BA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074BA5C  7C 08 03 A6 */	mtlr r0
/* 8074BA60  38 21 00 10 */	addi r1, r1, 0x10
/* 8074BA64  4E 80 00 20 */	blr 
