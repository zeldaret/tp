lbl_806B5460:
/* 806B5460  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806B5464  7C 08 02 A6 */	mflr r0
/* 806B5468  90 01 00 34 */	stw r0, 0x34(r1)
/* 806B546C  39 61 00 30 */	addi r11, r1, 0x30
/* 806B5470  4B CA CD 65 */	bl _savegpr_27
/* 806B5474  7C 7F 1B 78 */	mr r31, r3
/* 806B5478  3C 80 80 6B */	lis r4, lit_3792@ha /* 0x806B5CD4@ha */
/* 806B547C  3B C4 5C D4 */	addi r30, r4, lit_3792@l /* 0x806B5CD4@l */
/* 806B5480  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806B5484  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806B5488  40 82 01 08 */	bne lbl_806B5590
/* 806B548C  7F E0 FB 79 */	or. r0, r31, r31
/* 806B5490  41 82 00 F4 */	beq lbl_806B5584
/* 806B5494  7C 1D 03 78 */	mr r29, r0
/* 806B5498  4B 96 36 CD */	bl __ct__10fopAc_ac_cFv
/* 806B549C  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 806B54A0  4B C0 BA C5 */	bl __ct__15Z2CreatureEnemyFv
/* 806B54A4  38 7D 06 CA */	addi r3, r29, 0x6ca
/* 806B54A8  3C 80 80 6B */	lis r4, __ct__5csXyzFv@ha /* 0x806B5B7C@ha */
/* 806B54AC  38 84 5B 7C */	addi r4, r4, __ct__5csXyzFv@l /* 0x806B5B7C@l */
/* 806B54B0  3C A0 80 6B */	lis r5, __dt__5csXyzFv@ha /* 0x806B5B80@ha */
/* 806B54B4  38 A5 5B 80 */	addi r5, r5, __dt__5csXyzFv@l /* 0x806B5B80@l */
/* 806B54B8  38 C0 00 06 */	li r6, 6
/* 806B54BC  38 E0 00 03 */	li r7, 3
/* 806B54C0  4B CA C8 A1 */	bl __construct_array
/* 806B54C4  38 7D 07 84 */	addi r3, r29, 0x784
/* 806B54C8  4B 9C 09 E5 */	bl __ct__12dBgS_AcchCirFv
/* 806B54CC  3B 7D 07 C4 */	addi r27, r29, 0x7c4
/* 806B54D0  7F 63 DB 78 */	mr r3, r27
/* 806B54D4  4B 9C 0B CD */	bl __ct__9dBgS_AcchFv
/* 806B54D8  3C 60 80 6B */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x806B6218@ha */
/* 806B54DC  38 63 62 18 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x806B6218@l */
/* 806B54E0  90 7B 00 10 */	stw r3, 0x10(r27)
/* 806B54E4  38 03 00 0C */	addi r0, r3, 0xc
/* 806B54E8  90 1B 00 14 */	stw r0, 0x14(r27)
/* 806B54EC  38 03 00 18 */	addi r0, r3, 0x18
/* 806B54F0  90 1B 00 24 */	stw r0, 0x24(r27)
/* 806B54F4  38 7B 00 14 */	addi r3, r27, 0x14
/* 806B54F8  4B 9C 39 71 */	bl SetObj__16dBgS_PolyPassChkFv
/* 806B54FC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806B5500  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806B5504  90 1D 09 B4 */	stw r0, 0x9b4(r29)
/* 806B5508  38 7D 09 B8 */	addi r3, r29, 0x9b8
/* 806B550C  4B 9C E2 55 */	bl __ct__10dCcD_GSttsFv
/* 806B5510  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 806B5514  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 806B5518  90 7D 09 B4 */	stw r3, 0x9b4(r29)
/* 806B551C  38 03 00 20 */	addi r0, r3, 0x20
/* 806B5520  90 1D 09 B8 */	stw r0, 0x9b8(r29)
/* 806B5524  38 7D 09 D8 */	addi r3, r29, 0x9d8
/* 806B5528  3C 80 80 6B */	lis r4, __ct__8dCcD_SphFv@ha /* 0x806B59F8@ha */
/* 806B552C  38 84 59 F8 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x806B59F8@l */
/* 806B5530  3C A0 80 6B */	lis r5, __dt__8dCcD_SphFv@ha /* 0x806B592C@ha */
/* 806B5534  38 A5 59 2C */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x806B592C@l */
/* 806B5538  38 C0 01 38 */	li r6, 0x138
/* 806B553C  38 E0 00 02 */	li r7, 2
/* 806B5540  4B CA C8 21 */	bl __construct_array
/* 806B5544  38 7D 0C 48 */	addi r3, r29, 0xc48
/* 806B5548  3C 80 80 6B */	lis r4, __ct__8dCcD_SphFv@ha /* 0x806B59F8@ha */
/* 806B554C  38 84 59 F8 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x806B59F8@l */
/* 806B5550  3C A0 80 6B */	lis r5, __dt__8dCcD_SphFv@ha /* 0x806B592C@ha */
/* 806B5554  38 A5 59 2C */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x806B592C@l */
/* 806B5558  38 C0 01 38 */	li r6, 0x138
/* 806B555C  38 E0 00 02 */	li r7, 2
/* 806B5560  4B CA C8 01 */	bl __construct_array
/* 806B5564  38 7D 0E B8 */	addi r3, r29, 0xeb8
/* 806B5568  3C 80 80 6B */	lis r4, __ct__8dCcD_SphFv@ha /* 0x806B59F8@ha */
/* 806B556C  38 84 59 F8 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x806B59F8@l */
/* 806B5570  3C A0 80 6B */	lis r5, __dt__8dCcD_SphFv@ha /* 0x806B592C@ha */
/* 806B5574  38 A5 59 2C */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x806B592C@l */
/* 806B5578  38 C0 01 38 */	li r6, 0x138
/* 806B557C  38 E0 00 02 */	li r7, 2
/* 806B5580  4B CA C7 E1 */	bl __construct_array
lbl_806B5584:
/* 806B5584  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 806B5588  60 00 00 08 */	ori r0, r0, 8
/* 806B558C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_806B5590:
/* 806B5590  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806B5594  3C 80 80 6B */	lis r4, d_a_e_dt__stringBase0@ha /* 0x806B5ED0@ha */
/* 806B5598  38 84 5E D0 */	addi r4, r4, d_a_e_dt__stringBase0@l /* 0x806B5ED0@l */
/* 806B559C  4B 97 79 21 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806B55A0  2C 03 00 04 */	cmpwi r3, 4
/* 806B55A4  41 82 00 08 */	beq lbl_806B55AC
/* 806B55A8  48 00 03 6C */	b lbl_806B5914
lbl_806B55AC:
/* 806B55AC  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 806B55B0  3C 80 80 6B */	lis r4, d_a_e_dt__stringBase0@ha /* 0x806B5ED0@ha */
/* 806B55B4  38 84 5E D0 */	addi r4, r4, d_a_e_dt__stringBase0@l /* 0x806B5ED0@l */
/* 806B55B8  38 84 00 05 */	addi r4, r4, 5
/* 806B55BC  4B 97 79 01 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806B55C0  2C 03 00 04 */	cmpwi r3, 4
/* 806B55C4  41 82 00 08 */	beq lbl_806B55CC
/* 806B55C8  48 00 03 4C */	b lbl_806B5914
lbl_806B55CC:
/* 806B55CC  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806B55D0  3C 80 80 6B */	lis r4, d_a_e_dt__stringBase0@ha /* 0x806B5ED0@ha */
/* 806B55D4  38 84 5E D0 */	addi r4, r4, d_a_e_dt__stringBase0@l /* 0x806B5ED0@l */
/* 806B55D8  38 84 00 0D */	addi r4, r4, 0xd
/* 806B55DC  4B 97 78 E1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806B55E0  7C 7D 1B 78 */	mr r29, r3
/* 806B55E4  2C 1D 00 04 */	cmpwi r29, 4
/* 806B55E8  41 82 00 08 */	beq lbl_806B55F0
/* 806B55EC  48 00 03 28 */	b lbl_806B5914
lbl_806B55F0:
/* 806B55F0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806B55F4  98 1F 07 7A */	stb r0, 0x77a(r31)
/* 806B55F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B55FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B5600  88 9F 07 7A */	lbz r4, 0x77a(r31)
/* 806B5604  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806B5608  7C 05 07 74 */	extsb r5, r0
/* 806B560C  4B 97 FD 55 */	bl isSwitch__10dSv_info_cCFii
/* 806B5610  2C 03 00 00 */	cmpwi r3, 0
/* 806B5614  41 82 00 0C */	beq lbl_806B5620
/* 806B5618  38 60 00 05 */	li r3, 5
/* 806B561C  48 00 02 F8 */	b lbl_806B5914
lbl_806B5620:
/* 806B5620  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B5624  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B5628  38 63 09 58 */	addi r3, r3, 0x958
/* 806B562C  38 80 00 07 */	li r4, 7
/* 806B5630  4B 97 F3 05 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 806B5634  2C 03 00 00 */	cmpwi r3, 0
/* 806B5638  41 82 00 0C */	beq lbl_806B5644
/* 806B563C  38 60 00 05 */	li r3, 5
/* 806B5640  48 00 02 D4 */	b lbl_806B5914
lbl_806B5644:
/* 806B5644  7F E3 FB 78 */	mr r3, r31
/* 806B5648  3C 80 80 6B */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806B5440@ha */
/* 806B564C  38 84 54 40 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806B5440@l */
/* 806B5650  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000A840@ha */
/* 806B5654  38 A5 A8 40 */	addi r5, r5, 0xA840 /* 0x0000A840@l */
/* 806B5658  4B 96 4E 59 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806B565C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806B5660  40 82 00 0C */	bne lbl_806B566C
/* 806B5664  38 60 00 05 */	li r3, 5
/* 806B5668  48 00 02 AC */	b lbl_806B5914
lbl_806B566C:
/* 806B566C  3C 60 80 6B */	lis r3, struct_806B629C+0x1@ha /* 0x806B629D@ha */
/* 806B5670  8C 03 62 9D */	lbzu r0, struct_806B629C+0x1@l(r3)  /* 0x806B629D@l */
/* 806B5674  28 00 00 00 */	cmplwi r0, 0
/* 806B5678  40 82 00 20 */	bne lbl_806B5698
/* 806B567C  38 00 00 01 */	li r0, 1
/* 806B5680  98 03 00 00 */	stb r0, 0(r3)
/* 806B5684  98 1F 11 70 */	stb r0, 0x1170(r31)
/* 806B5688  38 00 FF FF */	li r0, -1
/* 806B568C  3C 60 80 6B */	lis r3, l_HIO@ha /* 0x806B62AC@ha */
/* 806B5690  38 63 62 AC */	addi r3, r3, l_HIO@l /* 0x806B62AC@l */
/* 806B5694  98 03 00 04 */	stb r0, 4(r3)
lbl_806B5698:
/* 806B5698  38 00 00 04 */	li r0, 4
/* 806B569C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806B56A0  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B56A4  80 63 00 04 */	lwz r3, 4(r3)
/* 806B56A8  38 03 00 24 */	addi r0, r3, 0x24
/* 806B56AC  90 1F 05 04 */	stw r0, 0x504(r31)
/* 806B56B0  7F E3 FB 78 */	mr r3, r31
/* 806B56B4  C0 3E 01 EC */	lfs f1, 0x1ec(r30)
/* 806B56B8  C0 5E 01 F0 */	lfs f2, 0x1f0(r30)
/* 806B56BC  FC 60 08 90 */	fmr f3, f1
/* 806B56C0  4B 96 4E 69 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806B56C4  7F E3 FB 78 */	mr r3, r31
/* 806B56C8  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 806B56CC  C0 5E 01 F4 */	lfs f2, 0x1f4(r30)
/* 806B56D0  FC 60 08 90 */	fmr f3, f1
/* 806B56D4  4B 96 4E 65 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806B56D8  38 00 00 00 */	li r0, 0
/* 806B56DC  90 01 00 08 */	stw r0, 8(r1)
/* 806B56E0  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 806B56E4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806B56E8  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 806B56EC  7F E6 FB 78 */	mr r6, r31
/* 806B56F0  38 E0 00 01 */	li r7, 1
/* 806B56F4  39 1F 07 84 */	addi r8, r31, 0x784
/* 806B56F8  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 806B56FC  39 40 00 00 */	li r10, 0
/* 806B5700  4B 9C 0B 49 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806B5704  38 7F 07 84 */	addi r3, r31, 0x784
/* 806B5708  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 806B570C  C0 5E 01 F4 */	lfs f2, 0x1f4(r30)
/* 806B5710  4B 9C 08 49 */	bl SetWall__12dBgS_AcchCirFff
/* 806B5714  38 00 01 90 */	li r0, 0x190
/* 806B5718  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 806B571C  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 806B5720  38 7F 09 9C */	addi r3, r31, 0x99c
/* 806B5724  38 80 00 FF */	li r4, 0xff
/* 806B5728  38 A0 00 00 */	li r5, 0
/* 806B572C  7F E6 FB 78 */	mr r6, r31
/* 806B5730  4B 9C E1 31 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806B5734  38 7F 09 D8 */	addi r3, r31, 0x9d8
/* 806B5738  3C 80 80 6B */	lis r4, cc_dt_body_src__6E_DT_n@ha /* 0x806B5F3C@ha */
/* 806B573C  38 84 5F 3C */	addi r4, r4, cc_dt_body_src__6E_DT_n@l /* 0x806B5F3C@l */
/* 806B5740  4B 9C F2 F5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806B5744  38 1F 09 9C */	addi r0, r31, 0x99c
/* 806B5748  90 1F 0A 1C */	stw r0, 0xa1c(r31)
/* 806B574C  38 7F 0B 10 */	addi r3, r31, 0xb10
/* 806B5750  3C 80 80 6B */	lis r4, cc_dt_body_src__6E_DT_n@ha /* 0x806B5F3C@ha */
/* 806B5754  38 84 5F 3C */	addi r4, r4, cc_dt_body_src__6E_DT_n@l /* 0x806B5F3C@l */
/* 806B5758  4B 9C F2 DD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806B575C  38 1F 09 9C */	addi r0, r31, 0x99c
/* 806B5760  90 1F 0B 54 */	stw r0, 0xb54(r31)
/* 806B5764  38 7F 0C 48 */	addi r3, r31, 0xc48
/* 806B5768  3C 80 80 6B */	lis r4, cc_dt_body_src__6E_DT_n@ha /* 0x806B5F3C@ha */
/* 806B576C  38 84 5F 3C */	addi r4, r4, cc_dt_body_src__6E_DT_n@l /* 0x806B5F3C@l */
/* 806B5770  4B 9C F2 C5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806B5774  38 1F 09 9C */	addi r0, r31, 0x99c
/* 806B5778  90 1F 0C 8C */	stw r0, 0xc8c(r31)
/* 806B577C  38 7F 0D 80 */	addi r3, r31, 0xd80
/* 806B5780  3C 80 80 6B */	lis r4, cc_dt_body_src__6E_DT_n@ha /* 0x806B5F3C@ha */
/* 806B5784  38 84 5F 3C */	addi r4, r4, cc_dt_body_src__6E_DT_n@l /* 0x806B5F3C@l */
/* 806B5788  4B 9C F2 AD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806B578C  38 1F 09 9C */	addi r0, r31, 0x99c
/* 806B5790  90 1F 0D C4 */	stw r0, 0xdc4(r31)
/* 806B5794  38 7F 0E B8 */	addi r3, r31, 0xeb8
/* 806B5798  3C 80 80 6B */	lis r4, cc_dt_tongue_src__6E_DT_n@ha /* 0x806B5F7C@ha */
/* 806B579C  38 84 5F 7C */	addi r4, r4, cc_dt_tongue_src__6E_DT_n@l /* 0x806B5F7C@l */
/* 806B57A0  4B 9C F2 95 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806B57A4  38 1F 09 9C */	addi r0, r31, 0x99c
/* 806B57A8  90 1F 0E FC */	stw r0, 0xefc(r31)
/* 806B57AC  38 7F 0F F0 */	addi r3, r31, 0xff0
/* 806B57B0  3C 80 80 6B */	lis r4, cc_dt_tongue_src__6E_DT_n@ha /* 0x806B5F7C@ha */
/* 806B57B4  38 84 5F 7C */	addi r4, r4, cc_dt_tongue_src__6E_DT_n@l /* 0x806B5F7C@l */
/* 806B57B8  4B 9C F2 7D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806B57BC  38 1F 09 9C */	addi r0, r31, 0x99c
/* 806B57C0  90 1F 10 34 */	stw r0, 0x1034(r31)
/* 806B57C4  38 00 00 04 */	li r0, 4
/* 806B57C8  98 1F 05 46 */	stb r0, 0x546(r31)
/* 806B57CC  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 806B57D0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806B57D4  38 BF 05 38 */	addi r5, r31, 0x538
/* 806B57D8  38 C0 00 03 */	li r6, 3
/* 806B57DC  38 E0 00 01 */	li r7, 1
/* 806B57E0  4B C0 B8 B5 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806B57E4  38 1F 05 D4 */	addi r0, r31, 0x5d4
/* 806B57E8  90 1F 11 30 */	stw r0, 0x1130(r31)
/* 806B57EC  38 00 00 01 */	li r0, 1
/* 806B57F0  98 1F 11 46 */	stb r0, 0x1146(r31)
/* 806B57F4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B57F8  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 806B57FC  3C 60 80 6B */	lis r3, l_HIO@ha /* 0x806B62AC@ha */
/* 806B5800  3B 63 62 AC */	addi r27, r3, l_HIO@l /* 0x806B62AC@l */
/* 806B5804  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 806B5808  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 806B580C  C0 1B 00 08 */	lfs f0, 8(r27)
/* 806B5810  D0 1F 06 EC */	stfs f0, 0x6ec(r31)
/* 806B5814  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B5818  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B581C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 806B5820  C0 24 04 D4 */	lfs f1, 0x4d4(r4)
/* 806B5824  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 806B5828  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B582C  40 80 00 10 */	bge lbl_806B583C
/* 806B5830  38 00 00 00 */	li r0, 0
/* 806B5834  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 806B5838  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
lbl_806B583C:
/* 806B583C  C0 24 04 D8 */	lfs f1, 0x4d8(r4)
/* 806B5840  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 806B5844  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B5848  40 81 00 10 */	ble lbl_806B5858
/* 806B584C  38 00 00 00 */	li r0, 0
/* 806B5850  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 806B5854  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
lbl_806B5858:
/* 806B5858  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 806B585C  8C 03 0C 98 */	lbzu r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 806B5860  28 00 00 00 */	cmplwi r0, 0
/* 806B5864  41 82 00 8C */	beq lbl_806B58F0
/* 806B5868  38 00 00 00 */	li r0, 0
/* 806B586C  98 03 00 00 */	stb r0, 0(r3)
/* 806B5870  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 806B5874  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 806B5878  7F E3 FB 78 */	mr r3, r31
/* 806B587C  38 80 00 00 */	li r4, 0
/* 806B5880  38 A0 00 00 */	li r5, 0
/* 806B5884  4B FF 8E C9 */	bl setActionMode__8daE_DT_cFii
/* 806B5888  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 806B588C  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 806B5890  38 00 00 04 */	li r0, 4
/* 806B5894  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806B5898  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B589C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 806B58A0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806B58A4  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 806B58A8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 806B58AC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806B58B0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 806B58B4  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 806B58B8  4B BB B3 4D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806B58BC  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 806B58C0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806B58C4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806B58C8  80 63 00 00 */	lwz r3, 0(r3)
/* 806B58CC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806B58D0  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000027@ha */
/* 806B58D4  38 84 00 27 */	addi r4, r4, 0x0027 /* 0x01000027@l */
/* 806B58D8  4B BF 9B C5 */	bl subBgmStart__8Z2SeqMgrFUl
/* 806B58DC  38 60 00 03 */	li r3, 3
/* 806B58E0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806B58E4  7C 04 07 74 */	extsb r4, r0
/* 806B58E8  4B 97 81 B5 */	bl dComIfGs_onOneZoneSwitch__Fii
/* 806B58EC  48 00 00 1C */	b lbl_806B5908
lbl_806B58F0:
/* 806B58F0  7F E3 FB 78 */	mr r3, r31
/* 806B58F4  38 80 00 0A */	li r4, 0xa
/* 806B58F8  38 A0 00 00 */	li r5, 0
/* 806B58FC  4B FF 8E 51 */	bl setActionMode__8daE_DT_cFii
/* 806B5900  38 00 02 58 */	li r0, 0x258
/* 806B5904  90 1F 07 14 */	stw r0, 0x714(r31)
lbl_806B5908:
/* 806B5908  7F E3 FB 78 */	mr r3, r31
/* 806B590C  4B FF F8 25 */	bl daE_DT_Execute__FP8daE_DT_c
/* 806B5910  7F A3 EB 78 */	mr r3, r29
lbl_806B5914:
/* 806B5914  39 61 00 30 */	addi r11, r1, 0x30
/* 806B5918  4B CA C9 09 */	bl _restgpr_27
/* 806B591C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806B5920  7C 08 03 A6 */	mtlr r0
/* 806B5924  38 21 00 30 */	addi r1, r1, 0x30
/* 806B5928  4E 80 00 20 */	blr 
