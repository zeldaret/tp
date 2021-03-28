lbl_80C82EA8:
/* 80C82EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C82EAC  7C 08 02 A6 */	mflr r0
/* 80C82EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C82EB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C82EB8  7C 7F 1B 78 */	mr r31, r3
/* 80C82EBC  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80C82EC0  80 9F 06 18 */	lwz r4, 0x618(r31)
/* 80C82EC4  38 84 00 24 */	addi r4, r4, 0x24
/* 80C82EC8  4B 6C 35 E8 */	b PSMTXCopy
/* 80C82ECC  38 1F 05 E8 */	addi r0, r31, 0x5e8
/* 80C82ED0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C82ED4  7F E3 FB 78 */	mr r3, r31
/* 80C82ED8  3C 80 80 C8 */	lis r4, l_cull_box@ha
/* 80C82EDC  C4 24 38 10 */	lfsu f1, l_cull_box@l(r4)
/* 80C82EE0  C0 44 00 04 */	lfs f2, 4(r4)
/* 80C82EE4  C0 64 00 08 */	lfs f3, 8(r4)
/* 80C82EE8  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80C82EEC  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80C82EF0  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80C82EF4  4B 39 76 54 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C82EF8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C82EFC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C82F00  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C82F04  41 82 00 10 */	beq lbl_80C82F14
/* 80C82F08  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C82F0C  2C 00 00 FF */	cmpwi r0, 0xff
/* 80C82F10  40 82 00 10 */	bne lbl_80C82F20
lbl_80C82F14:
/* 80C82F14  38 00 00 00 */	li r0, 0
/* 80C82F18  90 1F 06 1C */	stw r0, 0x61c(r31)
/* 80C82F1C  48 00 00 64 */	b lbl_80C82F80
lbl_80C82F20:
/* 80C82F20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C82F24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C82F28  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C82F2C  7C 05 07 74 */	extsb r5, r0
/* 80C82F30  4B 3B 24 30 */	b isSwitch__10dSv_info_cCFii
/* 80C82F34  2C 03 00 00 */	cmpwi r3, 0
/* 80C82F38  41 82 00 10 */	beq lbl_80C82F48
/* 80C82F3C  38 00 3F FF */	li r0, 0x3fff
/* 80C82F40  90 1F 06 1C */	stw r0, 0x61c(r31)
/* 80C82F44  48 00 00 3C */	b lbl_80C82F80
lbl_80C82F48:
/* 80C82F48  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C82F4C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C82F50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C82F54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C82F58  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C82F5C  7C 05 07 74 */	extsb r5, r0
/* 80C82F60  4B 3B 24 00 */	b isSwitch__10dSv_info_cCFii
/* 80C82F64  2C 03 00 00 */	cmpwi r3, 0
/* 80C82F68  41 82 00 10 */	beq lbl_80C82F78
/* 80C82F6C  38 00 C0 01 */	li r0, -16383
/* 80C82F70  90 1F 06 1C */	stw r0, 0x61c(r31)
/* 80C82F74  48 00 00 0C */	b lbl_80C82F80
lbl_80C82F78:
/* 80C82F78  38 00 00 00 */	li r0, 0
/* 80C82F7C  90 1F 06 1C */	stw r0, 0x61c(r31)
lbl_80C82F80:
/* 80C82F80  38 00 00 00 */	li r0, 0
/* 80C82F84  90 1F 06 20 */	stw r0, 0x620(r31)
/* 80C82F88  98 1F 06 24 */	stb r0, 0x624(r31)
/* 80C82F8C  38 60 00 01 */	li r3, 1
/* 80C82F90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C82F94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C82F98  7C 08 03 A6 */	mtlr r0
/* 80C82F9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C82FA0  4E 80 00 20 */	blr 
