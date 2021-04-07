lbl_80BFF164:
/* 80BFF164  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BFF168  7C 08 02 A6 */	mflr r0
/* 80BFF16C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BFF170  39 61 00 60 */	addi r11, r1, 0x60
/* 80BFF174  4B 76 30 51 */	bl _savegpr_23
/* 80BFF178  7C 7F 1B 78 */	mr r31, r3
/* 80BFF17C  3C 80 80 C0 */	lis r4, ccSphSrc@ha /* 0x80BFFC1C@ha */
/* 80BFF180  3B A4 FC 1C */	addi r29, r4, ccSphSrc@l /* 0x80BFFC1C@l */
/* 80BFF184  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BFF188  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BFF18C  40 82 01 9C */	bne lbl_80BFF328
/* 80BFF190  7F E0 FB 79 */	or. r0, r31, r31
/* 80BFF194  41 82 01 88 */	beq lbl_80BFF31C
/* 80BFF198  7C 1E 03 78 */	mr r30, r0
/* 80BFF19C  4B 47 94 89 */	bl __ct__16dBgS_MoveBgActorFv
/* 80BFF1A0  3C 60 80 C0 */	lis r3, __vt__15daObjGOMIKABE_c@ha /* 0x80BFFDCC@ha */
/* 80BFF1A4  38 03 FD CC */	addi r0, r3, __vt__15daObjGOMIKABE_c@l /* 0x80BFFDCC@l */
/* 80BFF1A8  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BFF1AC  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80BFF1B0  3C 80 80 C0 */	lis r4, __ct__4cXyzFv@ha /* 0x80BFF8CC@ha */
/* 80BFF1B4  38 84 F8 CC */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BFF8CC@l */
/* 80BFF1B8  3C A0 80 C0 */	lis r5, __dt__4cXyzFv@ha /* 0x80BFE3FC@ha */
/* 80BFF1BC  38 A5 E3 FC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BFE3FC@l */
/* 80BFF1C0  38 C0 00 0C */	li r6, 0xc
/* 80BFF1C4  38 E0 00 04 */	li r7, 4
/* 80BFF1C8  4B 76 2B 99 */	bl __construct_array
/* 80BFF1CC  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80BFF1D0  3C 80 80 C0 */	lis r4, __ct__4cXyzFv@ha /* 0x80BFF8CC@ha */
/* 80BFF1D4  38 84 F8 CC */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BFF8CC@l */
/* 80BFF1D8  3C A0 80 C0 */	lis r5, __dt__4cXyzFv@ha /* 0x80BFE3FC@ha */
/* 80BFF1DC  38 A5 E3 FC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BFE3FC@l */
/* 80BFF1E0  38 C0 00 0C */	li r6, 0xc
/* 80BFF1E4  38 E0 00 04 */	li r7, 4
/* 80BFF1E8  4B 76 2B 79 */	bl __construct_array
/* 80BFF1EC  38 7E 06 10 */	addi r3, r30, 0x610
/* 80BFF1F0  3C 80 80 C0 */	lis r4, __ct__5csXyzFv@ha /* 0x80BFF8C8@ha */
/* 80BFF1F4  38 84 F8 C8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80BFF8C8@l */
/* 80BFF1F8  3C A0 80 C0 */	lis r5, __dt__5csXyzFv@ha /* 0x80BFEA24@ha */
/* 80BFF1FC  38 A5 EA 24 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80BFEA24@l */
/* 80BFF200  38 C0 00 06 */	li r6, 6
/* 80BFF204  38 E0 00 04 */	li r7, 4
/* 80BFF208  4B 76 2B 59 */	bl __construct_array
/* 80BFF20C  38 7E 06 28 */	addi r3, r30, 0x628
/* 80BFF210  3C 80 80 C0 */	lis r4, __ct__4cXyzFv@ha /* 0x80BFF8CC@ha */
/* 80BFF214  38 84 F8 CC */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BFF8CC@l */
/* 80BFF218  3C A0 80 C0 */	lis r5, __dt__4cXyzFv@ha /* 0x80BFE3FC@ha */
/* 80BFF21C  38 A5 E3 FC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BFE3FC@l */
/* 80BFF220  38 C0 00 0C */	li r6, 0xc
/* 80BFF224  38 E0 00 04 */	li r7, 4
/* 80BFF228  4B 76 2B 39 */	bl __construct_array
/* 80BFF22C  38 7E 06 58 */	addi r3, r30, 0x658
/* 80BFF230  3C 80 80 C0 */	lis r4, __ct__4cXyzFv@ha /* 0x80BFF8CC@ha */
/* 80BFF234  38 84 F8 CC */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BFF8CC@l */
/* 80BFF238  3C A0 80 C0 */	lis r5, __dt__4cXyzFv@ha /* 0x80BFE3FC@ha */
/* 80BFF23C  38 A5 E3 FC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BFE3FC@l */
/* 80BFF240  38 C0 00 0C */	li r6, 0xc
/* 80BFF244  38 E0 00 04 */	li r7, 4
/* 80BFF248  4B 76 2B 19 */	bl __construct_array
/* 80BFF24C  38 7E 06 88 */	addi r3, r30, 0x688
/* 80BFF250  3C 80 80 C0 */	lis r4, __ct__5csXyzFv@ha /* 0x80BFF8C8@ha */
/* 80BFF254  38 84 F8 C8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80BFF8C8@l */
/* 80BFF258  3C A0 80 C0 */	lis r5, __dt__5csXyzFv@ha /* 0x80BFEA24@ha */
/* 80BFF25C  38 A5 EA 24 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80BFEA24@l */
/* 80BFF260  38 C0 00 06 */	li r6, 6
/* 80BFF264  38 E0 00 04 */	li r7, 4
/* 80BFF268  4B 76 2A F9 */	bl __construct_array
/* 80BFF26C  38 7E 06 A0 */	addi r3, r30, 0x6a0
/* 80BFF270  3C 80 80 C0 */	lis r4, __ct__4cXyzFv@ha /* 0x80BFF8CC@ha */
/* 80BFF274  38 84 F8 CC */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BFF8CC@l */
/* 80BFF278  3C A0 80 C0 */	lis r5, __dt__4cXyzFv@ha /* 0x80BFE3FC@ha */
/* 80BFF27C  38 A5 E3 FC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BFE3FC@l */
/* 80BFF280  38 C0 00 0C */	li r6, 0xc
/* 80BFF284  38 E0 00 04 */	li r7, 4
/* 80BFF288  4B 76 2A D9 */	bl __construct_array
/* 80BFF28C  38 7E 06 E8 */	addi r3, r30, 0x6e8
/* 80BFF290  4B 47 82 ED */	bl __ct__11dBgS_GndChkFv
/* 80BFF294  38 7E 07 3C */	addi r3, r30, 0x73c
/* 80BFF298  3C 80 80 07 */	lis r4, __ct__12dBgS_AcchCirFv@ha /* 0x80075EAC@ha */
/* 80BFF29C  38 84 5E AC */	addi r4, r4, __ct__12dBgS_AcchCirFv@l /* 0x80075EAC@l */
/* 80BFF2A0  3C A0 80 C0 */	lis r5, __dt__12dBgS_AcchCirFv@ha /* 0x80BFF858@ha */
/* 80BFF2A4  38 A5 F8 58 */	addi r5, r5, __dt__12dBgS_AcchCirFv@l /* 0x80BFF858@l */
/* 80BFF2A8  38 C0 00 40 */	li r6, 0x40
/* 80BFF2AC  38 E0 00 04 */	li r7, 4
/* 80BFF2B0  4B 76 2A B1 */	bl __construct_array
/* 80BFF2B4  38 7E 08 3C */	addi r3, r30, 0x83c
/* 80BFF2B8  3C 80 80 C0 */	lis r4, __ct__12dBgS_ObjAcchFv@ha /* 0x80BFF804@ha */
/* 80BFF2BC  38 84 F8 04 */	addi r4, r4, __ct__12dBgS_ObjAcchFv@l /* 0x80BFF804@l */
/* 80BFF2C0  3C A0 80 C0 */	lis r5, __dt__12dBgS_ObjAcchFv@ha /* 0x80BFF794@ha */
/* 80BFF2C4  38 A5 F7 94 */	addi r5, r5, __dt__12dBgS_ObjAcchFv@l /* 0x80BFF794@l */
/* 80BFF2C8  38 C0 01 D8 */	li r6, 0x1d8
/* 80BFF2CC  38 E0 00 04 */	li r7, 4
/* 80BFF2D0  4B 76 2A 91 */	bl __construct_array
/* 80BFF2D4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BFF2D8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BFF2DC  90 1E 0F D0 */	stw r0, 0xfd0(r30)
/* 80BFF2E0  38 7E 0F D4 */	addi r3, r30, 0xfd4
/* 80BFF2E4  4B 48 44 7D */	bl __ct__10dCcD_GSttsFv
/* 80BFF2E8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BFF2EC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BFF2F0  90 7E 0F D0 */	stw r3, 0xfd0(r30)
/* 80BFF2F4  38 03 00 20 */	addi r0, r3, 0x20
/* 80BFF2F8  90 1E 0F D4 */	stw r0, 0xfd4(r30)
/* 80BFF2FC  38 7E 0F F4 */	addi r3, r30, 0xff4
/* 80BFF300  3C 80 80 C0 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x80BFF680@ha */
/* 80BFF304  38 84 F6 80 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x80BFF680@l */
/* 80BFF308  3C A0 80 C0 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80BFF5B4@ha */
/* 80BFF30C  38 A5 F5 B4 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80BFF5B4@l */
/* 80BFF310  38 C0 01 38 */	li r6, 0x138
/* 80BFF314  38 E0 00 03 */	li r7, 3
/* 80BFF318  4B 76 2A 49 */	bl __construct_array
lbl_80BFF31C:
/* 80BFF31C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BFF320  60 00 00 08 */	ori r0, r0, 8
/* 80BFF324  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BFF328:
/* 80BFF328  38 7F 0F B0 */	addi r3, r31, 0xfb0
/* 80BFF32C  3C 80 80 C0 */	lis r4, l_arcName@ha /* 0x80BFFD30@ha */
/* 80BFF330  38 84 FD 30 */	addi r4, r4, l_arcName@l /* 0x80BFFD30@l */
/* 80BFF334  80 84 00 00 */	lwz r4, 0(r4)
/* 80BFF338  4B 42 DB 85 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BFF33C  7C 7E 1B 78 */	mr r30, r3
/* 80BFF340  2C 1E 00 04 */	cmpwi r30, 4
/* 80BFF344  40 82 02 54 */	bne lbl_80BFF598
/* 80BFF348  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFF34C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFF350  3C 63 00 02 */	addis r3, r3, 2
/* 80BFF354  3C 80 80 C0 */	lis r4, l_arcName@ha /* 0x80BFFD30@ha */
/* 80BFF358  38 84 FD 30 */	addi r4, r4, l_arcName@l /* 0x80BFFD30@l */
/* 80BFF35C  80 84 00 00 */	lwz r4, 0(r4)
/* 80BFF360  3C A0 80 C0 */	lis r5, d_a_obj_gomikabe__stringBase0@ha /* 0x80BFFCF4@ha */
/* 80BFF364  38 A5 FC F4 */	addi r5, r5, d_a_obj_gomikabe__stringBase0@l /* 0x80BFFCF4@l */
/* 80BFF368  38 A5 00 2D */	addi r5, r5, 0x2d
/* 80BFF36C  38 63 C2 F8 */	addi r3, r3, -15624
/* 80BFF370  4B 43 D3 49 */	bl getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80BFF374  7C 78 1B 78 */	mr r24, r3
/* 80BFF378  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BFF37C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80BFF380  98 1F 05 A0 */	stb r0, 0x5a0(r31)
/* 80BFF384  88 9F 05 A0 */	lbz r4, 0x5a0(r31)
/* 80BFF388  28 04 00 FF */	cmplwi r4, 0xff
/* 80BFF38C  41 82 00 28 */	beq lbl_80BFF3B4
/* 80BFF390  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFF394  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFF398  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BFF39C  7C 05 07 74 */	extsb r5, r0
/* 80BFF3A0  4B 43 5F C1 */	bl isSwitch__10dSv_info_cCFii
/* 80BFF3A4  2C 03 00 00 */	cmpwi r3, 0
/* 80BFF3A8  41 82 00 0C */	beq lbl_80BFF3B4
/* 80BFF3AC  38 60 00 05 */	li r3, 5
/* 80BFF3B0  48 00 01 EC */	b lbl_80BFF59C
lbl_80BFF3B4:
/* 80BFF3B4  7F E3 FB 78 */	mr r3, r31
/* 80BFF3B8  3C 80 80 C0 */	lis r4, l_arcName@ha /* 0x80BFFD30@ha */
/* 80BFF3BC  38 84 FD 30 */	addi r4, r4, l_arcName@l /* 0x80BFFD30@l */
/* 80BFF3C0  80 84 00 00 */	lwz r4, 0(r4)
/* 80BFF3C4  7F 05 C3 78 */	mr r5, r24
/* 80BFF3C8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80BFF3CC  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80BFF3D0  38 E0 2C 40 */	li r7, 0x2c40
/* 80BFF3D4  39 00 00 00 */	li r8, 0
/* 80BFF3D8  4B 47 93 E5 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BFF3DC  7C 7E 1B 78 */	mr r30, r3
/* 80BFF3E0  2C 1E 00 05 */	cmpwi r30, 5
/* 80BFF3E4  40 82 00 08 */	bne lbl_80BFF3EC
/* 80BFF3E8  48 00 01 B4 */	b lbl_80BFF59C
lbl_80BFF3EC:
/* 80BFF3EC  80 7F 0F 9C */	lwz r3, 0xf9c(r31)
/* 80BFF3F0  80 63 00 04 */	lwz r3, 4(r3)
/* 80BFF3F4  4B 40 F6 8D */	bl mDoExt_setupStageTexture__FP12J3DModelData
/* 80BFF3F8  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 80BFF3FC  3C 03 00 01 */	addis r0, r3, 1
/* 80BFF400  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BFF404  41 82 00 80 */	beq lbl_80BFF484
/* 80BFF408  C0 7D 00 78 */	lfs f3, 0x78(r29)
/* 80BFF40C  C0 5D 00 B8 */	lfs f2, 0xb8(r29)
/* 80BFF410  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80BFF414  C8 3D 00 C8 */	lfd f1, 0xc8(r29)
/* 80BFF418  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFF41C  3C 60 43 30 */	lis r3, 0x4330
/* 80BFF420  90 61 00 20 */	stw r3, 0x20(r1)
/* 80BFF424  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BFF428  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BFF42C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BFF430  EC 03 00 2A */	fadds f0, f3, f0
/* 80BFF434  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 80BFF438  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BFF43C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BFF440  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BFF444  90 61 00 28 */	stw r3, 0x28(r1)
/* 80BFF448  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BFF44C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BFF450  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BFF454  EC 03 00 2A */	fadds f0, f3, f0
/* 80BFF458  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 80BFF45C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BFF460  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BFF464  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BFF468  90 61 00 30 */	stw r3, 0x30(r1)
/* 80BFF46C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80BFF470  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BFF474  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BFF478  EC 03 00 2A */	fadds f0, f3, f0
/* 80BFF47C  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 80BFF480  48 00 00 14 */	b lbl_80BFF494
lbl_80BFF484:
/* 80BFF484  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 80BFF488  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 80BFF48C  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 80BFF490  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
lbl_80BFF494:
/* 80BFF494  3C 60 80 C0 */	lis r3, data_80BFFE08@ha /* 0x80BFFE08@ha */
/* 80BFF498  8C 03 FE 08 */	lbzu r0, data_80BFFE08@l(r3)  /* 0x80BFFE08@l */
/* 80BFF49C  28 00 00 00 */	cmplwi r0, 0
/* 80BFF4A0  40 82 00 20 */	bne lbl_80BFF4C0
/* 80BFF4A4  38 00 00 01 */	li r0, 1
/* 80BFF4A8  98 03 00 00 */	stb r0, 0(r3)
/* 80BFF4AC  98 1F 13 C0 */	stb r0, 0x13c0(r31)
/* 80BFF4B0  38 00 FF FF */	li r0, -1
/* 80BFF4B4  3C 60 80 C0 */	lis r3, l_HIO@ha /* 0x80BFFE18@ha */
/* 80BFF4B8  38 63 FE 18 */	addi r3, r3, l_HIO@l /* 0x80BFFE18@l */
/* 80BFF4BC  98 03 00 04 */	stb r0, 4(r3)
lbl_80BFF4C0:
/* 80BFF4C0  80 7F 0F 9C */	lwz r3, 0xf9c(r31)
/* 80BFF4C4  38 03 00 24 */	addi r0, r3, 0x24
/* 80BFF4C8  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BFF4CC  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80BFF4D0  C0 3D 00 68 */	lfs f1, 0x68(r29)
/* 80BFF4D4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BFF4D8  EC 21 00 2A */	fadds f1, f1, f0
/* 80BFF4DC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BFF4E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BFF4E4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BFF4E8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80BFF4EC  3A E0 00 00 */	li r23, 0
/* 80BFF4F0  3B 80 00 00 */	li r28, 0
/* 80BFF4F4  3B 60 00 00 */	li r27, 0
/* 80BFF4F8  3B 40 00 00 */	li r26, 0
/* 80BFF4FC  7F 59 D3 78 */	mr r25, r26
lbl_80BFF500:
/* 80BFF500  3B 1A 07 3C */	addi r24, r26, 0x73c
/* 80BFF504  7F 1F C2 14 */	add r24, r31, r24
/* 80BFF508  7F 03 C3 78 */	mr r3, r24
/* 80BFF50C  C0 3D 00 BC */	lfs f1, 0xbc(r29)
/* 80BFF510  C0 5D 00 A8 */	lfs f2, 0xa8(r29)
/* 80BFF514  4B 47 6A 45 */	bl SetWall__12dBgS_AcchCirFff
/* 80BFF518  7D 3F DA 14 */	add r9, r31, r27
/* 80BFF51C  93 21 00 08 */	stw r25, 8(r1)
/* 80BFF520  38 7C 08 3C */	addi r3, r28, 0x83c
/* 80BFF524  7C 7F 1A 14 */	add r3, r31, r3
/* 80BFF528  38 89 05 B0 */	addi r4, r9, 0x5b0
/* 80BFF52C  38 A9 05 E0 */	addi r5, r9, 0x5e0
/* 80BFF530  7F E6 FB 78 */	mr r6, r31
/* 80BFF534  38 E0 00 01 */	li r7, 1
/* 80BFF538  7F 08 C3 78 */	mr r8, r24
/* 80BFF53C  39 29 06 58 */	addi r9, r9, 0x658
/* 80BFF540  39 40 00 00 */	li r10, 0
/* 80BFF544  4B 47 6D 05 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BFF548  3A F7 00 01 */	addi r23, r23, 1
/* 80BFF54C  2C 17 00 04 */	cmpwi r23, 4
/* 80BFF550  3B 9C 01 D8 */	addi r28, r28, 0x1d8
/* 80BFF554  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80BFF558  3B 5A 00 40 */	addi r26, r26, 0x40
/* 80BFF55C  41 80 FF A4 */	blt lbl_80BFF500
/* 80BFF560  7F E3 FB 78 */	mr r3, r31
/* 80BFF564  4B FF EC E1 */	bl initCcCylinder__15daObjGOMIKABE_cFv
/* 80BFF568  7F E3 FB 78 */	mr r3, r31
/* 80BFF56C  C0 3D 00 C0 */	lfs f1, 0xc0(r29)
/* 80BFF570  C0 5D 00 C4 */	lfs f2, 0xc4(r29)
/* 80BFF574  FC 60 08 90 */	fmr f3, f1
/* 80BFF578  C0 9D 00 68 */	lfs f4, 0x68(r29)
/* 80BFF57C  FC A0 20 90 */	fmr f5, f4
/* 80BFF580  FC C0 20 90 */	fmr f6, f4
/* 80BFF584  4B 41 AF C5 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BFF588  7F E3 FB 78 */	mr r3, r31
/* 80BFF58C  4B FF FA B9 */	bl daObjGOMIKABE_Execute__FP15daObjGOMIKABE_c
/* 80BFF590  7F E3 FB 78 */	mr r3, r31
/* 80BFF594  4B FF F9 F1 */	bl setBaseMtx2__15daObjGOMIKABE_cFv
lbl_80BFF598:
/* 80BFF598  7F C3 F3 78 */	mr r3, r30
lbl_80BFF59C:
/* 80BFF59C  39 61 00 60 */	addi r11, r1, 0x60
/* 80BFF5A0  4B 76 2C 71 */	bl _restgpr_23
/* 80BFF5A4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BFF5A8  7C 08 03 A6 */	mtlr r0
/* 80BFF5AC  38 21 00 60 */	addi r1, r1, 0x60
/* 80BFF5B0  4E 80 00 20 */	blr 
