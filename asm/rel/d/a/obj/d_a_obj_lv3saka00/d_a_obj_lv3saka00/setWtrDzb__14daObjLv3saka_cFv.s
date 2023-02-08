lbl_80C5C1F8:
/* 80C5C1F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5C1FC  7C 08 02 A6 */	mflr r0
/* 80C5C200  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5C204  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5C208  7C 7F 1B 78 */	mr r31, r3
/* 80C5C20C  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 80C5C210  4B 60 BF C5 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C5C214  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C5C218  40 82 00 48 */	bne lbl_80C5C260
/* 80C5C21C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C5C220  4B 60 BF B5 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C5C224  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C5C228  41 82 00 18 */	beq lbl_80C5C240
/* 80C5C22C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5C230  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5C234  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C5C238  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C5C23C  4B 41 80 15 */	bl Release__4cBgSFP9dBgW_Base
lbl_80C5C240:
/* 80C5C240  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5C244  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5C248  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C5C24C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C5C250  7F E5 FB 78 */	mr r5, r31
/* 80C5C254  4B 41 87 B5 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C5C258  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C5C25C  4B 41 F7 65 */	bl Move__4dBgWFv
lbl_80C5C260:
/* 80C5C260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5C264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C268  7C 08 03 A6 */	mtlr r0
/* 80C5C26C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C270  4E 80 00 20 */	blr 
