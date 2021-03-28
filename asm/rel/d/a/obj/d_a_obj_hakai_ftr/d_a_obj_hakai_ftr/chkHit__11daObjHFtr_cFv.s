lbl_80C17E74:
/* 80C17E74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C17E78  7C 08 02 A6 */	mflr r0
/* 80C17E7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C17E80  39 61 00 20 */	addi r11, r1, 0x20
/* 80C17E84  4B 74 A3 58 */	b _savegpr_29
/* 80C17E88  7C 7D 1B 78 */	mr r29, r3
/* 80C17E8C  3B C0 00 00 */	li r30, 0
/* 80C17E90  3B E0 00 00 */	li r31, 0
lbl_80C17E94:
/* 80C17E94  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80C17E98  7C 7D 1A 14 */	add r3, r29, r3
/* 80C17E9C  4B 46 C5 C4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C17EA0  28 03 00 00 */	cmplwi r3, 0
/* 80C17EA4  41 82 00 0C */	beq lbl_80C17EB0
/* 80C17EA8  38 60 00 01 */	li r3, 1
/* 80C17EAC  48 00 00 18 */	b lbl_80C17EC4
lbl_80C17EB0:
/* 80C17EB0  3B DE 00 01 */	addi r30, r30, 1
/* 80C17EB4  2C 1E 00 02 */	cmpwi r30, 2
/* 80C17EB8  3B FF 01 3C */	addi r31, r31, 0x13c
/* 80C17EBC  41 80 FF D8 */	blt lbl_80C17E94
/* 80C17EC0  38 60 00 00 */	li r3, 0
lbl_80C17EC4:
/* 80C17EC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C17EC8  4B 74 A3 60 */	b _restgpr_29
/* 80C17ECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C17ED0  7C 08 03 A6 */	mtlr r0
/* 80C17ED4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C17ED8  4E 80 00 20 */	blr 
