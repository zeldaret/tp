lbl_8074B8C4:
/* 8074B8C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074B8C8  7C 08 02 A6 */	mflr r0
/* 8074B8CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074B8D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8074B8D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8074B8D8  41 82 00 30 */	beq lbl_8074B908
/* 8074B8DC  3C 60 80 75 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8074C2A4@ha */
/* 8074B8E0  38 03 C2 A4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8074C2A4@l */
/* 8074B8E4  90 1F 00 00 */	stw r0, 0(r31)
/* 8074B8E8  41 82 00 10 */	beq lbl_8074B8F8
/* 8074B8EC  3C 60 80 75 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8074C298@ha */
/* 8074B8F0  38 03 C2 98 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8074C298@l */
/* 8074B8F4  90 1F 00 00 */	stw r0, 0(r31)
lbl_8074B8F8:
/* 8074B8F8  7C 80 07 35 */	extsh. r0, r4
/* 8074B8FC  40 81 00 0C */	ble lbl_8074B908
/* 8074B900  7F E3 FB 78 */	mr r3, r31
/* 8074B904  4B B8 34 39 */	bl __dl__FPv
lbl_8074B908:
/* 8074B908  7F E3 FB 78 */	mr r3, r31
/* 8074B90C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8074B910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074B914  7C 08 03 A6 */	mtlr r0
/* 8074B918  38 21 00 10 */	addi r1, r1, 0x10
/* 8074B91C  4E 80 00 20 */	blr 
