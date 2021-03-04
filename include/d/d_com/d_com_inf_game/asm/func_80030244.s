/* 80030244 0002D184  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80030248 0002D188  7C 08 02 A6 */ mflr r0
/* 8003024C 0002D18C  90 01 00 24 */ stw r0, 0x24(r1)
/* 80030250 0002D190  39 61 00 20 */ addi r11, r1, 0x20
/* 80030254 0002D194  48 33 1F 89 */ bl _savegpr_29
/* 80030258 0002D198  7C 7F 1B 78 */ mr r31, r3
/* 8003025C 0002D19C  7C 7D 1B 78 */ mr r29, r3
/* 80030260 0002D1A0  7C 7E 1B 78 */ mr r30, r3
/* 80030264 0002D1A4  38 63 01 F0 */ addi r3, r3, 0x1f0
/* 80030268 0002D1A8  3C 80 80 03 */ lis r4, __ct__12dSv_memory_cFv@ha
/* 8003026C 0002D1AC  38 84 0D B0 */ addi r4, r4, __ct__12dSv_memory_cFv@l
/* 80030270 0002D1B0  38 A0 00 00 */ li r5, 0
/* 80030274 0002D1B4  38 C0 00 20 */ li r6, 0x20
/* 80030278 0002D1B8  38 E0 00 20 */ li r7, 0x20
/* 8003027C 0002D1BC  48 33 1A E5 */ bl func_80361D60
/* 80030280 0002D1C0  38 7E 05 F0 */ addi r3, r30, 0x5f0
/* 80030284 0002D1C4  3C 80 80 03 */ lis r4, __ct__13dSv_memory2_cFv@ha
/* 80030288 0002D1C8  38 84 0D 80 */ addi r4, r4, __ct__13dSv_memory2_cFv@l
/* 8003028C 0002D1CC  38 A0 00 00 */ li r5, 0
/* 80030290 0002D1D0  38 C0 00 08 */ li r6, 8
/* 80030294 0002D1D4  38 E0 00 40 */ li r7, 0x40
/* 80030298 0002D1D8  48 33 1A C9 */ bl func_80361D60
/* 8003029C 0002D1DC  38 7D 09 58 */ addi r3, r29, 0x958
/* 800302A0 0002D1E0  48 00 47 C5 */ bl init__12dSv_memory_cFv
/* 800302A4 0002D1E4  38 7D 09 B4 */ addi r3, r29, 0x9b4
/*.global dSv_zone_c*/
/* 800302A8 0002D1E8  3C 80 80 03 */ lis r4, __ct__10dSv_zone_cFv@ha
/*.global dSv_zone_c*/
/* 800302AC 0002D1EC  38 84 0D 74 */ addi r4, r4, __ct__10dSv_zone_cFv@l
/* 800302B0 0002D1F0  38 A0 00 00 */ li r5, 0
/* 800302B4 0002D1F4  38 C0 00 20 */ li r6, 0x20
/* 800302B8 0002D1F8  38 E0 00 20 */ li r7, 0x20
/* 800302BC 0002D1FC  48 33 1A A5 */ bl func_80361D60
/* 800302C0 0002D200  3B DF 0F 38 */ addi r30, r31, 0xf38
/* 800302C4 0002D204  7F DD F3 78 */ mr r29, r30
/* 800302C8 0002D208  3C 60 80 3B */ lis r3, lbl_803AB61C@ha
/* 800302CC 0002D20C  38 03 B6 1C */ addi r0, r3, lbl_803AB61C@l
/* 800302D0 0002D210  90 1F 23 38 */ stw r0, 0x2338(r31)
/* 800302D4 0002D214  7F C3 F3 78 */ mr r3, r30
/*.global cBgS_ChkElm*/
/* 800302D8 0002D218  3C 80 80 03 */ lis r4, __ct__11cBgS_ChkElmFv@ha
/*.global cBgS_ChkElm*/
/* 800302DC 0002D21C  38 84 0D 38 */ addi r4, r4, __ct__11cBgS_ChkElmFv@l
/*.global cBgS_ChkElm_NS_dtor*/
/* 800302E0 0002D220  3C A0 80 03 */ lis r5, cBgS_ChkElm_NS_dtor@ha
/*.global cBgS_ChkElm_NS_dtor*/
/* 800302E4 0002D224  38 A5 FE F8 */ addi r5, r5, cBgS_ChkElm_NS_dtor@l
/* 800302E8 0002D228  38 C0 00 14 */ li r6, 0x14
/* 800302EC 0002D22C  38 E0 01 00 */ li r7, 0x100
/* 800302F0 0002D230  48 33 1A 71 */ bl func_80361D60
/* 800302F4 0002D234  3C 60 80 3B */ lis r3, lbl_803AB608@ha
/* 800302F8 0002D238  38 03 B6 08 */ addi r0, r3, lbl_803AB608@l
/* 800302FC 0002D23C  90 1D 14 00 */ stw r0, 0x1400(r29)
/* 80030300 0002D240  3B BE 14 04 */ addi r29, r30, 0x1404
/* 80030304 0002D244  7F A3 EB 78 */ mr r3, r29
/* 80030308 0002D248  48 23 47 65 */ bl __ct__4cCcSFv
/* 8003030C 0002D24C  3C 60 80 3B */ lis r3, lbl_803AC3E4@ha
/* 80030310 0002D250  38 03 C3 E4 */ addi r0, r3, lbl_803AC3E4@l
/* 80030314 0002D254  90 1D 28 48 */ stw r0, 0x2848(r29)
/* 80030318 0002D258  38 7D 28 4C */ addi r3, r29, 0x284c
/* 8003031C 0002D25C  48 05 50 35 */ bl __ct__12dCcMassS_MngFv
/* 80030320 0002D260  38 00 00 00 */ li r0, 0
/* 80030324 0002D264  98 1E 3E E4 */ stb r0, 0x3ee4(r30)
/* 80030328 0002D268  3C 60 80 3A */ lis r3, lbl_803A6D94@ha
/* 8003032C 0002D26C  38 03 6D 94 */ addi r0, r3, lbl_803A6D94@l
/* 80030330 0002D270  90 1E 3E E8 */ stw r0, 0x3ee8(r30)
/* 80030334 0002D274  3C 60 80 3A */ lis r3, lbl_803A6C20@ha
/* 80030338 0002D278  38 03 6C 20 */ addi r0, r3, lbl_803A6C20@l
/* 8003033C 0002D27C  90 1E 3E E8 */ stw r0, 0x3ee8(r30)
/* 80030340 0002D280  38 7E 3F 90 */ addi r3, r30, 0x3f90
/* 80030344 0002D284  48 01 12 3D */ bl __ct__14dEvt_control_cFv
/* 80030348 0002D288  38 7E 40 C0 */ addi r3, r30, 0x40c0
/* 8003034C 0002D28C  48 01 63 3D */ bl __ct__16dEvent_manager_cFv
/* 80030350 0002D290  3C 60 80 3A */ lis r3, lbl_803A71E8@ha
/* 80030354 0002D294  38 03 71 E8 */ addi r0, r3, lbl_803A71E8@l
/* 80030358 0002D298  90 1E 47 88 */ stw r0, 0x4788(r30)
/* 8003035C 0002D29C  3C 60 80 3B */ lis r3, lbl_803A9C48@ha
/* 80030360 0002D2A0  38 03 9C 48 */ addi r0, r3, lbl_803A9C48@l
/* 80030364 0002D2A4  90 1E 47 88 */ stw r0, 0x4788(r30)
/* 80030368 0002D2A8  38 7E 47 A8 */ addi r3, r30, 0x47a8
/*.global dAttDraw_c_NS_ctor*/
/* 8003036C 0002D2AC  3C 80 80 03 */ lis r4, dAttDraw_c_NS_ctor@ha
/*.global dAttDraw_c_NS_ctor*/
/* 80030370 0002D2B0  38 84 07 F0 */ addi r4, r4, dAttDraw_c_NS_ctor@l
/*.global dAttDraw_c_NS_dtor*/
/* 80030374 0002D2B4  3C A0 80 03 */ lis r5, dAttDraw_c_NS_dtor@ha
/*.global dAttDraw_c_NS_dtor*/
/* 80030378 0002D2B8  38 A5 05 4C */ addi r5, r5, dAttDraw_c_NS_dtor@l
/* 8003037C 0002D2BC  38 C0 01 78 */ li r6, 0x178
/* 80030380 0002D2C0  38 E0 00 02 */ li r7, 2
/* 80030384 0002D2C4  48 33 19 DD */ bl func_80361D60
/* 80030388 0002D2C8  38 7E 4A B8 */ addi r3, r30, 0x4ab8
/*.global dAttList_c_NS_ctor*/
/* 8003038C 0002D2CC  3C 80 80 03 */ lis r4, dAttList_c_NS_ctor@ha
/*.global dAttList_c_NS_ctor*/
/* 80030390 0002D2D0  38 84 05 0C */ addi r4, r4, dAttList_c_NS_ctor@l
/*.global dAttList_c_NS_dtor*/
/* 80030394 0002D2D4  3C A0 80 03 */ lis r5, dAttList_c_NS_dtor@ha
/*.global dAttList_c_NS_dtor*/
/* 80030398 0002D2D8  38 A5 04 D0 */ addi r5, r5, dAttList_c_NS_dtor@l
/* 8003039C 0002D2DC  38 C0 00 14 */ li r6, 0x14
/* 800303A0 0002D2E0  38 E0 00 08 */ li r7, 8
/* 800303A4 0002D2E4  48 33 19 BD */ bl func_80361D60
/* 800303A8 0002D2E8  38 7E 4B 60 */ addi r3, r30, 0x4b60
/*.global dAttList_c_NS_ctor*/
/* 800303AC 0002D2EC  3C 80 80 03 */ lis r4, dAttList_c_NS_ctor@ha
/*.global dAttList_c_NS_ctor*/
/* 800303B0 0002D2F0  38 84 05 0C */ addi r4, r4, dAttList_c_NS_ctor@l
/*.global dAttList_c_NS_dtor*/
/* 800303B4 0002D2F4  3C A0 80 03 */ lis r5, dAttList_c_NS_dtor@ha
/*.global dAttList_c_NS_dtor*/
/* 800303B8 0002D2F8  38 A5 04 D0 */ addi r5, r5, dAttList_c_NS_dtor@l
/* 800303BC 0002D2FC  38 C0 00 14 */ li r6, 0x14
/* 800303C0 0002D300  38 E0 00 04 */ li r7, 4
/* 800303C4 0002D304  48 33 19 9D */ bl func_80361D60
/* 800303C8 0002D308  38 7E 4B B8 */ addi r3, r30, 0x4bb8
/*.global dAttList_c_NS_ctor*/
/* 800303CC 0002D30C  3C 80 80 03 */ lis r4, dAttList_c_NS_ctor@ha
/*.global dAttList_c_NS_ctor*/
/* 800303D0 0002D310  38 84 05 0C */ addi r4, r4, dAttList_c_NS_ctor@l
/*.global dAttList_c_NS_dtor*/
/* 800303D4 0002D314  3C A0 80 03 */ lis r5, dAttList_c_NS_dtor@ha
/*.global dAttList_c_NS_dtor*/
/* 800303D8 0002D318  38 A5 04 D0 */ addi r5, r5, dAttList_c_NS_dtor@l
/* 800303DC 0002D31C  38 C0 00 14 */ li r6, 0x14
/* 800303E0 0002D320  38 E0 00 04 */ li r7, 4
/* 800303E4 0002D324  48 33 19 7D */ bl func_80361D60
/* 800303E8 0002D328  3C 60 80 3B */ lis r3, lbl_803A9C60@ha
/* 800303EC 0002D32C  38 03 9C 60 */ addi r0, r3, lbl_803A9C60@l
/* 800303F0 0002D330  90 1E 4C 88 */ stw r0, 0x4c88(r30)
/* 800303F4 0002D334  38 7E 4E 10 */ addi r3, r30, 0x4e10
/*.global dDlst_window_c*/
/* 800303F8 0002D338  3C 80 80 03 */ lis r4, __ct__14dDlst_window_cFv@ha
/*.global dDlst_window_c*/
/* 800303FC 0002D33C  38 84 04 CC */ addi r4, r4, __ct__14dDlst_window_cFv@l
/*.global dDlst_window_c_NS_dtor*/
/* 80030400 0002D340  3C A0 80 03 */ lis r5, dDlst_window_c_NS_dtor@ha
/*.global dDlst_window_c_NS_dtor*/
/* 80030404 0002D344  38 A5 01 CC */ addi r5, r5, dDlst_window_c_NS_dtor@l
/* 80030408 0002D348  38 C0 00 2C */ li r6, 0x2c
/* 8003040C 0002D34C  38 E0 00 01 */ li r7, 1
/* 80030410 0002D350  48 33 19 51 */ bl func_80361D60
/* 80030414 0002D354  38 7E 4E 3C */ addi r3, r30, 0x4e3c
/*.global dComIfG_camera_info_class*/
/* 80030418 0002D358  3C 80 80 03 */ lis r4, __ct__25dComIfG_camera_info_classFv@ha
/*.global dComIfG_camera_info_class*/
/* 8003041C 0002D35C  38 84 04 C8 */ addi r4, r4, __ct__25dComIfG_camera_info_classFv@l
/*.global dComIfG_camera_info_class_NS_dtor*/
/* 80030420 0002D360  3C A0 80 03 */ lis r5, dComIfG_camera_info_class_NS_dtor@ha
/*.global dComIfG_camera_info_class_NS_dtor*/
/* 80030424 0002D364  38 A5 02 08 */ addi r5, r5, dComIfG_camera_info_class_NS_dtor@l
/* 80030428 0002D368  38 C0 00 38 */ li r6, 0x38
/* 8003042C 0002D36C  38 E0 00 01 */ li r7, 1
/* 80030430 0002D370  48 33 19 31 */ bl func_80361D60
/* 80030434 0002D374  38 00 FF FF */ li r0, -1
/* 80030438 0002D378  90 1E 50 04 */ stw r0, 0x5004(r30)
/* 8003043C 0002D37C  38 00 00 00 */ li r0, 0
/* 80030440 0002D380  90 1E 50 00 */ stw r0, 0x5000(r30)
/* 80030444 0002D384  90 1E 4F FC */ stw r0, 0x4ffc(r30)
/* 80030448 0002D388  90 1E 4F F8 */ stw r0, 0x4ff8(r30)
/* 8003044C 0002D38C  7F C3 F3 78 */ mr r3, r30
/* 80030450 0002D390  4B FF AD 8D */ bl ct__14dComIfG_play_cFv
/* 80030454 0002D394  38 7F 5F 64 */ addi r3, r31, 0x5f64
/* 80030458 0002D398  48 02 5C 99 */ bl __ct__12dDlst_list_cFv
/* 8003045C 0002D39C  3F BF 00 02 */ addis r29, r31, 2
/* 80030460 0002D3A0  3B BD C2 F8 */ addi r29, r29, -15624
/* 80030464 0002D3A4  7F A3 EB 78 */ mr r3, r29
/*.global dRes_info_c*/
/* 80030468 0002D3A8  3C 80 80 04 */ lis r4, __ct__11dRes_info_cFv@ha
/*.global dRes_info_c*/
/* 8003046C 0002D3AC  38 84 A2 60 */ addi r4, r4, __ct__11dRes_info_cFv@l
/* 80030470 0002D3B0  3C A0 80 04 */ lis r5, __dt__11dRes_info_cFv@ha
/* 80030474 0002D3B4  38 A5 A2 80 */ addi r5, r5, __dt__11dRes_info_cFv@l
/* 80030478 0002D3B8  38 C0 00 24 */ li r6, 0x24
/* 8003047C 0002D3BC  38 E0 00 80 */ li r7, 0x80
/* 80030480 0002D3C0  48 33 18 E1 */ bl func_80361D60
/* 80030484 0002D3C4  38 7D 12 00 */ addi r3, r29, 0x1200
/*.global dRes_info_c*/
/* 80030488 0002D3C8  3C 80 80 04 */ lis r4, __ct__11dRes_info_cFv@ha
/*.global dRes_info_c*/
/* 8003048C 0002D3CC  38 84 A2 60 */ addi r4, r4, __ct__11dRes_info_cFv@l
/* 80030490 0002D3D0  3C A0 80 04 */ lis r5, __dt__11dRes_info_cFv@ha
/* 80030494 0002D3D4  38 A5 A2 80 */ addi r5, r5, __dt__11dRes_info_cFv@l
/* 80030498 0002D3D8  38 C0 00 24 */ li r6, 0x24
/* 8003049C 0002D3DC  38 E0 00 40 */ li r7, 0x40
/* 800304A0 0002D3E0  48 33 18 C1 */ bl func_80361D60
/* 800304A4 0002D3E4  7F E3 FB 78 */ mr r3, r31
/* 800304A8 0002D3E8  4B FF C7 3D */ bl ct__13dComIfG_inf_cFv
/* 800304AC 0002D3EC  7F E3 FB 78 */ mr r3, r31
/* 800304B0 0002D3F0  39 61 00 20 */ addi r11, r1, 0x20
/* 800304B4 0002D3F4  48 33 1D 75 */ bl _restgpr_29
/* 800304B8 0002D3F8  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800304BC 0002D3FC  7C 08 03 A6 */ mtlr r0
/* 800304C0 0002D400  38 21 00 20 */ addi r1, r1, 0x20
/* 800304C4 0002D404  4E 80 00 20 */ blr