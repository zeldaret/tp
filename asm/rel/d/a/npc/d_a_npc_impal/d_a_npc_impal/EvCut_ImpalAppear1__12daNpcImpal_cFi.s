lbl_80A0A1E0:
/* 80A0A1E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A0A1E4  7C 08 02 A6 */	mflr r0
/* 80A0A1E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A0A1EC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A0A1F0  4B 95 7F E1 */	bl _savegpr_26
/* 80A0A1F4  7C 7B 1B 78 */	mr r27, r3
/* 80A0A1F8  7C 9A 23 78 */	mr r26, r4
/* 80A0A1FC  3C 60 80 A1 */	lis r3, m__18daNpcImpal_Param_c@ha /* 0x80A0C270@ha */
/* 80A0A200  3B A3 C2 70 */	addi r29, r3, m__18daNpcImpal_Param_c@l /* 0x80A0C270@l */
/* 80A0A204  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A0A208  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A0A20C  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80A0A210  7F 83 E3 78 */	mr r3, r28
/* 80A0A214  4B 63 DD 49 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80A0A218  7C 7F 1B 78 */	mr r31, r3
/* 80A0A21C  7F 83 E3 78 */	mr r3, r28
/* 80A0A220  7F 44 D3 78 */	mr r4, r26
/* 80A0A224  4B 63 DB 29 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A0A228  2C 03 00 00 */	cmpwi r3, 0
/* 80A0A22C  41 82 01 A0 */	beq lbl_80A0A3CC
/* 80A0A230  80 9F 00 00 */	lwz r4, 0(r31)
/* 80A0A234  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303035@ha */
/* 80A0A238  38 03 30 35 */	addi r0, r3, 0x3035 /* 0x30303035@l */
/* 80A0A23C  7C 04 00 00 */	cmpw r4, r0
/* 80A0A240  41 82 01 4C */	beq lbl_80A0A38C
/* 80A0A244  40 80 00 34 */	bge lbl_80A0A278
/* 80A0A248  38 03 30 32 */	addi r0, r3, 0x3032
/* 80A0A24C  7C 04 00 00 */	cmpw r4, r0
/* 80A0A250  41 82 00 A0 */	beq lbl_80A0A2F0
/* 80A0A254  40 80 00 14 */	bge lbl_80A0A268
/* 80A0A258  38 03 30 31 */	addi r0, r3, 0x3031
/* 80A0A25C  7C 04 00 00 */	cmpw r4, r0
/* 80A0A260  40 80 00 54 */	bge lbl_80A0A2B4
/* 80A0A264  48 00 01 68 */	b lbl_80A0A3CC
lbl_80A0A268:
/* 80A0A268  38 03 30 34 */	addi r0, r3, 0x3034
/* 80A0A26C  7C 04 00 00 */	cmpw r4, r0
/* 80A0A270  40 80 01 04 */	bge lbl_80A0A374
/* 80A0A274  48 00 00 D8 */	b lbl_80A0A34C
lbl_80A0A278:
/* 80A0A278  38 03 31 33 */	addi r0, r3, 0x3133
/* 80A0A27C  7C 04 00 00 */	cmpw r4, r0
/* 80A0A280  41 82 00 40 */	beq lbl_80A0A2C0
/* 80A0A284  40 80 00 20 */	bge lbl_80A0A2A4
/* 80A0A288  38 03 31 30 */	addi r0, r3, 0x3130
/* 80A0A28C  7C 04 00 00 */	cmpw r4, r0
/* 80A0A290  40 80 01 2C */	bge lbl_80A0A3BC
/* 80A0A294  38 03 30 3A */	addi r0, r3, 0x303a
/* 80A0A298  7C 04 00 00 */	cmpw r4, r0
/* 80A0A29C  40 80 01 30 */	bge lbl_80A0A3CC
/* 80A0A2A0  48 00 01 1C */	b lbl_80A0A3BC
lbl_80A0A2A4:
/* 80A0A2A4  38 03 31 35 */	addi r0, r3, 0x3135
/* 80A0A2A8  7C 04 00 00 */	cmpw r4, r0
/* 80A0A2AC  40 80 01 20 */	bge lbl_80A0A3CC
/* 80A0A2B0  48 00 00 34 */	b lbl_80A0A2E4
lbl_80A0A2B4:
/* 80A0A2B4  38 00 00 01 */	li r0, 1
/* 80A0A2B8  98 1B 0D E9 */	stb r0, 0xde9(r27)
/* 80A0A2BC  48 00 01 10 */	b lbl_80A0A3CC
lbl_80A0A2C0:
/* 80A0A2C0  7F 63 DB 78 */	mr r3, r27
/* 80A0A2C4  38 80 00 05 */	li r4, 5
/* 80A0A2C8  C0 3D 02 1C */	lfs f1, 0x21c(r29)
/* 80A0A2CC  38 A0 00 00 */	li r5, 0
/* 80A0A2D0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80A0A2D4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A0A2D8  7D 89 03 A6 */	mtctr r12
/* 80A0A2DC  4E 80 04 21 */	bctrl 
/* 80A0A2E0  48 00 00 EC */	b lbl_80A0A3CC
lbl_80A0A2E4:
/* 80A0A2E4  38 00 00 00 */	li r0, 0
/* 80A0A2E8  98 1B 0D E9 */	stb r0, 0xde9(r27)
/* 80A0A2EC  48 00 00 E0 */	b lbl_80A0A3CC
lbl_80A0A2F0:
/* 80A0A2F0  C0 5D 02 30 */	lfs f2, 0x230(r29)
/* 80A0A2F4  D0 5B 04 BC */	stfs f2, 0x4bc(r27)
/* 80A0A2F8  C0 3D 02 34 */	lfs f1, 0x234(r29)
/* 80A0A2FC  D0 3B 04 C0 */	stfs f1, 0x4c0(r27)
/* 80A0A300  C0 1D 02 38 */	lfs f0, 0x238(r29)
/* 80A0A304  D0 1B 04 C4 */	stfs f0, 0x4c4(r27)
/* 80A0A308  D0 5B 04 D0 */	stfs f2, 0x4d0(r27)
/* 80A0A30C  D0 3B 04 D4 */	stfs f1, 0x4d4(r27)
/* 80A0A310  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 80A0A314  7F 63 DB 78 */	mr r3, r27
/* 80A0A318  38 80 80 00 */	li r4, -32768
/* 80A0A31C  4B 74 9F 35 */	bl setAngle__8daNpcF_cFs
/* 80A0A320  7F 63 DB 78 */	mr r3, r27
/* 80A0A324  38 80 00 00 */	li r4, 0
/* 80A0A328  C0 3D 00 84 */	lfs f1, 0x84(r29)
/* 80A0A32C  38 A0 00 00 */	li r5, 0
/* 80A0A330  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80A0A334  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A0A338  7D 89 03 A6 */	mtctr r12
/* 80A0A33C  4E 80 04 21 */	bctrl 
/* 80A0A340  38 00 00 01 */	li r0, 1
/* 80A0A344  98 1B 0D E9 */	stb r0, 0xde9(r27)
/* 80A0A348  48 00 00 84 */	b lbl_80A0A3CC
lbl_80A0A34C:
/* 80A0A34C  A8 1B 0D E4 */	lha r0, 0xde4(r27)
/* 80A0A350  2C 00 00 00 */	cmpwi r0, 0
/* 80A0A354  41 82 00 0C */	beq lbl_80A0A360
/* 80A0A358  38 00 00 00 */	li r0, 0
/* 80A0A35C  B0 1B 0D E4 */	sth r0, 0xde4(r27)
lbl_80A0A360:
/* 80A0A360  7F 63 DB 78 */	mr r3, r27
/* 80A0A364  A8 9B 0D E0 */	lha r4, 0xde0(r27)
/* 80A0A368  38 A0 00 00 */	li r5, 0
/* 80A0A36C  4B 74 99 B1 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A0A370  48 00 00 5C */	b lbl_80A0A3CC
lbl_80A0A374:
/* 80A0A374  A8 1B 0D E4 */	lha r0, 0xde4(r27)
/* 80A0A378  2C 00 00 02 */	cmpwi r0, 2
/* 80A0A37C  41 82 00 50 */	beq lbl_80A0A3CC
/* 80A0A380  38 00 00 02 */	li r0, 2
/* 80A0A384  B0 1B 0D E4 */	sth r0, 0xde4(r27)
/* 80A0A388  48 00 00 44 */	b lbl_80A0A3CC
lbl_80A0A38C:
/* 80A0A38C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A0A390  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A0A394  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0A398  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A0A39C  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200005C@ha */
/* 80A0A3A0  38 84 00 5C */	addi r4, r4, 0x005C /* 0x0200005C@l */
/* 80A0A3A4  4B 8A 57 F1 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 80A0A3A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A0A3AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A0A3B0  80 63 00 00 */	lwz r3, 0(r3)
/* 80A0A3B4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A0A3B8  4B 8A 5A 61 */	bl bgmStreamPlay__8Z2SeqMgrFv
lbl_80A0A3BC:
/* 80A0A3BC  7F 63 DB 78 */	mr r3, r27
/* 80A0A3C0  A8 9B 0D E0 */	lha r4, 0xde0(r27)
/* 80A0A3C4  38 A0 00 00 */	li r5, 0
/* 80A0A3C8  4B 74 99 55 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_80A0A3CC:
/* 80A0A3CC  83 5B 09 50 */	lwz r26, 0x950(r27)
/* 80A0A3D0  7F 63 DB 78 */	mr r3, r27
/* 80A0A3D4  38 81 00 10 */	addi r4, r1, 0x10
/* 80A0A3D8  38 A1 00 0C */	addi r5, r1, 0xc
/* 80A0A3DC  7F 66 DB 78 */	mr r6, r27
/* 80A0A3E0  38 E0 00 00 */	li r7, 0
/* 80A0A3E4  4B 74 93 35 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80A0A3E8  2C 03 00 00 */	cmpwi r3, 0
/* 80A0A3EC  41 82 00 44 */	beq lbl_80A0A430
/* 80A0A3F0  7F 63 DB 78 */	mr r3, r27
/* 80A0A3F4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80A0A3F8  C0 3D 02 1C */	lfs f1, 0x21c(r29)
/* 80A0A3FC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80A0A400  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0A404  7D 89 03 A6 */	mtctr r12
/* 80A0A408  4E 80 04 21 */	bctrl 
/* 80A0A40C  7F 63 DB 78 */	mr r3, r27
/* 80A0A410  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A0A414  C0 3D 02 1C */	lfs f1, 0x21c(r29)
/* 80A0A418  38 A0 00 00 */	li r5, 0
/* 80A0A41C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80A0A420  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A0A424  7D 89 03 A6 */	mtctr r12
/* 80A0A428  4E 80 04 21 */	bctrl 
/* 80A0A42C  48 00 00 E0 */	b lbl_80A0A50C
lbl_80A0A430:
/* 80A0A430  2C 1A 00 00 */	cmpwi r26, 0
/* 80A0A434  41 82 00 D8 */	beq lbl_80A0A50C
/* 80A0A438  80 1B 09 50 */	lwz r0, 0x950(r27)
/* 80A0A43C  2C 00 00 00 */	cmpwi r0, 0
/* 80A0A440  40 82 00 CC */	bne lbl_80A0A50C
/* 80A0A444  A8 1B 09 DE */	lha r0, 0x9de(r27)
/* 80A0A448  2C 00 00 02 */	cmpwi r0, 2
/* 80A0A44C  41 82 00 64 */	beq lbl_80A0A4B0
/* 80A0A450  40 80 00 14 */	bge lbl_80A0A464
/* 80A0A454  2C 00 00 00 */	cmpwi r0, 0
/* 80A0A458  41 82 00 18 */	beq lbl_80A0A470
/* 80A0A45C  40 80 00 34 */	bge lbl_80A0A490
/* 80A0A460  48 00 00 90 */	b lbl_80A0A4F0
lbl_80A0A464:
/* 80A0A464  2C 00 00 04 */	cmpwi r0, 4
/* 80A0A468  40 80 00 88 */	bge lbl_80A0A4F0
/* 80A0A46C  48 00 00 64 */	b lbl_80A0A4D0
lbl_80A0A470:
/* 80A0A470  7F 63 DB 78 */	mr r3, r27
/* 80A0A474  38 80 00 07 */	li r4, 7
/* 80A0A478  C0 3D 02 1C */	lfs f1, 0x21c(r29)
/* 80A0A47C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80A0A480  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0A484  7D 89 03 A6 */	mtctr r12
/* 80A0A488  4E 80 04 21 */	bctrl 
/* 80A0A48C  48 00 00 80 */	b lbl_80A0A50C
lbl_80A0A490:
/* 80A0A490  7F 63 DB 78 */	mr r3, r27
/* 80A0A494  38 80 00 04 */	li r4, 4
/* 80A0A498  C0 3D 02 1C */	lfs f1, 0x21c(r29)
/* 80A0A49C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80A0A4A0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0A4A4  7D 89 03 A6 */	mtctr r12
/* 80A0A4A8  4E 80 04 21 */	bctrl 
/* 80A0A4AC  48 00 00 60 */	b lbl_80A0A50C
lbl_80A0A4B0:
/* 80A0A4B0  7F 63 DB 78 */	mr r3, r27
/* 80A0A4B4  38 80 00 05 */	li r4, 5
/* 80A0A4B8  C0 3D 02 1C */	lfs f1, 0x21c(r29)
/* 80A0A4BC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80A0A4C0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0A4C4  7D 89 03 A6 */	mtctr r12
/* 80A0A4C8  4E 80 04 21 */	bctrl 
/* 80A0A4CC  48 00 00 40 */	b lbl_80A0A50C
lbl_80A0A4D0:
/* 80A0A4D0  7F 63 DB 78 */	mr r3, r27
/* 80A0A4D4  38 80 00 06 */	li r4, 6
/* 80A0A4D8  C0 3D 02 1C */	lfs f1, 0x21c(r29)
/* 80A0A4DC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80A0A4E0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0A4E4  7D 89 03 A6 */	mtctr r12
/* 80A0A4E8  4E 80 04 21 */	bctrl 
/* 80A0A4EC  48 00 00 20 */	b lbl_80A0A50C
lbl_80A0A4F0:
/* 80A0A4F0  7F 63 DB 78 */	mr r3, r27
/* 80A0A4F4  38 80 00 07 */	li r4, 7
/* 80A0A4F8  C0 3D 02 1C */	lfs f1, 0x21c(r29)
/* 80A0A4FC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80A0A500  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A0A504  7D 89 03 A6 */	mtctr r12
/* 80A0A508  4E 80 04 21 */	bctrl 
lbl_80A0A50C:
/* 80A0A50C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80A0A510  3C 60 30 30 */	lis r3, 0x3030 /* 0x3030303A@ha */
/* 80A0A514  38 03 30 3A */	addi r0, r3, 0x303A /* 0x3030303A@l */
/* 80A0A518  7C 04 00 00 */	cmpw r4, r0
/* 80A0A51C  40 80 00 34 */	bge lbl_80A0A550
/* 80A0A520  38 03 30 33 */	addi r0, r3, 0x3033
/* 80A0A524  7C 04 00 00 */	cmpw r4, r0
/* 80A0A528  41 82 00 5C */	beq lbl_80A0A584
/* 80A0A52C  40 80 00 14 */	bge lbl_80A0A540
/* 80A0A530  38 03 30 31 */	addi r0, r3, 0x3031
/* 80A0A534  7C 04 00 00 */	cmpw r4, r0
/* 80A0A538  40 80 00 44 */	bge lbl_80A0A57C
/* 80A0A53C  48 00 01 28 */	b lbl_80A0A664
lbl_80A0A540:
/* 80A0A540  38 03 30 35 */	addi r0, r3, 0x3035
/* 80A0A544  7C 04 00 00 */	cmpw r4, r0
/* 80A0A548  40 80 00 3C */	bge lbl_80A0A584
/* 80A0A54C  48 00 00 30 */	b lbl_80A0A57C
lbl_80A0A550:
/* 80A0A550  38 03 31 33 */	addi r0, r3, 0x3133
/* 80A0A554  7C 04 00 00 */	cmpw r4, r0
/* 80A0A558  41 82 00 F8 */	beq lbl_80A0A650
/* 80A0A55C  40 80 00 14 */	bge lbl_80A0A570
/* 80A0A560  38 03 31 30 */	addi r0, r3, 0x3130
/* 80A0A564  7C 04 00 00 */	cmpw r4, r0
/* 80A0A568  40 80 00 1C */	bge lbl_80A0A584
/* 80A0A56C  48 00 00 F8 */	b lbl_80A0A664
lbl_80A0A570:
/* 80A0A570  38 03 31 35 */	addi r0, r3, 0x3135
/* 80A0A574  7C 04 00 00 */	cmpw r4, r0
/* 80A0A578  40 80 00 EC */	bge lbl_80A0A664
lbl_80A0A57C:
/* 80A0A57C  38 60 00 01 */	li r3, 1
/* 80A0A580  48 00 00 E8 */	b lbl_80A0A668
lbl_80A0A584:
/* 80A0A584  7F 63 DB 78 */	mr r3, r27
/* 80A0A588  38 80 00 00 */	li r4, 0
/* 80A0A58C  38 A0 00 01 */	li r5, 1
/* 80A0A590  38 C0 00 00 */	li r6, 0
/* 80A0A594  4B 74 97 F1 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A0A598  2C 03 00 00 */	cmpwi r3, 0
/* 80A0A59C  41 82 00 C8 */	beq lbl_80A0A664
/* 80A0A5A0  38 00 00 00 */	li r0, 0
/* 80A0A5A4  90 01 00 08 */	stw r0, 8(r1)
/* 80A0A5A8  38 7B 09 F8 */	addi r3, r27, 0x9f8
/* 80A0A5AC  38 81 00 08 */	addi r4, r1, 8
/* 80A0A5B0  4B 83 FF 79 */	bl getEventId__10dMsgFlow_cFPi
/* 80A0A5B4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80A0A5B8  28 00 00 01 */	cmplwi r0, 1
/* 80A0A5BC  40 82 00 8C */	bne lbl_80A0A648
/* 80A0A5C0  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80A0A5C4  80 81 00 08 */	lwz r4, 8(r1)
/* 80A0A5C8  38 A0 00 00 */	li r5, 0
/* 80A0A5CC  38 C0 FF FF */	li r6, -1
/* 80A0A5D0  38 E0 FF FF */	li r7, -1
/* 80A0A5D4  39 00 00 00 */	li r8, 0
/* 80A0A5D8  39 20 00 00 */	li r9, 0
/* 80A0A5DC  4B 61 16 0D */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80A0A5E0  90 7B 0D D4 */	stw r3, 0xdd4(r27)
/* 80A0A5E4  80 7B 0D D4 */	lwz r3, 0xdd4(r27)
/* 80A0A5E8  3C 03 00 01 */	addis r0, r3, 1
/* 80A0A5EC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A0A5F0  41 82 00 58 */	beq lbl_80A0A648
/* 80A0A5F4  7F 83 E3 78 */	mr r3, r28
/* 80A0A5F8  7F 64 DB 78 */	mr r4, r27
/* 80A0A5FC  3C A0 80 A1 */	lis r5, d_a_npc_impal__stringBase0@ha /* 0x80A0C4C8@ha */
/* 80A0A600  38 A5 C4 C8 */	addi r5, r5, d_a_npc_impal__stringBase0@l /* 0x80A0C4C8@l */
/* 80A0A604  38 A5 00 4C */	addi r5, r5, 0x4c
/* 80A0A608  38 C0 00 FF */	li r6, 0xff
/* 80A0A60C  4B 63 D1 4D */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80A0A610  7C 7A 1B 78 */	mr r26, r3
/* 80A0A614  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80A0A618  7F 64 DB 78 */	mr r4, r27
/* 80A0A61C  4B 63 7E FD */	bl reset__14dEvt_control_cFPv
/* 80A0A620  7F 63 DB 78 */	mr r3, r27
/* 80A0A624  7F 44 D3 78 */	mr r4, r26
/* 80A0A628  38 A0 00 01 */	li r5, 1
/* 80A0A62C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A0A630  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A0A634  4B 61 0F B1 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80A0A638  38 00 00 01 */	li r0, 1
/* 80A0A63C  98 1B 09 EC */	stb r0, 0x9ec(r27)
/* 80A0A640  38 00 00 02 */	li r0, 2
/* 80A0A644  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
lbl_80A0A648:
/* 80A0A648  38 60 00 01 */	li r3, 1
/* 80A0A64C  48 00 00 1C */	b lbl_80A0A668
lbl_80A0A650:
/* 80A0A650  A8 1B 09 DA */	lha r0, 0x9da(r27)
/* 80A0A654  2C 00 00 00 */	cmpwi r0, 0
/* 80A0A658  40 81 00 0C */	ble lbl_80A0A664
/* 80A0A65C  38 60 00 01 */	li r3, 1
/* 80A0A660  48 00 00 08 */	b lbl_80A0A668
lbl_80A0A664:
/* 80A0A664  38 60 00 00 */	li r3, 0
lbl_80A0A668:
/* 80A0A668  39 61 00 30 */	addi r11, r1, 0x30
/* 80A0A66C  4B 95 7B B1 */	bl _restgpr_26
/* 80A0A670  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A0A674  7C 08 03 A6 */	mtlr r0
/* 80A0A678  38 21 00 30 */	addi r1, r1, 0x30
/* 80A0A67C  4E 80 00 20 */	blr 
