lbl_80A324C4:
/* 80A324C4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80A324C8  7C 08 02 A6 */	mflr r0
/* 80A324CC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A324D0  39 61 00 80 */	addi r11, r1, 0x80
/* 80A324D4  4B 92 FC FD */	bl _savegpr_26
/* 80A324D8  7C 7C 1B 78 */	mr r28, r3
/* 80A324DC  7C 9A 23 78 */	mr r26, r4
/* 80A324E0  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A324E4  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A324E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A324EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A324F0  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A324F4  3B C0 00 00 */	li r30, 0
/* 80A324F8  3B A0 FF FF */	li r29, -1
/* 80A324FC  7F 63 DB 78 */	mr r3, r27
/* 80A32500  3C A0 80 A4 */	lis r5, d_a_npc_kn__stringBase0@ha /* 0x80A40AF8@ha */
/* 80A32504  38 A5 0A F8 */	addi r5, r5, d_a_npc_kn__stringBase0@l /* 0x80A40AF8@l */
/* 80A32508  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A3250C  38 C0 00 03 */	li r6, 3
/* 80A32510  4B 61 5B DD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A32514  28 03 00 00 */	cmplwi r3, 0
/* 80A32518  41 82 00 08 */	beq lbl_80A32520
/* 80A3251C  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A32520:
/* 80A32520  7F 63 DB 78 */	mr r3, r27
/* 80A32524  7F 44 D3 78 */	mr r4, r26
/* 80A32528  4B 61 58 25 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A3252C  2C 03 00 00 */	cmpwi r3, 0
/* 80A32530  41 82 03 18 */	beq lbl_80A32848
/* 80A32534  28 1D 00 46 */	cmplwi r29, 0x46
/* 80A32538  41 81 03 10 */	bgt lbl_80A32848
/* 80A3253C  3C 60 80 A4 */	lis r3, lit_9984@ha /* 0x80A41BAC@ha */
/* 80A32540  38 63 1B AC */	addi r3, r3, lit_9984@l /* 0x80A41BAC@l */
/* 80A32544  57 A0 10 3A */	slwi r0, r29, 2
/* 80A32548  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A3254C  7C 09 03 A6 */	mtctr r0
/* 80A32550  4E 80 04 20 */	bctr 
lbl_80A32554:
/* 80A32554  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A32558  2C 00 00 01 */	cmpwi r0, 1
/* 80A3255C  41 82 00 24 */	beq lbl_80A32580
/* 80A32560  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A32564  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A32568  4B 71 33 31 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3256C  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A32570  38 00 00 01 */	li r0, 1
/* 80A32574  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A32578  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3257C  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A32580:
/* 80A32580  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A32584  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A32588  4B 71 33 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3258C  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A32590  38 00 00 1C */	li r0, 0x1c
/* 80A32594  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A32598  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3259C  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A325A0  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A325A4  2C 00 00 01 */	cmpwi r0, 1
/* 80A325A8  41 82 00 28 */	beq lbl_80A325D0
/* 80A325AC  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A325B0  4B 71 31 4D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A325B4  38 00 00 00 */	li r0, 0
/* 80A325B8  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A325BC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A325C0  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A325C4  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A325C8  38 00 00 01 */	li r0, 1
/* 80A325CC  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A325D0:
/* 80A325D0  38 00 00 00 */	li r0, 0
/* 80A325D4  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A325D8  38 00 00 1E */	li r0, 0x1e
/* 80A325DC  90 1C 0D EC */	stw r0, 0xdec(r28)
/* 80A325E0  48 00 02 68 */	b lbl_80A32848
lbl_80A325E4:
/* 80A325E4  38 00 00 02 */	li r0, 2
/* 80A325E8  B0 1C 0D FE */	sth r0, 0xdfe(r28)
/* 80A325EC  7F 83 E3 78 */	mr r3, r28
/* 80A325F0  38 80 02 DF */	li r4, 0x2df
/* 80A325F4  38 A0 00 00 */	li r5, 0
/* 80A325F8  48 00 8D F1 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A325FC  48 00 02 4C */	b lbl_80A32848
lbl_80A32600:
/* 80A32600  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80A32604  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80A32608  80 63 00 00 */	lwz r3, 0(r3)
/* 80A3260C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A32610  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000070@ha */
/* 80A32614  38 84 00 70 */	addi r4, r4, 0x0070 /* 0x01000070@l */
/* 80A32618  38 A0 00 00 */	li r5, 0
/* 80A3261C  38 C0 00 00 */	li r6, 0
/* 80A32620  4B 87 C9 F1 */	bl bgmStart__8Z2SeqMgrFUlUll
lbl_80A32624:
/* 80A32624  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80A32628  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A3262C  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80A32630  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A32634  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80A32638  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A3263C  7F 83 E3 78 */	mr r3, r28
/* 80A32640  38 81 00 20 */	addi r4, r1, 0x20
/* 80A32644  48 00 84 15 */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A32648  7F 83 E3 78 */	mr r3, r28
/* 80A3264C  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A32650  48 00 84 A1 */	bl setAngle__10daNpc_Kn_cFs
/* 80A32654  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A32658  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80A3265C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A32660  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80A32664  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A32668  38 7C 04 A8 */	addi r3, r28, 0x4a8
/* 80A3266C  4B 5D A6 F9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80A32670  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A32674  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A32678  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A3267C  4B 5D 9D B9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A32680  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A32684  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A32688  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A3268C  7C 85 23 78 */	mr r5, r4
/* 80A32690  4B 91 46 DD */	bl PSMTXMultVec
/* 80A32694  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80A32698  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A3269C  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80A326A0  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80A326A4  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80A326A8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A326AC  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A326B0  EC 01 00 2A */	fadds f0, f1, f0
/* 80A326B4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A326B8  38 61 00 50 */	addi r3, r1, 0x50
/* 80A326BC  4B 5E B6 01 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A326C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A326C4  41 82 00 10 */	beq lbl_80A326D4
/* 80A326C8  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80A326CC  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80A326D0  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_80A326D4:
/* 80A326D4  7F 83 E3 78 */	mr r3, r28
/* 80A326D8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A326DC  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A326E0  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80A326E4  4B 5E 80 2D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A326E8  7C 65 1B 78 */	mr r5, r3
/* 80A326EC  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80A326F0  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A326F4  3C A5 00 01 */	addis r5, r5, 1
/* 80A326F8  38 05 80 00 */	addi r0, r5, -32768
/* 80A326FC  7C 05 07 34 */	extsh r5, r0
/* 80A32700  38 C0 00 00 */	li r6, 0
/* 80A32704  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A32708  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A3270C  7D 89 03 A6 */	mtctr r12
/* 80A32710  4E 80 04 21 */	bctrl 
/* 80A32714  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80A32718  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 80A3271C  60 00 00 20 */	ori r0, r0, 0x20
/* 80A32720  90 03 05 7C */	stw r0, 0x57c(r3)
/* 80A32724  48 00 01 24 */	b lbl_80A32848
lbl_80A32728:
/* 80A32728  7F 83 E3 78 */	mr r3, r28
/* 80A3272C  38 80 02 E0 */	li r4, 0x2e0
/* 80A32730  38 A0 00 00 */	li r5, 0
/* 80A32734  48 00 8C B5 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A32738  48 00 01 10 */	b lbl_80A32848
lbl_80A3273C:
/* 80A3273C  38 60 00 0B */	li r3, 0xb
/* 80A32740  4B 71 A3 ED */	bl daNpcT_offTmpBit__FUl
/* 80A32744  7F 83 E3 78 */	mr r3, r28
/* 80A32748  38 80 02 E1 */	li r4, 0x2e1
/* 80A3274C  38 A0 00 00 */	li r5, 0
/* 80A32750  48 00 8C 99 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A32754  48 00 00 F4 */	b lbl_80A32848
lbl_80A32758:
/* 80A32758  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A3275C  2C 00 00 01 */	cmpwi r0, 1
/* 80A32760  41 82 00 24 */	beq lbl_80A32784
/* 80A32764  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A32768  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A3276C  4B 71 31 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A32770  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A32774  38 00 00 01 */	li r0, 1
/* 80A32778  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A3277C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A32780  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A32784:
/* 80A32784  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A32788  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A3278C  4B 71 31 0D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A32790  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A32794  38 00 00 11 */	li r0, 0x11
/* 80A32798  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A3279C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A327A0  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A327A4  48 00 00 A4 */	b lbl_80A32848
lbl_80A327A8:
/* 80A327A8  38 00 00 1E */	li r0, 0x1e
/* 80A327AC  90 1C 0D EC */	stw r0, 0xdec(r28)
/* 80A327B0  48 00 00 98 */	b lbl_80A32848
lbl_80A327B4:
/* 80A327B4  7F 83 E3 78 */	mr r3, r28
/* 80A327B8  38 80 02 E1 */	li r4, 0x2e1
/* 80A327BC  38 A0 00 00 */	li r5, 0
/* 80A327C0  48 00 8C 29 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A327C4  48 00 00 84 */	b lbl_80A32848
lbl_80A327C8:
/* 80A327C8  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A327CC  2C 00 00 01 */	cmpwi r0, 1
/* 80A327D0  41 82 00 24 */	beq lbl_80A327F4
/* 80A327D4  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A327D8  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A327DC  4B 71 30 BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A327E0  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A327E4  38 00 00 01 */	li r0, 1
/* 80A327E8  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A327EC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A327F0  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A327F4:
/* 80A327F4  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A327F8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A327FC  4B 71 30 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A32800  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A32804  38 00 00 18 */	li r0, 0x18
/* 80A32808  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A3280C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A32810  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A32814  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A32818  2C 00 00 00 */	cmpwi r0, 0
/* 80A3281C  41 82 00 24 */	beq lbl_80A32840
/* 80A32820  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A32824  4B 71 2E D9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A32828  38 00 00 00 */	li r0, 0
/* 80A3282C  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A32830  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A32834  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A32838  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A3283C  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A32840:
/* 80A32840  38 00 00 00 */	li r0, 0
/* 80A32844  98 1C 0D 33 */	stb r0, 0xd33(r28)
lbl_80A32848:
/* 80A32848  28 1D 00 46 */	cmplwi r29, 0x46
/* 80A3284C  41 81 04 C4 */	bgt lbl_80A32D10
/* 80A32850  3C 60 80 A4 */	lis r3, lit_9985@ha /* 0x80A41A90@ha */
/* 80A32854  38 63 1A 90 */	addi r3, r3, lit_9985@l /* 0x80A41A90@l */
/* 80A32858  57 A0 10 3A */	slwi r0, r29, 2
/* 80A3285C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A32860  7C 09 03 A6 */	mtctr r0
/* 80A32864  4E 80 04 20 */	bctr 
lbl_80A32868:
/* 80A32868  38 7C 0D EC */	addi r3, r28, 0xdec
/* 80A3286C  48 00 94 DD */	bl func_80A3BD48
/* 80A32870  2C 03 00 00 */	cmpwi r3, 0
/* 80A32874  40 82 00 F0 */	bne lbl_80A32964
/* 80A32878  7F 83 E3 78 */	mr r3, r28
/* 80A3287C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A32880  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A32884  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A32888  4B 5E 7E 89 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3288C  A8 9C 0D AE */	lha r4, 0xdae(r28)
/* 80A32890  7C 60 07 34 */	extsh r0, r3
/* 80A32894  7C 04 00 00 */	cmpw r4, r0
/* 80A32898  40 82 00 40 */	bne lbl_80A328D8
/* 80A3289C  3B C0 00 01 */	li r30, 1
/* 80A328A0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80A328A4  D0 1C 15 B0 */	stfs f0, 0x15b0(r28)
/* 80A328A8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80A328AC  D0 1C 15 B4 */	stfs f0, 0x15b4(r28)
/* 80A328B0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80A328B4  D0 1C 15 B8 */	stfs f0, 0x15b8(r28)
/* 80A328B8  38 00 00 00 */	li r0, 0
/* 80A328BC  98 1C 15 BC */	stb r0, 0x15bc(r28)
/* 80A328C0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A328C4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80A328C8  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80A328CC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80A328D0  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80A328D4  48 00 04 40 */	b lbl_80A32D14
lbl_80A328D8:
/* 80A328D8  7F 83 E3 78 */	mr r3, r28
/* 80A328DC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A328E0  4B 5E 7E 31 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A328E4  7C 64 1B 78 */	mr r4, r3
/* 80A328E8  7F 83 E3 78 */	mr r3, r28
/* 80A328EC  38 A0 00 01 */	li r5, 1
/* 80A328F0  38 C0 00 20 */	li r6, 0x20
/* 80A328F4  38 E0 00 14 */	li r7, 0x14
/* 80A328F8  39 00 00 00 */	li r8, 0
/* 80A328FC  48 00 89 25 */	bl step__10daNpc_Kn_cFsiiii
/* 80A32900  2C 03 00 00 */	cmpwi r3, 0
/* 80A32904  41 82 04 10 */	beq lbl_80A32D14
/* 80A32908  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A3290C  2C 00 00 01 */	cmpwi r0, 1
/* 80A32910  41 82 00 24 */	beq lbl_80A32934
/* 80A32914  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A32918  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A3291C  4B 71 2F 7D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A32920  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A32924  38 00 00 01 */	li r0, 1
/* 80A32928  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A3292C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A32930  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A32934:
/* 80A32934  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A32938  2C 00 00 00 */	cmpwi r0, 0
/* 80A3293C  41 82 03 D8 */	beq lbl_80A32D14
/* 80A32940  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A32944  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A32948  4B 71 2F 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3294C  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A32950  38 00 00 00 */	li r0, 0
/* 80A32954  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A32958  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3295C  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A32960  48 00 03 B4 */	b lbl_80A32D14
lbl_80A32964:
/* 80A32964  7F 83 E3 78 */	mr r3, r28
/* 80A32968  48 00 51 A1 */	bl calcSlip__10daNpc_Kn_cFv
/* 80A3296C  48 00 03 A8 */	b lbl_80A32D14
lbl_80A32970:
/* 80A32970  7F 83 E3 78 */	mr r3, r28
/* 80A32974  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A32978  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A3297C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A32980  4B 5E 7D 91 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A32984  A8 9C 0D AE */	lha r4, 0xdae(r28)
/* 80A32988  7C 60 07 34 */	extsh r0, r3
/* 80A3298C  7C 04 00 00 */	cmpw r4, r0
/* 80A32990  41 82 00 94 */	beq lbl_80A32A24
/* 80A32994  7F 83 E3 78 */	mr r3, r28
/* 80A32998  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A3299C  4B 5E 7D 75 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A329A0  7C 64 1B 78 */	mr r4, r3
/* 80A329A4  7F 83 E3 78 */	mr r3, r28
/* 80A329A8  38 A0 00 01 */	li r5, 1
/* 80A329AC  38 C0 00 20 */	li r6, 0x20
/* 80A329B0  38 E0 00 14 */	li r7, 0x14
/* 80A329B4  39 00 00 00 */	li r8, 0
/* 80A329B8  48 00 88 69 */	bl step__10daNpc_Kn_cFsiiii
/* 80A329BC  2C 03 00 00 */	cmpwi r3, 0
/* 80A329C0  41 82 03 54 */	beq lbl_80A32D14
/* 80A329C4  3B C0 00 01 */	li r30, 1
/* 80A329C8  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A329CC  2C 00 00 01 */	cmpwi r0, 1
/* 80A329D0  41 82 00 24 */	beq lbl_80A329F4
/* 80A329D4  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A329D8  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A329DC  4B 71 2E BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A329E0  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A329E4  38 00 00 01 */	li r0, 1
/* 80A329E8  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A329EC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A329F0  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A329F4:
/* 80A329F4  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A329F8  2C 00 00 00 */	cmpwi r0, 0
/* 80A329FC  41 82 03 18 */	beq lbl_80A32D14
/* 80A32A00  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A32A04  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A32A08  4B 71 2E 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A32A0C  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A32A10  38 00 00 00 */	li r0, 0
/* 80A32A14  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A32A18  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A32A1C  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A32A20  48 00 02 F4 */	b lbl_80A32D14
lbl_80A32A24:
/* 80A32A24  3B C0 00 01 */	li r30, 1
/* 80A32A28  48 00 02 EC */	b lbl_80A32D14
lbl_80A32A2C:
/* 80A32A2C  7F 83 E3 78 */	mr r3, r28
/* 80A32A30  38 80 00 00 */	li r4, 0
/* 80A32A34  38 A0 00 00 */	li r5, 0
/* 80A32A38  38 C0 00 00 */	li r6, 0
/* 80A32A3C  38 E0 00 00 */	li r7, 0
/* 80A32A40  48 00 8A 09 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A32A44  2C 03 00 00 */	cmpwi r3, 0
/* 80A32A48  41 82 02 CC */	beq lbl_80A32D14
/* 80A32A4C  3B C0 00 01 */	li r30, 1
/* 80A32A50  48 00 02 C4 */	b lbl_80A32D14
lbl_80A32A54:
/* 80A32A54  3B C0 00 01 */	li r30, 1
/* 80A32A58  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80A32A5C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A32A60  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80A32A64  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A32A68  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80A32A6C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A32A70  7F 83 E3 78 */	mr r3, r28
/* 80A32A74  38 81 00 14 */	addi r4, r1, 0x14
/* 80A32A78  48 00 7F E1 */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A32A7C  7F 83 E3 78 */	mr r3, r28
/* 80A32A80  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A32A84  48 00 80 6D */	bl setAngle__10daNpc_Kn_cFs
/* 80A32A88  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A32A8C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A32A90  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A32A94  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80A32A98  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80A32A9C  38 7C 04 A8 */	addi r3, r28, 0x4a8
/* 80A32AA0  4B 5D A2 C5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80A32AA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A32AA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A32AAC  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A32AB0  4B 5D 99 85 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A32AB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A32AB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A32ABC  38 81 00 44 */	addi r4, r1, 0x44
/* 80A32AC0  7C 85 23 78 */	mr r5, r4
/* 80A32AC4  4B 91 42 A9 */	bl PSMTXMultVec
/* 80A32AC8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80A32ACC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A32AD0  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80A32AD4  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80A32AD8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80A32ADC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A32AE0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A32AE4  EC 01 00 2A */	fadds f0, f1, f0
/* 80A32AE8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A32AEC  38 61 00 38 */	addi r3, r1, 0x38
/* 80A32AF0  4B 5E B1 CD */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A32AF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A32AF8  41 82 00 10 */	beq lbl_80A32B08
/* 80A32AFC  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80A32B00  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80A32B04  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_80A32B08:
/* 80A32B08  7F 83 E3 78 */	mr r3, r28
/* 80A32B0C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A32B10  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A32B14  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A32B18  4B 5E 7B F9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A32B1C  7C 65 1B 78 */	mr r5, r3
/* 80A32B20  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80A32B24  38 81 00 44 */	addi r4, r1, 0x44
/* 80A32B28  3C A5 00 01 */	addis r5, r5, 1
/* 80A32B2C  38 05 80 00 */	addi r0, r5, -32768
/* 80A32B30  7C 05 07 34 */	extsh r5, r0
/* 80A32B34  38 C0 00 00 */	li r6, 0
/* 80A32B38  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A32B3C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A32B40  7D 89 03 A6 */	mtctr r12
/* 80A32B44  4E 80 04 21 */	bctrl 
/* 80A32B48  48 00 01 CC */	b lbl_80A32D14
lbl_80A32B4C:
/* 80A32B4C  7F 83 E3 78 */	mr r3, r28
/* 80A32B50  38 80 00 00 */	li r4, 0
/* 80A32B54  38 A0 00 00 */	li r5, 0
/* 80A32B58  38 C0 00 00 */	li r6, 0
/* 80A32B5C  38 E0 00 00 */	li r7, 0
/* 80A32B60  48 00 88 E9 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A32B64  2C 03 00 00 */	cmpwi r3, 0
/* 80A32B68  41 82 01 AC */	beq lbl_80A32D14
/* 80A32B6C  3B C0 00 01 */	li r30, 1
/* 80A32B70  48 00 01 A4 */	b lbl_80A32D14
lbl_80A32B74:
/* 80A32B74  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A32B78  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A32B7C  40 82 01 98 */	bne lbl_80A32D14
/* 80A32B80  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A32B84  2C 00 00 03 */	cmpwi r0, 3
/* 80A32B88  41 80 00 0C */	blt lbl_80A32B94
/* 80A32B8C  3B C0 00 01 */	li r30, 1
/* 80A32B90  48 00 01 84 */	b lbl_80A32D14
lbl_80A32B94:
/* 80A32B94  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80A32B98  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A32B9C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80A32BA0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80A32BA4  3B 60 00 00 */	li r27, 0
/* 80A32BA8  2C 00 00 00 */	cmpwi r0, 0
/* 80A32BAC  40 82 00 44 */	bne lbl_80A32BF0
/* 80A32BB0  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80A32BB4  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 80A32BB8  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 80A32BBC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A32BC0  4C 40 13 82 */	cror 2, 0, 2
/* 80A32BC4  41 82 00 2C */	beq lbl_80A32BF0
/* 80A32BC8  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80A32BCC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A32BD0  4C 40 13 82 */	cror 2, 0, 2
/* 80A32BD4  40 82 00 1C */	bne lbl_80A32BF0
/* 80A32BD8  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 80A32BDC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A32BE0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80A32BE4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80A32BE8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A32BEC  3B 60 FD 4D */	li r27, -691
lbl_80A32BF0:
/* 80A32BF0  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A32BF4  2C 00 00 01 */	cmpwi r0, 1
/* 80A32BF8  40 82 00 58 */	bne lbl_80A32C50
/* 80A32BFC  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80A32C00  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A32C04  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 80A32C08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A32C0C  4C 40 13 82 */	cror 2, 0, 2
/* 80A32C10  40 82 00 24 */	bne lbl_80A32C34
/* 80A32C14  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 80A32C18  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A32C1C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A32C20  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A32C24  C0 1F 01 B0 */	lfs f0, 0x1b0(r31)
/* 80A32C28  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A32C2C  3B 60 FB 32 */	li r27, -1230
/* 80A32C30  48 00 00 20 */	b lbl_80A32C50
lbl_80A32C34:
/* 80A32C34  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 80A32C38  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A32C3C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A32C40  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A32C44  C0 1F 01 B0 */	lfs f0, 0x1b0(r31)
/* 80A32C48  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A32C4C  3B 60 FB 32 */	li r27, -1230
lbl_80A32C50:
/* 80A32C50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A32C54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A32C58  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A32C5C  4B 5D 97 81 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A32C60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A32C64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A32C68  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A32C6C  7C 85 23 78 */	mr r5, r4
/* 80A32C70  4B 91 40 FD */	bl PSMTXMultVec
/* 80A32C74  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A32C78  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80A32C7C  7C 65 1B 78 */	mr r5, r3
/* 80A32C80  4B 91 44 11 */	bl PSVECAdd
/* 80A32C84  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80A32C88  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A32C8C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80A32C90  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A32C94  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80A32C98  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A32C9C  7F 83 E3 78 */	mr r3, r28
/* 80A32CA0  38 81 00 08 */	addi r4, r1, 8
/* 80A32CA4  48 00 7D B5 */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A32CA8  7F 83 E3 78 */	mr r3, r28
/* 80A32CAC  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80A32CB0  7C 00 DA 14 */	add r0, r0, r27
/* 80A32CB4  7C 04 07 34 */	extsh r4, r0
/* 80A32CB8  48 00 7E 39 */	bl setAngle__10daNpc_Kn_cFs
/* 80A32CBC  48 00 00 58 */	b lbl_80A32D14
lbl_80A32CC0:
/* 80A32CC0  7F 83 E3 78 */	mr r3, r28
/* 80A32CC4  38 80 00 00 */	li r4, 0
/* 80A32CC8  38 A0 00 00 */	li r5, 0
/* 80A32CCC  38 C0 00 00 */	li r6, 0
/* 80A32CD0  38 E0 00 00 */	li r7, 0
/* 80A32CD4  48 00 87 75 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A32CD8  2C 03 00 00 */	cmpwi r3, 0
/* 80A32CDC  41 82 00 38 */	beq lbl_80A32D14
/* 80A32CE0  3B C0 00 01 */	li r30, 1
/* 80A32CE4  48 00 00 30 */	b lbl_80A32D14
lbl_80A32CE8:
/* 80A32CE8  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A32CEC  2C 00 00 18 */	cmpwi r0, 0x18
/* 80A32CF0  40 82 00 24 */	bne lbl_80A32D14
/* 80A32CF4  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A32CF8  2C 00 00 00 */	cmpwi r0, 0
/* 80A32CFC  40 81 00 18 */	ble lbl_80A32D14
/* 80A32D00  3B C0 00 01 */	li r30, 1
/* 80A32D04  38 00 00 08 */	li r0, 8
/* 80A32D08  98 1C 15 AE */	stb r0, 0x15ae(r28)
/* 80A32D0C  48 00 00 08 */	b lbl_80A32D14
lbl_80A32D10:
/* 80A32D10  3B C0 00 01 */	li r30, 1
lbl_80A32D14:
/* 80A32D14  7F C3 F3 78 */	mr r3, r30
/* 80A32D18  39 61 00 80 */	addi r11, r1, 0x80
/* 80A32D1C  4B 92 F5 01 */	bl _restgpr_26
/* 80A32D20  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A32D24  7C 08 03 A6 */	mtlr r0
/* 80A32D28  38 21 00 80 */	addi r1, r1, 0x80
/* 80A32D2C  4E 80 00 20 */	blr 
