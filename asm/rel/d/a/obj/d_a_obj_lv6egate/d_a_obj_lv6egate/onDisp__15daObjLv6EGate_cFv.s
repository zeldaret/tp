lbl_80C82330:
/* 80C82330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C82334  7C 08 02 A6 */	mflr r0
/* 80C82338  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8233C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C82340  7C 7F 1B 78 */	mr r31, r3
/* 80C82344  38 00 00 00 */	li r0, 0
/* 80C82348  98 03 10 24 */	stb r0, 0x1024(r3)
/* 80C8234C  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80C82350  4B 5E 5E 84 */	b ChkUsed__9cBgW_BgIdCFv
/* 80C82354  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C82358  40 82 00 1C */	bne lbl_80C82374
/* 80C8235C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C82360  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C82364  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C82368  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C8236C  7F E5 FB 78 */	mr r5, r31
/* 80C82370  4B 3F 26 98 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80C82374:
/* 80C82374  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C82378  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8237C  7C 08 03 A6 */	mtlr r0
/* 80C82380  38 21 00 10 */	addi r1, r1, 0x10
/* 80C82384  4E 80 00 20 */	blr 
