lbl_80CBD1C4:
/* 80CBD1C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBD1C8  7C 08 02 A6 */	mflr r0
/* 80CBD1CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBD1D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBD1D4  7C 7F 1B 78 */	mr r31, r3
/* 80CBD1D8  38 7F 06 5C */	addi r3, r31, 0x65c
/* 80CBD1DC  4B 3C 72 84 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80CBD1E0  28 03 00 00 */	cmplwi r3, 0
/* 80CBD1E4  41 82 00 0C */	beq lbl_80CBD1F0
/* 80CBD1E8  7F E3 FB 78 */	mr r3, r31
/* 80CBD1EC  4B FF FC 41 */	bl BreakSet__16daObjRIVERROCK_cFv
lbl_80CBD1F0:
/* 80CBD1F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBD1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBD1F8  7C 08 03 A6 */	mtlr r0
/* 80CBD1FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBD200  4E 80 00 20 */	blr 
