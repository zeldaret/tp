lbl_800A4BC8:
/* 800A4BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A4BCC  7C 08 02 A6 */	mflr r0
/* 800A4BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A4BD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A4BD8  93 C1 00 08 */	stw r30, 8(r1)
/* 800A4BDC  7C 7E 1B 78 */	mr r30, r3
/* 800A4BE0  3B E0 00 00 */	li r31, 0
/* 800A4BE4  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800A4BE8  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800A4BEC  38 63 04 45 */	addi r3, r3, 0x445
/* 800A4BF0  4B FF 8E 71 */	bl checkStageName__9daAlink_cFPCc
/* 800A4BF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A4BF8  41 82 00 2C */	beq lbl_800A4C24
/* 800A4BFC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 800A4C00  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 800A4C04  2C 00 00 03 */	cmpwi r0, 3
/* 800A4C08  40 82 00 1C */	bne lbl_800A4C24
/* 800A4C0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A4C10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A4C14  A8 03 0D B8 */	lha r0, 0xdb8(r3)
/* 800A4C18  7C 00 07 35 */	extsh. r0, r0
/* 800A4C1C  40 82 00 08 */	bne lbl_800A4C24
/* 800A4C20  3B E0 00 01 */	li r31, 1
lbl_800A4C24:
/* 800A4C24  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800A4C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A4C2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A4C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A4C34  7C 08 03 A6 */	mtlr r0
/* 800A4C38  38 21 00 10 */	addi r1, r1, 0x10
/* 800A4C3C  4E 80 00 20 */	blr 
