lbl_80C22298:
/* 80C22298  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C2229C  7C 08 02 A6 */	mflr r0
/* 80C222A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C222A4  39 61 00 40 */	addi r11, r1, 0x40
/* 80C222A8  4B 73 FF 24 */	b _savegpr_25
/* 80C222AC  7C 7E 1B 78 */	mr r30, r3
/* 80C222B0  3C 60 80 C2 */	lis r3, l_dir_vec@ha
/* 80C222B4  3B E3 42 F4 */	addi r31, r3, l_dir_vec@l
/* 80C222B8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C222BC  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80C222C0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C222C4  7C 04 07 74 */	extsb r4, r0
/* 80C222C8  4B 42 F5 24 */	b dPath_GetRoomPath__Fii
/* 80C222CC  90 7E 09 BC */	stw r3, 0x9bc(r30)
/* 80C222D0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C222D4  98 1E 09 C0 */	stb r0, 0x9c0(r30)
/* 80C222D8  80 1E 09 BC */	lwz r0, 0x9bc(r30)
/* 80C222DC  28 00 00 00 */	cmplwi r0, 0
/* 80C222E0  41 82 00 10 */	beq lbl_80C222F0
/* 80C222E4  88 1E 09 C0 */	lbz r0, 0x9c0(r30)
/* 80C222E8  28 00 00 FF */	cmplwi r0, 0xff
/* 80C222EC  40 82 00 18 */	bne lbl_80C22304
lbl_80C222F0:
/* 80C222F0  38 60 00 00 */	li r3, 0
/* 80C222F4  90 7E 09 BC */	stw r3, 0x9bc(r30)
/* 80C222F8  38 00 00 FF */	li r0, 0xff
/* 80C222FC  98 1E 09 C0 */	stb r0, 0x9c0(r30)
/* 80C22300  98 7E 09 C1 */	stb r3, 0x9c1(r30)
lbl_80C22304:
/* 80C22304  80 7E 09 BC */	lwz r3, 0x9bc(r30)
/* 80C22308  28 03 00 00 */	cmplwi r3, 0
/* 80C2230C  41 82 00 C4 */	beq lbl_80C223D0
/* 80C22310  A0 03 00 00 */	lhz r0, 0(r3)
/* 80C22314  28 00 00 01 */	cmplwi r0, 1
/* 80C22318  40 82 00 10 */	bne lbl_80C22328
/* 80C2231C  38 00 00 01 */	li r0, 1
/* 80C22320  98 1E 09 C1 */	stb r0, 0x9c1(r30)
/* 80C22324  48 00 00 AC */	b lbl_80C223D0
lbl_80C22328:
/* 80C22328  28 00 00 04 */	cmplwi r0, 4
/* 80C2232C  40 80 00 10 */	bge lbl_80C2233C
/* 80C22330  38 00 00 02 */	li r0, 2
/* 80C22334  98 1E 09 C1 */	stb r0, 0x9c1(r30)
/* 80C22338  48 00 00 98 */	b lbl_80C223D0
lbl_80C2233C:
/* 80C2233C  28 00 00 08 */	cmplwi r0, 8
/* 80C22340  40 80 00 10 */	bge lbl_80C22350
/* 80C22344  38 00 00 03 */	li r0, 3
/* 80C22348  98 1E 09 C1 */	stb r0, 0x9c1(r30)
/* 80C2234C  48 00 00 84 */	b lbl_80C223D0
lbl_80C22350:
/* 80C22350  28 00 00 10 */	cmplwi r0, 0x10
/* 80C22354  40 80 00 10 */	bge lbl_80C22364
/* 80C22358  38 00 00 04 */	li r0, 4
/* 80C2235C  98 1E 09 C1 */	stb r0, 0x9c1(r30)
/* 80C22360  48 00 00 70 */	b lbl_80C223D0
lbl_80C22364:
/* 80C22364  28 00 00 20 */	cmplwi r0, 0x20
/* 80C22368  40 80 00 10 */	bge lbl_80C22378
/* 80C2236C  38 00 00 05 */	li r0, 5
/* 80C22370  98 1E 09 C1 */	stb r0, 0x9c1(r30)
/* 80C22374  48 00 00 5C */	b lbl_80C223D0
lbl_80C22378:
/* 80C22378  28 00 00 40 */	cmplwi r0, 0x40
/* 80C2237C  40 80 00 10 */	bge lbl_80C2238C
/* 80C22380  38 00 00 06 */	li r0, 6
/* 80C22384  98 1E 09 C1 */	stb r0, 0x9c1(r30)
/* 80C22388  48 00 00 48 */	b lbl_80C223D0
lbl_80C2238C:
/* 80C2238C  28 00 00 80 */	cmplwi r0, 0x80
/* 80C22390  40 80 00 10 */	bge lbl_80C223A0
/* 80C22394  38 00 00 07 */	li r0, 7
/* 80C22398  98 1E 09 C1 */	stb r0, 0x9c1(r30)
/* 80C2239C  48 00 00 34 */	b lbl_80C223D0
lbl_80C223A0:
/* 80C223A0  28 00 00 FF */	cmplwi r0, 0xff
/* 80C223A4  40 80 00 10 */	bge lbl_80C223B4
/* 80C223A8  38 00 00 08 */	li r0, 8
/* 80C223AC  98 1E 09 C1 */	stb r0, 0x9c1(r30)
/* 80C223B0  48 00 00 20 */	b lbl_80C223D0
lbl_80C223B4:
/* 80C223B4  3C 60 80 C2 */	lis r3, stringBase0@ha
/* 80C223B8  38 63 44 9C */	addi r3, r3, stringBase0@l
/* 80C223BC  38 63 00 0A */	addi r3, r3, 0xa
/* 80C223C0  4C C6 31 82 */	crclr 6
/* 80C223C4  4B 3E 48 48 */	b OSReport_Error
/* 80C223C8  38 60 00 00 */	li r3, 0
/* 80C223CC  48 00 02 34 */	b lbl_80C22600
lbl_80C223D0:
/* 80C223D0  7F C3 F3 78 */	mr r3, r30
/* 80C223D4  4B FF FB 59 */	bl loadCurrentPos__13daObjIceBlk_cFv
/* 80C223D8  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80C223DC  38 03 00 24 */	addi r0, r3, 0x24
/* 80C223E0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C223E4  38 7E 07 88 */	addi r3, r30, 0x788
/* 80C223E8  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80C223EC  FC 40 08 90 */	fmr f2, f1
/* 80C223F0  4B 45 3B 68 */	b SetWall__12dBgS_AcchCirFff
/* 80C223F4  38 00 00 00 */	li r0, 0
/* 80C223F8  90 01 00 08 */	stw r0, 8(r1)
/* 80C223FC  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80C22400  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C22404  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80C22408  7F C6 F3 78 */	mr r6, r30
/* 80C2240C  38 E0 00 01 */	li r7, 1
/* 80C22410  39 1E 07 88 */	addi r8, r30, 0x788
/* 80C22414  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80C22418  39 40 00 00 */	li r10, 0
/* 80C2241C  4B 45 3E 2C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C22420  38 7E 07 C8 */	addi r3, r30, 0x7c8
/* 80C22424  38 80 00 FF */	li r4, 0xff
/* 80C22428  38 A0 00 FF */	li r5, 0xff
/* 80C2242C  7F C6 F3 78 */	mr r6, r30
/* 80C22430  4B 46 14 30 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C22434  38 7E 08 04 */	addi r3, r30, 0x804
/* 80C22438  38 9F 00 38 */	addi r4, r31, 0x38
/* 80C2243C  4B 46 24 78 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C22440  38 1E 07 C8 */	addi r0, r30, 0x7c8
/* 80C22444  90 1E 08 48 */	stw r0, 0x848(r30)
/* 80C22448  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80C2244C  80 63 00 04 */	lwz r3, 4(r3)
/* 80C22450  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C22454  80 83 00 00 */	lwz r4, 0(r3)
/* 80C22458  C0 DE 04 F4 */	lfs f6, 0x4f4(r30)
/* 80C2245C  C0 A4 00 4C */	lfs f5, 0x4c(r4)
/* 80C22460  C0 FE 04 F0 */	lfs f7, 0x4f0(r30)
/* 80C22464  C0 9E 04 EC */	lfs f4, 0x4ec(r30)
/* 80C22468  7F C3 F3 78 */	mr r3, r30
/* 80C2246C  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 80C22470  EC 24 00 32 */	fmuls f1, f4, f0
/* 80C22474  FC 00 28 50 */	fneg f0, f5
/* 80C22478  EC 47 00 32 */	fmuls f2, f7, f0
/* 80C2247C  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 80C22480  EC 66 00 32 */	fmuls f3, f6, f0
/* 80C22484  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 80C22488  EC 84 00 32 */	fmuls f4, f4, f0
/* 80C2248C  EC A7 01 72 */	fmuls f5, f7, f5
/* 80C22490  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 80C22494  EC C6 00 32 */	fmuls f6, f6, f0
/* 80C22498  4B 3F 80 B0 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C2249C  3C 60 80 C2 */	lis r3, PPCallBack__13daObjIceBlk_cFP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@ha
/* 80C224A0  38 03 1C D8 */	addi r0, r3, PPCallBack__13daObjIceBlk_cFP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@l
/* 80C224A4  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C224A8  90 03 00 10 */	stw r0, 0x10(r3)
/* 80C224AC  3C 60 80 C2 */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80C224B0  38 03 1D AC */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80C224B4  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C224B8  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80C224BC  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80C224C0  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80C224C4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C224C8  54 04 46 3E */	srwi r4, r0, 0x18
/* 80C224CC  28 04 00 FF */	cmplwi r4, 0xff
/* 80C224D0  41 82 01 04 */	beq lbl_80C225D4
/* 80C224D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C224D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C224DC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C224E0  7C 05 07 74 */	extsb r5, r0
/* 80C224E4  4B 41 2E 7C */	b isSwitch__10dSv_info_cCFii
/* 80C224E8  2C 03 00 00 */	cmpwi r3, 0
/* 80C224EC  40 82 00 E8 */	bne lbl_80C225D4
/* 80C224F0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C224F4  28 03 00 00 */	cmplwi r3, 0
/* 80C224F8  41 82 00 24 */	beq lbl_80C2251C
/* 80C224FC  4B 64 5C D8 */	b ChkUsed__9cBgW_BgIdCFv
/* 80C22500  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C22504  41 82 00 18 */	beq lbl_80C2251C
/* 80C22508  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C2250C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C22510  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C22514  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80C22518  4B 45 1D 38 */	b Release__4cBgSFP9dBgW_Base
lbl_80C2251C:
/* 80C2251C  80 7E 09 44 */	lwz r3, 0x944(r30)
/* 80C22520  28 03 00 00 */	cmplwi r3, 0
/* 80C22524  41 82 00 28 */	beq lbl_80C2254C
/* 80C22528  4B 64 5C AC */	b ChkUsed__9cBgW_BgIdCFv
/* 80C2252C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C22530  40 82 00 1C */	bne lbl_80C2254C
/* 80C22534  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C22538  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C2253C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C22540  80 9E 09 44 */	lwz r4, 0x944(r30)
/* 80C22544  7F C5 F3 78 */	mr r5, r30
/* 80C22548  4B 45 24 C0 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80C2254C:
/* 80C2254C  80 7E 09 44 */	lwz r3, 0x944(r30)
/* 80C22550  28 03 00 00 */	cmplwi r3, 0
/* 80C22554  41 82 00 08 */	beq lbl_80C2255C
/* 80C22558  4B 45 94 68 */	b Move__4dBgWFv
lbl_80C2255C:
/* 80C2255C  3B 20 00 00 */	li r25, 0
/* 80C22560  3B A0 00 00 */	li r29, 0
/* 80C22564  3B 80 00 00 */	li r28, 0
/* 80C22568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C2256C  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80C22570  3B 7F 00 9C */	addi r27, r31, 0x9c
lbl_80C22574:
/* 80C22574  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80C22578  38 80 00 00 */	li r4, 0
/* 80C2257C  90 81 00 08 */	stw r4, 8(r1)
/* 80C22580  38 00 FF FF */	li r0, -1
/* 80C22584  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C22588  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C2258C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C22590  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C22594  38 80 00 00 */	li r4, 0
/* 80C22598  7C BB E2 2E */	lhzx r5, r27, r28
/* 80C2259C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C225A0  38 E0 00 00 */	li r7, 0
/* 80C225A4  39 1E 04 B4 */	addi r8, r30, 0x4b4
/* 80C225A8  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 80C225AC  39 40 00 FF */	li r10, 0xff
/* 80C225B0  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80C225B4  4B 42 A4 DC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C225B8  38 1D 09 E4 */	addi r0, r29, 0x9e4
/* 80C225BC  7C 7E 01 2E */	stwx r3, r30, r0
/* 80C225C0  3B 39 00 01 */	addi r25, r25, 1
/* 80C225C4  2C 19 00 02 */	cmpwi r25, 2
/* 80C225C8  3B BD 00 04 */	addi r29, r29, 4
/* 80C225CC  3B 9C 00 02 */	addi r28, r28, 2
/* 80C225D0  41 80 FF A4 */	blt lbl_80C22574
lbl_80C225D4:
/* 80C225D4  7F C3 F3 78 */	mr r3, r30
/* 80C225D8  48 00 12 89 */	bl init_bgCheck__13daObjIceBlk_cFv
/* 80C225DC  7F C3 F3 78 */	mr r3, r30
/* 80C225E0  48 00 09 19 */	bl mode_init_wait__13daObjIceBlk_cFv
/* 80C225E4  38 00 00 00 */	li r0, 0
/* 80C225E8  98 1E 09 4C */	stb r0, 0x94c(r30)
/* 80C225EC  7F C3 F3 78 */	mr r3, r30
/* 80C225F0  4B FF F7 D5 */	bl initBaseMtx__13daObjIceBlk_cFv
/* 80C225F4  38 00 00 03 */	li r0, 3
/* 80C225F8  98 1E 09 E0 */	stb r0, 0x9e0(r30)
/* 80C225FC  38 60 00 01 */	li r3, 1
lbl_80C22600:
/* 80C22600  39 61 00 40 */	addi r11, r1, 0x40
/* 80C22604  4B 73 FC 14 */	b _restgpr_25
/* 80C22608  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C2260C  7C 08 03 A6 */	mtlr r0
/* 80C22610  38 21 00 40 */	addi r1, r1, 0x40
/* 80C22614  4E 80 00 20 */	blr 
