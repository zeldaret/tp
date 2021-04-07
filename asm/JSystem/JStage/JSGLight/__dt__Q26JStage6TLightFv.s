lbl_80280D28:
/* 80280D28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280D2C  7C 08 02 A6 */	mflr r0
/* 80280D30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280D34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80280D38  93 C1 00 08 */	stw r30, 8(r1)
/* 80280D3C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80280D40  7C 9F 23 78 */	mr r31, r4
/* 80280D44  41 82 00 28 */	beq lbl_80280D6C
/* 80280D48  3C 80 80 3C */	lis r4, __vt__Q26JStage6TLight@ha /* 0x803C4778@ha */
/* 80280D4C  38 04 47 78 */	addi r0, r4, __vt__Q26JStage6TLight@l /* 0x803C4778@l */
/* 80280D50  90 1E 00 00 */	stw r0, 0(r30)
/* 80280D54  38 80 00 00 */	li r4, 0
/* 80280D58  48 00 00 7D */	bl __dt__Q26JStage7TObjectFv
/* 80280D5C  7F E0 07 35 */	extsh. r0, r31
/* 80280D60  40 81 00 0C */	ble lbl_80280D6C
/* 80280D64  7F C3 F3 78 */	mr r3, r30
/* 80280D68  48 04 DF D5 */	bl __dl__FPv
lbl_80280D6C:
/* 80280D6C  7F C3 F3 78 */	mr r3, r30
/* 80280D70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80280D74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80280D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280D7C  7C 08 03 A6 */	mtlr r0
/* 80280D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80280D84  4E 80 00 20 */	blr 
