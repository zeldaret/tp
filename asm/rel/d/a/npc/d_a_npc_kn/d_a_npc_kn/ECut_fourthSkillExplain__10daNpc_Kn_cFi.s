lbl_80A33358:
/* 80A33358  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80A3335C  7C 08 02 A6 */	mflr r0
/* 80A33360  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A33364  39 61 00 80 */	addi r11, r1, 0x80
/* 80A33368  4B 92 EE 69 */	bl _savegpr_26
/* 80A3336C  7C 7C 1B 78 */	mr r28, r3
/* 80A33370  7C 9A 23 78 */	mr r26, r4
/* 80A33374  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A33378  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A3337C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A33380  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A33384  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A33388  3B C0 00 00 */	li r30, 0
/* 80A3338C  3B A0 FF FF */	li r29, -1
/* 80A33390  7F 63 DB 78 */	mr r3, r27
/* 80A33394  3C A0 80 A4 */	lis r5, d_a_npc_kn__stringBase0@ha /* 0x80A40AF8@ha */
/* 80A33398  38 A5 0A F8 */	addi r5, r5, d_a_npc_kn__stringBase0@l /* 0x80A40AF8@l */
/* 80A3339C  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A333A0  38 C0 00 03 */	li r6, 3
/* 80A333A4  4B 61 4D 49 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A333A8  28 03 00 00 */	cmplwi r3, 0
/* 80A333AC  41 82 00 08 */	beq lbl_80A333B4
/* 80A333B0  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A333B4:
/* 80A333B4  7F 63 DB 78 */	mr r3, r27
/* 80A333B8  7F 44 D3 78 */	mr r4, r26
/* 80A333BC  4B 61 49 91 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A333C0  2C 03 00 00 */	cmpwi r3, 0
/* 80A333C4  41 82 04 20 */	beq lbl_80A337E4
/* 80A333C8  28 1D 00 46 */	cmplwi r29, 0x46
/* 80A333CC  41 81 04 18 */	bgt lbl_80A337E4
/* 80A333D0  3C 60 80 A4 */	lis r3, lit_10495@ha /* 0x80A41EDC@ha */
/* 80A333D4  38 63 1E DC */	addi r3, r3, lit_10495@l /* 0x80A41EDC@l */
/* 80A333D8  57 A0 10 3A */	slwi r0, r29, 2
/* 80A333DC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A333E0  7C 09 03 A6 */	mtctr r0
/* 80A333E4  4E 80 04 20 */	bctr 
lbl_80A333E8:
/* 80A333E8  38 00 00 09 */	li r0, 9
/* 80A333EC  98 1C 15 AE */	stb r0, 0x15ae(r28)
/* 80A333F0  48 00 03 F4 */	b lbl_80A337E4
lbl_80A333F4:
/* 80A333F4  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A333F8  2C 00 00 01 */	cmpwi r0, 1
/* 80A333FC  41 82 00 24 */	beq lbl_80A33420
/* 80A33400  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A33404  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A33408  4B 71 24 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3340C  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A33410  38 00 00 01 */	li r0, 1
/* 80A33414  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A33418  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3341C  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A33420:
/* 80A33420  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A33424  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A33428  40 82 00 30 */	bne lbl_80A33458
/* 80A3342C  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A33430  41 82 03 B4 */	beq lbl_80A337E4
/* 80A33434  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A33438  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A3343C  4B 71 24 5D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A33440  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A33444  38 00 00 16 */	li r0, 0x16
/* 80A33448  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A3344C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A33450  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A33454  48 00 03 90 */	b lbl_80A337E4
lbl_80A33458:
/* 80A33458  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A3345C  41 82 03 88 */	beq lbl_80A337E4
/* 80A33460  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A33464  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A33468  4B 71 24 31 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3346C  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A33470  38 00 00 10 */	li r0, 0x10
/* 80A33474  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A33478  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3347C  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A33480  48 00 03 64 */	b lbl_80A337E4
lbl_80A33484:
/* 80A33484  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A33488  2C 00 00 01 */	cmpwi r0, 1
/* 80A3348C  41 82 00 28 */	beq lbl_80A334B4
/* 80A33490  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A33494  4B 71 22 69 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A33498  38 00 00 00 */	li r0, 0
/* 80A3349C  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A334A0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A334A4  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A334A8  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A334AC  38 00 00 01 */	li r0, 1
/* 80A334B0  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A334B4:
/* 80A334B4  38 00 00 00 */	li r0, 0
/* 80A334B8  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A334BC  48 00 03 28 */	b lbl_80A337E4
lbl_80A334C0:
/* 80A334C0  38 00 00 02 */	li r0, 2
/* 80A334C4  B0 1C 0D FE */	sth r0, 0xdfe(r28)
/* 80A334C8  7F 83 E3 78 */	mr r3, r28
/* 80A334CC  38 80 02 EF */	li r4, 0x2ef
/* 80A334D0  38 A0 00 00 */	li r5, 0
/* 80A334D4  48 00 7F 15 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A334D8  48 00 03 0C */	b lbl_80A337E4
lbl_80A334DC:
/* 80A334DC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A334E0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A334E4  80 63 00 00 */	lwz r3, 0(r3)
/* 80A334E8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A334EC  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000070@ha */
/* 80A334F0  38 84 00 70 */	addi r4, r4, 0x0070 /* 0x01000070@l */
/* 80A334F4  38 A0 00 00 */	li r5, 0
/* 80A334F8  38 C0 00 00 */	li r6, 0
/* 80A334FC  4B 87 BB 15 */	bl bgmStart__8Z2SeqMgrFUlUll
lbl_80A33500:
/* 80A33500  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80A33504  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A33508  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80A3350C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A33510  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80A33514  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A33518  7F 83 E3 78 */	mr r3, r28
/* 80A3351C  38 81 00 20 */	addi r4, r1, 0x20
/* 80A33520  48 00 75 39 */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A33524  7F 83 E3 78 */	mr r3, r28
/* 80A33528  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A3352C  48 00 75 C5 */	bl setAngle__10daNpc_Kn_cFs
/* 80A33530  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 80A33534  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80A33538  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3353C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A33540  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80A33544  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A33548  38 7C 04 A8 */	addi r3, r28, 0x4a8
/* 80A3354C  4B 5D 98 19 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80A33550  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A33554  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A33558  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A3355C  4B 5D 8E D9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A33560  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A33564  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A33568  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A3356C  7C 85 23 78 */	mr r5, r4
/* 80A33570  4B 91 37 FD */	bl PSMTXMultVec
/* 80A33574  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80A33578  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A3357C  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80A33580  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80A33584  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80A33588  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A3358C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A33590  EC 01 00 2A */	fadds f0, f1, f0
/* 80A33594  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A33598  38 61 00 50 */	addi r3, r1, 0x50
/* 80A3359C  4B 5E A7 21 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A335A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A335A4  41 82 00 10 */	beq lbl_80A335B4
/* 80A335A8  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80A335AC  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80A335B0  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_80A335B4:
/* 80A335B4  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80A335B8  40 82 00 54 */	bne lbl_80A3360C
/* 80A335BC  7F 83 E3 78 */	mr r3, r28
/* 80A335C0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A335C4  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A335C8  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80A335CC  4B 5E 71 45 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A335D0  7C 65 1B 78 */	mr r5, r3
/* 80A335D4  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80A335D8  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A335DC  38 05 72 54 */	addi r0, r5, 0x7254
/* 80A335E0  7C 05 07 34 */	extsh r5, r0
/* 80A335E4  38 C0 00 00 */	li r6, 0
/* 80A335E8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A335EC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A335F0  7D 89 03 A6 */	mtctr r12
/* 80A335F4  4E 80 04 21 */	bctrl 
/* 80A335F8  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80A335FC  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 80A33600  60 00 00 40 */	ori r0, r0, 0x40
/* 80A33604  90 03 05 7C */	stw r0, 0x57c(r3)
/* 80A33608  48 00 01 DC */	b lbl_80A337E4
lbl_80A3360C:
/* 80A3360C  7F 83 E3 78 */	mr r3, r28
/* 80A33610  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A33614  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A33618  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80A3361C  4B 5E 70 F5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A33620  7C 65 1B 78 */	mr r5, r3
/* 80A33624  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80A33628  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A3362C  3C A5 00 01 */	addis r5, r5, 1
/* 80A33630  38 05 80 00 */	addi r0, r5, -32768
/* 80A33634  7C 05 07 34 */	extsh r5, r0
/* 80A33638  38 C0 00 00 */	li r6, 0
/* 80A3363C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A33640  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A33644  7D 89 03 A6 */	mtctr r12
/* 80A33648  4E 80 04 21 */	bctrl 
/* 80A3364C  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A33650  2C 00 00 01 */	cmpwi r0, 1
/* 80A33654  41 82 00 24 */	beq lbl_80A33678
/* 80A33658  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A3365C  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A33660  4B 71 22 39 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A33664  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A33668  38 00 00 01 */	li r0, 1
/* 80A3366C  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A33670  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A33674  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A33678:
/* 80A33678  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A3367C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A33680  4B 71 22 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A33684  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A33688  38 00 00 00 */	li r0, 0
/* 80A3368C  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A33690  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A33694  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A33698  48 00 01 4C */	b lbl_80A337E4
lbl_80A3369C:
/* 80A3369C  7F 83 E3 78 */	mr r3, r28
/* 80A336A0  38 80 02 F0 */	li r4, 0x2f0
/* 80A336A4  38 A0 00 00 */	li r5, 0
/* 80A336A8  48 00 7D 41 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A336AC  48 00 01 38 */	b lbl_80A337E4
lbl_80A336B0:
/* 80A336B0  38 60 00 0B */	li r3, 0xb
/* 80A336B4  4B 71 94 79 */	bl daNpcT_offTmpBit__FUl
/* 80A336B8  7F 83 E3 78 */	mr r3, r28
/* 80A336BC  38 80 02 F1 */	li r4, 0x2f1
/* 80A336C0  38 A0 00 00 */	li r5, 0
/* 80A336C4  48 00 7D 25 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A336C8  48 00 01 1C */	b lbl_80A337E4
lbl_80A336CC:
/* 80A336CC  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A336D0  2C 00 00 01 */	cmpwi r0, 1
/* 80A336D4  41 82 00 24 */	beq lbl_80A336F8
/* 80A336D8  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A336DC  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A336E0  4B 71 21 B9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A336E4  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A336E8  38 00 00 01 */	li r0, 1
/* 80A336EC  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A336F0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A336F4  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A336F8:
/* 80A336F8  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A336FC  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A33700  4B 71 21 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A33704  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A33708  38 00 00 0D */	li r0, 0xd
/* 80A3370C  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A33710  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A33714  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A33718  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A3371C  2C 00 00 00 */	cmpwi r0, 0
/* 80A33720  41 82 00 24 */	beq lbl_80A33744
/* 80A33724  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A33728  4B 71 1F D5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A3372C  38 00 00 00 */	li r0, 0
/* 80A33730  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A33734  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A33738  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A3373C  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A33740  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A33744:
/* 80A33744  38 00 00 00 */	li r0, 0
/* 80A33748  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A3374C  48 00 00 98 */	b lbl_80A337E4
lbl_80A33750:
/* 80A33750  7F 83 E3 78 */	mr r3, r28
/* 80A33754  38 80 02 F1 */	li r4, 0x2f1
/* 80A33758  38 A0 00 00 */	li r5, 0
/* 80A3375C  48 00 7C 8D */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A33760  48 00 00 84 */	b lbl_80A337E4
lbl_80A33764:
/* 80A33764  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A33768  2C 00 00 01 */	cmpwi r0, 1
/* 80A3376C  41 82 00 24 */	beq lbl_80A33790
/* 80A33770  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A33774  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A33778  4B 71 21 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3377C  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A33780  38 00 00 01 */	li r0, 1
/* 80A33784  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A33788  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3378C  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A33790:
/* 80A33790  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A33794  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A33798  4B 71 21 01 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3379C  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A337A0  38 00 00 18 */	li r0, 0x18
/* 80A337A4  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A337A8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A337AC  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A337B0  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A337B4  2C 00 00 00 */	cmpwi r0, 0
/* 80A337B8  41 82 00 24 */	beq lbl_80A337DC
/* 80A337BC  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A337C0  4B 71 1F 3D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A337C4  38 00 00 00 */	li r0, 0
/* 80A337C8  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A337CC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A337D0  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A337D4  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A337D8  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A337DC:
/* 80A337DC  38 00 00 00 */	li r0, 0
/* 80A337E0  98 1C 0D 33 */	stb r0, 0xd33(r28)
lbl_80A337E4:
/* 80A337E4  28 1D 00 46 */	cmplwi r29, 0x46
/* 80A337E8  41 81 05 78 */	bgt lbl_80A33D60
/* 80A337EC  3C 60 80 A4 */	lis r3, lit_10496@ha /* 0x80A41DC0@ha */
/* 80A337F0  38 63 1D C0 */	addi r3, r3, lit_10496@l /* 0x80A41DC0@l */
/* 80A337F4  57 A0 10 3A */	slwi r0, r29, 2
/* 80A337F8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A337FC  7C 09 03 A6 */	mtctr r0
/* 80A33800  4E 80 04 20 */	bctr 
lbl_80A33804:
/* 80A33804  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80A33808  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3380C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A33810  4C 40 13 82 */	cror 2, 0, 2
/* 80A33814  40 82 05 50 */	bne lbl_80A33D64
/* 80A33818  80 1C 06 FC */	lwz r0, 0x6fc(r28)
/* 80A3381C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A33820  41 82 05 44 */	beq lbl_80A33D64
/* 80A33824  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80A33828  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80A3382C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80A33830  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80A33834  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A33838  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A3383C  40 82 00 30 */	bne lbl_80A3386C
/* 80A33840  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A33844  41 82 00 50 */	beq lbl_80A33894
/* 80A33848  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A3384C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A33850  4B 71 20 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A33854  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A33858  38 00 00 13 */	li r0, 0x13
/* 80A3385C  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A33860  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A33864  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A33868  48 00 00 2C */	b lbl_80A33894
lbl_80A3386C:
/* 80A3386C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A33870  41 82 00 24 */	beq lbl_80A33894
/* 80A33874  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A33878  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A3387C  4B 71 20 1D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A33880  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A33884  38 00 00 0F */	li r0, 0xf
/* 80A33888  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A3388C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A33890  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
lbl_80A33894:
/* 80A33894  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A33898  2C 00 00 01 */	cmpwi r0, 1
/* 80A3389C  41 82 00 24 */	beq lbl_80A338C0
/* 80A338A0  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A338A4  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A338A8  4B 71 1F F1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A338AC  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A338B0  38 00 00 01 */	li r0, 1
/* 80A338B4  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A338B8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A338BC  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A338C0:
/* 80A338C0  7F 83 E3 78 */	mr r3, r28
/* 80A338C4  48 00 3C 95 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A338C8  3B C0 00 01 */	li r30, 1
/* 80A338CC  48 00 04 98 */	b lbl_80A33D64
lbl_80A338D0:
/* 80A338D0  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A338D4  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A338D8  41 82 00 0C */	beq lbl_80A338E4
/* 80A338DC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A338E0  40 82 04 84 */	bne lbl_80A33D64
lbl_80A338E4:
/* 80A338E4  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A338E8  2C 00 00 00 */	cmpwi r0, 0
/* 80A338EC  40 81 00 0C */	ble lbl_80A338F8
/* 80A338F0  3B C0 00 01 */	li r30, 1
/* 80A338F4  48 00 04 70 */	b lbl_80A33D64
lbl_80A338F8:
/* 80A338F8  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80A338FC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A33900  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 80A33904  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A33908  4C 41 13 82 */	cror 2, 1, 2
/* 80A3390C  40 82 04 58 */	bne lbl_80A33D64
/* 80A33910  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80A33914  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A33918  40 80 04 4C */	bge lbl_80A33D64
/* 80A3391C  7F 83 E3 78 */	mr r3, r28
/* 80A33920  48 00 3C 39 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A33924  48 00 04 40 */	b lbl_80A33D64
lbl_80A33928:
/* 80A33928  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A3392C  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A33930  41 82 00 0C */	beq lbl_80A3393C
/* 80A33934  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A33938  40 82 04 2C */	bne lbl_80A33D64
lbl_80A3393C:
/* 80A3393C  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A33940  2C 00 00 00 */	cmpwi r0, 0
/* 80A33944  40 81 04 20 */	ble lbl_80A33D64
/* 80A33948  3B C0 00 01 */	li r30, 1
/* 80A3394C  48 00 04 18 */	b lbl_80A33D64
lbl_80A33950:
/* 80A33950  7F 83 E3 78 */	mr r3, r28
/* 80A33954  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A33958  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A3395C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A33960  4B 5E 6D B1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A33964  A8 9C 0D AE */	lha r4, 0xdae(r28)
/* 80A33968  7C 60 07 34 */	extsh r0, r3
/* 80A3396C  7C 04 00 00 */	cmpw r4, r0
/* 80A33970  41 82 00 94 */	beq lbl_80A33A04
/* 80A33974  7F 83 E3 78 */	mr r3, r28
/* 80A33978  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A3397C  4B 5E 6D 95 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A33980  7C 64 1B 78 */	mr r4, r3
/* 80A33984  7F 83 E3 78 */	mr r3, r28
/* 80A33988  38 A0 00 01 */	li r5, 1
/* 80A3398C  38 C0 00 20 */	li r6, 0x20
/* 80A33990  38 E0 00 14 */	li r7, 0x14
/* 80A33994  39 00 00 00 */	li r8, 0
/* 80A33998  48 00 78 89 */	bl step__10daNpc_Kn_cFsiiii
/* 80A3399C  2C 03 00 00 */	cmpwi r3, 0
/* 80A339A0  41 82 03 C4 */	beq lbl_80A33D64
/* 80A339A4  3B C0 00 01 */	li r30, 1
/* 80A339A8  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A339AC  2C 00 00 01 */	cmpwi r0, 1
/* 80A339B0  41 82 00 24 */	beq lbl_80A339D4
/* 80A339B4  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A339B8  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A339BC  4B 71 1E DD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A339C0  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A339C4  38 00 00 01 */	li r0, 1
/* 80A339C8  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A339CC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A339D0  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A339D4:
/* 80A339D4  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A339D8  2C 00 00 00 */	cmpwi r0, 0
/* 80A339DC  41 82 03 88 */	beq lbl_80A33D64
/* 80A339E0  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A339E4  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A339E8  4B 71 1E B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A339EC  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A339F0  38 00 00 00 */	li r0, 0
/* 80A339F4  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A339F8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A339FC  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A33A00  48 00 03 64 */	b lbl_80A33D64
lbl_80A33A04:
/* 80A33A04  3B C0 00 01 */	li r30, 1
/* 80A33A08  48 00 03 5C */	b lbl_80A33D64
lbl_80A33A0C:
/* 80A33A0C  7F 83 E3 78 */	mr r3, r28
/* 80A33A10  38 80 00 00 */	li r4, 0
/* 80A33A14  38 A0 00 00 */	li r5, 0
/* 80A33A18  38 C0 00 00 */	li r6, 0
/* 80A33A1C  38 E0 00 00 */	li r7, 0
/* 80A33A20  48 00 7A 29 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A33A24  2C 03 00 00 */	cmpwi r3, 0
/* 80A33A28  41 82 03 3C */	beq lbl_80A33D64
/* 80A33A2C  3B C0 00 01 */	li r30, 1
/* 80A33A30  48 00 03 34 */	b lbl_80A33D64
lbl_80A33A34:
/* 80A33A34  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80A33A38  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A33A3C  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80A33A40  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A33A44  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80A33A48  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A33A4C  7F 83 E3 78 */	mr r3, r28
/* 80A33A50  38 81 00 14 */	addi r4, r1, 0x14
/* 80A33A54  48 00 70 05 */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A33A58  7F 83 E3 78 */	mr r3, r28
/* 80A33A5C  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A33A60  48 00 70 91 */	bl setAngle__10daNpc_Kn_cFs
/* 80A33A64  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 80A33A68  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A33A6C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A33A70  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A33A74  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80A33A78  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80A33A7C  38 7C 04 A8 */	addi r3, r28, 0x4a8
/* 80A33A80  4B 5D 92 E5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80A33A84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A33A88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A33A8C  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A33A90  4B 5D 89 A5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A33A94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A33A98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A33A9C  38 81 00 44 */	addi r4, r1, 0x44
/* 80A33AA0  7C 85 23 78 */	mr r5, r4
/* 80A33AA4  4B 91 32 C9 */	bl PSMTXMultVec
/* 80A33AA8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80A33AAC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A33AB0  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80A33AB4  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80A33AB8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80A33ABC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A33AC0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A33AC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80A33AC8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A33ACC  38 61 00 38 */	addi r3, r1, 0x38
/* 80A33AD0  4B 5E A1 ED */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A33AD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A33AD8  41 82 00 10 */	beq lbl_80A33AE8
/* 80A33ADC  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80A33AE0  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80A33AE4  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_80A33AE8:
/* 80A33AE8  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80A33AEC  40 82 00 44 */	bne lbl_80A33B30
/* 80A33AF0  7F 83 E3 78 */	mr r3, r28
/* 80A33AF4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A33AF8  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A33AFC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A33B00  4B 5E 6C 11 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A33B04  7C 65 1B 78 */	mr r5, r3
/* 80A33B08  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80A33B0C  38 81 00 44 */	addi r4, r1, 0x44
/* 80A33B10  38 05 72 54 */	addi r0, r5, 0x7254
/* 80A33B14  7C 05 07 34 */	extsh r5, r0
/* 80A33B18  38 C0 00 00 */	li r6, 0
/* 80A33B1C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A33B20  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A33B24  7D 89 03 A6 */	mtctr r12
/* 80A33B28  4E 80 04 21 */	bctrl 
/* 80A33B2C  48 00 00 44 */	b lbl_80A33B70
lbl_80A33B30:
/* 80A33B30  7F 83 E3 78 */	mr r3, r28
/* 80A33B34  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A33B38  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A33B3C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A33B40  4B 5E 6B D1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A33B44  7C 65 1B 78 */	mr r5, r3
/* 80A33B48  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80A33B4C  38 81 00 44 */	addi r4, r1, 0x44
/* 80A33B50  3C A5 00 01 */	addis r5, r5, 1
/* 80A33B54  38 05 80 00 */	addi r0, r5, -32768
/* 80A33B58  7C 05 07 34 */	extsh r5, r0
/* 80A33B5C  38 C0 00 00 */	li r6, 0
/* 80A33B60  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A33B64  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A33B68  7D 89 03 A6 */	mtctr r12
/* 80A33B6C  4E 80 04 21 */	bctrl 
lbl_80A33B70:
/* 80A33B70  3B C0 00 01 */	li r30, 1
/* 80A33B74  48 00 01 F0 */	b lbl_80A33D64
lbl_80A33B78:
/* 80A33B78  3B C0 00 01 */	li r30, 1
/* 80A33B7C  48 00 01 E8 */	b lbl_80A33D64
lbl_80A33B80:
/* 80A33B80  7F 83 E3 78 */	mr r3, r28
/* 80A33B84  38 80 00 00 */	li r4, 0
/* 80A33B88  38 A0 00 00 */	li r5, 0
/* 80A33B8C  38 C0 00 00 */	li r6, 0
/* 80A33B90  38 E0 00 00 */	li r7, 0
/* 80A33B94  48 00 78 B5 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A33B98  2C 03 00 00 */	cmpwi r3, 0
/* 80A33B9C  41 82 01 C8 */	beq lbl_80A33D64
/* 80A33BA0  3B C0 00 01 */	li r30, 1
/* 80A33BA4  48 00 01 C0 */	b lbl_80A33D64
lbl_80A33BA8:
/* 80A33BA8  80 9C 0B B0 */	lwz r4, 0xbb0(r28)
/* 80A33BAC  2C 04 00 0D */	cmpwi r4, 0xd
/* 80A33BB0  40 82 01 30 */	bne lbl_80A33CE0
/* 80A33BB4  38 60 00 00 */	li r3, 0
/* 80A33BB8  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A33BBC  2C 00 00 00 */	cmpwi r0, 0
/* 80A33BC0  40 82 00 14 */	bne lbl_80A33BD4
/* 80A33BC4  80 1C 0B BC */	lwz r0, 0xbbc(r28)
/* 80A33BC8  2C 00 FF FF */	cmpwi r0, -1
/* 80A33BCC  40 82 00 08 */	bne lbl_80A33BD4
/* 80A33BD0  38 60 00 01 */	li r3, 1
lbl_80A33BD4:
/* 80A33BD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A33BD8  40 82 01 08 */	bne lbl_80A33CE0
/* 80A33BDC  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80A33BE0  38 80 00 01 */	li r4, 1
/* 80A33BE4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A33BE8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A33BEC  40 82 00 18 */	bne lbl_80A33C04
/* 80A33BF0  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80A33BF4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A33BF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A33BFC  41 82 00 08 */	beq lbl_80A33C04
/* 80A33C00  38 80 00 00 */	li r4, 0
lbl_80A33C04:
/* 80A33C04  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A33C08  41 82 01 5C */	beq lbl_80A33D64
/* 80A33C0C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A33C10  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A33C14  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A33C18  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 80A33C1C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A33C20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A33C24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A33C28  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A33C2C  4B 5D 87 B1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A33C30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A33C34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A33C38  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A33C3C  7C 85 23 78 */	mr r5, r4
/* 80A33C40  4B 91 31 2D */	bl PSMTXMultVec
/* 80A33C44  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A33C48  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 80A33C4C  7C 65 1B 78 */	mr r5, r3
/* 80A33C50  4B 91 34 41 */	bl PSVECAdd
/* 80A33C54  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80A33C58  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A33C5C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80A33C60  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A33C64  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80A33C68  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A33C6C  7F 83 E3 78 */	mr r3, r28
/* 80A33C70  38 81 00 08 */	addi r4, r1, 8
/* 80A33C74  48 00 6D E5 */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A33C78  7F 83 E3 78 */	mr r3, r28
/* 80A33C7C  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A33C80  3C 84 00 01 */	addis r4, r4, 1
/* 80A33C84  38 04 80 00 */	addi r0, r4, -32768
/* 80A33C88  7C 04 07 34 */	extsh r4, r0
/* 80A33C8C  48 00 6E 65 */	bl setAngle__10daNpc_Kn_cFs
/* 80A33C90  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A33C94  2C 00 00 01 */	cmpwi r0, 1
/* 80A33C98  41 82 00 24 */	beq lbl_80A33CBC
/* 80A33C9C  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A33CA0  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A33CA4  4B 71 1B F5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A33CA8  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A33CAC  38 00 00 01 */	li r0, 1
/* 80A33CB0  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A33CB4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A33CB8  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A33CBC:
/* 80A33CBC  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A33CC0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A33CC4  4B 71 1B D5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A33CC8  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A33CCC  38 00 00 06 */	li r0, 6
/* 80A33CD0  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A33CD4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A33CD8  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A33CDC  48 00 00 88 */	b lbl_80A33D64
lbl_80A33CE0:
/* 80A33CE0  2C 04 00 06 */	cmpwi r4, 6
/* 80A33CE4  40 82 00 80 */	bne lbl_80A33D64
/* 80A33CE8  38 60 00 00 */	li r3, 0
/* 80A33CEC  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A33CF0  2C 00 00 00 */	cmpwi r0, 0
/* 80A33CF4  40 82 00 14 */	bne lbl_80A33D08
/* 80A33CF8  80 1C 0B BC */	lwz r0, 0xbbc(r28)
/* 80A33CFC  2C 00 FF FF */	cmpwi r0, -1
/* 80A33D00  40 82 00 08 */	bne lbl_80A33D08
/* 80A33D04  38 60 00 01 */	li r3, 1
lbl_80A33D08:
/* 80A33D08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A33D0C  40 82 00 58 */	bne lbl_80A33D64
/* 80A33D10  3B C0 00 01 */	li r30, 1
/* 80A33D14  48 00 00 50 */	b lbl_80A33D64
lbl_80A33D18:
/* 80A33D18  7F 83 E3 78 */	mr r3, r28
/* 80A33D1C  38 80 00 00 */	li r4, 0
/* 80A33D20  38 A0 00 00 */	li r5, 0
/* 80A33D24  38 C0 00 00 */	li r6, 0
/* 80A33D28  38 E0 00 00 */	li r7, 0
/* 80A33D2C  48 00 77 1D */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A33D30  2C 03 00 00 */	cmpwi r3, 0
/* 80A33D34  41 82 00 30 */	beq lbl_80A33D64
/* 80A33D38  3B C0 00 01 */	li r30, 1
/* 80A33D3C  48 00 00 28 */	b lbl_80A33D64
lbl_80A33D40:
/* 80A33D40  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A33D44  2C 00 00 18 */	cmpwi r0, 0x18
/* 80A33D48  40 82 00 1C */	bne lbl_80A33D64
/* 80A33D4C  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A33D50  2C 00 00 00 */	cmpwi r0, 0
/* 80A33D54  40 81 00 10 */	ble lbl_80A33D64
/* 80A33D58  3B C0 00 01 */	li r30, 1
/* 80A33D5C  48 00 00 08 */	b lbl_80A33D64
lbl_80A33D60:
/* 80A33D60  3B C0 00 01 */	li r30, 1
lbl_80A33D64:
/* 80A33D64  7F C3 F3 78 */	mr r3, r30
/* 80A33D68  39 61 00 80 */	addi r11, r1, 0x80
/* 80A33D6C  4B 92 E4 B1 */	bl _restgpr_26
/* 80A33D70  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A33D74  7C 08 03 A6 */	mtlr r0
/* 80A33D78  38 21 00 80 */	addi r1, r1, 0x80
/* 80A33D7C  4E 80 00 20 */	blr 
