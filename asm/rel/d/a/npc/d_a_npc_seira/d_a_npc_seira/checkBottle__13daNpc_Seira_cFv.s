lbl_80ACC440:
/* 80ACC440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACC444  7C 08 02 A6 */	mflr r0
/* 80ACC448  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACC44C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACC450  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80ACC454  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 80ACC458  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ACC45C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ACC460  38 63 00 28 */	addi r3, r3, 0x28
/* 80ACC464  38 80 00 00 */	li r4, 0
/* 80ACC468  4B 56 67 49 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 80ACC46C  2C 03 00 00 */	cmpwi r3, 0
/* 80ACC470  41 82 00 0C */	beq lbl_80ACC47C
/* 80ACC474  38 60 00 00 */	li r3, 0
/* 80ACC478  48 00 00 1C */	b lbl_80ACC494
lbl_80ACC47C:
/* 80ACC47C  2C 1F 00 00 */	cmpwi r31, 0
/* 80ACC480  41 82 00 08 */	beq lbl_80ACC488
/* 80ACC484  48 00 00 0C */	b lbl_80ACC490
lbl_80ACC488:
/* 80ACC488  38 60 00 01 */	li r3, 1
/* 80ACC48C  48 00 00 08 */	b lbl_80ACC494
lbl_80ACC490:
/* 80ACC490  38 60 00 00 */	li r3, 0
lbl_80ACC494:
/* 80ACC494  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACC498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACC49C  7C 08 03 A6 */	mtlr r0
/* 80ACC4A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACC4A4  4E 80 00 20 */	blr 
