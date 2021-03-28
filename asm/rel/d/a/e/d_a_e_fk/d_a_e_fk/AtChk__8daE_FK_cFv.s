lbl_806B9D00:
/* 806B9D00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806B9D04  7C 08 02 A6 */	mflr r0
/* 806B9D08  90 01 00 24 */	stw r0, 0x24(r1)
/* 806B9D0C  39 61 00 20 */	addi r11, r1, 0x20
/* 806B9D10  4B CA 84 C4 */	b _savegpr_27
/* 806B9D14  7C 7B 1B 78 */	mr r27, r3
/* 806B9D18  3B 80 00 00 */	li r28, 0
/* 806B9D1C  3B E0 00 00 */	li r31, 0
/* 806B9D20  3B C0 00 1E */	li r30, 0x1e
lbl_806B9D24:
/* 806B9D24  3B BF 08 88 */	addi r29, r31, 0x888
/* 806B9D28  7F BB EA 14 */	add r29, r27, r29
/* 806B9D2C  7F A3 EB 78 */	mr r3, r29
/* 806B9D30  4B 9C A5 90 */	b ChkAtHit__12dCcD_GObjInfFv
/* 806B9D34  28 03 00 00 */	cmplwi r3, 0
/* 806B9D38  41 82 00 1C */	beq lbl_806B9D54
/* 806B9D3C  B3 DB 05 B8 */	sth r30, 0x5b8(r27)
/* 806B9D40  7F A3 EB 78 */	mr r3, r29
/* 806B9D44  81 9D 00 3C */	lwz r12, 0x3c(r29)
/* 806B9D48  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 806B9D4C  7D 89 03 A6 */	mtctr r12
/* 806B9D50  4E 80 04 21 */	bctrl 
lbl_806B9D54:
/* 806B9D54  3B 9C 00 01 */	addi r28, r28, 1
/* 806B9D58  2C 1C 00 02 */	cmpwi r28, 2
/* 806B9D5C  3B FF 01 38 */	addi r31, r31, 0x138
/* 806B9D60  41 80 FF C4 */	blt lbl_806B9D24
/* 806B9D64  39 61 00 20 */	addi r11, r1, 0x20
/* 806B9D68  4B CA 84 B8 */	b _restgpr_27
/* 806B9D6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806B9D70  7C 08 03 A6 */	mtlr r0
/* 806B9D74  38 21 00 20 */	addi r1, r1, 0x20
/* 806B9D78  4E 80 00 20 */	blr 
