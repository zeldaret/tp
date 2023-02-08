lbl_8046027C:
/* 8046027C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80460280  7C 08 02 A6 */	mflr r0
/* 80460284  90 01 00 14 */	stw r0, 0x14(r1)
/* 80460288  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046028C  7C 7F 1B 78 */	mr r31, r3
/* 80460290  80 63 05 A0 */	lwz r3, 0x5a0(r3)
/* 80460294  4B E0 7F 41 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80460298  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8046029C  40 82 00 1C */	bne lbl_804602B8
/* 804602A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804602A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804602A8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804602AC  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804602B0  7F E5 FB 78 */	mr r5, r31
/* 804602B4  4B C1 47 55 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_804602B8:
/* 804602B8  38 00 00 01 */	li r0, 1
/* 804602BC  98 1F 06 0E */	stb r0, 0x60e(r31)
/* 804602C0  38 60 00 01 */	li r3, 1
/* 804602C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804602C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804602CC  7C 08 03 A6 */	mtlr r0
/* 804602D0  38 21 00 10 */	addi r1, r1, 0x10
/* 804602D4  4E 80 00 20 */	blr 
