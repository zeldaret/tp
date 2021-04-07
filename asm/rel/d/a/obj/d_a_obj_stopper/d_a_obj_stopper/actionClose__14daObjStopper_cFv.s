lbl_80CEE0E0:
/* 80CEE0E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEE0E4  7C 08 02 A6 */	mflr r0
/* 80CEE0E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEE0EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEE0F0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CEE0F4  7C 7E 1B 78 */	mr r30, r3
/* 80CEE0F8  3C 60 80 CF */	lis r3, lit_3635@ha /* 0x80CEEFA0@ha */
/* 80CEE0FC  3B E3 EF A0 */	addi r31, r3, lit_3635@l /* 0x80CEEFA0@l */
/* 80CEE100  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80CEE104  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80CEE108  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 80CEE10C  4B 58 26 35 */	bl cLib_chaseF__FPfff
/* 80CEE110  38 7E 09 50 */	addi r3, r30, 0x950
/* 80CEE114  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CEE118  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80CEE11C  4B 58 26 25 */	bl cLib_chaseF__FPfff
/* 80CEE120  2C 03 00 00 */	cmpwi r3, 0
/* 80CEE124  41 82 00 0C */	beq lbl_80CEE130
/* 80CEE128  38 00 00 00 */	li r0, 0
/* 80CEE12C  98 1E 09 3C */	stb r0, 0x93c(r30)
lbl_80CEE130:
/* 80CEE130  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEE134  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CEE138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEE13C  7C 08 03 A6 */	mtlr r0
/* 80CEE140  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEE144  4E 80 00 20 */	blr 
