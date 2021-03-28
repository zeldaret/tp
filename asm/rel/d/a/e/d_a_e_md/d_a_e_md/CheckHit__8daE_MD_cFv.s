lbl_80709378:
/* 80709378  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8070937C  7C 08 02 A6 */	mflr r0
/* 80709380  90 01 00 54 */	stw r0, 0x54(r1)
/* 80709384  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80709388  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8070938C  7C 7F 1B 78 */	mr r31, r3
/* 80709390  80 03 05 B4 */	lwz r0, 0x5b4(r3)
/* 80709394  2C 00 00 00 */	cmpwi r0, 0
/* 80709398  40 81 00 1C */	ble lbl_807093B4
/* 8070939C  38 7F 08 EC */	addi r3, r31, 0x8ec
/* 807093A0  81 9F 09 28 */	lwz r12, 0x928(r31)
/* 807093A4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 807093A8  7D 89 03 A6 */	mtctr r12
/* 807093AC  4E 80 04 21 */	bctrl 
/* 807093B0  48 00 05 64 */	b lbl_80709914
lbl_807093B4:
/* 807093B4  38 7F 08 EC */	addi r3, r31, 0x8ec
/* 807093B8  4B 97 B0 A8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 807093BC  28 03 00 00 */	cmplwi r3, 0
/* 807093C0  41 82 05 54 */	beq lbl_80709914
/* 807093C4  38 00 00 03 */	li r0, 3
/* 807093C8  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 807093CC  38 00 00 28 */	li r0, 0x28
/* 807093D0  90 1F 0A 40 */	stw r0, 0xa40(r31)
/* 807093D4  38 7F 08 EC */	addi r3, r31, 0x8ec
/* 807093D8  4B 97 B1 20 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 807093DC  90 7F 0A 28 */	stw r3, 0xa28(r31)
/* 807093E0  7F E3 FB 78 */	mr r3, r31
/* 807093E4  4B FF FE E5 */	bl At_Check__8daE_MD_cFv
/* 807093E8  38 7F 08 EC */	addi r3, r31, 0x8ec
/* 807093EC  4B 97 B1 0C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 807093F0  7C 7E 1B 78 */	mr r30, r3
/* 807093F4  4B B5 A6 54 */	b GetAc__8cCcD_ObjFv
/* 807093F8  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 807093FC  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80709400  40 82 00 18 */	bne lbl_80709418
/* 80709404  A8 03 00 08 */	lha r0, 8(r3)
/* 80709408  2C 00 02 E8 */	cmpwi r0, 0x2e8
/* 8070940C  41 82 00 0C */	beq lbl_80709418
/* 80709410  2C 00 02 13 */	cmpwi r0, 0x213
/* 80709414  40 82 04 74 */	bne lbl_80709888
lbl_80709418:
/* 80709418  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 8070941C  2C 00 00 00 */	cmpwi r0, 0
/* 80709420  41 82 00 0C */	beq lbl_8070942C
/* 80709424  2C 00 00 02 */	cmpwi r0, 2
/* 80709428  40 82 04 60 */	bne lbl_80709888
lbl_8070942C:
/* 8070942C  80 1F 05 AC */	lwz r0, 0x5ac(r31)
/* 80709430  2C 00 00 00 */	cmpwi r0, 0
/* 80709434  40 82 02 34 */	bne lbl_80709668
/* 80709438  80 1F 09 88 */	lwz r0, 0x988(r31)
/* 8070943C  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80709440  90 1F 09 88 */	stw r0, 0x988(r31)
/* 80709444  38 00 00 01 */	li r0, 1
/* 80709448  90 1F 05 AC */	stw r0, 0x5ac(r31)
/* 8070944C  7F E3 FB 78 */	mr r3, r31
/* 80709450  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80709454  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80709458  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8070945C  4B 91 12 B4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80709460  B0 7F 05 C8 */	sth r3, 0x5c8(r31)
/* 80709464  38 61 00 34 */	addi r3, r1, 0x34
/* 80709468  38 80 00 00 */	li r4, 0
/* 8070946C  A8 BF 05 C8 */	lha r5, 0x5c8(r31)
/* 80709470  3C A5 00 01 */	addis r5, r5, 1
/* 80709474  38 05 80 00 */	addi r0, r5, -32768
/* 80709478  7C 05 07 34 */	extsh r5, r0
/* 8070947C  38 C0 00 00 */	li r6, 0
/* 80709480  4B B5 DF 74 */	b __ct__5csXyzFsss
/* 80709484  38 00 01 7C */	li r0, 0x17c
/* 80709488  B0 1F 05 CA */	sth r0, 0x5ca(r31)
/* 8070948C  38 00 2C 10 */	li r0, 0x2c10
/* 80709490  B0 1F 05 CC */	sth r0, 0x5cc(r31)
/* 80709494  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80709498  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8070949C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 807094A0  38 80 00 00 */	li r4, 0
/* 807094A4  90 81 00 08 */	stw r4, 8(r1)
/* 807094A8  38 00 FF FF */	li r0, -1
/* 807094AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 807094B0  90 81 00 10 */	stw r4, 0x10(r1)
/* 807094B4  90 81 00 14 */	stw r4, 0x14(r1)
/* 807094B8  90 81 00 18 */	stw r4, 0x18(r1)
/* 807094BC  38 80 00 00 */	li r4, 0
/* 807094C0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008772@ha */
/* 807094C4  38 A5 87 72 */	addi r5, r5, 0x8772 /* 0x00008772@l */
/* 807094C8  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 807094CC  38 FF 01 0C */	addi r7, r31, 0x10c
/* 807094D0  39 01 00 34 */	addi r8, r1, 0x34
/* 807094D4  39 20 00 00 */	li r9, 0
/* 807094D8  39 40 00 FF */	li r10, 0xff
/* 807094DC  3D 60 80 71 */	lis r11, lit_3858@ha
/* 807094E0  C0 2B A5 34 */	lfs f1, lit_3858@l(r11)
/* 807094E4  4B 94 35 AC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807094E8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 807094EC  38 80 00 00 */	li r4, 0
/* 807094F0  90 81 00 08 */	stw r4, 8(r1)
/* 807094F4  38 00 FF FF */	li r0, -1
/* 807094F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807094FC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80709500  90 81 00 14 */	stw r4, 0x14(r1)
/* 80709504  90 81 00 18 */	stw r4, 0x18(r1)
/* 80709508  38 80 00 00 */	li r4, 0
/* 8070950C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008773@ha */
/* 80709510  38 A5 87 73 */	addi r5, r5, 0x8773 /* 0x00008773@l */
/* 80709514  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80709518  38 FF 01 0C */	addi r7, r31, 0x10c
/* 8070951C  39 01 00 34 */	addi r8, r1, 0x34
/* 80709520  39 20 00 00 */	li r9, 0
/* 80709524  39 40 00 FF */	li r10, 0xff
/* 80709528  3D 60 80 71 */	lis r11, lit_3858@ha
/* 8070952C  C0 2B A5 34 */	lfs f1, lit_3858@l(r11)
/* 80709530  4B 94 35 60 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80709534  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80709538  38 80 00 00 */	li r4, 0
/* 8070953C  90 81 00 08 */	stw r4, 8(r1)
/* 80709540  38 00 FF FF */	li r0, -1
/* 80709544  90 01 00 0C */	stw r0, 0xc(r1)
/* 80709548  90 81 00 10 */	stw r4, 0x10(r1)
/* 8070954C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80709550  90 81 00 18 */	stw r4, 0x18(r1)
/* 80709554  38 80 00 00 */	li r4, 0
/* 80709558  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008774@ha */
/* 8070955C  38 A5 87 74 */	addi r5, r5, 0x8774 /* 0x00008774@l */
/* 80709560  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80709564  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80709568  39 01 00 34 */	addi r8, r1, 0x34
/* 8070956C  39 20 00 00 */	li r9, 0
/* 80709570  39 40 00 FF */	li r10, 0xff
/* 80709574  3D 60 80 71 */	lis r11, lit_3858@ha
/* 80709578  C0 2B A5 34 */	lfs f1, lit_3858@l(r11)
/* 8070957C  4B 94 35 14 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80709580  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80709584  38 80 00 00 */	li r4, 0
/* 80709588  90 81 00 08 */	stw r4, 8(r1)
/* 8070958C  38 00 FF FF */	li r0, -1
/* 80709590  90 01 00 0C */	stw r0, 0xc(r1)
/* 80709594  90 81 00 10 */	stw r4, 0x10(r1)
/* 80709598  90 81 00 14 */	stw r4, 0x14(r1)
/* 8070959C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807095A0  38 80 00 00 */	li r4, 0
/* 807095A4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008775@ha */
/* 807095A8  38 A5 87 75 */	addi r5, r5, 0x8775 /* 0x00008775@l */
/* 807095AC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 807095B0  38 FF 01 0C */	addi r7, r31, 0x10c
/* 807095B4  39 01 00 34 */	addi r8, r1, 0x34
/* 807095B8  39 20 00 00 */	li r9, 0
/* 807095BC  39 40 00 FF */	li r10, 0xff
/* 807095C0  3D 60 80 71 */	lis r11, lit_3858@ha
/* 807095C4  C0 2B A5 34 */	lfs f1, lit_3858@l(r11)
/* 807095C8  4B 94 34 C8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807095CC  38 00 00 0A */	li r0, 0xa
/* 807095D0  90 1F 05 D4 */	stw r0, 0x5d4(r31)
/* 807095D4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801D8@ha */
/* 807095D8  38 03 01 D8 */	addi r0, r3, 0x01D8 /* 0x000801D8@l */
/* 807095DC  90 01 00 28 */	stw r0, 0x28(r1)
/* 807095E0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807095E4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807095E8  80 63 00 00 */	lwz r3, 0(r3)
/* 807095EC  38 81 00 28 */	addi r4, r1, 0x28
/* 807095F0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807095F4  38 C0 00 00 */	li r6, 0
/* 807095F8  38 E0 00 00 */	li r7, 0
/* 807095FC  3D 00 80 71 */	lis r8, lit_3858@ha
/* 80709600  C0 28 A5 34 */	lfs f1, lit_3858@l(r8)
/* 80709604  FC 40 08 90 */	fmr f2, f1
/* 80709608  3D 00 80 71 */	lis r8, lit_3871@ha
/* 8070960C  C0 68 A5 3C */	lfs f3, lit_3871@l(r8)
/* 80709610  FC 80 18 90 */	fmr f4, f3
/* 80709614  39 00 00 00 */	li r8, 0
/* 80709618  4B BA 23 6C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8070961C  88 1F 05 D0 */	lbz r0, 0x5d0(r31)
/* 80709620  54 00 C0 0E */	slwi r0, r0, 0x18
/* 80709624  64 04 00 FF */	oris r4, r0, 0xff
/* 80709628  60 84 2F FF */	ori r4, r4, 0x2fff
/* 8070962C  88 1F 05 D9 */	lbz r0, 0x5d9(r31)
/* 80709630  28 00 00 00 */	cmplwi r0, 0
/* 80709634  41 82 02 E0 */	beq lbl_80709914
/* 80709638  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 8070963C  2C 00 00 00 */	cmpwi r0, 0
/* 80709640  40 82 02 D4 */	bne lbl_80709914
/* 80709644  38 60 01 EB */	li r3, 0x1eb
/* 80709648  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8070964C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80709650  7C 06 07 74 */	extsb r6, r0
/* 80709654  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 80709658  39 00 00 00 */	li r8, 0
/* 8070965C  39 20 FF FF */	li r9, -1
/* 80709660  4B 91 07 38 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80709664  48 00 02 B0 */	b lbl_80709914
lbl_80709668:
/* 80709668  2C 00 00 01 */	cmpwi r0, 1
/* 8070966C  40 82 02 A8 */	bne lbl_80709914
/* 80709670  80 1F 09 04 */	lwz r0, 0x904(r31)
/* 80709674  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80709678  90 1F 09 04 */	stw r0, 0x904(r31)
/* 8070967C  38 00 00 02 */	li r0, 2
/* 80709680  90 1F 05 AC */	stw r0, 0x5ac(r31)
/* 80709684  7F E3 FB 78 */	mr r3, r31
/* 80709688  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8070968C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80709690  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80709694  4B 91 10 7C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80709698  B0 7F 05 C8 */	sth r3, 0x5c8(r31)
/* 8070969C  38 61 00 2C */	addi r3, r1, 0x2c
/* 807096A0  38 80 00 00 */	li r4, 0
/* 807096A4  A8 BF 05 C8 */	lha r5, 0x5c8(r31)
/* 807096A8  3C A5 00 01 */	addis r5, r5, 1
/* 807096AC  38 05 80 00 */	addi r0, r5, -32768
/* 807096B0  7C 05 07 34 */	extsh r5, r0
/* 807096B4  38 C0 00 00 */	li r6, 0
/* 807096B8  4B B5 DD 3C */	b __ct__5csXyzFsss
/* 807096BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807096C0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 807096C4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 807096C8  38 80 00 00 */	li r4, 0
/* 807096CC  90 81 00 08 */	stw r4, 8(r1)
/* 807096D0  38 00 FF FF */	li r0, -1
/* 807096D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807096D8  90 81 00 10 */	stw r4, 0x10(r1)
/* 807096DC  90 81 00 14 */	stw r4, 0x14(r1)
/* 807096E0  90 81 00 18 */	stw r4, 0x18(r1)
/* 807096E4  38 80 00 00 */	li r4, 0
/* 807096E8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008776@ha */
/* 807096EC  38 A5 87 76 */	addi r5, r5, 0x8776 /* 0x00008776@l */
/* 807096F0  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 807096F4  38 FF 01 0C */	addi r7, r31, 0x10c
/* 807096F8  39 01 00 2C */	addi r8, r1, 0x2c
/* 807096FC  39 20 00 00 */	li r9, 0
/* 80709700  39 40 00 FF */	li r10, 0xff
/* 80709704  3D 60 80 71 */	lis r11, lit_3858@ha
/* 80709708  C0 2B A5 34 */	lfs f1, lit_3858@l(r11)
/* 8070970C  4B 94 33 84 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80709710  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80709714  38 80 00 00 */	li r4, 0
/* 80709718  90 81 00 08 */	stw r4, 8(r1)
/* 8070971C  38 00 FF FF */	li r0, -1
/* 80709720  90 01 00 0C */	stw r0, 0xc(r1)
/* 80709724  90 81 00 10 */	stw r4, 0x10(r1)
/* 80709728  90 81 00 14 */	stw r4, 0x14(r1)
/* 8070972C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80709730  38 80 00 00 */	li r4, 0
/* 80709734  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008777@ha */
/* 80709738  38 A5 87 77 */	addi r5, r5, 0x8777 /* 0x00008777@l */
/* 8070973C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80709740  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80709744  39 01 00 2C */	addi r8, r1, 0x2c
/* 80709748  39 20 00 00 */	li r9, 0
/* 8070974C  39 40 00 FF */	li r10, 0xff
/* 80709750  3D 60 80 71 */	lis r11, lit_3858@ha
/* 80709754  C0 2B A5 34 */	lfs f1, lit_3858@l(r11)
/* 80709758  4B 94 33 38 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8070975C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80709760  38 80 00 00 */	li r4, 0
/* 80709764  90 81 00 08 */	stw r4, 8(r1)
/* 80709768  38 00 FF FF */	li r0, -1
/* 8070976C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80709770  90 81 00 10 */	stw r4, 0x10(r1)
/* 80709774  90 81 00 14 */	stw r4, 0x14(r1)
/* 80709778  90 81 00 18 */	stw r4, 0x18(r1)
/* 8070977C  38 80 00 00 */	li r4, 0
/* 80709780  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008778@ha */
/* 80709784  38 A5 87 78 */	addi r5, r5, 0x8778 /* 0x00008778@l */
/* 80709788  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8070978C  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80709790  39 01 00 2C */	addi r8, r1, 0x2c
/* 80709794  39 20 00 00 */	li r9, 0
/* 80709798  39 40 00 FF */	li r10, 0xff
/* 8070979C  3D 60 80 71 */	lis r11, lit_3858@ha
/* 807097A0  C0 2B A5 34 */	lfs f1, lit_3858@l(r11)
/* 807097A4  4B 94 32 EC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807097A8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 807097AC  38 80 00 00 */	li r4, 0
/* 807097B0  90 81 00 08 */	stw r4, 8(r1)
/* 807097B4  38 00 FF FF */	li r0, -1
/* 807097B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807097BC  90 81 00 10 */	stw r4, 0x10(r1)
/* 807097C0  90 81 00 14 */	stw r4, 0x14(r1)
/* 807097C4  90 81 00 18 */	stw r4, 0x18(r1)
/* 807097C8  38 80 00 00 */	li r4, 0
/* 807097CC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008779@ha */
/* 807097D0  38 A5 87 79 */	addi r5, r5, 0x8779 /* 0x00008779@l */
/* 807097D4  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 807097D8  38 FF 01 0C */	addi r7, r31, 0x10c
/* 807097DC  39 01 00 2C */	addi r8, r1, 0x2c
/* 807097E0  39 20 00 00 */	li r9, 0
/* 807097E4  39 40 00 FF */	li r10, 0xff
/* 807097E8  3D 60 80 71 */	lis r11, lit_3858@ha
/* 807097EC  C0 2B A5 34 */	lfs f1, lit_3858@l(r11)
/* 807097F0  4B 94 32 A0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807097F4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801D9@ha */
/* 807097F8  38 03 01 D9 */	addi r0, r3, 0x01D9 /* 0x000801D9@l */
/* 807097FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80709800  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80709804  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80709808  80 63 00 00 */	lwz r3, 0(r3)
/* 8070980C  38 81 00 24 */	addi r4, r1, 0x24
/* 80709810  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80709814  38 C0 00 00 */	li r6, 0
/* 80709818  38 E0 00 00 */	li r7, 0
/* 8070981C  3D 00 80 71 */	lis r8, lit_3858@ha
/* 80709820  C0 28 A5 34 */	lfs f1, lit_3858@l(r8)
/* 80709824  FC 40 08 90 */	fmr f2, f1
/* 80709828  3D 00 80 71 */	lis r8, lit_3871@ha
/* 8070982C  C0 68 A5 3C */	lfs f3, lit_3871@l(r8)
/* 80709830  FC 80 18 90 */	fmr f4, f3
/* 80709834  39 00 00 00 */	li r8, 0
/* 80709838  4B BA 21 4C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8070983C  88 9F 05 D0 */	lbz r4, 0x5d0(r31)
/* 80709840  28 04 00 FF */	cmplwi r4, 0xff
/* 80709844  41 82 00 38 */	beq lbl_8070987C
/* 80709848  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8070984C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80709850  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80709854  7C 05 07 74 */	extsb r5, r0
/* 80709858  4B 92 BB 08 */	b isSwitch__10dSv_info_cCFii
/* 8070985C  2C 03 00 00 */	cmpwi r3, 0
/* 80709860  40 82 00 1C */	bne lbl_8070987C
/* 80709864  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80709868  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8070986C  88 9F 05 D0 */	lbz r4, 0x5d0(r31)
/* 80709870  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80709874  7C 05 07 74 */	extsb r5, r0
/* 80709878  4B 92 B9 88 */	b onSwitch__10dSv_info_cFii
lbl_8070987C:
/* 8070987C  38 00 00 01 */	li r0, 1
/* 80709880  90 1F 05 D4 */	stw r0, 0x5d4(r31)
/* 80709884  48 00 00 90 */	b lbl_80709914
lbl_80709888:
/* 80709888  80 1F 05 AC */	lwz r0, 0x5ac(r31)
/* 8070988C  2C 00 00 00 */	cmpwi r0, 0
/* 80709890  41 82 00 0C */	beq lbl_8070989C
/* 80709894  2C 00 00 04 */	cmpwi r0, 4
/* 80709898  40 82 00 7C */	bne lbl_80709914
lbl_8070989C:
/* 8070989C  38 00 00 04 */	li r0, 4
/* 807098A0  90 1F 05 AC */	stw r0, 0x5ac(r31)
/* 807098A4  7F E3 FB 78 */	mr r3, r31
/* 807098A8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807098AC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807098B0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807098B4  4B 91 0E 5C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807098B8  B0 7F 05 C8 */	sth r3, 0x5c8(r31)
/* 807098BC  38 00 01 7C */	li r0, 0x17c
/* 807098C0  B0 1F 05 CA */	sth r0, 0x5ca(r31)
/* 807098C4  38 00 2C 10 */	li r0, 0x2c10
/* 807098C8  B0 1F 05 CC */	sth r0, 0x5cc(r31)
/* 807098CC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801D7@ha */
/* 807098D0  38 03 01 D7 */	addi r0, r3, 0x01D7 /* 0x000801D7@l */
/* 807098D4  90 01 00 20 */	stw r0, 0x20(r1)
/* 807098D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807098DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807098E0  80 63 00 00 */	lwz r3, 0(r3)
/* 807098E4  38 81 00 20 */	addi r4, r1, 0x20
/* 807098E8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807098EC  38 C0 00 00 */	li r6, 0
/* 807098F0  38 E0 00 00 */	li r7, 0
/* 807098F4  3D 00 80 71 */	lis r8, lit_3858@ha
/* 807098F8  C0 28 A5 34 */	lfs f1, lit_3858@l(r8)
/* 807098FC  FC 40 08 90 */	fmr f2, f1
/* 80709900  3D 00 80 71 */	lis r8, lit_3871@ha
/* 80709904  C0 68 A5 3C */	lfs f3, lit_3871@l(r8)
/* 80709908  FC 80 18 90 */	fmr f4, f3
/* 8070990C  39 00 00 00 */	li r8, 0
/* 80709910  4B BA 20 74 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80709914:
/* 80709914  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80709918  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8070991C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80709920  7C 08 03 A6 */	mtlr r0
/* 80709924  38 21 00 50 */	addi r1, r1, 0x50
/* 80709928  4E 80 00 20 */	blr 
