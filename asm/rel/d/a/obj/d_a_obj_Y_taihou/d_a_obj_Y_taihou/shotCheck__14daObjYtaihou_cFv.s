lbl_80BA045C:
/* 80BA045C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80BA0460  7C 08 02 A6 */	mflr r0
/* 80BA0464  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BA0468  39 61 00 70 */	addi r11, r1, 0x70
/* 80BA046C  4B 7C 1D 6C */	b _savegpr_28
/* 80BA0470  7C 7F 1B 78 */	mr r31, r3
/* 80BA0474  3C 80 80 BA */	lis r4, lit_1109@ha
/* 80BA0478  3B A4 13 18 */	addi r29, r4, lit_1109@l
/* 80BA047C  3C 80 80 BA */	lis r4, lit_3695@ha
/* 80BA0480  3B C4 11 54 */	addi r30, r4, lit_3695@l
/* 80BA0484  A8 83 07 70 */	lha r4, 0x770(r3)
/* 80BA0488  7C 80 07 35 */	extsh. r0, r4
/* 80BA048C  40 82 00 D8 */	bne lbl_80BA0564
/* 80BA0490  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BA0494  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80BA0498  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80BA049C  C0 24 04 D4 */	lfs f1, 0x4d4(r4)
/* 80BA04A0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BA04A4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80BA04A8  83 BC 5D B4 */	lwz r29, 0x5db4(r28)
/* 80BA04AC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80BA04B0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BA04B4  40 80 04 90 */	bge lbl_80BA0944
/* 80BA04B8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80BA04BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA04C0  40 80 04 84 */	bge lbl_80BA0944
/* 80BA04C4  4B 47 A4 A0 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BA04C8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80BA04CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA04D0  40 80 04 74 */	bge lbl_80BA0944
/* 80BA04D4  7F E3 FB 78 */	mr r3, r31
/* 80BA04D8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80BA04DC  4B 47 A2 34 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BA04E0  7C 7C 1B 78 */	mr r28, r3
/* 80BA04E4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BA04E8  4B 6D 09 3C */	b cLib_distanceAngleS__Fss
/* 80BA04EC  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80BA04F0  40 80 04 54 */	bge lbl_80BA0944
/* 80BA04F4  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80BA04F8  7F 84 E3 78 */	mr r4, r28
/* 80BA04FC  4B 6D 09 28 */	b cLib_distanceAngleS__Fss
/* 80BA0500  2C 03 68 00 */	cmpwi r3, 0x6800
/* 80BA0504  40 81 04 40 */	ble lbl_80BA0944
/* 80BA0508  80 1F 07 18 */	lwz r0, 0x718(r31)
/* 80BA050C  28 00 00 00 */	cmplwi r0, 0
/* 80BA0510  40 82 00 30 */	bne lbl_80BA0540
/* 80BA0514  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 80BA0518  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80BA051C  41 82 00 14 */	beq lbl_80BA0530
/* 80BA0520  3C 60 80 BA */	lis r3, ccHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80BA0524  38 03 FA EC */	addi r0, r3, ccHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80BA0528  90 1F 07 18 */	stw r0, 0x718(r31)
/* 80BA052C  48 00 04 20 */	b lbl_80BA094C
lbl_80BA0530:
/* 80BA0530  80 1D 05 8C */	lwz r0, 0x58c(r29)
/* 80BA0534  64 00 04 00 */	oris r0, r0, 0x400
/* 80BA0538  90 1D 05 8C */	stw r0, 0x58c(r29)
/* 80BA053C  48 00 04 08 */	b lbl_80BA0944
lbl_80BA0540:
/* 80BA0540  7F A3 EB 78 */	mr r3, r29
/* 80BA0544  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80BA0548  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80BA054C  7D 89 03 A6 */	mtctr r12
/* 80BA0550  4E 80 04 21 */	bctrl 
/* 80BA0554  3C 03 00 01 */	addis r0, r3, 1
/* 80BA0558  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BA055C  41 82 03 E8 */	beq lbl_80BA0944
/* 80BA0560  48 00 03 EC */	b lbl_80BA094C
lbl_80BA0564:
/* 80BA0564  7C 80 07 35 */	extsh. r0, r4
/* 80BA0568  40 80 00 54 */	bge lbl_80BA05BC
/* 80BA056C  88 9F 07 75 */	lbz r4, 0x775(r31)
/* 80BA0570  4B FF F9 99 */	bl getEvent__14daObjYtaihou_cFUc
/* 80BA0574  7C 64 1B 78 */	mr r4, r3
/* 80BA0578  80 7F 07 64 */	lwz r3, 0x764(r31)
/* 80BA057C  3C 03 00 01 */	addis r0, r3, 1
/* 80BA0580  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BA0584  41 82 00 20 */	beq lbl_80BA05A4
/* 80BA0588  2C 04 00 FF */	cmpwi r4, 0xff
/* 80BA058C  41 82 00 18 */	beq lbl_80BA05A4
/* 80BA0590  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80BA0594  38 A0 00 FF */	li r5, 0xff
/* 80BA0598  38 C0 00 01 */	li r6, 1
/* 80BA059C  4B 4A 83 A4 */	b orderEvent__17dEvLib_callback_cFiii
/* 80BA05A0  48 00 03 A4 */	b lbl_80BA0944
lbl_80BA05A4:
/* 80BA05A4  7F E3 FB 78 */	mr r3, r31
/* 80BA05A8  81 9F 05 9C */	lwz r12, 0x59c(r31)
/* 80BA05AC  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80BA05B0  7D 89 03 A6 */	mtctr r12
/* 80BA05B4  4E 80 04 21 */	bctrl 
/* 80BA05B8  48 00 03 8C */	b lbl_80BA0944
lbl_80BA05BC:
/* 80BA05BC  38 7F 07 70 */	addi r3, r31, 0x770
/* 80BA05C0  48 00 0B 59 */	bl func_80BA1118
/* 80BA05C4  7C 60 07 35 */	extsh. r0, r3
/* 80BA05C8  41 82 03 7C */	beq lbl_80BA0944
/* 80BA05CC  A8 1F 07 70 */	lha r0, 0x770(r31)
/* 80BA05D0  2C 00 00 04 */	cmpwi r0, 4
/* 80BA05D4  40 81 01 44 */	ble lbl_80BA0718
/* 80BA05D8  88 1D 00 54 */	lbz r0, 0x54(r29)
/* 80BA05DC  7C 00 07 75 */	extsb. r0, r0
/* 80BA05E0  40 82 00 30 */	bne lbl_80BA0610
/* 80BA05E4  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80BA05E8  D0 1D 00 58 */	stfs f0, 0x58(r29)
/* 80BA05EC  38 7D 00 58 */	addi r3, r29, 0x58
/* 80BA05F0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BA05F4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BA05F8  3C 80 80 BA */	lis r4, __dt__4cXyzFv@ha
/* 80BA05FC  38 84 FD 20 */	addi r4, r4, __dt__4cXyzFv@l
/* 80BA0600  38 BD 00 48 */	addi r5, r29, 0x48
/* 80BA0604  4B FF F4 75 */	bl __register_global_object
/* 80BA0608  38 00 00 01 */	li r0, 1
/* 80BA060C  98 1D 00 54 */	stb r0, 0x54(r29)
lbl_80BA0610:
/* 80BA0610  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80BA0614  38 9E 00 3C */	addi r4, r30, 0x3c
/* 80BA0618  38 A1 00 50 */	addi r5, r1, 0x50
/* 80BA061C  4B 7A 67 50 */	b PSMTXMultVec
/* 80BA0620  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA0624  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80BA0628  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80BA062C  38 00 00 FF */	li r0, 0xff
/* 80BA0630  90 01 00 08 */	stw r0, 8(r1)
/* 80BA0634  38 80 00 00 */	li r4, 0
/* 80BA0638  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BA063C  38 00 FF FF */	li r0, -1
/* 80BA0640  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BA0644  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BA0648  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BA064C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BA0650  80 9F 07 68 */	lwz r4, 0x768(r31)
/* 80BA0654  38 A0 00 00 */	li r5, 0
/* 80BA0658  38 C0 01 DE */	li r6, 0x1de
/* 80BA065C  38 E1 00 50 */	addi r7, r1, 0x50
/* 80BA0660  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80BA0664  39 20 00 00 */	li r9, 0
/* 80BA0668  39 5D 00 58 */	addi r10, r29, 0x58
/* 80BA066C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80BA0670  4B 4A CE 5C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BA0674  90 7F 07 68 */	stw r3, 0x768(r31)
/* 80BA0678  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80BA067C  38 00 00 FF */	li r0, 0xff
/* 80BA0680  90 01 00 08 */	stw r0, 8(r1)
/* 80BA0684  38 80 00 00 */	li r4, 0
/* 80BA0688  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BA068C  38 00 FF FF */	li r0, -1
/* 80BA0690  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BA0694  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BA0698  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BA069C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BA06A0  80 9F 07 6C */	lwz r4, 0x76c(r31)
/* 80BA06A4  38 A0 00 00 */	li r5, 0
/* 80BA06A8  38 C0 01 DF */	li r6, 0x1df
/* 80BA06AC  38 E1 00 50 */	addi r7, r1, 0x50
/* 80BA06B0  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80BA06B4  39 20 00 00 */	li r9, 0
/* 80BA06B8  39 5D 00 58 */	addi r10, r29, 0x58
/* 80BA06BC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80BA06C0  4B 4A CE 0C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BA06C4  90 7F 07 6C */	stw r3, 0x76c(r31)
/* 80BA06C8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BA06CC  7C 03 07 74 */	extsb r3, r0
/* 80BA06D0  4B 48 C9 9C */	b dComIfGp_getReverb__Fi
/* 80BA06D4  7C 67 1B 78 */	mr r7, r3
/* 80BA06D8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000A@ha */
/* 80BA06DC  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0008000A@l */
/* 80BA06E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA06E4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BA06E8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BA06EC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA06F0  38 81 00 24 */	addi r4, r1, 0x24
/* 80BA06F4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BA06F8  38 C0 00 00 */	li r6, 0
/* 80BA06FC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80BA0700  FC 40 08 90 */	fmr f2, f1
/* 80BA0704  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80BA0708  FC 80 18 90 */	fmr f4, f3
/* 80BA070C  39 00 00 00 */	li r8, 0
/* 80BA0710  4B 70 BD FC */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BA0714  48 00 02 30 */	b lbl_80BA0944
lbl_80BA0718:
/* 80BA0718  40 82 02 2C */	bne lbl_80BA0944
/* 80BA071C  80 1F 07 64 */	lwz r0, 0x764(r31)
/* 80BA0720  90 01 00 28 */	stw r0, 0x28(r1)
/* 80BA0724  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80BA0728  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80BA072C  38 81 00 28 */	addi r4, r1, 0x28
/* 80BA0730  4B 47 90 C8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80BA0734  7C 7D 1B 79 */	or. r29, r3, r3
/* 80BA0738  41 82 00 90 */	beq lbl_80BA07C8
/* 80BA073C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80BA0740  38 9E 00 48 */	addi r4, r30, 0x48
/* 80BA0744  38 A1 00 44 */	addi r5, r1, 0x44
/* 80BA0748  4B 7A 66 24 */	b PSMTXMultVec
/* 80BA074C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80BA0750  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80BA0754  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80BA0758  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80BA075C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80BA0760  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80BA0764  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80BA0768  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80BA076C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80BA0770  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80BA0774  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80BA0778  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 80BA077C  38 00 00 00 */	li r0, 0
/* 80BA0780  98 1D 0D B7 */	stb r0, 0xdb7(r29)
/* 80BA0784  98 1D 0D B8 */	stb r0, 0xdb8(r29)
/* 80BA0788  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80BA078C  3C 63 00 01 */	addis r3, r3, 1
/* 80BA0790  38 03 80 00 */	addi r0, r3, -32768
/* 80BA0794  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80BA0798  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BA079C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80BA07A0  C0 03 0B BC */	lfs f0, 0xbbc(r3)
/* 80BA07A4  EC 41 00 32 */	fmuls f2, f1, f0
/* 80BA07A8  C0 03 0B B8 */	lfs f0, 0xbb8(r3)
/* 80BA07AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BA07B0  93 FD 0D D0 */	stw r31, 0xdd0(r29)
/* 80BA07B4  D0 1D 0D E0 */	stfs f0, 0xde0(r29)
/* 80BA07B8  D0 5D 0D E4 */	stfs f2, 0xde4(r29)
/* 80BA07BC  B0 1D 0D E8 */	sth r0, 0xde8(r29)
/* 80BA07C0  38 00 00 01 */	li r0, 1
/* 80BA07C4  98 1D 0D EA */	stb r0, 0xdea(r29)
lbl_80BA07C8:
/* 80BA07C8  38 00 FF FF */	li r0, -1
/* 80BA07CC  90 1F 07 64 */	stw r0, 0x764(r31)
/* 80BA07D0  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80BA07D4  38 9E 00 54 */	addi r4, r30, 0x54
/* 80BA07D8  38 A1 00 38 */	addi r5, r1, 0x38
/* 80BA07DC  4B 7A 65 90 */	b PSMTXMultVec
/* 80BA07E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA07E4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80BA07E8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BA07EC  38 80 00 00 */	li r4, 0
/* 80BA07F0  90 81 00 08 */	stw r4, 8(r1)
/* 80BA07F4  38 00 FF FF */	li r0, -1
/* 80BA07F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BA07FC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BA0800  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BA0804  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BA0808  38 80 00 00 */	li r4, 0
/* 80BA080C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AE4@ha */
/* 80BA0810  38 A5 8A E4 */	addi r5, r5, 0x8AE4 /* 0x00008AE4@l */
/* 80BA0814  38 C1 00 38 */	addi r6, r1, 0x38
/* 80BA0818  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80BA081C  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80BA0820  39 20 00 00 */	li r9, 0
/* 80BA0824  39 40 00 FF */	li r10, 0xff
/* 80BA0828  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80BA082C  4B 4A C2 64 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BA0830  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BA0834  38 80 00 00 */	li r4, 0
/* 80BA0838  90 81 00 08 */	stw r4, 8(r1)
/* 80BA083C  38 00 FF FF */	li r0, -1
/* 80BA0840  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BA0844  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BA0848  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BA084C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BA0850  38 80 00 00 */	li r4, 0
/* 80BA0854  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AE5@ha */
/* 80BA0858  38 A5 8A E5 */	addi r5, r5, 0x8AE5 /* 0x00008AE5@l */
/* 80BA085C  38 C1 00 38 */	addi r6, r1, 0x38
/* 80BA0860  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80BA0864  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80BA0868  39 20 00 00 */	li r9, 0
/* 80BA086C  39 40 00 FF */	li r10, 0xff
/* 80BA0870  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80BA0874  4B 4A C2 1C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BA0878  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BA087C  38 80 00 00 */	li r4, 0
/* 80BA0880  90 81 00 08 */	stw r4, 8(r1)
/* 80BA0884  38 00 FF FF */	li r0, -1
/* 80BA0888  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BA088C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BA0890  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BA0894  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BA0898  38 80 00 00 */	li r4, 0
/* 80BA089C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AE6@ha */
/* 80BA08A0  38 A5 8A E6 */	addi r5, r5, 0x8AE6 /* 0x00008AE6@l */
/* 80BA08A4  38 C1 00 38 */	addi r6, r1, 0x38
/* 80BA08A8  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80BA08AC  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80BA08B0  39 20 00 00 */	li r9, 0
/* 80BA08B4  39 40 00 FF */	li r10, 0xff
/* 80BA08B8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80BA08BC  4B 4A C1 D4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BA08C0  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80BA08C4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80BA08C8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80BA08CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BA08D0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80BA08D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA08D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BA08DC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BA08E0  38 80 00 08 */	li r4, 8
/* 80BA08E4  38 A0 00 1F */	li r5, 0x1f
/* 80BA08E8  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80BA08EC  4B 4C F1 38 */	b StartShock__12dVibration_cFii4cXyz
/* 80BA08F0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BA08F4  7C 03 07 74 */	extsb r3, r0
/* 80BA08F8  4B 48 C7 74 */	b dComIfGp_getReverb__Fi
/* 80BA08FC  7C 67 1B 78 */	mr r7, r3
/* 80BA0900  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000B@ha */
/* 80BA0904  38 03 00 0B */	addi r0, r3, 0x000B /* 0x0008000B@l */
/* 80BA0908  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BA090C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BA0910  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BA0914  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA0918  38 81 00 20 */	addi r4, r1, 0x20
/* 80BA091C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BA0920  38 C0 00 00 */	li r6, 0
/* 80BA0924  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80BA0928  FC 40 08 90 */	fmr f2, f1
/* 80BA092C  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80BA0930  FC 80 18 90 */	fmr f4, f3
/* 80BA0934  39 00 00 00 */	li r8, 0
/* 80BA0938  4B 70 B0 4C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BA093C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80BA0940  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_80BA0944:
/* 80BA0944  38 00 00 00 */	li r0, 0
/* 80BA0948  90 1F 07 18 */	stw r0, 0x718(r31)
lbl_80BA094C:
/* 80BA094C  39 61 00 70 */	addi r11, r1, 0x70
/* 80BA0950  4B 7C 18 D4 */	b _restgpr_28
/* 80BA0954  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80BA0958  7C 08 03 A6 */	mtlr r0
/* 80BA095C  38 21 00 70 */	addi r1, r1, 0x70
/* 80BA0960  4E 80 00 20 */	blr 
