lbl_80739C70:
/* 80739C70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80739C74  7C 08 02 A6 */	mflr r0
/* 80739C78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80739C7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80739C80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80739C84  41 82 00 1C */	beq lbl_80739CA0
/* 80739C88  3C A0 80 74 */	lis r5, __vt__10cCcD_GStts@ha
/* 80739C8C  38 05 A0 88 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80739C90  90 1F 00 00 */	stw r0, 0(r31)
/* 80739C94  7C 80 07 35 */	extsh. r0, r4
/* 80739C98  40 81 00 08 */	ble lbl_80739CA0
/* 80739C9C  4B B9 50 A0 */	b __dl__FPv
lbl_80739CA0:
/* 80739CA0  7F E3 FB 78 */	mr r3, r31
/* 80739CA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80739CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80739CAC  7C 08 03 A6 */	mtlr r0
/* 80739CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80739CB4  4E 80 00 20 */	blr 
