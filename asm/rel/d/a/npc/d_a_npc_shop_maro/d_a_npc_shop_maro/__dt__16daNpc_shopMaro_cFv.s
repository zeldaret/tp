lbl_80AEBF64:
/* 80AEBF64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEBF68  7C 08 02 A6 */	mflr r0
/* 80AEBF6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEBF70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEBF74  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEBF78  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AEBF7C  7C 9F 23 78 */	mr r31, r4
/* 80AEBF80  41 82 00 28 */	beq lbl_80AEBFA8
/* 80AEBF84  3C 80 80 AF */	lis r4, __vt__16daNpc_shopMaro_c@ha /* 0x80AEC9DC@ha */
/* 80AEBF88  38 04 C9 DC */	addi r0, r4, __vt__16daNpc_shopMaro_c@l /* 0x80AEC9DC@l */
/* 80AEBF8C  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AEBF90  38 80 00 00 */	li r4, 0
/* 80AEBF94  4B 6A B5 51 */	bl __dt__13dShopSystem_cFv
/* 80AEBF98  7F E0 07 35 */	extsh. r0, r31
/* 80AEBF9C  40 81 00 0C */	ble lbl_80AEBFA8
/* 80AEBFA0  7F C3 F3 78 */	mr r3, r30
/* 80AEBFA4  4B 7E 2D 99 */	bl __dl__FPv
lbl_80AEBFA8:
/* 80AEBFA8  7F C3 F3 78 */	mr r3, r30
/* 80AEBFAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEBFB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEBFB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEBFB8  7C 08 03 A6 */	mtlr r0
/* 80AEBFBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEBFC0  4E 80 00 20 */	blr 
