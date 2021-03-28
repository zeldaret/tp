lbl_80CD9E84:
/* 80CD9E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD9E88  7C 08 02 A6 */	mflr r0
/* 80CD9E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD9E90  28 03 00 00 */	cmplwi r3, 0
/* 80CD9E94  41 82 00 3C */	beq lbl_80CD9ED0
/* 80CD9E98  80 86 00 10 */	lwz r4, 0x10(r6)
/* 80CD9E9C  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 80CD9EA0  40 82 00 0C */	bne lbl_80CD9EAC
/* 80CD9EA4  54 80 03 DF */	rlwinm. r0, r4, 0, 0xf, 0xf
/* 80CD9EA8  41 82 00 28 */	beq lbl_80CD9ED0
lbl_80CD9EAC:
/* 80CD9EAC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CD9EB0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CD9EB4  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80CD9EB8  28 00 00 00 */	cmplwi r0, 0
/* 80CD9EBC  40 82 00 14 */	bne lbl_80CD9ED0
/* 80CD9EC0  88 03 09 34 */	lbz r0, 0x934(r3)
/* 80CD9EC4  28 00 00 06 */	cmplwi r0, 6
/* 80CD9EC8  41 82 00 08 */	beq lbl_80CD9ED0
/* 80CD9ECC  48 00 0F 89 */	bl actionInitBoomerangCarry__7daKey_cFv
lbl_80CD9ED0:
/* 80CD9ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD9ED4  7C 08 03 A6 */	mtlr r0
/* 80CD9ED8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD9EDC  4E 80 00 20 */	blr 
