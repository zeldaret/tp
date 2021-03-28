lbl_80ACDC6C:
/* 80ACDC6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACDC70  7C 08 02 A6 */	mflr r0
/* 80ACDC74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACDC78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACDC7C  3B E0 00 00 */	li r31, 0
/* 80ACDC80  3C 60 80 AD */	lis r3, struct_80ACFF04+0x0@ha
/* 80ACDC84  38 63 FF 04 */	addi r3, r3, struct_80ACFF04+0x0@l
/* 80ACDC88  38 63 00 83 */	addi r3, r3, 0x83
/* 80ACDC8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ACDC90  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80ACDC94  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80ACDC98  4B 89 AC FC */	b strcmp
/* 80ACDC9C  2C 03 00 00 */	cmpwi r3, 0
/* 80ACDCA0  40 82 00 2C */	bne lbl_80ACDCCC
/* 80ACDCA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ACDCA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ACDCAC  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80ACDCB0  2C 00 00 01 */	cmpwi r0, 1
/* 80ACDCB4  40 82 00 18 */	bne lbl_80ACDCCC
/* 80ACDCB8  38 60 00 00 */	li r3, 0
/* 80ACDCBC  4B 55 EC C0 */	b getLayerNo__14dComIfG_play_cFi
/* 80ACDCC0  2C 03 00 00 */	cmpwi r3, 0
/* 80ACDCC4  40 82 00 08 */	bne lbl_80ACDCCC
/* 80ACDCC8  3B E0 00 01 */	li r31, 1
lbl_80ACDCCC:
/* 80ACDCCC  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80ACDCD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACDCD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACDCD8  7C 08 03 A6 */	mtlr r0
/* 80ACDCDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACDCE0  4E 80 00 20 */	blr 
