lbl_800A4C40:
/* 800A4C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A4C44  7C 08 02 A6 */	mflr r0
/* 800A4C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A4C4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A4C50  93 C1 00 08 */	stw r30, 8(r1)
/* 800A4C54  7C 7E 1B 78 */	mr r30, r3
/* 800A4C58  3B E0 00 00 */	li r31, 0
/* 800A4C5C  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 800A4C60  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 800A4C64  38 63 01 06 */	addi r3, r3, 0x106
/* 800A4C68  4B FF 8D F9 */	bl checkStageName__9daAlink_cFPCc
/* 800A4C6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A4C70  41 82 00 28 */	beq lbl_800A4C98
/* 800A4C74  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 800A4C78  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 800A4C7C  40 82 00 1C */	bne lbl_800A4C98
/* 800A4C80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A4C84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A4C88  A8 03 0D B8 */	lha r0, 0xdb8(r3)
/* 800A4C8C  2C 00 00 02 */	cmpwi r0, 2
/* 800A4C90  40 82 00 08 */	bne lbl_800A4C98
/* 800A4C94  3B E0 00 01 */	li r31, 1
lbl_800A4C98:
/* 800A4C98  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800A4C9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A4CA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A4CA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A4CA8  7C 08 03 A6 */	mtlr r0
/* 800A4CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 800A4CB0  4E 80 00 20 */	blr 
