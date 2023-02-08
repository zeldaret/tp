lbl_8073AA40:
/* 8073AA40  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8073AA44  7C 08 02 A6 */	mflr r0
/* 8073AA48  90 01 00 44 */	stw r0, 0x44(r1)
/* 8073AA4C  39 61 00 40 */	addi r11, r1, 0x40
/* 8073AA50  4B C2 77 81 */	bl _savegpr_26
/* 8073AA54  7C 7F 1B 78 */	mr r31, r3
/* 8073AA58  3B 40 00 00 */	li r26, 0
/* 8073AA5C  3B C0 00 00 */	li r30, 0
/* 8073AA60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073AA64  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073AA68  3C 60 80 74 */	lis r3, w_eff_id_4146@ha /* 0x8073D148@ha */
/* 8073AA6C  3B 83 D1 48 */	addi r28, r3, w_eff_id_4146@l /* 0x8073D148@l */
/* 8073AA70  3C 60 80 74 */	lis r3, lit_3912@ha /* 0x8073CEB0@ha */
/* 8073AA74  3B A3 CE B0 */	addi r29, r3, lit_3912@l /* 0x8073CEB0@l */
lbl_8073AA78:
/* 8073AA78  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8073AA7C  38 80 00 00 */	li r4, 0
/* 8073AA80  90 81 00 08 */	stw r4, 8(r1)
/* 8073AA84  38 00 FF FF */	li r0, -1
/* 8073AA88  90 01 00 0C */	stw r0, 0xc(r1)
/* 8073AA8C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8073AA90  90 81 00 14 */	stw r4, 0x14(r1)
/* 8073AA94  90 81 00 18 */	stw r4, 0x18(r1)
/* 8073AA98  38 80 00 00 */	li r4, 0
/* 8073AA9C  7C BC F2 2E */	lhzx r5, r28, r30
/* 8073AAA0  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8073AAA4  38 FF 01 0C */	addi r7, r31, 0x10c
/* 8073AAA8  39 00 00 00 */	li r8, 0
/* 8073AAAC  39 20 00 00 */	li r9, 0
/* 8073AAB0  39 40 00 FF */	li r10, 0xff
/* 8073AAB4  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8073AAB8  4B 91 1F D9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8073AABC  3B 5A 00 01 */	addi r26, r26, 1
/* 8073AAC0  2C 1A 00 04 */	cmpwi r26, 4
/* 8073AAC4  3B DE 00 02 */	addi r30, r30, 2
/* 8073AAC8  41 80 FF B0 */	blt lbl_8073AA78
/* 8073AACC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8073AAD0  7C 03 07 74 */	extsb r3, r0
/* 8073AAD4  4B 8F 25 99 */	bl dComIfGp_getReverb__Fi
/* 8073AAD8  7C 67 1B 78 */	mr r7, r3
/* 8073AADC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006000A@ha */
/* 8073AAE0  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0006000A@l */
/* 8073AAE4  90 01 00 20 */	stw r0, 0x20(r1)
/* 8073AAE8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8073AAEC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8073AAF0  80 63 00 00 */	lwz r3, 0(r3)
/* 8073AAF4  38 81 00 20 */	addi r4, r1, 0x20
/* 8073AAF8  38 BF 05 38 */	addi r5, r31, 0x538
/* 8073AAFC  38 C0 00 00 */	li r6, 0
/* 8073AB00  3D 00 80 74 */	lis r8, lit_3912@ha /* 0x8073CEB0@ha */
/* 8073AB04  C0 28 CE B0 */	lfs f1, lit_3912@l(r8)  /* 0x8073CEB0@l */
/* 8073AB08  FC 40 08 90 */	fmr f2, f1
/* 8073AB0C  3D 00 80 74 */	lis r8, lit_3986@ha /* 0x8073CEE4@ha */
/* 8073AB10  C0 68 CE E4 */	lfs f3, lit_3986@l(r8)  /* 0x8073CEE4@l */
/* 8073AB14  FC 80 18 90 */	fmr f4, f3
/* 8073AB18  39 00 00 00 */	li r8, 0
/* 8073AB1C  4B B7 0E 69 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8073AB20  39 61 00 40 */	addi r11, r1, 0x40
/* 8073AB24  4B C2 76 F9 */	bl _restgpr_26
/* 8073AB28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8073AB2C  7C 08 03 A6 */	mtlr r0
/* 8073AB30  38 21 00 40 */	addi r1, r1, 0x40
/* 8073AB34  4E 80 00 20 */	blr 
