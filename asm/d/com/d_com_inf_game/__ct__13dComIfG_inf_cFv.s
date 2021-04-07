lbl_80030244:
/* 80030244  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80030248  7C 08 02 A6 */	mflr r0
/* 8003024C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80030250  39 61 00 20 */	addi r11, r1, 0x20
/* 80030254  48 33 1F 89 */	bl _savegpr_29
/* 80030258  7C 7F 1B 78 */	mr r31, r3
/* 8003025C  7C 7D 1B 78 */	mr r29, r3
/* 80030260  7C 7E 1B 78 */	mr r30, r3
/* 80030264  38 63 01 F0 */	addi r3, r3, 0x1f0
/* 80030268  3C 80 80 03 */	lis r4, __ct__12dSv_memory_cFv@ha /* 0x80030DB0@ha */
/* 8003026C  38 84 0D B0 */	addi r4, r4, __ct__12dSv_memory_cFv@l /* 0x80030DB0@l */
/* 80030270  38 A0 00 00 */	li r5, 0
/* 80030274  38 C0 00 20 */	li r6, 0x20
/* 80030278  38 E0 00 20 */	li r7, 0x20
/* 8003027C  48 33 1A E5 */	bl __construct_array
/* 80030280  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80030284  3C 80 80 03 */	lis r4, __ct__13dSv_memory2_cFv@ha /* 0x80030D80@ha */
/* 80030288  38 84 0D 80 */	addi r4, r4, __ct__13dSv_memory2_cFv@l /* 0x80030D80@l */
/* 8003028C  38 A0 00 00 */	li r5, 0
/* 80030290  38 C0 00 08 */	li r6, 8
/* 80030294  38 E0 00 40 */	li r7, 0x40
/* 80030298  48 33 1A C9 */	bl __construct_array
/* 8003029C  38 7D 09 58 */	addi r3, r29, 0x958
/* 800302A0  48 00 47 C5 */	bl init__12dSv_memory_cFv
/* 800302A4  38 7D 09 B4 */	addi r3, r29, 0x9b4
/* 800302A8  3C 80 80 03 */	lis r4, __ct__10dSv_zone_cFv@ha /* 0x80030D74@ha */
/* 800302AC  38 84 0D 74 */	addi r4, r4, __ct__10dSv_zone_cFv@l /* 0x80030D74@l */
/* 800302B0  38 A0 00 00 */	li r5, 0
/* 800302B4  38 C0 00 20 */	li r6, 0x20
/* 800302B8  38 E0 00 20 */	li r7, 0x20
/* 800302BC  48 33 1A A5 */	bl __construct_array
/* 800302C0  3B DF 0F 38 */	addi r30, r31, 0xf38
/* 800302C4  7F DD F3 78 */	mr r29, r30
/* 800302C8  3C 60 80 3B */	lis r3, __vt__4cBgS@ha /* 0x803AB61C@ha */
/* 800302CC  38 03 B6 1C */	addi r0, r3, __vt__4cBgS@l /* 0x803AB61C@l */
/* 800302D0  90 1F 23 38 */	stw r0, 0x2338(r31)
/* 800302D4  7F C3 F3 78 */	mr r3, r30
/* 800302D8  3C 80 80 03 */	lis r4, __ct__11cBgS_ChkElmFv@ha /* 0x80030D38@ha */
/* 800302DC  38 84 0D 38 */	addi r4, r4, __ct__11cBgS_ChkElmFv@l /* 0x80030D38@l */
/* 800302E0  3C A0 80 03 */	lis r5, __dt__11cBgS_ChkElmFv@ha /* 0x8002FEF8@ha */
/* 800302E4  38 A5 FE F8 */	addi r5, r5, __dt__11cBgS_ChkElmFv@l /* 0x8002FEF8@l */
/* 800302E8  38 C0 00 14 */	li r6, 0x14
/* 800302EC  38 E0 01 00 */	li r7, 0x100
/* 800302F0  48 33 1A 71 */	bl __construct_array
/* 800302F4  3C 60 80 3B */	lis r3, __vt__4dBgS@ha /* 0x803AB608@ha */
/* 800302F8  38 03 B6 08 */	addi r0, r3, __vt__4dBgS@l /* 0x803AB608@l */
/* 800302FC  90 1D 14 00 */	stw r0, 0x1400(r29)
/* 80030300  3B BE 14 04 */	addi r29, r30, 0x1404
/* 80030304  7F A3 EB 78 */	mr r3, r29
/* 80030308  48 23 47 65 */	bl __ct__4cCcSFv
/* 8003030C  3C 60 80 3B */	lis r3, __vt__4dCcS@ha /* 0x803AC3E4@ha */
/* 80030310  38 03 C3 E4 */	addi r0, r3, __vt__4dCcS@l /* 0x803AC3E4@l */
/* 80030314  90 1D 28 48 */	stw r0, 0x2848(r29)
/* 80030318  38 7D 28 4C */	addi r3, r29, 0x284c
/* 8003031C  48 05 50 35 */	bl __ct__12dCcMassS_MngFv
/* 80030320  38 00 00 00 */	li r0, 0
/* 80030324  98 1E 3E E4 */	stb r0, 0x3ee4(r30)
/* 80030328  3C 60 80 3A */	lis r3, __vt__11dStage_dt_c@ha /* 0x803A6D94@ha */
/* 8003032C  38 03 6D 94 */	addi r0, r3, __vt__11dStage_dt_c@l /* 0x803A6D94@l */
/* 80030330  90 1E 3E E8 */	stw r0, 0x3ee8(r30)
/* 80030334  3C 60 80 3A */	lis r3, __vt__16dStage_stageDt_c@ha /* 0x803A6C20@ha */
/* 80030338  38 03 6C 20 */	addi r0, r3, __vt__16dStage_stageDt_c@l /* 0x803A6C20@l */
/* 8003033C  90 1E 3E E8 */	stw r0, 0x3ee8(r30)
/* 80030340  38 7E 3F 90 */	addi r3, r30, 0x3f90
/* 80030344  48 01 12 3D */	bl __ct__14dEvt_control_cFv
/* 80030348  38 7E 40 C0 */	addi r3, r30, 0x40c0
/* 8003034C  48 01 63 3D */	bl __ct__16dEvent_manager_cFv
/* 80030350  3C 60 80 3A */	lis r3, __vt__25mDoExt_McaMorfCallBack1_c@ha /* 0x803A71E8@ha */
/* 80030354  38 03 71 E8 */	addi r0, r3, __vt__25mDoExt_McaMorfCallBack1_c@l /* 0x803A71E8@l */
/* 80030358  90 1E 47 88 */	stw r0, 0x4788(r30)
/* 8003035C  3C 60 80 3B */	lis r3, __vt__19dAttDraw_CallBack_c@ha /* 0x803A9C48@ha */
/* 80030360  38 03 9C 48 */	addi r0, r3, __vt__19dAttDraw_CallBack_c@l /* 0x803A9C48@l */
/* 80030364  90 1E 47 88 */	stw r0, 0x4788(r30)
/* 80030368  38 7E 47 A8 */	addi r3, r30, 0x47a8
/* 8003036C  3C 80 80 03 */	lis r4, __ct__10dAttDraw_cFv@ha /* 0x800307F0@ha */
/* 80030370  38 84 07 F0 */	addi r4, r4, __ct__10dAttDraw_cFv@l /* 0x800307F0@l */
/* 80030374  3C A0 80 03 */	lis r5, __dt__10dAttDraw_cFv@ha /* 0x8003054C@ha */
/* 80030378  38 A5 05 4C */	addi r5, r5, __dt__10dAttDraw_cFv@l /* 0x8003054C@l */
/* 8003037C  38 C0 01 78 */	li r6, 0x178
/* 80030380  38 E0 00 02 */	li r7, 2
/* 80030384  48 33 19 DD */	bl __construct_array
/* 80030388  38 7E 4A B8 */	addi r3, r30, 0x4ab8
/* 8003038C  3C 80 80 03 */	lis r4, __ct__10dAttList_cFv@ha /* 0x8003050C@ha */
/* 80030390  38 84 05 0C */	addi r4, r4, __ct__10dAttList_cFv@l /* 0x8003050C@l */
/* 80030394  3C A0 80 03 */	lis r5, __dt__10dAttList_cFv@ha /* 0x800304D0@ha */
/* 80030398  38 A5 04 D0 */	addi r5, r5, __dt__10dAttList_cFv@l /* 0x800304D0@l */
/* 8003039C  38 C0 00 14 */	li r6, 0x14
/* 800303A0  38 E0 00 08 */	li r7, 8
/* 800303A4  48 33 19 BD */	bl __construct_array
/* 800303A8  38 7E 4B 60 */	addi r3, r30, 0x4b60
/* 800303AC  3C 80 80 03 */	lis r4, __ct__10dAttList_cFv@ha /* 0x8003050C@ha */
/* 800303B0  38 84 05 0C */	addi r4, r4, __ct__10dAttList_cFv@l /* 0x8003050C@l */
/* 800303B4  3C A0 80 03 */	lis r5, __dt__10dAttList_cFv@ha /* 0x800304D0@ha */
/* 800303B8  38 A5 04 D0 */	addi r5, r5, __dt__10dAttList_cFv@l /* 0x800304D0@l */
/* 800303BC  38 C0 00 14 */	li r6, 0x14
/* 800303C0  38 E0 00 04 */	li r7, 4
/* 800303C4  48 33 19 9D */	bl __construct_array
/* 800303C8  38 7E 4B B8 */	addi r3, r30, 0x4bb8
/* 800303CC  3C 80 80 03 */	lis r4, __ct__10dAttList_cFv@ha /* 0x8003050C@ha */
/* 800303D0  38 84 05 0C */	addi r4, r4, __ct__10dAttList_cFv@l /* 0x8003050C@l */
/* 800303D4  3C A0 80 03 */	lis r5, __dt__10dAttList_cFv@ha /* 0x800304D0@ha */
/* 800303D8  38 A5 04 D0 */	addi r5, r5, __dt__10dAttList_cFv@l /* 0x800304D0@l */
/* 800303DC  38 C0 00 14 */	li r6, 0x14
/* 800303E0  38 E0 00 04 */	li r7, 4
/* 800303E4  48 33 19 7D */	bl __construct_array
/* 800303E8  3C 60 80 3B */	lis r3, __vt__11dAttParam_c@ha /* 0x803A9C60@ha */
/* 800303EC  38 03 9C 60 */	addi r0, r3, __vt__11dAttParam_c@l /* 0x803A9C60@l */
/* 800303F0  90 1E 4C 88 */	stw r0, 0x4c88(r30)
/* 800303F4  38 7E 4E 10 */	addi r3, r30, 0x4e10
/* 800303F8  3C 80 80 03 */	lis r4, __ct__14dDlst_window_cFv@ha /* 0x800304CC@ha */
/* 800303FC  38 84 04 CC */	addi r4, r4, __ct__14dDlst_window_cFv@l /* 0x800304CC@l */
/* 80030400  3C A0 80 03 */	lis r5, __dt__14dDlst_window_cFv@ha /* 0x800301CC@ha */
/* 80030404  38 A5 01 CC */	addi r5, r5, __dt__14dDlst_window_cFv@l /* 0x800301CC@l */
/* 80030408  38 C0 00 2C */	li r6, 0x2c
/* 8003040C  38 E0 00 01 */	li r7, 1
/* 80030410  48 33 19 51 */	bl __construct_array
/* 80030414  38 7E 4E 3C */	addi r3, r30, 0x4e3c
/* 80030418  3C 80 80 03 */	lis r4, __ct__25dComIfG_camera_info_classFv@ha /* 0x800304C8@ha */
/* 8003041C  38 84 04 C8 */	addi r4, r4, __ct__25dComIfG_camera_info_classFv@l /* 0x800304C8@l */
/* 80030420  3C A0 80 03 */	lis r5, __dt__25dComIfG_camera_info_classFv@ha /* 0x80030208@ha */
/* 80030424  38 A5 02 08 */	addi r5, r5, __dt__25dComIfG_camera_info_classFv@l /* 0x80030208@l */
/* 80030428  38 C0 00 38 */	li r6, 0x38
/* 8003042C  38 E0 00 01 */	li r7, 1
/* 80030430  48 33 19 31 */	bl __construct_array
/* 80030434  38 00 FF FF */	li r0, -1
/* 80030438  90 1E 50 04 */	stw r0, 0x5004(r30)
/* 8003043C  38 00 00 00 */	li r0, 0
/* 80030440  90 1E 50 00 */	stw r0, 0x5000(r30)
/* 80030444  90 1E 4F FC */	stw r0, 0x4ffc(r30)
/* 80030448  90 1E 4F F8 */	stw r0, 0x4ff8(r30)
/* 8003044C  7F C3 F3 78 */	mr r3, r30
/* 80030450  4B FF AD 8D */	bl ct__14dComIfG_play_cFv
/* 80030454  38 7F 5F 64 */	addi r3, r31, 0x5f64
/* 80030458  48 02 5C 99 */	bl __ct__12dDlst_list_cFv
/* 8003045C  3F BF 00 02 */	addis r29, r31, 2
/* 80030460  3B BD C2 F8 */	addi r29, r29, -15624
/* 80030464  7F A3 EB 78 */	mr r3, r29
/* 80030468  3C 80 80 04 */	lis r4, __ct__11dRes_info_cFv@ha /* 0x8003A260@ha */
/* 8003046C  38 84 A2 60 */	addi r4, r4, __ct__11dRes_info_cFv@l /* 0x8003A260@l */
/* 80030470  3C A0 80 04 */	lis r5, __dt__11dRes_info_cFv@ha /* 0x8003A280@ha */
/* 80030474  38 A5 A2 80 */	addi r5, r5, __dt__11dRes_info_cFv@l /* 0x8003A280@l */
/* 80030478  38 C0 00 24 */	li r6, 0x24
/* 8003047C  38 E0 00 80 */	li r7, 0x80
/* 80030480  48 33 18 E1 */	bl __construct_array
/* 80030484  38 7D 12 00 */	addi r3, r29, 0x1200
/* 80030488  3C 80 80 04 */	lis r4, __ct__11dRes_info_cFv@ha /* 0x8003A260@ha */
/* 8003048C  38 84 A2 60 */	addi r4, r4, __ct__11dRes_info_cFv@l /* 0x8003A260@l */
/* 80030490  3C A0 80 04 */	lis r5, __dt__11dRes_info_cFv@ha /* 0x8003A280@ha */
/* 80030494  38 A5 A2 80 */	addi r5, r5, __dt__11dRes_info_cFv@l /* 0x8003A280@l */
/* 80030498  38 C0 00 24 */	li r6, 0x24
/* 8003049C  38 E0 00 40 */	li r7, 0x40
/* 800304A0  48 33 18 C1 */	bl __construct_array
/* 800304A4  7F E3 FB 78 */	mr r3, r31
/* 800304A8  4B FF C7 3D */	bl ct__13dComIfG_inf_cFv
/* 800304AC  7F E3 FB 78 */	mr r3, r31
/* 800304B0  39 61 00 20 */	addi r11, r1, 0x20
/* 800304B4  48 33 1D 75 */	bl _restgpr_29
/* 800304B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800304BC  7C 08 03 A6 */	mtlr r0
/* 800304C0  38 21 00 20 */	addi r1, r1, 0x20
/* 800304C4  4E 80 00 20 */	blr 
