lbl_80C92C00:
/* 80C92C00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C92C04  7C 08 02 A6 */	mflr r0
/* 80C92C08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C92C0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C92C10  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C92C14  41 82 00 1C */	beq lbl_80C92C30
/* 80C92C18  3C A0 80 C9 */	lis r5, __vt__10cCcD_GStts@ha
/* 80C92C1C  38 05 2D AC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80C92C20  90 1F 00 00 */	stw r0, 0(r31)
/* 80C92C24  7C 80 07 35 */	extsh. r0, r4
/* 80C92C28  40 81 00 08 */	ble lbl_80C92C30
/* 80C92C2C  4B 63 C1 10 */	b __dl__FPv
lbl_80C92C30:
/* 80C92C30  7F E3 FB 78 */	mr r3, r31
/* 80C92C34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C92C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C92C3C  7C 08 03 A6 */	mtlr r0
/* 80C92C40  38 21 00 10 */	addi r1, r1, 0x10
/* 80C92C44  4E 80 00 20 */	blr 
