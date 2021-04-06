lbl_80BD4F1C:
/* 80BD4F1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BD4F20  7C 08 02 A6 */	mflr r0
/* 80BD4F24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD4F28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BD4F2C  7C 7F 1B 78 */	mr r31, r3
/* 80BD4F30  38 00 00 01 */	li r0, 1
/* 80BD4F34  98 03 05 DB */	stb r0, 0x5db(r3)
/* 80BD4F38  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80BD4F3C  28 03 00 00 */	cmplwi r3, 0
/* 80BD4F40  41 82 00 40 */	beq lbl_80BD4F80
/* 80BD4F44  4B 69 32 91 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80BD4F48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BD4F4C  41 82 00 34 */	beq lbl_80BD4F80
/* 80BD4F50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD4F54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD4F58  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BD4F5C  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80BD4F60  4B 49 F2 F1 */	bl Release__4cBgSFP9dBgW_Base
/* 80BD4F64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BD4F68  41 82 00 18 */	beq lbl_80BD4F80
/* 80BD4F6C  3C 60 80 BD */	lis r3, d_a_obj_crvlh_up__stringBase0@ha /* 0x80BD5A64@ha */
/* 80BD4F70  38 63 5A 64 */	addi r3, r3, d_a_obj_crvlh_up__stringBase0@l /* 0x80BD5A64@l */
/* 80BD4F74  38 63 00 09 */	addi r3, r3, 9
/* 80BD4F78  4C C6 31 82 */	crclr 6
/* 80BD4F7C  4B 43 1B 41 */	bl OSReport
lbl_80BD4F80:
/* 80BD4F80  3C 60 80 BD */	lis r3, lit_3672@ha /* 0x80BD59FC@ha */
/* 80BD4F84  C0 23 59 FC */	lfs f1, lit_3672@l(r3)  /* 0x80BD59FC@l */
/* 80BD4F88  4B 69 2A 05 */	bl cM_rndFX__Ff
/* 80BD4F8C  FC 00 08 1E */	fctiwz f0, f1
/* 80BD4F90  D8 01 00 08 */	stfd f0, 8(r1)
/* 80BD4F94  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80BD4F98  B0 1F 05 D6 */	sth r0, 0x5d6(r31)
/* 80BD4F9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BD4FA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD4FA4  7C 08 03 A6 */	mtlr r0
/* 80BD4FA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80BD4FAC  4E 80 00 20 */	blr 
