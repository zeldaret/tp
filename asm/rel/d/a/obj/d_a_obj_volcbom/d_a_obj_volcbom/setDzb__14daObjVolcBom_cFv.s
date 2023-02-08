lbl_80D251CC:
/* 80D251CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D251D0  7C 08 02 A6 */	mflr r0
/* 80D251D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D251D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D251DC  7C 7F 1B 78 */	mr r31, r3
/* 80D251E0  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80D251E4  28 03 00 00 */	cmplwi r3, 0
/* 80D251E8  41 82 00 28 */	beq lbl_80D25210
/* 80D251EC  4B 54 2F E9 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D251F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D251F4  40 82 00 1C */	bne lbl_80D25210
/* 80D251F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D251FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D25200  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D25204  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D25208  7F E5 FB 78 */	mr r5, r31
/* 80D2520C  4B 34 F7 FD */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80D25210:
/* 80D25210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D25214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D25218  7C 08 03 A6 */	mtlr r0
/* 80D2521C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D25220  4E 80 00 20 */	blr 
