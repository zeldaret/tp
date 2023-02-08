lbl_806DE69C:
/* 806DE69C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806DE6A0  7C 08 02 A6 */	mflr r0
/* 806DE6A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806DE6A8  39 61 00 20 */	addi r11, r1, 0x20
/* 806DE6AC  4B C8 3B 2D */	bl _savegpr_28
/* 806DE6B0  7C 7D 1B 78 */	mr r29, r3
/* 806DE6B4  3C 80 80 6E */	lis r4, lit_3763@ha /* 0x806DEE38@ha */
/* 806DE6B8  3B E4 EE 38 */	addi r31, r4, lit_3763@l /* 0x806DEE38@l */
/* 806DE6BC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806DE6C0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806DE6C4  40 82 00 1C */	bne lbl_806DE6E0
/* 806DE6C8  28 1D 00 00 */	cmplwi r29, 0
/* 806DE6CC  41 82 00 08 */	beq lbl_806DE6D4
/* 806DE6D0  48 00 03 41 */	bl __ct__11e_gob_classFv
lbl_806DE6D4:
/* 806DE6D4  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 806DE6D8  60 00 00 08 */	ori r0, r0, 8
/* 806DE6DC  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_806DE6E0:
/* 806DE6E0  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 806DE6E4  3C 80 80 6E */	lis r4, d_a_e_gob__stringBase0@ha /* 0x806DF054@ha */
/* 806DE6E8  38 84 F0 54 */	addi r4, r4, d_a_e_gob__stringBase0@l /* 0x806DF054@l */
/* 806DE6EC  4B 94 E7 D1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806DE6F0  7C 7C 1B 78 */	mr r28, r3
/* 806DE6F4  2C 1C 00 04 */	cmpwi r28, 4
/* 806DE6F8  40 82 02 FC */	bne lbl_806DE9F4
/* 806DE6FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806DE700  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806DE704  3B C3 09 58 */	addi r30, r3, 0x958
/* 806DE708  7F C3 F3 78 */	mr r3, r30
/* 806DE70C  38 80 00 03 */	li r4, 3
/* 806DE710  4B 95 62 25 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 806DE714  2C 03 00 00 */	cmpwi r3, 0
/* 806DE718  41 82 00 0C */	beq lbl_806DE724
/* 806DE71C  38 60 00 05 */	li r3, 5
/* 806DE720  48 00 02 D8 */	b lbl_806DE9F8
lbl_806DE724:
/* 806DE724  7F A3 EB 78 */	mr r3, r29
/* 806DE728  3C 80 80 6E */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806DE528@ha */
/* 806DE72C  38 84 E5 28 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806DE528@l */
/* 806DE730  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 806DE734  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 806DE738  4B 93 BD 79 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806DE73C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806DE740  40 82 00 0C */	bne lbl_806DE74C
/* 806DE744  38 60 00 05 */	li r3, 5
/* 806DE748  48 00 02 B0 */	b lbl_806DE9F8
lbl_806DE74C:
/* 806DE74C  3C 60 80 6E */	lis r3, struct_806DF2C4+0x1@ha /* 0x806DF2C5@ha */
/* 806DE750  8C 03 F2 C5 */	lbzu r0, struct_806DF2C4+0x1@l(r3)  /* 0x806DF2C5@l */
/* 806DE754  28 00 00 00 */	cmplwi r0, 0
/* 806DE758  40 82 00 20 */	bne lbl_806DE778
/* 806DE75C  38 00 00 01 */	li r0, 1
/* 806DE760  98 1D 0D E0 */	stb r0, 0xde0(r29)
/* 806DE764  98 03 00 00 */	stb r0, 0(r3)
/* 806DE768  38 00 FF FF */	li r0, -1
/* 806DE76C  3C 60 80 6E */	lis r3, l_HIO@ha /* 0x806DF2D4@ha */
/* 806DE770  38 63 F2 D4 */	addi r3, r3, l_HIO@l /* 0x806DF2D4@l */
/* 806DE774  98 03 00 04 */	stb r0, 4(r3)
lbl_806DE778:
/* 806DE778  38 00 00 04 */	li r0, 4
/* 806DE77C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 806DE780  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806DE784  80 63 00 04 */	lwz r3, 4(r3)
/* 806DE788  38 03 00 24 */	addi r0, r3, 0x24
/* 806DE78C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 806DE790  7F A3 EB 78 */	mr r3, r29
/* 806DE794  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 806DE798  C0 5F 01 7C */	lfs f2, 0x17c(r31)
/* 806DE79C  FC 60 08 90 */	fmr f3, f1
/* 806DE7A0  4B 93 BD 89 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806DE7A4  7F A3 EB 78 */	mr r3, r29
/* 806DE7A8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 806DE7AC  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 806DE7B0  FC 60 08 90 */	fmr f3, f1
/* 806DE7B4  4B 93 BD 85 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806DE7B8  38 00 00 36 */	li r0, 0x36
/* 806DE7BC  98 1D 05 46 */	stb r0, 0x546(r29)
/* 806DE7C0  38 00 00 28 */	li r0, 0x28
/* 806DE7C4  98 1D 05 48 */	stb r0, 0x548(r29)
/* 806DE7C8  38 00 00 16 */	li r0, 0x16
/* 806DE7CC  98 1D 05 44 */	stb r0, 0x544(r29)
/* 806DE7D0  98 1D 05 4B */	stb r0, 0x54b(r29)
/* 806DE7D4  98 1D 05 45 */	stb r0, 0x545(r29)
/* 806DE7D8  98 1D 05 47 */	stb r0, 0x547(r29)
/* 806DE7DC  38 00 03 E8 */	li r0, 0x3e8
/* 806DE7E0  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 806DE7E4  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 806DE7E8  38 00 00 00 */	li r0, 0
/* 806DE7EC  90 01 00 08 */	stw r0, 8(r1)
/* 806DE7F0  38 7D 07 3C */	addi r3, r29, 0x73c
/* 806DE7F4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806DE7F8  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 806DE7FC  7F A6 EB 78 */	mr r6, r29
/* 806DE800  38 E0 00 01 */	li r7, 1
/* 806DE804  39 1D 06 FC */	addi r8, r29, 0x6fc
/* 806DE808  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 806DE80C  39 40 00 00 */	li r10, 0
/* 806DE810  4B 99 7A 39 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806DE814  38 7D 06 FC */	addi r3, r29, 0x6fc
/* 806DE818  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 806DE81C  FC 40 08 90 */	fmr f2, f1
/* 806DE820  4B 99 77 39 */	bl SetWall__12dBgS_AcchCirFff
/* 806DE824  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 806DE828  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806DE82C  38 BD 05 38 */	addi r5, r29, 0x538
/* 806DE830  38 DD 0D 24 */	addi r6, r29, 0xd24
/* 806DE834  38 E0 00 03 */	li r7, 3
/* 806DE838  39 00 00 01 */	li r8, 1
/* 806DE83C  39 20 00 02 */	li r9, 2
/* 806DE840  4B BE 3C 71 */	bl init__13Z2CreatureGobFP3VecP3VecP3VecUcUcUc
/* 806DE844  38 1D 05 B8 */	addi r0, r29, 0x5b8
/* 806DE848  90 1D 0D 00 */	stw r0, 0xd00(r29)
/* 806DE84C  C0 1F 02 0C */	lfs f0, 0x20c(r31)
/* 806DE850  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 806DE854  38 7D 09 14 */	addi r3, r29, 0x914
/* 806DE858  38 80 00 64 */	li r4, 0x64
/* 806DE85C  38 A0 00 00 */	li r5, 0
/* 806DE860  7F A6 EB 78 */	mr r6, r29
/* 806DE864  4B 9A 4F FD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806DE868  38 7D 0B C0 */	addi r3, r29, 0xbc0
/* 806DE86C  3C 80 80 6E */	lis r4, cc_sph_src@ha /* 0x806DF134@ha */
/* 806DE870  38 84 F1 34 */	addi r4, r4, cc_sph_src@l /* 0x806DF134@l */
/* 806DE874  4B 9A 61 C1 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806DE878  38 1D 09 14 */	addi r0, r29, 0x914
/* 806DE87C  90 1D 0C 04 */	stw r0, 0xc04(r29)
/* 806DE880  80 1D 0C 5C */	lwz r0, 0xc5c(r29)
/* 806DE884  60 00 00 04 */	ori r0, r0, 4
/* 806DE888  90 1D 0C 5C */	stw r0, 0xc5c(r29)
/* 806DE88C  38 7D 09 50 */	addi r3, r29, 0x950
/* 806DE890  3C 80 80 6E */	lis r4, at_sph_src@ha /* 0x806DF174@ha */
/* 806DE894  38 84 F1 74 */	addi r4, r4, at_sph_src@l /* 0x806DF174@l */
/* 806DE898  4B 9A 61 9D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806DE89C  38 1D 09 14 */	addi r0, r29, 0x914
/* 806DE8A0  90 1D 09 94 */	stw r0, 0x994(r29)
/* 806DE8A4  7F C3 F3 78 */	mr r3, r30
/* 806DE8A8  38 80 00 07 */	li r4, 7
/* 806DE8AC  4B 95 60 89 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 806DE8B0  2C 03 00 00 */	cmpwi r3, 0
/* 806DE8B4  41 82 00 50 */	beq lbl_806DE904
/* 806DE8B8  38 00 00 0B */	li r0, 0xb
/* 806DE8BC  B0 1D 06 56 */	sth r0, 0x656(r29)
/* 806DE8C0  38 00 00 00 */	li r0, 0
/* 806DE8C4  B0 1D 06 58 */	sth r0, 0x658(r29)
/* 806DE8C8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DE8CC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 806DE8D0  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 806DE8D4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 806DE8D8  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 806DE8DC  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 806DE8E0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806DE8E4  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 806DE8E8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806DE8EC  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 806DE8F0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806DE8F4  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 806DE8F8  38 00 00 3C */	li r0, 0x3c
/* 806DE8FC  B0 1D 06 7A */	sth r0, 0x67a(r29)
/* 806DE900  48 00 00 AC */	b lbl_806DE9AC
lbl_806DE904:
/* 806DE904  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DE908  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 806DE90C  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
/* 806DE910  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 806DE914  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 806DE918  28 00 00 00 */	cmplwi r0, 0
/* 806DE91C  40 82 00 18 */	bne lbl_806DE934
/* 806DE920  38 60 00 05 */	li r3, 5
/* 806DE924  38 80 FF FF */	li r4, -1
/* 806DE928  4B 94 F1 09 */	bl dComIfGs_isZoneSwitch__Fii
/* 806DE92C  2C 03 00 00 */	cmpwi r3, 0
/* 806DE930  41 82 00 44 */	beq lbl_806DE974
lbl_806DE934:
/* 806DE934  38 00 00 00 */	li r0, 0
/* 806DE938  B0 1D 06 56 */	sth r0, 0x656(r29)
/* 806DE93C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DE940  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 806DE944  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806DE948  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 806DE94C  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 806DE950  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 806DE954  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806DE958  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806DE95C  80 63 00 00 */	lwz r3, 0(r3)
/* 806DE960  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806DE964  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100001D@ha */
/* 806DE968  38 84 00 1D */	addi r4, r4, 0x001D /* 0x0100001D@l */
/* 806DE96C  4B BD 0B 31 */	bl subBgmStart__8Z2SeqMgrFUl
/* 806DE970  48 00 00 24 */	b lbl_806DE994
lbl_806DE974:
/* 806DE974  38 00 00 01 */	li r0, 1
/* 806DE978  B0 1D 06 56 */	sth r0, 0x656(r29)
/* 806DE97C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806DE980  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 806DE984  C0 1F 02 14 */	lfs f0, 0x214(r31)
/* 806DE988  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 806DE98C  C0 1F 02 18 */	lfs f0, 0x218(r31)
/* 806DE990  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_806DE994:
/* 806DE994  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806DE998  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 806DE99C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806DE9A0  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 806DE9A4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806DE9A8  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
lbl_806DE9AC:
/* 806DE9AC  38 60 00 05 */	li r3, 5
/* 806DE9B0  38 80 FF FF */	li r4, -1
/* 806DE9B4  4B 94 EF 99 */	bl dComIfGs_onZoneSwitch__Fii
/* 806DE9B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806DE9BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806DE9C0  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 806DE9C4  7F C3 F3 78 */	mr r3, r30
/* 806DE9C8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 806DE9CC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 806DE9D0  A0 84 05 3E */	lhz r4, 0x53e(r4)
/* 806DE9D4  4B 95 5F D1 */	bl offEventBit__11dSv_event_cFUs
/* 806DE9D8  7F C3 F3 78 */	mr r3, r30
/* 806DE9DC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 806DE9E0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 806DE9E4  A0 84 05 40 */	lhz r4, 0x540(r4)
/* 806DE9E8  4B 95 5F BD */	bl offEventBit__11dSv_event_cFUs
/* 806DE9EC  7F A3 EB 78 */	mr r3, r29
/* 806DE9F0  4B FF EE 11 */	bl daE_GOB_Execute__FP11e_gob_class
lbl_806DE9F4:
/* 806DE9F4  7F 83 E3 78 */	mr r3, r28
lbl_806DE9F8:
/* 806DE9F8  39 61 00 20 */	addi r11, r1, 0x20
/* 806DE9FC  4B C8 38 29 */	bl _restgpr_28
/* 806DEA00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806DEA04  7C 08 03 A6 */	mtlr r0
/* 806DEA08  38 21 00 20 */	addi r1, r1, 0x20
/* 806DEA0C  4E 80 00 20 */	blr 
