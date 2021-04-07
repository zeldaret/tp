lbl_80C92B0C:
/* 80C92B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C92B10  7C 08 02 A6 */	mflr r0
/* 80C92B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C92B18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C92B1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C92B20  41 82 00 1C */	beq lbl_80C92B3C
/* 80C92B24  3C A0 80 C9 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80C92DD0@ha */
/* 80C92B28  38 05 2D D0 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80C92DD0@l */
/* 80C92B2C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C92B30  7C 80 07 35 */	extsh. r0, r4
/* 80C92B34  40 81 00 08 */	ble lbl_80C92B3C
/* 80C92B38  4B 63 C2 05 */	bl __dl__FPv
lbl_80C92B3C:
/* 80C92B3C  7F E3 FB 78 */	mr r3, r31
/* 80C92B40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C92B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C92B48  7C 08 03 A6 */	mtlr r0
/* 80C92B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C92B50  4E 80 00 20 */	blr 
