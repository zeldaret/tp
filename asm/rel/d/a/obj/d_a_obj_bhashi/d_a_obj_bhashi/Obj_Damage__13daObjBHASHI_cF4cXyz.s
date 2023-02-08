lbl_80577500:
/* 80577500  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80577504  7C 08 02 A6 */	mflr r0
/* 80577508  90 01 00 64 */	stw r0, 0x64(r1)
/* 8057750C  39 61 00 60 */	addi r11, r1, 0x60
/* 80577510  4B DE AC CD */	bl _savegpr_29
/* 80577514  7C 7E 1B 78 */	mr r30, r3
/* 80577518  3C 60 80 58 */	lis r3, ccCylSrc@ha /* 0x80578A88@ha */
/* 8057751C  3B E3 8A 88 */	addi r31, r3, ccCylSrc@l /* 0x80578A88@l */
/* 80577520  7C 83 23 78 */	mr r3, r4
/* 80577524  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80577528  4B CF 96 DD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8057752C  7C 60 07 34 */	extsh r0, r3
/* 80577530  C8 3F 00 98 */	lfd f1, 0x98(r31)
/* 80577534  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80577538  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8057753C  3C 00 43 30 */	lis r0, 0x4330
/* 80577540  90 01 00 48 */	stw r0, 0x48(r1)
/* 80577544  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80577548  EC 00 08 28 */	fsubs f0, f0, f1
/* 8057754C  D0 1E 11 DC */	stfs f0, 0x11dc(r30)
/* 80577550  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802A0@ha */
/* 80577554  38 03 02 A0 */	addi r0, r3, 0x02A0 /* 0x000802A0@l */
/* 80577558  90 01 00 20 */	stw r0, 0x20(r1)
/* 8057755C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80577560  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80577564  80 63 00 00 */	lwz r3, 0(r3)
/* 80577568  38 81 00 20 */	addi r4, r1, 0x20
/* 8057756C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80577570  38 C0 00 00 */	li r6, 0
/* 80577574  38 E0 00 00 */	li r7, 0
/* 80577578  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8057757C  FC 40 08 90 */	fmr f2, f1
/* 80577580  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 80577584  FC 80 18 90 */	fmr f4, f3
/* 80577588  39 00 00 00 */	li r8, 0
/* 8057758C  4B D3 43 F9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80577590  7F C3 F3 78 */	mr r3, r30
/* 80577594  4B FF F5 E5 */	bl Set_Hahen__13daObjBHASHI_cFv
/* 80577598  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8057759C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805775A0  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 805775A4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805775A8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 805775AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805775B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805775B4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805775B8  38 80 00 07 */	li r4, 7
/* 805775BC  38 A0 00 01 */	li r5, 1
/* 805775C0  38 C1 00 2C */	addi r6, r1, 0x2c
/* 805775C4  4B AF 84 61 */	bl StartShock__12dVibration_cFii4cXyz
/* 805775C8  88 9E 11 E2 */	lbz r4, 0x11e2(r30)
/* 805775CC  28 04 00 FF */	cmplwi r4, 0xff
/* 805775D0  41 82 00 38 */	beq lbl_80577608
/* 805775D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805775D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805775DC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805775E0  7C 05 07 74 */	extsb r5, r0
/* 805775E4  4B AB DD 7D */	bl isSwitch__10dSv_info_cCFii
/* 805775E8  2C 03 00 00 */	cmpwi r3, 0
/* 805775EC  40 82 00 1C */	bne lbl_80577608
/* 805775F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805775F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805775F8  88 9E 11 E2 */	lbz r4, 0x11e2(r30)
/* 805775FC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80577600  7C 05 07 74 */	extsb r5, r0
/* 80577604  4B AB DB FD */	bl onSwitch__10dSv_info_cFii
lbl_80577608:
/* 80577608  38 61 00 24 */	addi r3, r1, 0x24
/* 8057760C  38 80 00 00 */	li r4, 0
/* 80577610  C0 1E 11 DC */	lfs f0, 0x11dc(r30)
/* 80577614  FC 00 00 1E */	fctiwz f0, f0
/* 80577618  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8057761C  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 80577620  38 C0 00 00 */	li r6, 0
/* 80577624  4B CE FD D1 */	bl __ct__5csXyzFsss
/* 80577628  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8057762C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80577630  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80577634  EC 21 00 28 */	fsubs f1, f1, f0
/* 80577638  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8057763C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80577640  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80577644  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80577648  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057764C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80577650  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80577654  38 80 00 00 */	li r4, 0
/* 80577658  90 81 00 08 */	stw r4, 8(r1)
/* 8057765C  38 00 FF FF */	li r0, -1
/* 80577660  90 01 00 0C */	stw r0, 0xc(r1)
/* 80577664  90 81 00 10 */	stw r4, 0x10(r1)
/* 80577668  90 81 00 14 */	stw r4, 0x14(r1)
/* 8057766C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80577670  38 80 00 00 */	li r4, 0
/* 80577674  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008BFD@ha */
/* 80577678  38 A5 8B FD */	addi r5, r5, 0x8BFD /* 0x00008BFD@l */
/* 8057767C  38 C1 00 38 */	addi r6, r1, 0x38
/* 80577680  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80577684  39 01 00 24 */	addi r8, r1, 0x24
/* 80577688  39 20 00 00 */	li r9, 0
/* 8057768C  39 40 00 FF */	li r10, 0xff
/* 80577690  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80577694  4B AD 53 FD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80577698  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8057769C  38 80 00 00 */	li r4, 0
/* 805776A0  90 81 00 08 */	stw r4, 8(r1)
/* 805776A4  38 00 FF FF */	li r0, -1
/* 805776A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805776AC  90 81 00 10 */	stw r4, 0x10(r1)
/* 805776B0  90 81 00 14 */	stw r4, 0x14(r1)
/* 805776B4  90 81 00 18 */	stw r4, 0x18(r1)
/* 805776B8  38 80 00 00 */	li r4, 0
/* 805776BC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008BFE@ha */
/* 805776C0  38 A5 8B FE */	addi r5, r5, 0x8BFE /* 0x00008BFE@l */
/* 805776C4  38 C1 00 38 */	addi r6, r1, 0x38
/* 805776C8  38 FE 01 0C */	addi r7, r30, 0x10c
/* 805776CC  39 01 00 24 */	addi r8, r1, 0x24
/* 805776D0  39 20 00 00 */	li r9, 0
/* 805776D4  39 40 00 FF */	li r10, 0xff
/* 805776D8  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 805776DC  4B AD 53 B5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805776E0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805776E4  38 80 00 00 */	li r4, 0
/* 805776E8  90 81 00 08 */	stw r4, 8(r1)
/* 805776EC  38 00 FF FF */	li r0, -1
/* 805776F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805776F4  90 81 00 10 */	stw r4, 0x10(r1)
/* 805776F8  90 81 00 14 */	stw r4, 0x14(r1)
/* 805776FC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80577700  38 80 00 00 */	li r4, 0
/* 80577704  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008BFF@ha */
/* 80577708  38 A5 8B FF */	addi r5, r5, 0x8BFF /* 0x00008BFF@l */
/* 8057770C  38 C1 00 38 */	addi r6, r1, 0x38
/* 80577710  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80577714  39 01 00 24 */	addi r8, r1, 0x24
/* 80577718  39 20 00 00 */	li r9, 0
/* 8057771C  39 40 00 FF */	li r10, 0xff
/* 80577720  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80577724  4B AD 53 6D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80577728  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8057772C  38 80 00 00 */	li r4, 0
/* 80577730  90 81 00 08 */	stw r4, 8(r1)
/* 80577734  38 00 FF FF */	li r0, -1
/* 80577738  90 01 00 0C */	stw r0, 0xc(r1)
/* 8057773C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80577740  90 81 00 14 */	stw r4, 0x14(r1)
/* 80577744  90 81 00 18 */	stw r4, 0x18(r1)
/* 80577748  38 80 00 00 */	li r4, 0
/* 8057774C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C00@ha */
/* 80577750  38 A5 8C 00 */	addi r5, r5, 0x8C00 /* 0x00008C00@l */
/* 80577754  38 C1 00 38 */	addi r6, r1, 0x38
/* 80577758  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8057775C  39 01 00 24 */	addi r8, r1, 0x24
/* 80577760  39 20 00 00 */	li r9, 0
/* 80577764  39 40 00 FF */	li r10, 0xff
/* 80577768  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8057776C  4B AD 53 25 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80577770  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80577774  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80577778  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 8057777C  39 61 00 60 */	addi r11, r1, 0x60
/* 80577780  4B DE AA A9 */	bl _restgpr_29
/* 80577784  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80577788  7C 08 03 A6 */	mtlr r0
/* 8057778C  38 21 00 60 */	addi r1, r1, 0x60
/* 80577790  4E 80 00 20 */	blr 
