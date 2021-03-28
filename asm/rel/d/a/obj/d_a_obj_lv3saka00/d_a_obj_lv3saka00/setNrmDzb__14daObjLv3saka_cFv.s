lbl_80C5C17C:
/* 80C5C17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5C180  7C 08 02 A6 */	mflr r0
/* 80C5C184  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5C188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5C18C  7C 7F 1B 78 */	mr r31, r3
/* 80C5C190  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80C5C194  4B 60 C0 40 */	b ChkUsed__9cBgW_BgIdCFv
/* 80C5C198  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C5C19C  40 82 00 48 */	bne lbl_80C5C1E4
/* 80C5C1A0  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C5C1A4  4B 60 C0 30 */	b ChkUsed__9cBgW_BgIdCFv
/* 80C5C1A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C5C1AC  41 82 00 18 */	beq lbl_80C5C1C4
/* 80C5C1B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5C1B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5C1B8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C5C1BC  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C5C1C0  4B 41 80 90 */	b Release__4cBgSFP9dBgW_Base
lbl_80C5C1C4:
/* 80C5C1C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C5C1C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C5C1CC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C5C1D0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C5C1D4  7F E5 FB 78 */	mr r5, r31
/* 80C5C1D8  4B 41 88 30 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C5C1DC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C5C1E0  4B 41 F7 E0 */	b Move__4dBgWFv
lbl_80C5C1E4:
/* 80C5C1E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5C1E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C1EC  7C 08 03 A6 */	mtlr r0
/* 80C5C1F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C1F4  4E 80 00 20 */	blr 
