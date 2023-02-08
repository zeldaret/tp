lbl_80BCEE60:
/* 80BCEE60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCEE64  7C 08 02 A6 */	mflr r0
/* 80BCEE68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCEE6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCEE70  7C 7F 1B 78 */	mr r31, r3
/* 80BCEE74  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80BCEE78  28 03 00 00 */	cmplwi r3, 0
/* 80BCEE7C  41 82 00 40 */	beq lbl_80BCEEBC
/* 80BCEE80  4B 69 93 55 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80BCEE84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BCEE88  41 82 00 34 */	beq lbl_80BCEEBC
/* 80BCEE8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCEE90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCEE94  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BCEE98  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80BCEE9C  4B 4A 53 B5 */	bl Release__4cBgSFP9dBgW_Base
/* 80BCEEA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BCEEA4  41 82 00 18 */	beq lbl_80BCEEBC
/* 80BCEEA8  3C 60 80 BD */	lis r3, d_a_obj_crvfence__stringBase0@ha /* 0x80BD020C@ha */
/* 80BCEEAC  38 63 02 0C */	addi r3, r3, d_a_obj_crvfence__stringBase0@l /* 0x80BD020C@l */
/* 80BCEEB0  38 63 00 09 */	addi r3, r3, 9
/* 80BCEEB4  4C C6 31 82 */	crclr 6
/* 80BCEEB8  4B 43 7C 05 */	bl OSReport
lbl_80BCEEBC:
/* 80BCEEBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCEEC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCEEC4  7C 08 03 A6 */	mtlr r0
/* 80BCEEC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCEECC  4E 80 00 20 */	blr 
