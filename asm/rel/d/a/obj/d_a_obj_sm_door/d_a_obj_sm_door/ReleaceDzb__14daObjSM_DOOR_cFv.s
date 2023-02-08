lbl_80CD8A90:
/* 80CD8A90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD8A94  7C 08 02 A6 */	mflr r0
/* 80CD8A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD8A9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD8AA0  7C 7F 1B 78 */	mr r31, r3
/* 80CD8AA4  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80CD8AA8  28 03 00 00 */	cmplwi r3, 0
/* 80CD8AAC  41 82 00 34 */	beq lbl_80CD8AE0
/* 80CD8AB0  4B 58 F7 25 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80CD8AB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CD8AB8  41 82 00 28 */	beq lbl_80CD8AE0
/* 80CD8ABC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD8AC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD8AC4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CD8AC8  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80CD8ACC  4B 39 B7 85 */	bl Release__4cBgSFP9dBgW_Base
/* 80CD8AD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CD8AD4  41 82 00 0C */	beq lbl_80CD8AE0
/* 80CD8AD8  38 60 00 00 */	li r3, 0
/* 80CD8ADC  48 00 00 08 */	b lbl_80CD8AE4
lbl_80CD8AE0:
/* 80CD8AE0  38 60 00 01 */	li r3, 1
lbl_80CD8AE4:
/* 80CD8AE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD8AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD8AEC  7C 08 03 A6 */	mtlr r0
/* 80CD8AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD8AF4  4E 80 00 20 */	blr 
