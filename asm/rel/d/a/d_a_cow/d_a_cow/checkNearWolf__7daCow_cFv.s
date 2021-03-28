lbl_8065ACC8:
/* 8065ACC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8065ACCC  7C 08 02 A6 */	mflr r0
/* 8065ACD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8065ACD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8065ACD8  7C 7F 1B 78 */	mr r31, r3
/* 8065ACDC  48 00 80 A9 */	bl checkNowWolf__9daPy_py_cFv
/* 8065ACE0  28 03 00 00 */	cmplwi r3, 0
/* 8065ACE4  41 82 00 30 */	beq lbl_8065AD14
/* 8065ACE8  7F E3 FB 78 */	mr r3, r31
/* 8065ACEC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8065ACF0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8065ACF4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8065ACF8  4B 9B FA E8 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8065ACFC  3C 60 80 66 */	lis r3, lit_5007@ha
/* 8065AD00  C0 03 2E 44 */	lfs f0, lit_5007@l(r3)
/* 8065AD04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065AD08  40 80 00 0C */	bge lbl_8065AD14
/* 8065AD0C  38 60 00 01 */	li r3, 1
/* 8065AD10  48 00 00 08 */	b lbl_8065AD18
lbl_8065AD14:
/* 8065AD14  38 60 00 00 */	li r3, 0
lbl_8065AD18:
/* 8065AD18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8065AD1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8065AD20  7C 08 03 A6 */	mtlr r0
/* 8065AD24  38 21 00 10 */	addi r1, r1, 0x10
/* 8065AD28  4E 80 00 20 */	blr 
