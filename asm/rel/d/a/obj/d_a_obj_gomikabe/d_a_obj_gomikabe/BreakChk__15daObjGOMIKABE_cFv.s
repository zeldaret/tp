lbl_80BFE4C4:
/* 80BFE4C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BFE4C8  7C 08 02 A6 */	mflr r0
/* 80BFE4CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFE4D0  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFE4D4  4B 76 3D 09 */	bl _savegpr_29
/* 80BFE4D8  7C 7D 1B 78 */	mr r29, r3
/* 80BFE4DC  3B C0 00 00 */	li r30, 0
/* 80BFE4E0  3B E0 00 00 */	li r31, 0
lbl_80BFE4E4:
/* 80BFE4E4  38 7F 0F F4 */	addi r3, r31, 0xff4
/* 80BFE4E8  7C 7D 1A 14 */	add r3, r29, r3
/* 80BFE4EC  4B 48 5F 75 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BFE4F0  28 03 00 00 */	cmplwi r3, 0
/* 80BFE4F4  41 82 00 10 */	beq lbl_80BFE504
/* 80BFE4F8  7F A3 EB 78 */	mr r3, r29
/* 80BFE4FC  48 00 00 31 */	bl BreakSet__15daObjGOMIKABE_cFv
/* 80BFE500  48 00 00 14 */	b lbl_80BFE514
lbl_80BFE504:
/* 80BFE504  3B DE 00 01 */	addi r30, r30, 1
/* 80BFE508  2C 1E 00 03 */	cmpwi r30, 3
/* 80BFE50C  3B FF 01 38 */	addi r31, r31, 0x138
/* 80BFE510  41 80 FF D4 */	blt lbl_80BFE4E4
lbl_80BFE514:
/* 80BFE514  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFE518  4B 76 3D 11 */	bl _restgpr_29
/* 80BFE51C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFE520  7C 08 03 A6 */	mtlr r0
/* 80BFE524  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFE528  4E 80 00 20 */	blr 
