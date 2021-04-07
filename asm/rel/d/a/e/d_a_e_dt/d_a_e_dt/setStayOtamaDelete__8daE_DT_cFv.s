lbl_806AFEAC:
/* 806AFEAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806AFEB0  7C 08 02 A6 */	mflr r0
/* 806AFEB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806AFEB8  39 61 00 20 */	addi r11, r1, 0x20
/* 806AFEBC  4B CB 23 19 */	bl _savegpr_27
/* 806AFEC0  7C 7B 1B 78 */	mr r27, r3
/* 806AFEC4  3B 80 00 00 */	li r28, 0
/* 806AFEC8  3C 60 80 6B */	lis r3, m_fall_no__6E_DT_n@ha /* 0x806B6330@ha */
/* 806AFECC  3B A3 63 30 */	addi r29, r3, m_fall_no__6E_DT_n@l /* 0x806B6330@l */
/* 806AFED0  3C 60 80 6B */	lis r3, s_fall_otama__FPvPv@ha /* 0x806AFD94@ha */
/* 806AFED4  3B C3 FD 94 */	addi r30, r3, s_fall_otama__FPvPv@l /* 0x806AFD94@l */
/* 806AFED8  3B E0 00 06 */	li r31, 6
lbl_806AFEDC:
/* 806AFEDC  93 9D 00 00 */	stw r28, 0(r29)
/* 806AFEE0  7F C3 F3 78 */	mr r3, r30
/* 806AFEE4  7F 64 DB 78 */	mr r4, r27
/* 806AFEE8  4B 97 14 51 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806AFEEC  28 03 00 00 */	cmplwi r3, 0
/* 806AFEF0  41 82 00 08 */	beq lbl_806AFEF8
/* 806AFEF4  93 E3 06 78 */	stw r31, 0x678(r3)
lbl_806AFEF8:
/* 806AFEF8  3B 9C 00 01 */	addi r28, r28, 1
/* 806AFEFC  2C 1C 00 14 */	cmpwi r28, 0x14
/* 806AFF00  41 80 FF DC */	blt lbl_806AFEDC
/* 806AFF04  39 61 00 20 */	addi r11, r1, 0x20
/* 806AFF08  4B CB 23 19 */	bl _restgpr_27
/* 806AFF0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806AFF10  7C 08 03 A6 */	mtlr r0
/* 806AFF14  38 21 00 20 */	addi r1, r1, 0x20
/* 806AFF18  4E 80 00 20 */	blr 
