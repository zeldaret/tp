lbl_80189E28:
/* 80189E28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80189E2C  7C 08 02 A6 */	mflr r0
/* 80189E30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80189E34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80189E38  7C 7F 1B 78 */	mr r31, r3
/* 80189E3C  88 03 02 6E */	lbz r0, 0x26e(r3)
/* 80189E40  2C 00 00 00 */	cmpwi r0, 0
/* 80189E44  41 82 00 78 */	beq lbl_80189EBC
/* 80189E48  41 80 00 FC */	blt lbl_80189F44
/* 80189E4C  2C 00 00 03 */	cmpwi r0, 3
/* 80189E50  40 80 00 F4 */	bge lbl_80189F44
/* 80189E54  38 00 00 AB */	li r0, 0xab
/* 80189E58  90 01 00 0C */	stw r0, 0xc(r1)
/* 80189E5C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80189E60  38 81 00 0C */	addi r4, r1, 0xc
/* 80189E64  38 A0 00 00 */	li r5, 0
/* 80189E68  38 C0 00 00 */	li r6, 0
/* 80189E6C  38 E0 00 00 */	li r7, 0
/* 80189E70  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80189E74  FC 40 08 90 */	fmr f2, f1
/* 80189E78  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 80189E7C  FC 80 18 90 */	fmr f4, f3
/* 80189E80  39 00 00 00 */	li r8, 0
/* 80189E84  48 12 26 89 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80189E88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80189E8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80189E90  38 9F 03 B8 */	addi r4, r31, 0x3b8
/* 80189E94  88 BF 02 65 */	lbz r5, 0x265(r31)
/* 80189E98  4B EA BD 39 */	bl initdata_to_card__10dSv_info_cFPci
/* 80189E9C  38 7F 03 B8 */	addi r3, r31, 0x3b8
/* 80189EA0  88 9F 02 65 */	lbz r4, 0x265(r31)
/* 80189EA4  4B E8 DE 95 */	bl mDoMemCdRWm_SetCheckSumGameData__FPUcUc
/* 80189EA8  7F E3 FB 78 */	mr r3, r31
/* 80189EAC  48 00 64 0D */	bl dataSave__14dFile_select_cFv
/* 80189EB0  38 00 00 1F */	li r0, 0x1f
/* 80189EB4  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 80189EB8  48 00 00 8C */	b lbl_80189F44
lbl_80189EBC:
/* 80189EBC  38 00 00 A9 */	li r0, 0xa9
/* 80189EC0  90 01 00 08 */	stw r0, 8(r1)
/* 80189EC4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80189EC8  38 81 00 08 */	addi r4, r1, 8
/* 80189ECC  38 A0 00 00 */	li r5, 0
/* 80189ED0  38 C0 00 00 */	li r6, 0
/* 80189ED4  38 E0 00 00 */	li r7, 0
/* 80189ED8  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80189EDC  FC 40 08 90 */	fmr f2, f1
/* 80189EE0  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 80189EE4  FC 80 18 90 */	fmr f4, f3
/* 80189EE8  39 00 00 00 */	li r8, 0
/* 80189EEC  48 12 26 21 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80189EF0  88 1F 02 6D */	lbz r0, 0x26d(r31)
/* 80189EF4  1C 60 0A 94 */	mulli r3, r0, 0xa94
/* 80189EF8  38 63 03 B8 */	addi r3, r3, 0x3b8
/* 80189EFC  7C 7F 1A 14 */	add r3, r31, r3
/* 80189F00  88 1F 02 6A */	lbz r0, 0x26a(r31)
/* 80189F04  1C 80 0A 94 */	mulli r4, r0, 0xa94
/* 80189F08  38 84 03 B8 */	addi r4, r4, 0x3b8
/* 80189F0C  7C 9F 22 14 */	add r4, r31, r4
/* 80189F10  38 A0 0A 94 */	li r5, 0xa94
/* 80189F14  4B E7 96 2D */	bl memcpy
/* 80189F18  38 7F 03 B8 */	addi r3, r31, 0x3b8
/* 80189F1C  88 9F 02 6D */	lbz r4, 0x26d(r31)
/* 80189F20  4B E8 DE 19 */	bl mDoMemCdRWm_SetCheckSumGameData__FPUcUc
/* 80189F24  88 1F 02 6D */	lbz r0, 0x26d(r31)
/* 80189F28  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha
/* 80189F2C  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l
/* 80189F30  98 03 1F BD */	stb r0, 0x1fbd(r3)
/* 80189F34  7F E3 FB 78 */	mr r3, r31
/* 80189F38  48 00 63 81 */	bl dataSave__14dFile_select_cFv
/* 80189F3C  38 00 00 21 */	li r0, 0x21
/* 80189F40  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_80189F44:
/* 80189F44  3C 60 80 43 */	lis r3, g_fsHIO@ha
/* 80189F48  38 63 C9 EC */	addi r3, r3, g_fsHIO@l
/* 80189F4C  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80189F50  B0 1F 03 AC */	sth r0, 0x3ac(r31)
/* 80189F54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80189F58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80189F5C  7C 08 03 A6 */	mtlr r0
/* 80189F60  38 21 00 20 */	addi r1, r1, 0x20
/* 80189F64  4E 80 00 20 */	blr 
