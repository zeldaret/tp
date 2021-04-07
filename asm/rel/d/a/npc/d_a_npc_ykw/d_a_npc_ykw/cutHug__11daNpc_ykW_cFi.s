lbl_80B6450C:
/* 80B6450C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B64510  7C 08 02 A6 */	mflr r0
/* 80B64514  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B64518  39 61 00 70 */	addi r11, r1, 0x70
/* 80B6451C  4B 7F DC B1 */	bl _savegpr_25
/* 80B64520  7C 7A 1B 78 */	mr r26, r3
/* 80B64524  7C 9B 23 78 */	mr r27, r4
/* 80B64528  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha /* 0x80B67C38@ha */
/* 80B6452C  3B E3 7C 38 */	addi r31, r3, m__17daNpc_ykW_Param_c@l /* 0x80B67C38@l */
/* 80B64530  3B C0 00 00 */	li r30, 0
/* 80B64534  3B A0 FF FF */	li r29, -1
/* 80B64538  3B 80 00 00 */	li r28, 0
/* 80B6453C  80 7F 01 E8 */	lwz r3, 0x1e8(r31)
/* 80B64540  80 1F 01 EC */	lwz r0, 0x1ec(r31)
/* 80B64544  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80B64548  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B6454C  93 41 00 1C */	stw r26, 0x1c(r1)
/* 80B64550  38 7A 0F 9C */	addi r3, r26, 0xf9c
/* 80B64554  4B 5E 11 B5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B64558  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B6455C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B64560  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B64564  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B64568  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 80B6456C  90 64 5E F4 */	stw r3, 0x5ef4(r4)
/* 80B64570  38 00 00 00 */	li r0, 0
/* 80B64574  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 80B64578  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 80B6457C  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 80B64580  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 80B64584  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 80B64588  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 80B6458C  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 80B64590  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 80B64594  3B 24 4F F8 */	addi r25, r4, 0x4ff8
/* 80B64598  7F 23 CB 78 */	mr r3, r25
/* 80B6459C  7F 64 DB 78 */	mr r4, r27
/* 80B645A0  3C A0 80 B6 */	lis r5, d_a_npc_ykw__stringBase0@ha /* 0x80B67E68@ha */
/* 80B645A4  38 A5 7E 68 */	addi r5, r5, d_a_npc_ykw__stringBase0@l /* 0x80B67E68@l */
/* 80B645A8  38 A5 00 B4 */	addi r5, r5, 0xb4
/* 80B645AC  38 C0 00 03 */	li r6, 3
/* 80B645B0  4B 4E 3B 3D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B645B4  28 03 00 00 */	cmplwi r3, 0
/* 80B645B8  41 82 00 08 */	beq lbl_80B645C0
/* 80B645BC  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B645C0:
/* 80B645C0  7F 23 CB 78 */	mr r3, r25
/* 80B645C4  7F 64 DB 78 */	mr r4, r27
/* 80B645C8  3C A0 80 B6 */	lis r5, d_a_npc_ykw__stringBase0@ha /* 0x80B67E68@ha */
/* 80B645CC  38 A5 7E 68 */	addi r5, r5, d_a_npc_ykw__stringBase0@l /* 0x80B67E68@l */
/* 80B645D0  38 A5 00 B8 */	addi r5, r5, 0xb8
/* 80B645D4  38 C0 00 03 */	li r6, 3
/* 80B645D8  4B 4E 3B 15 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B645DC  28 03 00 00 */	cmplwi r3, 0
/* 80B645E0  41 82 00 08 */	beq lbl_80B645E8
/* 80B645E4  83 83 00 00 */	lwz r28, 0(r3)
lbl_80B645E8:
/* 80B645E8  7F 23 CB 78 */	mr r3, r25
/* 80B645EC  7F 64 DB 78 */	mr r4, r27
/* 80B645F0  4B 4E 37 5D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B645F4  2C 03 00 00 */	cmpwi r3, 0
/* 80B645F8  41 82 01 68 */	beq lbl_80B64760
/* 80B645FC  2C 1D 00 01 */	cmpwi r29, 1
/* 80B64600  41 82 00 28 */	beq lbl_80B64628
/* 80B64604  40 80 01 5C */	bge lbl_80B64760
/* 80B64608  2C 1D 00 00 */	cmpwi r29, 0
/* 80B6460C  40 80 00 08 */	bge lbl_80B64614
/* 80B64610  48 00 01 50 */	b lbl_80B64760
lbl_80B64614:
/* 80B64614  7F 43 D3 78 */	mr r3, r26
/* 80B64618  38 80 02 01 */	li r4, 0x201
/* 80B6461C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80B64620  4B 5E 75 D1 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B64624  48 00 01 3C */	b lbl_80B64760
lbl_80B64628:
/* 80B64628  38 00 00 00 */	li r0, 0
/* 80B6462C  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80B64630  B0 01 00 26 */	sth r0, 0x26(r1)
/* 80B64634  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80B64638  38 7A 05 50 */	addi r3, r26, 0x550
/* 80B6463C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B64640  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B64644  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B64648  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B6464C  4B 70 C5 B9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B64650  B0 61 00 26 */	sth r3, 0x26(r1)
/* 80B64654  4B 70 32 19 */	bl cM_rnd__Fv
/* 80B64658  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 80B6465C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B64660  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80B64664  EC 20 00 72 */	fmuls f1, f0, f1
/* 80B64668  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 80B6466C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B64670  FC 00 00 1E */	fctiwz f0, f0
/* 80B64674  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80B64678  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 80B6467C  A8 01 00 26 */	lha r0, 0x26(r1)
/* 80B64680  7C 00 1A 14 */	add r0, r0, r3
/* 80B64684  B0 01 00 26 */	sth r0, 0x26(r1)
/* 80B64688  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B6468C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B64690  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B64694  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B64698  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 80B6469C  C0 5F 01 50 */	lfs f2, 0x150(r31)
/* 80B646A0  48 00 32 4D */	bl func_80B678EC
/* 80B646A4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B646A8  C0 1F 01 F0 */	lfs f0, 0x1f0(r31)
/* 80B646AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B646B0  C0 1A 05 50 */	lfs f0, 0x550(r26)
/* 80B646B4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B646B8  C0 3A 05 54 */	lfs f1, 0x554(r26)
/* 80B646BC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80B646C0  C0 1A 05 58 */	lfs f0, 0x558(r26)
/* 80B646C4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B646C8  C0 1F 01 F4 */	lfs f0, 0x1f4(r31)
/* 80B646CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B646D0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B646D4  38 00 00 00 */	li r0, 0
/* 80B646D8  90 01 00 08 */	stw r0, 8(r1)
/* 80B646DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B646E0  38 61 00 38 */	addi r3, r1, 0x38
/* 80B646E4  38 80 00 00 */	li r4, 0
/* 80B646E8  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80B646EC  7C 05 07 74 */	extsb r5, r0
/* 80B646F0  38 C1 00 24 */	addi r6, r1, 0x24
/* 80B646F4  38 E1 00 2C */	addi r7, r1, 0x2c
/* 80B646F8  39 01 00 18 */	addi r8, r1, 0x18
/* 80B646FC  39 21 00 14 */	addi r9, r1, 0x14
/* 80B64700  39 40 FF FF */	li r10, -1
/* 80B64704  4B 4B 7E AD */	bl fopAcM_fastCreateItem__FPC4cXyziiPC5csXyzPC4cXyzPfPfiiPFPv_i
/* 80B64708  7C 7B 1B 79 */	or. r27, r3, r3
/* 80B6470C  41 82 00 50 */	beq lbl_80B6475C
/* 80B64710  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802B0@ha */
/* 80B64714  38 03 02 B0 */	addi r0, r3, 0x02B0 /* 0x000802B0@l */
/* 80B64718  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B6471C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B64720  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B64724  80 63 00 00 */	lwz r3, 0(r3)
/* 80B64728  38 81 00 10 */	addi r4, r1, 0x10
/* 80B6472C  38 A1 00 38 */	addi r5, r1, 0x38
/* 80B64730  38 C0 00 00 */	li r6, 0
/* 80B64734  38 E0 00 00 */	li r7, 0
/* 80B64738  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80B6473C  FC 40 08 90 */	fmr f2, f1
/* 80B64740  C0 7F 01 00 */	lfs f3, 0x100(r31)
/* 80B64744  FC 80 18 90 */	fmr f4, f3
/* 80B64748  39 00 00 00 */	li r8, 0
/* 80B6474C  4B 74 72 39 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B64750  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 80B64754  60 00 40 00 */	ori r0, r0, 0x4000
/* 80B64758  90 1B 04 9C */	stw r0, 0x49c(r27)
lbl_80B6475C:
/* 80B6475C  93 9A 0D C4 */	stw r28, 0xdc4(r26)
lbl_80B64760:
/* 80B64760  2C 1D 00 01 */	cmpwi r29, 1
/* 80B64764  41 82 00 48 */	beq lbl_80B647AC
/* 80B64768  40 80 00 58 */	bge lbl_80B647C0
/* 80B6476C  2C 1D 00 00 */	cmpwi r29, 0
/* 80B64770  40 80 00 08 */	bge lbl_80B64778
/* 80B64774  48 00 00 4C */	b lbl_80B647C0
lbl_80B64778:
/* 80B64778  7F 43 D3 78 */	mr r3, r26
/* 80B6477C  38 80 00 00 */	li r4, 0
/* 80B64780  38 A0 00 00 */	li r5, 0
/* 80B64784  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80B64788  38 E0 00 00 */	li r7, 0
/* 80B6478C  4B 5E 74 ED */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B64790  2C 03 00 00 */	cmpwi r3, 0
/* 80B64794  41 82 00 2C */	beq lbl_80B647C0
/* 80B64798  88 1A 09 9A */	lbz r0, 0x99a(r26)
/* 80B6479C  28 00 00 01 */	cmplwi r0, 1
/* 80B647A0  40 82 00 20 */	bne lbl_80B647C0
/* 80B647A4  3B C0 00 01 */	li r30, 1
/* 80B647A8  48 00 00 18 */	b lbl_80B647C0
lbl_80B647AC:
/* 80B647AC  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 80B647B0  48 00 31 21 */	bl func_80B678D0
/* 80B647B4  2C 03 00 00 */	cmpwi r3, 0
/* 80B647B8  40 82 00 08 */	bne lbl_80B647C0
/* 80B647BC  3B C0 00 01 */	li r30, 1
lbl_80B647C0:
/* 80B647C0  38 00 00 00 */	li r0, 0
/* 80B647C4  98 1A 0E 26 */	stb r0, 0xe26(r26)
/* 80B647C8  7F C3 F3 78 */	mr r3, r30
/* 80B647CC  39 61 00 70 */	addi r11, r1, 0x70
/* 80B647D0  4B 7F DA 49 */	bl _restgpr_25
/* 80B647D4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B647D8  7C 08 03 A6 */	mtlr r0
/* 80B647DC  38 21 00 70 */	addi r1, r1, 0x70
/* 80B647E0  4E 80 00 20 */	blr 
