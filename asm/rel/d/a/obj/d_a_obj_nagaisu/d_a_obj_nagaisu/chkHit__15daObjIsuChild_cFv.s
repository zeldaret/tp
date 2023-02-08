lbl_80CA0118:
/* 80CA0118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CA011C  7C 08 02 A6 */	mflr r0
/* 80CA0120  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA0124  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA0128  4B 6C 20 B5 */	bl _savegpr_29
/* 80CA012C  7C 7D 1B 78 */	mr r29, r3
/* 80CA0130  3B C0 00 00 */	li r30, 0
/* 80CA0134  3B E0 00 00 */	li r31, 0
lbl_80CA0138:
/* 80CA0138  38 7F 00 44 */	addi r3, r31, 0x44
/* 80CA013C  7C 7D 1A 14 */	add r3, r29, r3
/* 80CA0140  4B 3E 43 21 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80CA0144  28 03 00 00 */	cmplwi r3, 0
/* 80CA0148  41 82 00 0C */	beq lbl_80CA0154
/* 80CA014C  38 60 00 01 */	li r3, 1
/* 80CA0150  48 00 00 18 */	b lbl_80CA0168
lbl_80CA0154:
/* 80CA0154  3B DE 00 01 */	addi r30, r30, 1
/* 80CA0158  2C 1E 00 02 */	cmpwi r30, 2
/* 80CA015C  3B FF 01 3C */	addi r31, r31, 0x13c
/* 80CA0160  41 80 FF D8 */	blt lbl_80CA0138
/* 80CA0164  38 60 00 00 */	li r3, 0
lbl_80CA0168:
/* 80CA0168  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA016C  4B 6C 20 BD */	bl _restgpr_29
/* 80CA0170  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA0174  7C 08 03 A6 */	mtlr r0
/* 80CA0178  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA017C  4E 80 00 20 */	blr 
