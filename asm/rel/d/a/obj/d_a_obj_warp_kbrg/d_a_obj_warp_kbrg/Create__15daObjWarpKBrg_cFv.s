lbl_80D270C4:
/* 80D270C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D270C8  7C 08 02 A6 */	mflr r0
/* 80D270CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D270D0  39 61 00 30 */	addi r11, r1, 0x30
/* 80D270D4  4B 63 B0 FC */	b _savegpr_26
/* 80D270D8  7C 7F 1B 78 */	mr r31, r3
/* 80D270DC  80 83 00 B0 */	lwz r4, 0xb0(r3)
/* 80D270E0  54 80 0F FE */	srwi r0, r4, 0x1f
/* 80D270E4  2C 00 00 01 */	cmpwi r0, 1
/* 80D270E8  41 82 00 20 */	beq lbl_80D27108
/* 80D270EC  40 80 00 E8 */	bge lbl_80D271D4
/* 80D270F0  2C 00 00 00 */	cmpwi r0, 0
/* 80D270F4  40 80 00 08 */	bge lbl_80D270FC
/* 80D270F8  48 00 00 DC */	b lbl_80D271D4
lbl_80D270FC:
/* 80D270FC  38 00 00 00 */	li r0, 0
/* 80D27100  98 1F 05 D8 */	stb r0, 0x5d8(r31)
/* 80D27104  48 00 00 D0 */	b lbl_80D271D4
lbl_80D27108:
/* 80D27108  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D2710C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D27110  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80D27114  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D27118  7C 05 07 74 */	extsb r5, r0
/* 80D2711C  4B 30 E2 44 */	b isSwitch__10dSv_info_cCFii
/* 80D27120  2C 03 00 00 */	cmpwi r3, 0
/* 80D27124  40 82 00 3C */	bne lbl_80D27160
/* 80D27128  38 00 00 08 */	li r0, 8
/* 80D2712C  98 1F 05 CA */	stb r0, 0x5ca(r31)
/* 80D27130  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D27134  28 03 00 00 */	cmplwi r3, 0
/* 80D27138  41 82 00 94 */	beq lbl_80D271CC
/* 80D2713C  4B 54 10 98 */	b ChkUsed__9cBgW_BgIdCFv
/* 80D27140  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D27144  41 82 00 88 */	beq lbl_80D271CC
/* 80D27148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D2714C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D27150  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D27154  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D27158  4B 34 D0 F8 */	b Release__4cBgSFP9dBgW_Base
/* 80D2715C  48 00 00 70 */	b lbl_80D271CC
lbl_80D27160:
/* 80D27160  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80D27164  A8 04 00 08 */	lha r0, 8(r4)
/* 80D27168  3C 60 80 D3 */	lis r3, lit_3827@ha
/* 80D2716C  C8 23 96 2C */	lfd f1, lit_3827@l(r3)
/* 80D27170  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D27174  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D27178  3C 60 43 30 */	lis r3, 0x4330
/* 80D2717C  90 61 00 08 */	stw r3, 8(r1)
/* 80D27180  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D27184  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D27188  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80D2718C  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 80D27190  A8 04 00 08 */	lha r0, 8(r4)
/* 80D27194  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D27198  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2719C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80D271A0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80D271A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D271A8  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80D271AC  38 00 00 01 */	li r0, 1
/* 80D271B0  98 1F 05 C8 */	stb r0, 0x5c8(r31)
/* 80D271B4  3C 60 80 D3 */	lis r3, lit_3825@ha
/* 80D271B8  C0 03 96 24 */	lfs f0, lit_3825@l(r3)
/* 80D271BC  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80D271C0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D271C4  38 00 00 0A */	li r0, 0xa
/* 80D271C8  98 1F 05 CA */	stb r0, 0x5ca(r31)
lbl_80D271CC:
/* 80D271CC  38 00 00 01 */	li r0, 1
/* 80D271D0  98 1F 05 D8 */	stb r0, 0x5d8(r31)
lbl_80D271D4:
/* 80D271D4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D271D8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80D271DC  40 82 00 6C */	bne lbl_80D27248
/* 80D271E0  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D271E4  80 63 00 04 */	lwz r3, 4(r3)
/* 80D271E8  83 A3 00 54 */	lwz r29, 0x54(r3)
/* 80D271EC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80D271F0  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80D271F4  B0 1F 06 98 */	sth r0, 0x698(r31)
/* 80D271F8  3B 60 00 00 */	li r27, 0
/* 80D271FC  3C 60 80 D3 */	lis r3, struct_80D29688+0x0@ha
/* 80D27200  3B 83 96 88 */	addi r28, r3, struct_80D29688+0x0@l
/* 80D27204  48 00 00 2C */	b lbl_80D27230
lbl_80D27208:
/* 80D27208  7F A3 EB 78 */	mr r3, r29
/* 80D2720C  7F 64 DB 78 */	mr r4, r27
/* 80D27210  4B 5B 78 E8 */	b getName__10JUTNameTabCFUs
/* 80D27214  38 9C 00 51 */	addi r4, r28, 0x51
/* 80D27218  4B 64 17 7C */	b strcmp
/* 80D2721C  2C 03 00 00 */	cmpwi r3, 0
/* 80D27220  40 82 00 0C */	bne lbl_80D2722C
/* 80D27224  B3 7F 06 98 */	sth r27, 0x698(r31)
/* 80D27228  48 00 00 20 */	b lbl_80D27248
lbl_80D2722C:
/* 80D2722C  3B 7B 00 01 */	addi r27, r27, 1
lbl_80D27230:
/* 80D27230  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D27234  80 63 00 04 */	lwz r3, 4(r3)
/* 80D27238  A0 63 00 2C */	lhz r3, 0x2c(r3)
/* 80D2723C  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 80D27240  7C 00 18 40 */	cmplw r0, r3
/* 80D27244  41 80 FF C4 */	blt lbl_80D27208
lbl_80D27248:
/* 80D27248  7F E3 FB 78 */	mr r3, r31
/* 80D2724C  4B FF FD 5D */	bl initBaseMtx__15daObjWarpKBrg_cFv
/* 80D27250  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D27254  38 03 00 24 */	addi r0, r3, 0x24
/* 80D27258  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D2725C  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D27260  80 83 00 04 */	lwz r4, 4(r3)
/* 80D27264  7F E3 FB 78 */	mr r3, r31
/* 80D27268  4B 2F 33 10 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D2726C  38 00 00 36 */	li r0, 0x36
/* 80D27270  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80D27274  98 1F 05 47 */	stb r0, 0x547(r31)
/* 80D27278  3C 60 80 D3 */	lis r3, l_evArcName@ha
/* 80D2727C  80 03 97 38 */	lwz r0, l_evArcName@l(r3)
/* 80D27280  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80D27284  3B 40 00 00 */	li r26, 0
/* 80D27288  3B C0 00 00 */	li r30, 0
/* 80D2728C  3B A0 00 00 */	li r29, 0
/* 80D27290  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D27294  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D27298  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80D2729C  3C 60 80 D3 */	lis r3, l_portal_warp_name@ha
/* 80D272A0  3B 83 97 3C */	addi r28, r3, l_portal_warp_name@l
lbl_80D272A4:
/* 80D272A4  7F 63 DB 78 */	mr r3, r27
/* 80D272A8  7F E4 FB 78 */	mr r4, r31
/* 80D272AC  7C BC E8 2E */	lwzx r5, r28, r29
/* 80D272B0  38 C0 00 FF */	li r6, 0xff
/* 80D272B4  4B 32 04 A4 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D272B8  38 1E 05 CE */	addi r0, r30, 0x5ce
/* 80D272BC  7C 7F 03 2E */	sthx r3, r31, r0
/* 80D272C0  3B 5A 00 01 */	addi r26, r26, 1
/* 80D272C4  2C 1A 00 02 */	cmpwi r26, 2
/* 80D272C8  3B DE 00 02 */	addi r30, r30, 2
/* 80D272CC  3B BD 00 04 */	addi r29, r29, 4
/* 80D272D0  41 80 FF D4 */	blt lbl_80D272A4
/* 80D272D4  7F E3 FB 78 */	mr r3, r31
/* 80D272D8  48 00 18 A5 */	bl calcMidnaWaitPos__15daObjWarpKBrg_cFv
/* 80D272DC  7F E3 FB 78 */	mr r3, r31
/* 80D272E0  4B 35 16 70 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D272E4  38 60 00 01 */	li r3, 1
/* 80D272E8  39 61 00 30 */	addi r11, r1, 0x30
/* 80D272EC  4B 63 AF 30 */	b _restgpr_26
/* 80D272F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D272F4  7C 08 03 A6 */	mtlr r0
/* 80D272F8  38 21 00 30 */	addi r1, r1, 0x30
/* 80D272FC  4E 80 00 20 */	blr 
