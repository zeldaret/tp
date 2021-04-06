lbl_80B974BC:
/* 80B974BC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B974C0  7C 08 02 A6 */	mflr r0
/* 80B974C4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B974C8  39 61 00 60 */	addi r11, r1, 0x60
/* 80B974CC  4B 7C AC F9 */	bl _savegpr_23
/* 80B974D0  7C 7B 1B 78 */	mr r27, r3
/* 80B974D4  7C 97 23 78 */	mr r23, r4
/* 80B974D8  3C 60 80 BA */	lis r3, m__17daNpc_zrZ_Param_c@ha /* 0x80B9AFEC@ha */
/* 80B974DC  3B C3 AF EC */	addi r30, r3, m__17daNpc_zrZ_Param_c@l /* 0x80B9AFEC@l */
/* 80B974E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B974E4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B974E8  3B 3F 4F F8 */	addi r25, r31, 0x4ff8
/* 80B974EC  83 5F 5D AC */	lwz r26, 0x5dac(r31)
/* 80B974F0  3B A0 00 00 */	li r29, 0
/* 80B974F4  3B 80 FF FF */	li r28, -1
/* 80B974F8  3B 00 00 00 */	li r24, 0
/* 80B974FC  7F 23 CB 78 */	mr r3, r25
/* 80B97500  3C A0 80 BA */	lis r5, d_a_npc_zrz__stringBase0@ha /* 0x80B9B220@ha */
/* 80B97504  38 A5 B2 20 */	addi r5, r5, d_a_npc_zrz__stringBase0@l /* 0x80B9B220@l */
/* 80B97508  38 A5 00 5A */	addi r5, r5, 0x5a
/* 80B9750C  38 C0 00 03 */	li r6, 3
/* 80B97510  4B 4B 0B DD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B97514  28 03 00 00 */	cmplwi r3, 0
/* 80B97518  41 82 00 08 */	beq lbl_80B97520
/* 80B9751C  83 83 00 00 */	lwz r28, 0(r3)
lbl_80B97520:
/* 80B97520  7F 23 CB 78 */	mr r3, r25
/* 80B97524  7E E4 BB 78 */	mr r4, r23
/* 80B97528  3C A0 80 BA */	lis r5, d_a_npc_zrz__stringBase0@ha /* 0x80B9B220@ha */
/* 80B9752C  38 A5 B2 20 */	addi r5, r5, d_a_npc_zrz__stringBase0@l /* 0x80B9B220@l */
/* 80B97530  38 A5 00 5E */	addi r5, r5, 0x5e
/* 80B97534  38 C0 00 03 */	li r6, 3
/* 80B97538  4B 4B 0B B5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B9753C  28 03 00 00 */	cmplwi r3, 0
/* 80B97540  41 82 00 08 */	beq lbl_80B97548
/* 80B97544  83 03 00 00 */	lwz r24, 0(r3)
lbl_80B97548:
/* 80B97548  7F 23 CB 78 */	mr r3, r25
/* 80B9754C  7E E4 BB 78 */	mr r4, r23
/* 80B97550  4B 4B 07 FD */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B97554  2C 03 00 00 */	cmpwi r3, 0
/* 80B97558  41 82 02 E0 */	beq lbl_80B97838
/* 80B9755C  2C 1C 00 47 */	cmpwi r28, 0x47
/* 80B97560  41 82 01 FC */	beq lbl_80B9775C
/* 80B97564  40 80 00 48 */	bge lbl_80B975AC
/* 80B97568  2C 1C 00 32 */	cmpwi r28, 0x32
/* 80B9756C  41 82 01 40 */	beq lbl_80B976AC
/* 80B97570  40 80 00 28 */	bge lbl_80B97598
/* 80B97574  2C 1C 00 14 */	cmpwi r28, 0x14
/* 80B97578  41 82 01 24 */	beq lbl_80B9769C
/* 80B9757C  40 80 00 10 */	bge lbl_80B9758C
/* 80B97580  2C 1C 00 0B */	cmpwi r28, 0xb
/* 80B97584  41 82 00 70 */	beq lbl_80B975F4
/* 80B97588  48 00 02 B0 */	b lbl_80B97838
lbl_80B9758C:
/* 80B9758C  2C 1C 00 28 */	cmpwi r28, 0x28
/* 80B97590  41 82 01 14 */	beq lbl_80B976A4
/* 80B97594  48 00 02 A4 */	b lbl_80B97838
lbl_80B97598:
/* 80B97598  2C 1C 00 3C */	cmpwi r28, 0x3c
/* 80B9759C  41 82 01 88 */	beq lbl_80B97724
/* 80B975A0  40 80 02 98 */	bge lbl_80B97838
/* 80B975A4  48 00 02 94 */	b lbl_80B97838
/* 80B975A8  48 00 02 90 */	b lbl_80B97838
lbl_80B975AC:
/* 80B975AC  2C 1C 00 64 */	cmpwi r28, 0x64
/* 80B975B0  41 82 01 E8 */	beq lbl_80B97798
/* 80B975B4  40 80 00 24 */	bge lbl_80B975D8
/* 80B975B8  2C 1C 00 5A */	cmpwi r28, 0x5a
/* 80B975BC  41 82 01 C8 */	beq lbl_80B97784
/* 80B975C0  40 80 02 78 */	bge lbl_80B97838
/* 80B975C4  2C 1C 00 50 */	cmpwi r28, 0x50
/* 80B975C8  41 82 01 A8 */	beq lbl_80B97770
/* 80B975CC  41 80 02 6C */	blt lbl_80B97838
/* 80B975D0  48 00 02 68 */	b lbl_80B97838
/* 80B975D4  48 00 02 64 */	b lbl_80B97838
lbl_80B975D8:
/* 80B975D8  2C 1C 00 6E */	cmpwi r28, 0x6e
/* 80B975DC  41 82 02 4C */	beq lbl_80B97828
/* 80B975E0  40 80 02 58 */	bge lbl_80B97838
/* 80B975E4  2C 1C 00 67 */	cmpwi r28, 0x67
/* 80B975E8  41 82 01 C4 */	beq lbl_80B977AC
/* 80B975EC  48 00 02 4C */	b lbl_80B97838
/* 80B975F0  48 00 02 48 */	b lbl_80B97838
lbl_80B975F4:
/* 80B975F4  7F 63 DB 78 */	mr r3, r27
/* 80B975F8  38 80 03 E9 */	li r4, 0x3e9
/* 80B975FC  38 A0 00 00 */	li r5, 0
/* 80B97600  4B 5B C7 1D */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B97604  7F 63 DB 78 */	mr r3, r27
/* 80B97608  38 80 00 00 */	li r4, 0
/* 80B9760C  4B FF F8 71 */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B97610  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B97614  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B97618  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9761C  C0 03 04 14 */	lfs f0, 0x414(r3)
/* 80B97620  38 00 00 5A */	li r0, 0x5a
/* 80B97624  90 03 04 20 */	stw r0, 0x420(r3)
/* 80B97628  C0 7E 00 98 */	lfs f3, 0x98(r30)
/* 80B9762C  EC 43 00 28 */	fsubs f2, f3, f0
/* 80B97630  80 03 04 20 */	lwz r0, 0x420(r3)
/* 80B97634  C8 3E 01 F0 */	lfd f1, 0x1f0(r30)
/* 80B97638  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9763C  3C 00 43 30 */	lis r0, 0x4330
/* 80B97640  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B97644  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B97648  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B9764C  EC 02 00 24 */	fdivs f0, f2, f0
/* 80B97650  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 80B97654  D0 63 04 1C */	stfs f3, 0x41c(r3)
/* 80B97658  38 00 00 01 */	li r0, 1
/* 80B9765C  98 1B 14 4D */	stb r0, 0x144d(r27)
/* 80B97660  38 60 00 0B */	li r3, 0xb
/* 80B97664  4B 5B E0 D1 */	bl daNpcF_offTmpBit__FUl
/* 80B97668  38 60 00 0C */	li r3, 0xc
/* 80B9766C  4B 5B E0 C9 */	bl daNpcF_offTmpBit__FUl
/* 80B97670  38 60 00 0D */	li r3, 0xd
/* 80B97674  4B 5B E0 C1 */	bl daNpcF_offTmpBit__FUl
/* 80B97678  38 60 00 0E */	li r3, 0xe
/* 80B9767C  4B 5B E0 B9 */	bl daNpcF_offTmpBit__FUl
/* 80B97680  38 60 00 0F */	li r3, 0xf
/* 80B97684  4B 5B E0 B1 */	bl daNpcF_offTmpBit__FUl
/* 80B97688  38 60 00 33 */	li r3, 0x33
/* 80B9768C  4B 5B E0 A9 */	bl daNpcF_offTmpBit__FUl
/* 80B97690  38 60 00 34 */	li r3, 0x34
/* 80B97694  4B 5B E0 A1 */	bl daNpcF_offTmpBit__FUl
/* 80B97698  48 00 01 A0 */	b lbl_80B97838
lbl_80B9769C:
/* 80B9769C  93 1B 09 60 */	stw r24, 0x960(r27)
/* 80B976A0  48 00 01 98 */	b lbl_80B97838
lbl_80B976A4:
/* 80B976A4  93 1B 09 60 */	stw r24, 0x960(r27)
/* 80B976A8  48 00 01 90 */	b lbl_80B97838
lbl_80B976AC:
/* 80B976AC  7F 63 DB 78 */	mr r3, r27
/* 80B976B0  38 80 03 E9 */	li r4, 0x3e9
/* 80B976B4  38 A0 00 00 */	li r5, 0
/* 80B976B8  4B 5B C6 65 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B976BC  A8 1A 04 DC */	lha r0, 0x4dc(r26)
/* 80B976C0  B0 01 00 08 */	sth r0, 8(r1)
/* 80B976C4  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B976C8  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80B976CC  A8 1A 04 E0 */	lha r0, 0x4e0(r26)
/* 80B976D0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B976D4  7F 63 DB 78 */	mr r3, r27
/* 80B976D8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B976DC  4B 48 30 35 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B976E0  3C 63 00 01 */	addis r3, r3, 1
/* 80B976E4  38 03 80 00 */	addi r0, r3, -32768
/* 80B976E8  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80B976EC  C0 1E 01 D4 */	lfs f0, 0x1d4(r30)
/* 80B976F0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B976F4  C0 1E 01 D8 */	lfs f0, 0x1d8(r30)
/* 80B976F8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B976FC  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 80B97700  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B97704  7F 43 D3 78 */	mr r3, r26
/* 80B97708  38 81 00 10 */	addi r4, r1, 0x10
/* 80B9770C  38 A1 00 08 */	addi r5, r1, 8
/* 80B97710  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 80B97714  81 8C 01 58 */	lwz r12, 0x158(r12)
/* 80B97718  7D 89 03 A6 */	mtctr r12
/* 80B9771C  4E 80 04 21 */	bctrl 
/* 80B97720  48 00 01 18 */	b lbl_80B97838
lbl_80B97724:
/* 80B97724  7F 63 DB 78 */	mr r3, r27
/* 80B97728  38 80 03 E9 */	li r4, 0x3e9
/* 80B9772C  38 A0 00 00 */	li r5, 0
/* 80B97730  4B 5B C5 ED */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B97734  7F 63 DB 78 */	mr r3, r27
/* 80B97738  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B9773C  4B 48 2F D5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B97740  7C 64 1B 78 */	mr r4, r3
/* 80B97744  7F 63 DB 78 */	mr r3, r27
/* 80B97748  4B 5B CB 09 */	bl setAngle__8daNpcF_cFs
/* 80B9774C  7F 63 DB 78 */	mr r3, r27
/* 80B97750  38 80 00 02 */	li r4, 2
/* 80B97754  4B FF F7 29 */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B97758  48 00 00 E0 */	b lbl_80B97838
lbl_80B9775C:
/* 80B9775C  7F 63 DB 78 */	mr r3, r27
/* 80B97760  38 80 03 E9 */	li r4, 0x3e9
/* 80B97764  38 A0 00 00 */	li r5, 0
/* 80B97768  4B 5B C5 B5 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B9776C  48 00 00 CC */	b lbl_80B97838
lbl_80B97770:
/* 80B97770  7F 63 DB 78 */	mr r3, r27
/* 80B97774  38 80 03 E9 */	li r4, 0x3e9
/* 80B97778  38 A0 00 00 */	li r5, 0
/* 80B9777C  4B 5B C5 A1 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B97780  48 00 00 B8 */	b lbl_80B97838
lbl_80B97784:
/* 80B97784  7F 63 DB 78 */	mr r3, r27
/* 80B97788  38 80 03 E9 */	li r4, 0x3e9
/* 80B9778C  38 A0 00 00 */	li r5, 0
/* 80B97790  4B 5B C5 8D */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B97794  48 00 00 A4 */	b lbl_80B97838
lbl_80B97798:
/* 80B97798  7F 63 DB 78 */	mr r3, r27
/* 80B9779C  38 80 03 E9 */	li r4, 0x3e9
/* 80B977A0  38 A0 00 00 */	li r5, 0
/* 80B977A4  4B 5B C5 79 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B977A8  48 00 00 90 */	b lbl_80B97838
lbl_80B977AC:
/* 80B977AC  93 1B 09 60 */	stw r24, 0x960(r27)
/* 80B977B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B977B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B977B8  80 63 00 00 */	lwz r3, 0(r3)
/* 80B977BC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B977C0  4B 71 80 C5 */	bl subBgmStop__8Z2SeqMgrFv
/* 80B977C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B977C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B977CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80B977D0  C0 7E 00 94 */	lfs f3, 0x94(r30)
/* 80B977D4  D0 63 04 04 */	stfs f3, 0x404(r3)
/* 80B977D8  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80B977DC  D0 03 04 08 */	stfs f0, 0x408(r3)
/* 80B977E0  38 00 00 00 */	li r0, 0
/* 80B977E4  90 03 04 10 */	stw r0, 0x410(r3)
/* 80B977E8  D0 03 04 0C */	stfs f0, 0x40c(r3)
/* 80B977EC  C0 03 04 14 */	lfs f0, 0x414(r3)
/* 80B977F0  38 00 00 5A */	li r0, 0x5a
/* 80B977F4  90 03 04 20 */	stw r0, 0x420(r3)
/* 80B977F8  EC 43 00 28 */	fsubs f2, f3, f0
/* 80B977FC  80 03 04 20 */	lwz r0, 0x420(r3)
/* 80B97800  C8 3E 01 F0 */	lfd f1, 0x1f0(r30)
/* 80B97804  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B97808  3C 00 43 30 */	lis r0, 0x4330
/* 80B9780C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B97810  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B97814  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B97818  EC 02 00 24 */	fdivs f0, f2, f0
/* 80B9781C  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 80B97820  D0 63 04 1C */	stfs f3, 0x41c(r3)
/* 80B97824  48 00 00 14 */	b lbl_80B97838
lbl_80B97828:
/* 80B97828  7F 63 DB 78 */	mr r3, r27
/* 80B9782C  38 80 03 E9 */	li r4, 0x3e9
/* 80B97830  38 A0 00 00 */	li r5, 0
/* 80B97834  4B 5B C4 E9 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_80B97838:
/* 80B97838  38 1C FF F5 */	addi r0, r28, -11
/* 80B9783C  28 00 00 66 */	cmplwi r0, 0x66
/* 80B97840  41 81 03 18 */	bgt lbl_80B97B58
/* 80B97844  3C 60 80 BA */	lis r3, lit_5908@ha /* 0x80B9B578@ha */
/* 80B97848  38 63 B5 78 */	addi r3, r3, lit_5908@l /* 0x80B9B578@l */
/* 80B9784C  54 00 10 3A */	slwi r0, r0, 2
/* 80B97850  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B97854  7C 09 03 A6 */	mtctr r0
/* 80B97858  4E 80 04 20 */	bctr 
lbl_80B9785C:
/* 80B9785C  7F 63 DB 78 */	mr r3, r27
/* 80B97860  38 80 00 00 */	li r4, 0
/* 80B97864  38 A0 00 01 */	li r5, 1
/* 80B97868  38 C0 00 00 */	li r6, 0
/* 80B9786C  4B 5B C5 19 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B97870  2C 03 00 00 */	cmpwi r3, 0
/* 80B97874  41 82 00 38 */	beq lbl_80B978AC
/* 80B97878  3B A0 00 01 */	li r29, 1
/* 80B9787C  80 1B 14 C0 */	lwz r0, 0x14c0(r27)
/* 80B97880  2C 00 00 00 */	cmpwi r0, 0
/* 80B97884  40 82 00 28 */	bne lbl_80B978AC
/* 80B97888  38 00 00 01 */	li r0, 1
/* 80B9788C  90 1B 14 C0 */	stw r0, 0x14c0(r27)
/* 80B97890  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B97894  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B97898  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9789C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B978A0  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000047@ha */
/* 80B978A4  38 84 00 47 */	addi r4, r4, 0x0047 /* 0x01000047@l */
/* 80B978A8  4B 71 7B F5 */	bl subBgmStart__8Z2SeqMgrFUl
lbl_80B978AC:
/* 80B978AC  7F 63 DB 78 */	mr r3, r27
/* 80B978B0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B978B4  4B 48 2E 5D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B978B8  7C 64 1B 78 */	mr r4, r3
/* 80B978BC  7F 63 DB 78 */	mr r3, r27
/* 80B978C0  4B 5B C9 91 */	bl setAngle__8daNpcF_cFs
/* 80B978C4  48 00 02 98 */	b lbl_80B97B5C
lbl_80B978C8:
/* 80B978C8  3B A0 00 01 */	li r29, 1
/* 80B978CC  48 00 02 90 */	b lbl_80B97B5C
lbl_80B978D0:
/* 80B978D0  7F 63 DB 78 */	mr r3, r27
/* 80B978D4  38 80 00 00 */	li r4, 0
/* 80B978D8  38 A0 00 01 */	li r5, 1
/* 80B978DC  38 C0 00 00 */	li r6, 0
/* 80B978E0  4B 5B C4 A5 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B978E4  2C 03 00 00 */	cmpwi r3, 0
/* 80B978E8  41 82 02 74 */	beq lbl_80B97B5C
/* 80B978EC  3B A0 00 01 */	li r29, 1
/* 80B978F0  48 00 02 6C */	b lbl_80B97B5C
lbl_80B978F4:
/* 80B978F4  7F 63 DB 78 */	mr r3, r27
/* 80B978F8  38 80 00 00 */	li r4, 0
/* 80B978FC  38 A0 00 01 */	li r5, 1
/* 80B97900  38 C0 00 00 */	li r6, 0
/* 80B97904  4B 5B C4 81 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B97908  2C 03 00 00 */	cmpwi r3, 0
/* 80B9790C  41 82 02 50 */	beq lbl_80B97B5C
/* 80B97910  3B A0 00 01 */	li r29, 1
/* 80B97914  48 00 02 48 */	b lbl_80B97B5C
lbl_80B97918:
/* 80B97918  7F 63 DB 78 */	mr r3, r27
/* 80B9791C  38 80 00 00 */	li r4, 0
/* 80B97920  38 A0 00 01 */	li r5, 1
/* 80B97924  38 C0 00 00 */	li r6, 0
/* 80B97928  4B 5B C4 5D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B9792C  2C 03 00 00 */	cmpwi r3, 0
/* 80B97930  41 82 02 2C */	beq lbl_80B97B5C
/* 80B97934  3B A0 00 01 */	li r29, 1
/* 80B97938  48 00 02 24 */	b lbl_80B97B5C
lbl_80B9793C:
/* 80B9793C  3B A0 00 01 */	li r29, 1
/* 80B97940  48 00 02 1C */	b lbl_80B97B5C
lbl_80B97944:
/* 80B97944  3B A0 00 01 */	li r29, 1
/* 80B97948  48 00 02 14 */	b lbl_80B97B5C
lbl_80B9794C:
/* 80B9794C  7F 63 DB 78 */	mr r3, r27
/* 80B97950  38 80 00 00 */	li r4, 0
/* 80B97954  38 A0 00 01 */	li r5, 1
/* 80B97958  38 C0 00 00 */	li r6, 0
/* 80B9795C  4B 5B C4 29 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B97960  2C 03 00 00 */	cmpwi r3, 0
/* 80B97964  41 82 01 F8 */	beq lbl_80B97B5C
/* 80B97968  3B A0 00 01 */	li r29, 1
/* 80B9796C  48 00 01 F0 */	b lbl_80B97B5C
lbl_80B97970:
/* 80B97970  3B A0 00 01 */	li r29, 1
/* 80B97974  48 00 01 E8 */	b lbl_80B97B5C
lbl_80B97978:
/* 80B97978  3B A0 00 01 */	li r29, 1
/* 80B9797C  48 00 01 E0 */	b lbl_80B97B5C
lbl_80B97980:
/* 80B97980  3B A0 00 01 */	li r29, 1
/* 80B97984  48 00 01 D8 */	b lbl_80B97B5C
lbl_80B97988:
/* 80B97988  7F 63 DB 78 */	mr r3, r27
/* 80B9798C  38 80 00 00 */	li r4, 0
/* 80B97990  38 A0 00 01 */	li r5, 1
/* 80B97994  38 C0 00 00 */	li r6, 0
/* 80B97998  4B 5B C3 ED */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B9799C  2C 03 00 00 */	cmpwi r3, 0
/* 80B979A0  41 82 01 BC */	beq lbl_80B97B5C
/* 80B979A4  3B A0 00 01 */	li r29, 1
/* 80B979A8  48 00 01 B4 */	b lbl_80B97B5C
lbl_80B979AC:
/* 80B979AC  3B A0 00 01 */	li r29, 1
/* 80B979B0  48 00 01 AC */	b lbl_80B97B5C
lbl_80B979B4:
/* 80B979B4  3B A0 00 01 */	li r29, 1
/* 80B979B8  48 00 01 A4 */	b lbl_80B97B5C
lbl_80B979BC:
/* 80B979BC  7F 63 DB 78 */	mr r3, r27
/* 80B979C0  38 80 00 00 */	li r4, 0
/* 80B979C4  38 A0 00 01 */	li r5, 1
/* 80B979C8  38 C0 00 00 */	li r6, 0
/* 80B979CC  4B 5B C3 B9 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B979D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B979D4  41 82 01 88 */	beq lbl_80B97B5C
/* 80B979D8  3B A0 00 01 */	li r29, 1
/* 80B979DC  48 00 01 80 */	b lbl_80B97B5C
lbl_80B979E0:
/* 80B979E0  3B A0 00 01 */	li r29, 1
/* 80B979E4  48 00 01 78 */	b lbl_80B97B5C
lbl_80B979E8:
/* 80B979E8  3B A0 00 01 */	li r29, 1
/* 80B979EC  48 00 01 70 */	b lbl_80B97B5C
lbl_80B979F0:
/* 80B979F0  3B A0 00 01 */	li r29, 1
/* 80B979F4  48 00 01 68 */	b lbl_80B97B5C
lbl_80B979F8:
/* 80B979F8  7F 63 DB 78 */	mr r3, r27
/* 80B979FC  38 80 00 00 */	li r4, 0
/* 80B97A00  38 A0 00 01 */	li r5, 1
/* 80B97A04  38 C0 00 00 */	li r6, 0
/* 80B97A08  4B 5B C3 7D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B97A0C  2C 03 00 00 */	cmpwi r3, 0
/* 80B97A10  41 82 01 4C */	beq lbl_80B97B5C
/* 80B97A14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B97A18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B97A1C  88 9B 14 54 */	lbz r4, 0x1454(r27)
/* 80B97A20  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80B97A24  7C 05 07 74 */	extsb r5, r0
/* 80B97A28  4B 49 D9 39 */	bl isSwitch__10dSv_info_cCFii
/* 80B97A2C  2C 03 00 00 */	cmpwi r3, 0
/* 80B97A30  40 82 00 1C */	bne lbl_80B97A4C
/* 80B97A34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B97A38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B97A3C  88 9B 14 54 */	lbz r4, 0x1454(r27)
/* 80B97A40  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80B97A44  7C 05 07 74 */	extsb r5, r0
/* 80B97A48  4B 49 D7 B9 */	bl onSwitch__10dSv_info_cFii
lbl_80B97A4C:
/* 80B97A4C  3B A0 00 01 */	li r29, 1
/* 80B97A50  48 00 01 0C */	b lbl_80B97B5C
lbl_80B97A54:
/* 80B97A54  38 7B 09 60 */	addi r3, r27, 0x960
/* 80B97A58  48 00 33 ED */	bl func_80B9AE44
/* 80B97A5C  2C 03 00 00 */	cmpwi r3, 0
/* 80B97A60  40 82 00 FC */	bne lbl_80B97B5C
/* 80B97A64  3B A0 00 01 */	li r29, 1
/* 80B97A68  48 00 00 F4 */	b lbl_80B97B5C
lbl_80B97A6C:
/* 80B97A6C  38 7B 09 60 */	addi r3, r27, 0x960
/* 80B97A70  48 00 33 D5 */	bl func_80B9AE44
/* 80B97A74  2C 03 00 00 */	cmpwi r3, 0
/* 80B97A78  40 82 00 14 */	bne lbl_80B97A8C
/* 80B97A7C  3B A0 00 01 */	li r29, 1
/* 80B97A80  38 00 00 FF */	li r0, 0xff
/* 80B97A84  B0 1B 04 6A */	sth r0, 0x46a(r27)
/* 80B97A88  48 00 00 D4 */	b lbl_80B97B5C
lbl_80B97A8C:
/* 80B97A8C  C0 5E 01 E0 */	lfs f2, 0x1e0(r30)
/* 80B97A90  80 1B 09 60 */	lwz r0, 0x960(r27)
/* 80B97A94  20 00 00 3C */	subfic r0, r0, 0x3c
/* 80B97A98  C8 3E 00 A0 */	lfd f1, 0xa0(r30)
/* 80B97A9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B97AA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B97AA4  3C 00 43 30 */	lis r0, 0x4330
/* 80B97AA8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B97AAC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B97AB0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B97AB4  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 80B97AB8  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B97ABC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B97AC0  FC 00 00 1E */	fctiwz f0, f0
/* 80B97AC4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80B97AC8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80B97ACC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B97AD0  B0 1B 04 6A */	sth r0, 0x46a(r27)
/* 80B97AD4  48 00 00 88 */	b lbl_80B97B5C
lbl_80B97AD8:
/* 80B97AD8  38 7B 09 60 */	addi r3, r27, 0x960
/* 80B97ADC  48 00 33 69 */	bl func_80B9AE44
/* 80B97AE0  2C 03 00 00 */	cmpwi r3, 0
/* 80B97AE4  40 82 00 14 */	bne lbl_80B97AF8
/* 80B97AE8  3B A0 00 01 */	li r29, 1
/* 80B97AEC  38 00 00 00 */	li r0, 0
/* 80B97AF0  B0 1B 04 6A */	sth r0, 0x46a(r27)
/* 80B97AF4  48 00 00 68 */	b lbl_80B97B5C
lbl_80B97AF8:
/* 80B97AF8  80 7B 09 60 */	lwz r3, 0x960(r27)
/* 80B97AFC  2C 03 00 1E */	cmpwi r3, 0x1e
/* 80B97B00  40 81 00 4C */	ble lbl_80B97B4C
/* 80B97B04  C0 5E 01 E0 */	lfs f2, 0x1e0(r30)
/* 80B97B08  38 03 FF E2 */	addi r0, r3, -30
/* 80B97B0C  C8 3E 00 A0 */	lfd f1, 0xa0(r30)
/* 80B97B10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B97B14  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B97B18  3C 00 43 30 */	lis r0, 0x4330
/* 80B97B1C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B97B20  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80B97B24  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B97B28  C0 1E 01 E8 */	lfs f0, 0x1e8(r30)
/* 80B97B2C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B97B30  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B97B34  FC 00 00 1E */	fctiwz f0, f0
/* 80B97B38  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80B97B3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B97B40  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B97B44  B0 1B 04 6A */	sth r0, 0x46a(r27)
/* 80B97B48  48 00 00 14 */	b lbl_80B97B5C
lbl_80B97B4C:
/* 80B97B4C  38 00 00 00 */	li r0, 0
/* 80B97B50  B0 1B 04 6A */	sth r0, 0x46a(r27)
/* 80B97B54  48 00 00 08 */	b lbl_80B97B5C
lbl_80B97B58:
/* 80B97B58  3B A0 00 01 */	li r29, 1
lbl_80B97B5C:
/* 80B97B5C  7F A3 EB 78 */	mr r3, r29
/* 80B97B60  39 61 00 60 */	addi r11, r1, 0x60
/* 80B97B64  4B 7C A6 AD */	bl _restgpr_23
/* 80B97B68  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B97B6C  7C 08 03 A6 */	mtlr r0
/* 80B97B70  38 21 00 60 */	addi r1, r1, 0x60
/* 80B97B74  4E 80 00 20 */	blr 
