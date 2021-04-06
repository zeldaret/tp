lbl_801D9E7C:
/* 801D9E7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D9E80  7C 08 02 A6 */	mflr r0
/* 801D9E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D9E88  7C 64 1B 78 */	mr r4, r3
/* 801D9E8C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801D9E90  28 00 00 C0 */	cmplwi r0, 0xc0
/* 801D9E94  41 80 00 2C */	blt lbl_801D9EC0
/* 801D9E98  28 00 00 D7 */	cmplwi r0, 0xd7
/* 801D9E9C  41 81 00 24 */	bgt lbl_801D9EC0
/* 801D9EA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801D9EA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801D9EA8  38 63 00 CC */	addi r3, r3, 0xcc
/* 801D9EAC  4B E5 A0 1D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801D9EB0  30 03 FF FF */	addic r0, r3, -1
/* 801D9EB4  7C 00 19 10 */	subfe r0, r0, r3
/* 801D9EB8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 801D9EBC  48 00 00 08 */	b lbl_801D9EC4
lbl_801D9EC0:
/* 801D9EC0  38 60 00 00 */	li r3, 0
lbl_801D9EC4:
/* 801D9EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D9EC8  7C 08 03 A6 */	mtlr r0
/* 801D9ECC  38 21 00 10 */	addi r1, r1, 0x10
/* 801D9ED0  4E 80 00 20 */	blr 
