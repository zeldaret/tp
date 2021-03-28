lbl_80959BD0:
/* 80959BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80959BD4  7C 08 02 A6 */	mflr r0
/* 80959BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80959BDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80959BE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80959BE4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80959BE8  3C 80 80 96 */	lis r4, stringBase0@ha
/* 80959BEC  38 84 D9 10 */	addi r4, r4, stringBase0@l
/* 80959BF0  38 84 00 6C */	addi r4, r4, 0x6c
/* 80959BF4  4B A0 ED A0 */	b strcmp
/* 80959BF8  2C 03 00 00 */	cmpwi r3, 0
/* 80959BFC  40 82 00 30 */	bne lbl_80959C2C
/* 80959C00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80959C04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80959C08  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80959C0C  2C 00 00 05 */	cmpwi r0, 5
/* 80959C10  40 82 00 1C */	bne lbl_80959C2C
/* 80959C14  38 60 00 00 */	li r3, 0
/* 80959C18  4B 6D 2D 64 */	b getLayerNo__14dComIfG_play_cFi
/* 80959C1C  2C 03 00 02 */	cmpwi r3, 2
/* 80959C20  40 82 00 0C */	bne lbl_80959C2C
/* 80959C24  38 60 00 01 */	li r3, 1
/* 80959C28  48 00 00 08 */	b lbl_80959C30
lbl_80959C2C:
/* 80959C2C  38 60 00 00 */	li r3, 0
lbl_80959C30:
/* 80959C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80959C34  7C 08 03 A6 */	mtlr r0
/* 80959C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80959C3C  4E 80 00 20 */	blr 
