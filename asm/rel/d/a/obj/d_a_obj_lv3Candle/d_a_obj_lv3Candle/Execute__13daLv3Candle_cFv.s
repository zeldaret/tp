lbl_80C580A0:
/* 80C580A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C580A4  7C 08 02 A6 */	mflr r0
/* 80C580A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C580AC  39 61 00 30 */	addi r11, r1, 0x30
/* 80C580B0  4B 70 A1 2D */	bl _savegpr_29
/* 80C580B4  7C 7E 1B 78 */	mr r30, r3
/* 80C580B8  3C 60 80 C6 */	lis r3, mCcDObjInfo__13daLv3Candle_c@ha /* 0x80C58564@ha */
/* 80C580BC  3B E3 85 64 */	addi r31, r3, mCcDObjInfo__13daLv3Candle_c@l /* 0x80C58564@l */
/* 80C580C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C580C4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C580C8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C580CC  38 80 01 00 */	li r4, 0x100
/* 80C580D0  38 BE 06 EC */	addi r5, r30, 0x6ec
/* 80C580D4  38 C0 00 00 */	li r6, 0
/* 80C580D8  38 E0 00 FF */	li r7, 0xff
/* 80C580DC  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80C580E0  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80C580E4  7D 09 43 78 */	mr r9, r8
/* 80C580E8  39 40 00 00 */	li r10, 0
/* 80C580EC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80C580F0  4B 3F 50 C9 */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80C580F4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C580F8  38 80 01 01 */	li r4, 0x101
/* 80C580FC  38 BE 06 EC */	addi r5, r30, 0x6ec
/* 80C58100  38 C0 00 00 */	li r6, 0
/* 80C58104  38 E0 00 FF */	li r7, 0xff
/* 80C58108  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80C5810C  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80C58110  7D 09 43 78 */	mr r9, r8
/* 80C58114  39 40 00 00 */	li r10, 0
/* 80C58118  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80C5811C  4B 3F 50 9D */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80C58120  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C58124  38 80 01 03 */	li r4, 0x103
/* 80C58128  38 BE 06 EC */	addi r5, r30, 0x6ec
/* 80C5812C  38 C0 00 00 */	li r6, 0
/* 80C58130  38 E0 00 FF */	li r7, 0xff
/* 80C58134  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80C58138  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80C5813C  7D 09 43 78 */	mr r9, r8
/* 80C58140  39 40 00 00 */	li r10, 0
/* 80C58144  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80C58148  4B 3F 50 71 */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80C5814C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C58150  7C 03 07 74 */	extsb r3, r0
/* 80C58154  4B 3D 4F 19 */	bl dComIfGp_getReverb__Fi
/* 80C58158  7C 67 1B 78 */	mr r7, r3
/* 80C5815C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080018@ha */
/* 80C58160  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00080018@l */
/* 80C58164  90 01 00 08 */	stw r0, 8(r1)
/* 80C58168  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C5816C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C58170  80 63 00 00 */	lwz r3, 0(r3)
/* 80C58174  38 81 00 08 */	addi r4, r1, 8
/* 80C58178  38 BE 06 EC */	addi r5, r30, 0x6ec
/* 80C5817C  38 C0 00 00 */	li r6, 0
/* 80C58180  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C58184  FC 40 08 90 */	fmr f2, f1
/* 80C58188  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 80C5818C  FC 80 18 90 */	fmr f4, f3
/* 80C58190  39 00 00 00 */	li r8, 0
/* 80C58194  4B 65 43 79 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C58198  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80C5819C  4B 42 C2 C5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C581A0  28 03 00 00 */	cmplwi r3, 0
/* 80C581A4  41 82 00 7C */	beq lbl_80C58220
/* 80C581A8  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80C581AC  4B 42 C3 4D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C581B0  28 03 00 00 */	cmplwi r3, 0
/* 80C581B4  41 82 00 74 */	beq lbl_80C58228
/* 80C581B8  3B A0 00 01 */	li r29, 1
/* 80C581BC  4B 60 B8 8D */	bl GetAc__8cCcD_ObjFv
/* 80C581C0  A8 03 00 08 */	lha r0, 8(r3)
/* 80C581C4  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C581C8  40 82 00 28 */	bne lbl_80C581F0
/* 80C581CC  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80C581D0  4B 42 C3 79 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80C581D4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80C581D8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80C581DC  41 82 00 14 */	beq lbl_80C581F0
/* 80C581E0  88 1E 07 30 */	lbz r0, 0x730(r30)
/* 80C581E4  28 00 00 00 */	cmplwi r0, 0
/* 80C581E8  41 82 00 08 */	beq lbl_80C581F0
/* 80C581EC  3B A0 00 00 */	li r29, 0
lbl_80C581F0:
/* 80C581F0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80C581F4  41 82 00 34 */	beq lbl_80C58228
/* 80C581F8  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80C581FC  4B 42 C3 81 */	bl GetTgHitObjSe__12dCcD_GObjInfFv
/* 80C58200  38 80 00 01 */	li r4, 1
/* 80C58204  4B 42 C3 AD */	bl getHitSeID__12dCcD_GObjInfFUci
/* 80C58208  7C 64 1B 78 */	mr r4, r3
/* 80C5820C  38 7E 07 34 */	addi r3, r30, 0x734
/* 80C58210  38 A0 00 09 */	li r5, 9
/* 80C58214  38 C0 00 00 */	li r6, 0
/* 80C58218  4B 66 62 8D */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
/* 80C5821C  48 00 00 0C */	b lbl_80C58228
lbl_80C58220:
/* 80C58220  38 00 00 00 */	li r0, 0
/* 80C58224  98 1E 07 30 */	stb r0, 0x730(r30)
lbl_80C58228:
/* 80C58228  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C5822C  7C 03 07 74 */	extsb r3, r0
/* 80C58230  4B 3D 4E 3D */	bl dComIfGp_getReverb__Fi
/* 80C58234  7C 65 1B 78 */	mr r5, r3
/* 80C58238  38 7E 07 34 */	addi r3, r30, 0x734
/* 80C5823C  38 80 00 00 */	li r4, 0
/* 80C58240  81 9E 07 44 */	lwz r12, 0x744(r30)
/* 80C58244  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C58248  7D 89 03 A6 */	mtctr r12
/* 80C5824C  4E 80 04 21 */	bctrl 
/* 80C58250  7F C3 F3 78 */	mr r3, r30
/* 80C58254  4B FF F8 E5 */	bl setBaseMtx__13daLv3Candle_cFv
/* 80C58258  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C5825C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C58260  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C58264  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C58268  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C5826C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C58270  88 1E 05 74 */	lbz r0, 0x574(r30)
/* 80C58274  28 00 00 00 */	cmplwi r0, 0
/* 80C58278  40 82 00 24 */	bne lbl_80C5829C
/* 80C5827C  38 7E 06 D8 */	addi r3, r30, 0x6d8
/* 80C58280  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80C58284  4B 61 74 85 */	bl SetR__8cM3dGSphFf
/* 80C58288  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80C5828C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80C58290  EC 01 00 2A */	fadds f0, f1, f0
/* 80C58294  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C58298  48 00 00 20 */	b lbl_80C582B8
lbl_80C5829C:
/* 80C5829C  38 7E 06 D8 */	addi r3, r30, 0x6d8
/* 80C582A0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80C582A4  4B 61 74 65 */	bl SetR__8cM3dGSphFf
/* 80C582A8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80C582AC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C582B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C582B4  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80C582B8:
/* 80C582B8  38 7E 06 D8 */	addi r3, r30, 0x6d8
/* 80C582BC  38 81 00 0C */	addi r4, r1, 0xc
/* 80C582C0  4B 61 73 89 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80C582C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C582C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C582CC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C582D0  38 9E 05 B4 */	addi r4, r30, 0x5b4
/* 80C582D4  4B 60 C8 D5 */	bl Set__4cCcSFP8cCcD_Obj
/* 80C582D8  7F C3 F3 78 */	mr r3, r30
/* 80C582DC  4B FF FD 3D */	bl pointLightProc__13daLv3Candle_cFv
/* 80C582E0  38 60 00 01 */	li r3, 1
/* 80C582E4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C582E8  4B 70 9F 41 */	bl _restgpr_29
/* 80C582EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C582F0  7C 08 03 A6 */	mtlr r0
/* 80C582F4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C582F8  4E 80 00 20 */	blr 
