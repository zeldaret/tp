lbl_8086F634:
/* 8086F634  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8086F638  7C 08 02 A6 */	mflr r0
/* 8086F63C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8086F640  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8086F644  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 8086F648  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8086F64C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 8086F650  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 8086F654  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 8086F658  39 61 00 80 */	addi r11, r1, 0x80
/* 8086F65C  4B AF 2B 6D */	bl _savegpr_24
/* 8086F660  7C 7F 1B 78 */	mr r31, r3
/* 8086F664  3C 80 80 87 */	lis r4, lit_3829@ha /* 0x80870094@ha */
/* 8086F668  3B C4 00 94 */	addi r30, r4, lit_3829@l /* 0x80870094@l */
/* 8086F66C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8086F670  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8086F674  40 82 01 10 */	bne lbl_8086F784
/* 8086F678  7F E0 FB 79 */	or. r0, r31, r31
/* 8086F67C  41 82 00 FC */	beq lbl_8086F778
/* 8086F680  7C 1C 03 78 */	mr r28, r0
/* 8086F684  4B 7A 94 E1 */	bl __ct__10fopAc_ac_cFv
/* 8086F688  38 7C 05 74 */	addi r3, r28, 0x574
/* 8086F68C  3C 80 80 87 */	lis r4, __ct__9fs_lure_sFv@ha /* 0x80870018@ha */
/* 8086F690  38 84 00 18 */	addi r4, r4, __ct__9fs_lure_sFv@l /* 0x80870018@l */
/* 8086F694  3C A0 80 87 */	lis r5, __dt__9fs_lure_sFv@ha /* 0x8086FFDC@ha */
/* 8086F698  38 A5 FF DC */	addi r5, r5, __dt__9fs_lure_sFv@l /* 0x8086FFDC@l */
/* 8086F69C  38 C0 00 40 */	li r6, 0x40
/* 8086F6A0  38 E0 00 30 */	li r7, 0x30
/* 8086F6A4  4B AF 26 BD */	bl __construct_array
/* 8086F6A8  38 7C 11 74 */	addi r3, r28, 0x1174
/* 8086F6AC  3C 80 80 87 */	lis r4, __ct__8fs_rod_sFv@ha /* 0x8086FFC0@ha */
/* 8086F6B0  38 84 FF C0 */	addi r4, r4, __ct__8fs_rod_sFv@l /* 0x8086FFC0@l */
/* 8086F6B4  3C A0 80 87 */	lis r5, __dt__8fs_rod_sFv@ha /* 0x8086FF84@ha */
/* 8086F6B8  38 A5 FF 84 */	addi r5, r5, __dt__8fs_rod_sFv@l /* 0x8086FF84@l */
/* 8086F6BC  38 C0 00 5C */	li r6, 0x5c
/* 8086F6C0  38 E0 00 03 */	li r7, 3
/* 8086F6C4  4B AF 26 9D */	bl __construct_array
/* 8086F6C8  38 7C 12 88 */	addi r3, r28, 0x1288
/* 8086F6CC  3C 80 80 87 */	lis r4, __ct__9fs_weed_sFv@ha /* 0x8086FF38@ha */
/* 8086F6D0  38 84 FF 38 */	addi r4, r4, __ct__9fs_weed_sFv@l /* 0x8086FF38@l */
/* 8086F6D4  3C A0 80 87 */	lis r5, __dt__9fs_weed_sFv@ha /* 0x8086FED8@ha */
/* 8086F6D8  38 A5 FE D8 */	addi r5, r5, __dt__9fs_weed_sFv@l /* 0x8086FED8@l */
/* 8086F6DC  38 C0 00 C0 */	li r6, 0xc0
/* 8086F6E0  38 E0 00 3C */	li r7, 0x3c
/* 8086F6E4  4B AF 26 7D */	bl __construct_array
/* 8086F6E8  3C 60 80 87 */	lis r3, __vt__18mDoExt_3DlineMat_c@ha /* 0x8087093C@ha */
/* 8086F6EC  38 03 09 3C */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l /* 0x8087093C@l */
/* 8086F6F0  90 1C 3F 88 */	stw r0, 0x3f88(r28)
/* 8086F6F4  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat0_c@ha /* 0x803A325C@ha */
/* 8086F6F8  38 03 32 5C */	addi r0, r3, __vt__19mDoExt_3DlineMat0_c@l /* 0x803A325C@l */
/* 8086F6FC  90 1C 3F 88 */	stw r0, 0x3f88(r28)
/* 8086F700  38 7C 3F A4 */	addi r3, r28, 0x3fa4
/* 8086F704  3C 80 80 87 */	lis r4, __ct__10fs_tsubo_sFv@ha /* 0x8086FED4@ha */
/* 8086F708  38 84 FE D4 */	addi r4, r4, __ct__10fs_tsubo_sFv@l /* 0x8086FED4@l */
/* 8086F70C  3C A0 80 87 */	lis r5, __dt__10fs_tsubo_sFv@ha /* 0x8086FE98@ha */
/* 8086F710  38 A5 FE 98 */	addi r5, r5, __dt__10fs_tsubo_sFv@l /* 0x8086FE98@l */
/* 8086F714  38 C0 00 28 */	li r6, 0x28
/* 8086F718  38 E0 00 02 */	li r7, 2
/* 8086F71C  4B AF 26 45 */	bl __construct_array
/* 8086F720  38 7C 40 74 */	addi r3, r28, 0x4074
/* 8086F724  4B 80 67 89 */	bl __ct__12dBgS_AcchCirFv
/* 8086F728  3B 1C 40 B4 */	addi r24, r28, 0x40b4
/* 8086F72C  7F 03 C3 78 */	mr r3, r24
/* 8086F730  4B 80 69 71 */	bl __ct__9dBgS_AcchFv
/* 8086F734  3C 60 80 87 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80870918@ha */
/* 8086F738  38 63 09 18 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80870918@l */
/* 8086F73C  90 78 00 10 */	stw r3, 0x10(r24)
/* 8086F740  38 03 00 0C */	addi r0, r3, 0xc
/* 8086F744  90 18 00 14 */	stw r0, 0x14(r24)
/* 8086F748  38 03 00 18 */	addi r0, r3, 0x18
/* 8086F74C  90 18 00 24 */	stw r0, 0x24(r24)
/* 8086F750  38 78 00 14 */	addi r3, r24, 0x14
/* 8086F754  4B 80 97 15 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8086F758  38 7C 42 90 */	addi r3, r28, 0x4290
/* 8086F75C  3C 80 80 87 */	lis r4, __ct__10fs_koro2_sFv@ha /* 0x8086FDB4@ha */
/* 8086F760  38 84 FD B4 */	addi r4, r4, __ct__10fs_koro2_sFv@l /* 0x8086FDB4@l */
/* 8086F764  3C A0 80 87 */	lis r5, __dt__10fs_koro2_sFv@ha /* 0x8086FD78@ha */
/* 8086F768  38 A5 FD 78 */	addi r5, r5, __dt__10fs_koro2_sFv@l /* 0x8086FD78@l */
/* 8086F76C  38 C0 00 68 */	li r6, 0x68
/* 8086F770  38 E0 00 64 */	li r7, 0x64
/* 8086F774  4B AF 25 ED */	bl __construct_array
lbl_8086F778:
/* 8086F778  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8086F77C  60 00 00 08 */	ori r0, r0, 8
/* 8086F780  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8086F784:
/* 8086F784  38 7F 05 68 */	addi r3, r31, 0x568
/* 8086F788  3C 80 80 87 */	lis r4, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086F78C  38 84 02 7C */	addi r4, r4, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086F790  4B 7B D7 2D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8086F794  7C 7D 1B 78 */	mr r29, r3
/* 8086F798  2C 1D 00 04 */	cmpwi r29, 4
/* 8086F79C  40 82 05 A8 */	bne lbl_8086FD44
/* 8086F7A0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8086F7A4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8086F7A8  28 03 00 23 */	cmplwi r3, 0x23
/* 8086F7AC  40 82 00 74 */	bne lbl_8086F820
/* 8086F7B0  7F E3 FB 78 */	mr r3, r31
/* 8086F7B4  3C 80 80 87 */	lis r4, BalluseHeapInit__FP10fopAc_ac_c@ha /* 0x8086F5C8@ha */
/* 8086F7B8  38 84 F5 C8 */	addi r4, r4, BalluseHeapInit__FP10fopAc_ac_c@l /* 0x8086F5C8@l */
/* 8086F7BC  38 A0 08 00 */	li r5, 0x800
/* 8086F7C0  4B 7A AC F1 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8086F7C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8086F7C8  40 82 00 0C */	bne lbl_8086F7D4
/* 8086F7CC  38 60 00 05 */	li r3, 5
/* 8086F7D0  48 00 05 78 */	b lbl_8086FD48
lbl_8086F7D4:
/* 8086F7D4  38 00 00 00 */	li r0, 0
/* 8086F7D8  90 01 00 08 */	stw r0, 8(r1)
/* 8086F7DC  38 7F 40 B4 */	addi r3, r31, 0x40b4
/* 8086F7E0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8086F7E4  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 8086F7E8  7F E6 FB 78 */	mr r6, r31
/* 8086F7EC  38 E0 00 01 */	li r7, 1
/* 8086F7F0  39 1F 40 74 */	addi r8, r31, 0x4074
/* 8086F7F4  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 8086F7F8  39 40 00 00 */	li r10, 0
/* 8086F7FC  4B 80 6A 4D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8086F800  38 7F 40 74 */	addi r3, r31, 0x4074
/* 8086F804  C0 3E 01 AC */	lfs f1, 0x1ac(r30)
/* 8086F808  C0 5E 01 B0 */	lfs f2, 0x1b0(r30)
/* 8086F80C  4B 80 67 4D */	bl SetWall__12dBgS_AcchCirFff
/* 8086F810  38 7F 40 B4 */	addi r3, r31, 0x40b4
/* 8086F814  4B 80 7B D9 */	bl OnWallSort__9dBgS_AcchFv
/* 8086F818  7F A3 EB 78 */	mr r3, r29
/* 8086F81C  48 00 05 2C */	b lbl_8086FD48
lbl_8086F820:
/* 8086F820  7C 60 07 74 */	extsb r0, r3
/* 8086F824  2C 00 00 64 */	cmpwi r0, 0x64
/* 8086F828  41 80 01 24 */	blt lbl_8086F94C
/* 8086F82C  38 03 FF 9C */	addi r0, r3, -100
/* 8086F830  98 1F 40 0E */	stb r0, 0x400e(r31)
/* 8086F834  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086F838  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086F83C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8086F840  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F63F@ha */
/* 8086F844  38 84 F6 3F */	addi r4, r4, 0xF63F /* 0x0000F63F@l */
/* 8086F848  4B 7C 51 BD */	bl getEventReg__11dSv_event_cCFUs
/* 8086F84C  88 9F 40 0E */	lbz r4, 0x400e(r31)
/* 8086F850  38 84 FF FF */	addi r4, r4, -1
/* 8086F854  54 60 07 38 */	rlwinm r0, r3, 0, 0x1c, 0x1c
/* 8086F858  7C 80 03 78 */	or r0, r4, r0
/* 8086F85C  98 1F 05 67 */	stb r0, 0x567(r31)
/* 8086F860  38 A1 00 20 */	addi r5, r1, 0x20
/* 8086F864  38 9E 01 88 */	addi r4, r30, 0x188
/* 8086F868  38 00 00 04 */	li r0, 4
/* 8086F86C  7C 09 03 A6 */	mtctr r0
lbl_8086F870:
/* 8086F870  80 64 00 04 */	lwz r3, 4(r4)
/* 8086F874  84 04 00 08 */	lwzu r0, 8(r4)
/* 8086F878  90 65 00 04 */	stw r3, 4(r5)
/* 8086F87C  94 05 00 08 */	stwu r0, 8(r5)
/* 8086F880  42 00 FF F0 */	bdnz lbl_8086F870
/* 8086F884  7F E3 FB 78 */	mr r3, r31
/* 8086F888  3C 80 80 87 */	lis r4, koro2_heapinit__FP10fopAc_ac_c@ha /* 0x8086E7F0@ha */
/* 8086F88C  38 84 E7 F0 */	addi r4, r4, koro2_heapinit__FP10fopAc_ac_c@l /* 0x8086E7F0@l */
/* 8086F890  88 1F 40 0E */	lbz r0, 0x400e(r31)
/* 8086F894  54 00 10 3A */	slwi r0, r0, 2
/* 8086F898  38 A1 00 20 */	addi r5, r1, 0x20
/* 8086F89C  7C A5 00 2E */	lwzx r5, r5, r0
/* 8086F8A0  4B 7A AC 11 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8086F8A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8086F8A8  40 82 00 0C */	bne lbl_8086F8B4
/* 8086F8AC  38 60 00 05 */	li r3, 5
/* 8086F8B0  48 00 04 98 */	b lbl_8086FD48
lbl_8086F8B4:
/* 8086F8B4  80 9F 40 2C */	lwz r4, 0x402c(r31)
/* 8086F8B8  28 04 00 00 */	cmplwi r4, 0
/* 8086F8BC  41 82 00 28 */	beq lbl_8086F8E4
/* 8086F8C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086F8C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086F8C8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8086F8CC  7F E5 FB 78 */	mr r5, r31
/* 8086F8D0  4B 80 51 39 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8086F8D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8086F8D8  41 82 00 0C */	beq lbl_8086F8E4
/* 8086F8DC  38 60 00 05 */	li r3, 5
/* 8086F8E0  48 00 04 68 */	b lbl_8086FD48
lbl_8086F8E4:
/* 8086F8E4  3B 40 00 00 */	li r26, 0
/* 8086F8E8  3B 60 00 00 */	li r27, 0
/* 8086F8EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086F8F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086F8F4  3B 23 0F 38 */	addi r25, r3, 0xf38
lbl_8086F8F8:
/* 8086F8F8  38 1B 42 F4 */	addi r0, r27, 0x42f4
/* 8086F8FC  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8086F900  28 04 00 00 */	cmplwi r4, 0
/* 8086F904  41 82 00 20 */	beq lbl_8086F924
/* 8086F908  7F 23 CB 78 */	mr r3, r25
/* 8086F90C  7F E5 FB 78 */	mr r5, r31
/* 8086F910  4B 80 50 F9 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8086F914  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8086F918  41 82 00 0C */	beq lbl_8086F924
/* 8086F91C  38 60 00 05 */	li r3, 5
/* 8086F920  48 00 04 28 */	b lbl_8086FD48
lbl_8086F924:
/* 8086F924  3B 5A 00 01 */	addi r26, r26, 1
/* 8086F928  2C 1A 00 64 */	cmpwi r26, 0x64
/* 8086F92C  3B 7B 00 68 */	addi r27, r27, 0x68
/* 8086F930  41 80 FF C8 */	blt lbl_8086F8F8
/* 8086F934  38 00 00 1E */	li r0, 0x1e
/* 8086F938  98 1F 42 8D */	stb r0, 0x428d(r31)
/* 8086F93C  38 00 00 01 */	li r0, 1
/* 8086F940  98 1F 40 0D */	stb r0, 0x400d(r31)
/* 8086F944  7F A3 EB 78 */	mr r3, r29
/* 8086F948  48 00 04 00 */	b lbl_8086FD48
lbl_8086F94C:
/* 8086F94C  38 00 00 00 */	li r0, 0
/* 8086F950  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 8086F954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086F958  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086F95C  3B 83 07 F0 */	addi r28, r3, 0x7f0
/* 8086F960  7F 83 E3 78 */	mr r3, r28
/* 8086F964  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F63F@ha */
/* 8086F968  38 84 F6 3F */	addi r4, r4, 0xF63F /* 0x0000F63F@l */
/* 8086F96C  4B 7C 50 99 */	bl getEventReg__11dSv_event_cCFUs
/* 8086F970  98 7F 40 0C */	stb r3, 0x400c(r31)
/* 8086F974  7F E3 FB 78 */	mr r3, r31
/* 8086F978  3C 80 80 87 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8086ECC8@ha */
/* 8086F97C  38 84 EC C8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8086ECC8@l */
/* 8086F980  3C A0 00 06 */	lis r5, 0x0006 /* 0x0005B000@ha */
/* 8086F984  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0005B000@l */
/* 8086F988  4B 7A AB 29 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8086F98C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8086F990  40 82 00 0C */	bne lbl_8086F99C
/* 8086F994  38 60 00 05 */	li r3, 5
/* 8086F998  48 00 03 B0 */	b lbl_8086FD48
lbl_8086F99C:
/* 8086F99C  80 9F 6B 68 */	lwz r4, 0x6b68(r31)
/* 8086F9A0  28 04 00 00 */	cmplwi r4, 0
/* 8086F9A4  41 82 00 28 */	beq lbl_8086F9CC
/* 8086F9A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086F9AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086F9B0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8086F9B4  7F E5 FB 78 */	mr r5, r31
/* 8086F9B8  4B 80 50 51 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8086F9BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8086F9C0  41 82 00 0C */	beq lbl_8086F9CC
/* 8086F9C4  38 60 00 05 */	li r3, 5
/* 8086F9C8  48 00 03 80 */	b lbl_8086FD48
lbl_8086F9CC:
/* 8086F9CC  3B 40 00 00 */	li r26, 0
/* 8086F9D0  3B 60 00 00 */	li r27, 0
/* 8086F9D4  C3 BE 01 08 */	lfs f29, 0x108(r30)
lbl_8086F9D8:
/* 8086F9D8  2C 1A 00 1E */	cmpwi r26, 0x1e
/* 8086F9DC  40 80 00 3C */	bge lbl_8086FA18
/* 8086F9E0  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 8086F9E4  4B 9F 81 21 */	bl cM_rndFX2__Ff
/* 8086F9E8  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 8086F9EC  EC 00 08 2A */	fadds f0, f0, f1
/* 8086F9F0  7F 3F DA 14 */	add r25, r31, r27
/* 8086F9F4  D0 19 12 90 */	stfs f0, 0x1290(r25)
/* 8086F9F8  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 8086F9FC  D0 19 12 8C */	stfs f0, 0x128c(r25)
/* 8086FA00  C0 3E 01 C0 */	lfs f1, 0x1c0(r30)
/* 8086FA04  4B 9F 80 C9 */	bl cM_rndF2__Ff
/* 8086FA08  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 8086FA0C  EC 00 08 2A */	fadds f0, f0, f1
/* 8086FA10  D0 19 13 3C */	stfs f0, 0x133c(r25)
/* 8086FA14  48 00 00 38 */	b lbl_8086FA4C
lbl_8086FA18:
/* 8086FA18  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 8086FA1C  4B 9F 80 E9 */	bl cM_rndFX2__Ff
/* 8086FA20  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 8086FA24  EC 00 08 2A */	fadds f0, f0, f1
/* 8086FA28  7F 3F DA 14 */	add r25, r31, r27
/* 8086FA2C  D0 19 12 90 */	stfs f0, 0x1290(r25)
/* 8086FA30  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 8086FA34  D0 19 12 8C */	stfs f0, 0x128c(r25)
/* 8086FA38  C0 3E 01 C0 */	lfs f1, 0x1c0(r30)
/* 8086FA3C  4B 9F 80 91 */	bl cM_rndF2__Ff
/* 8086FA40  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 8086FA44  EC 00 08 2A */	fadds f0, f0, f1
/* 8086FA48  D0 19 13 3C */	stfs f0, 0x133c(r25)
lbl_8086FA4C:
/* 8086FA4C  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 8086FA50  4B 9F 80 B5 */	bl cM_rndFX2__Ff
/* 8086FA54  EC 1D 08 2A */	fadds f0, f29, f1
/* 8086FA58  7F 3F DA 14 */	add r25, r31, r27
/* 8086FA5C  D0 19 12 88 */	stfs f0, 0x1288(r25)
/* 8086FA60  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8086FA64  4B 9F 80 69 */	bl cM_rndF2__Ff
/* 8086FA68  FC 00 08 1E */	fctiwz f0, f1
/* 8086FA6C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8086FA70  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8086FA74  B0 19 13 44 */	sth r0, 0x1344(r25)
/* 8086FA78  3B 5A 00 01 */	addi r26, r26, 1
/* 8086FA7C  2C 1A 00 3C */	cmpwi r26, 0x3c
/* 8086FA80  3B 7B 00 C0 */	addi r27, r27, 0xc0
/* 8086FA84  41 80 FF 54 */	blt lbl_8086F9D8
/* 8086FA88  7F E3 FB 78 */	mr r3, r31
/* 8086FA8C  4B FF DF 75 */	bl daFshop_Execute__FP11fshop_class
/* 8086FA90  3C 60 80 87 */	lis r3, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086FA94  38 63 02 7C */	addi r3, r3, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086FA98  38 80 00 05 */	li r4, 5
/* 8086FA9C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086FAA0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086FAA4  3F 25 00 02 */	addis r25, r5, 2
/* 8086FAA8  3B 39 C2 F8 */	addi r25, r25, -15624
/* 8086FAAC  7F 25 CB 78 */	mr r5, r25
/* 8086FAB0  38 C0 00 80 */	li r6, 0x80
/* 8086FAB4  4B 7C C8 39 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086FAB8  7C 64 1B 78 */	mr r4, r3
/* 8086FABC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086FAC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086FAC4  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 8086FAC8  7F 43 D3 78 */	mr r3, r26
/* 8086FACC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8086FAD0  7C 05 07 74 */	extsb r5, r0
/* 8086FAD4  38 C0 00 00 */	li r6, 0
/* 8086FAD8  4B 7B D0 19 */	bl addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 8086FADC  3C 60 80 87 */	lis r3, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086FAE0  38 63 02 7C */	addi r3, r3, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086FAE4  38 80 00 06 */	li r4, 6
/* 8086FAE8  7F 25 CB 78 */	mr r5, r25
/* 8086FAEC  38 C0 00 80 */	li r6, 0x80
/* 8086FAF0  4B 7C C7 FD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086FAF4  7C 64 1B 78 */	mr r4, r3
/* 8086FAF8  7F 43 D3 78 */	mr r3, r26
/* 8086FAFC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8086FB00  7C 05 07 74 */	extsb r5, r0
/* 8086FB04  38 C0 00 00 */	li r6, 0
/* 8086FB08  4B 7B CF E9 */	bl addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 8086FB0C  38 00 00 01 */	li r0, 1
/* 8086FB10  98 1F 6B 7C */	stb r0, 0x6b7c(r31)
/* 8086FB14  3B 40 00 00 */	li r26, 0
/* 8086FB18  3B 20 00 00 */	li r25, 0
lbl_8086FB1C:
/* 8086FB1C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8086FB20  7C 07 07 74 */	extsb r7, r0
/* 8086FB24  93 21 00 08 */	stw r25, 8(r1)
/* 8086FB28  38 60 01 37 */	li r3, 0x137
/* 8086FB2C  28 1F 00 00 */	cmplwi r31, 0
/* 8086FB30  41 82 00 0C */	beq lbl_8086FB3C
/* 8086FB34  80 9F 00 04 */	lwz r4, 4(r31)
/* 8086FB38  48 00 00 08 */	b lbl_8086FB40
lbl_8086FB3C:
/* 8086FB3C  38 80 FF FF */	li r4, -1
lbl_8086FB40:
/* 8086FB40  38 BA FF 65 */	addi r5, r26, -155
/* 8086FB44  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8086FB48  39 00 00 00 */	li r8, 0
/* 8086FB4C  39 20 00 00 */	li r9, 0
/* 8086FB50  39 40 FF FF */	li r10, -1
/* 8086FB54  4B 7A A3 9D */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8086FB58  3B 5A 00 01 */	addi r26, r26, 1
/* 8086FB5C  2C 1A 00 08 */	cmpwi r26, 8
/* 8086FB60  41 80 FF BC */	blt lbl_8086FB1C
/* 8086FB64  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8086FB68  7C 07 07 74 */	extsb r7, r0
/* 8086FB6C  38 00 00 00 */	li r0, 0
/* 8086FB70  90 01 00 08 */	stw r0, 8(r1)
/* 8086FB74  38 60 01 37 */	li r3, 0x137
/* 8086FB78  28 1F 00 00 */	cmplwi r31, 0
/* 8086FB7C  41 82 00 0C */	beq lbl_8086FB88
/* 8086FB80  80 9F 00 04 */	lwz r4, 4(r31)
/* 8086FB84  48 00 00 08 */	b lbl_8086FB8C
lbl_8086FB88:
/* 8086FB88  38 80 FF FF */	li r4, -1
lbl_8086FB8C:
/* 8086FB8C  38 A0 FF 23 */	li r5, -221
/* 8086FB90  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8086FB94  39 00 00 00 */	li r8, 0
/* 8086FB98  39 20 00 00 */	li r9, 0
/* 8086FB9C  39 40 FF FF */	li r10, -1
/* 8086FBA0  4B 7A A3 51 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8086FBA4  3B 00 00 00 */	li r24, 0
/* 8086FBA8  3B 60 00 00 */	li r27, 0
/* 8086FBAC  3C 60 80 87 */	lis r3, check_kind@ha /* 0x808708B4@ha */
/* 8086FBB0  3B 23 08 B4 */	addi r25, r3, check_kind@l /* 0x808708B4@l */
/* 8086FBB4  C3 DE 01 C4 */	lfs f30, 0x1c4(r30)
/* 8086FBB8  CB BE 01 E0 */	lfd f29, 0x1e0(r30)
/* 8086FBBC  3F 40 43 30 */	lis r26, 0x4330
lbl_8086FBC0:
/* 8086FBC0  7F 83 E3 78 */	mr r3, r28
/* 8086FBC4  7C 99 DA 2E */	lhzx r4, r25, r27
/* 8086FBC8  4B 7C 4E 3D */	bl getEventReg__11dSv_event_cCFUs
/* 8086FBCC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8086FBD0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8086FBD4  93 41 00 48 */	stw r26, 0x48(r1)
/* 8086FBD8  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8086FBDC  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8086FBE0  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8086FBE4  FC 00 00 1E */	fctiwz f0, f0
/* 8086FBE8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8086FBEC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8086FBF0  2C 00 00 0A */	cmpwi r0, 0xa
/* 8086FBF4  41 80 00 30 */	blt lbl_8086FC24
/* 8086FBF8  38 60 01 36 */	li r3, 0x136
/* 8086FBFC  54 00 40 2E */	slwi r0, r0, 8
/* 8086FC00  64 00 FF FF */	oris r0, r0, 0xffff
/* 8086FC04  7C 04 C3 78 */	or r4, r0, r24
/* 8086FC08  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8086FC0C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8086FC10  7C 06 07 74 */	extsb r6, r0
/* 8086FC14  38 E0 00 00 */	li r7, 0
/* 8086FC18  39 00 00 00 */	li r8, 0
/* 8086FC1C  39 20 FF FF */	li r9, -1
/* 8086FC20  4B 7A A1 79 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_8086FC24:
/* 8086FC24  3B 18 00 01 */	addi r24, r24, 1
/* 8086FC28  2C 18 00 03 */	cmpwi r24, 3
/* 8086FC2C  3B 7B 00 02 */	addi r27, r27, 2
/* 8086FC30  40 81 FF 90 */	ble lbl_8086FBC0
/* 8086FC34  C0 1E 01 C8 */	lfs f0, 0x1c8(r30)
/* 8086FC38  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8086FC3C  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 8086FC40  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8086FC44  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 8086FC48  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8086FC4C  38 61 00 10 */	addi r3, r1, 0x10
/* 8086FC50  38 80 00 00 */	li r4, 0
/* 8086FC54  38 A0 00 00 */	li r5, 0
/* 8086FC58  38 C0 00 00 */	li r6, 0
/* 8086FC5C  4B 9F 77 99 */	bl __ct__5csXyzFsss
/* 8086FC60  38 60 01 1A */	li r3, 0x11a
/* 8086FC64  38 80 FF 01 */	li r4, -255
/* 8086FC68  38 A1 00 18 */	addi r5, r1, 0x18
/* 8086FC6C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8086FC70  7C 06 07 74 */	extsb r6, r0
/* 8086FC74  38 E1 00 10 */	addi r7, r1, 0x10
/* 8086FC78  39 00 00 00 */	li r8, 0
/* 8086FC7C  39 20 FF FF */	li r9, -1
/* 8086FC80  4B 7A A1 19 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8086FC84  3B 00 00 00 */	li r24, 0
/* 8086FC88  3F 60 FF FF */	lis r27, 0xFFFF /* 0xFFFF2005@ha */
lbl_8086FC8C:
/* 8086FC8C  38 60 01 36 */	li r3, 0x136
/* 8086FC90  38 9B 20 05 */	addi r4, r27, 0x2005 /* 0xFFFF2005@l */
/* 8086FC94  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8086FC98  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8086FC9C  7C 06 07 74 */	extsb r6, r0
/* 8086FCA0  38 E0 00 00 */	li r7, 0
/* 8086FCA4  39 00 00 00 */	li r8, 0
/* 8086FCA8  39 20 FF FF */	li r9, -1
/* 8086FCAC  4B 7A A0 ED */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8086FCB0  3B 18 00 01 */	addi r24, r24, 1
/* 8086FCB4  2C 18 00 08 */	cmpwi r24, 8
/* 8086FCB8  41 80 FF D4 */	blt lbl_8086FC8C
/* 8086FCBC  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 8086FCC0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8086FCC4  C0 1E 01 D4 */	lfs f0, 0x1d4(r30)
/* 8086FCC8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8086FCCC  C0 1E 01 D8 */	lfs f0, 0x1d8(r30)
/* 8086FCD0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8086FCD4  38 60 01 00 */	li r3, 0x100
/* 8086FCD8  38 80 FF FF */	li r4, -1
/* 8086FCDC  38 A1 00 18 */	addi r5, r1, 0x18
/* 8086FCE0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8086FCE4  7C 06 07 74 */	extsb r6, r0
/* 8086FCE8  38 E0 00 00 */	li r7, 0
/* 8086FCEC  39 00 00 00 */	li r8, 0
/* 8086FCF0  39 20 FF FF */	li r9, -1
/* 8086FCF4  4B 7A A0 A5 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8086FCF8  3B 00 00 00 */	li r24, 0
/* 8086FCFC  C3 BE 01 18 */	lfs f29, 0x118(r30)
/* 8086FD00  C3 DE 00 1C */	lfs f30, 0x1c(r30)
/* 8086FD04  C3 FE 01 DC */	lfs f31, 0x1dc(r30)
lbl_8086FD08:
/* 8086FD08  D3 A1 00 18 */	stfs f29, 0x18(r1)
/* 8086FD0C  D3 C1 00 1C */	stfs f30, 0x1c(r1)
/* 8086FD10  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 8086FD14  38 60 03 00 */	li r3, 0x300
/* 8086FD18  38 80 FF FF */	li r4, -1
/* 8086FD1C  38 A1 00 18 */	addi r5, r1, 0x18
/* 8086FD20  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8086FD24  7C 06 07 74 */	extsb r6, r0
/* 8086FD28  38 E0 00 00 */	li r7, 0
/* 8086FD2C  39 00 00 00 */	li r8, 0
/* 8086FD30  39 20 FF FF */	li r9, -1
/* 8086FD34  4B 7A A0 65 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8086FD38  3B 18 00 01 */	addi r24, r24, 1
/* 8086FD3C  2C 18 00 05 */	cmpwi r24, 5
/* 8086FD40  41 80 FF C8 */	blt lbl_8086FD08
lbl_8086FD44:
/* 8086FD44  7F A3 EB 78 */	mr r3, r29
lbl_8086FD48:
/* 8086FD48  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 8086FD4C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8086FD50  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 8086FD54  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8086FD58  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 8086FD5C  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8086FD60  39 61 00 80 */	addi r11, r1, 0x80
/* 8086FD64  4B AF 24 B1 */	bl _restgpr_24
/* 8086FD68  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8086FD6C  7C 08 03 A6 */	mtlr r0
/* 8086FD70  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8086FD74  4E 80 00 20 */	blr 
