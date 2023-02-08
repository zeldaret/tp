lbl_80489E8C:
/* 80489E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80489E90  7C 08 02 A6 */	mflr r0
/* 80489E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80489E98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80489E9C  3B E0 00 00 */	li r31, 0
/* 80489EA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80489EA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80489EA8  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80489EAC  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80489EB0  41 82 00 14 */	beq lbl_80489EC4
/* 80489EB4  4B FF FE 31 */	bl func_80489CE4
/* 80489EB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80489EBC  40 82 00 08 */	bne lbl_80489EC4
/* 80489EC0  3B E0 00 01 */	li r31, 1
lbl_80489EC4:
/* 80489EC4  7F E3 FB 78 */	mr r3, r31
/* 80489EC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80489ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80489ED0  7C 08 03 A6 */	mtlr r0
/* 80489ED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80489ED8  4E 80 00 20 */	blr 
