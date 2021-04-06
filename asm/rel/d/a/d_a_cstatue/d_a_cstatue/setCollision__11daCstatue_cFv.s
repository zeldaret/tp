lbl_8066555C:
/* 8066555C  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80665560  7C 08 02 A6 */	mflr r0
/* 80665564  90 01 01 14 */	stw r0, 0x114(r1)
/* 80665568  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8066556C  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 80665570  39 61 01 00 */	addi r11, r1, 0x100
/* 80665574  4B CF CC 51 */	bl _savegpr_23
/* 80665578  7C 7F 1B 78 */	mr r31, r3
/* 8066557C  3C 60 80 66 */	lis r3, lit_1109@ha /* 0x80667B80@ha */
/* 80665580  3B A3 7B 80 */	addi r29, r3, lit_1109@l /* 0x80667B80@l */
/* 80665584  3C 60 80 66 */	lis r3, lit_3768@ha /* 0x80667698@ha */
/* 80665588  3B C3 76 98 */	addi r30, r3, lit_3768@l /* 0x80667698@l */
/* 8066558C  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80665590  4B A1 E2 A1 */	bl Move__10dCcD_GSttsFv
/* 80665594  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80665598  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8066559C  40 82 00 6C */	bne lbl_80665608
/* 806655A0  88 1F 0A DD */	lbz r0, 0xadd(r31)
/* 806655A4  28 00 00 02 */	cmplwi r0, 2
/* 806655A8  41 82 00 60 */	beq lbl_80665608
/* 806655AC  88 1F 0A E0 */	lbz r0, 0xae0(r31)
/* 806655B0  28 00 00 02 */	cmplwi r0, 2
/* 806655B4  40 82 00 24 */	bne lbl_806655D8
/* 806655B8  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 806655BC  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 806655C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806655C4  40 81 00 14 */	ble lbl_806655D8
/* 806655C8  80 1F 08 C0 */	lwz r0, 0x8c0(r31)
/* 806655CC  60 00 00 01 */	ori r0, r0, 1
/* 806655D0  90 1F 08 C0 */	stw r0, 0x8c0(r31)
/* 806655D4  48 00 00 10 */	b lbl_806655E4
lbl_806655D8:
/* 806655D8  80 1F 08 C0 */	lwz r0, 0x8c0(r31)
/* 806655DC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806655E0  90 1F 08 C0 */	stw r0, 0x8c0(r31)
lbl_806655E4:
/* 806655E4  38 7F 08 C0 */	addi r3, r31, 0x8c0
/* 806655E8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806655EC  4B A1 F3 69 */	bl MoveCAt__8dCcD_CylFR4cXyz
/* 806655F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806655F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806655F8  38 63 23 3C */	addi r3, r3, 0x233c
/* 806655FC  38 9F 08 C0 */	addi r4, r31, 0x8c0
/* 80665600  4B BF F5 A9 */	bl Set__4cCcSFP8cCcD_Obj
/* 80665604  48 00 00 1C */	b lbl_80665620
lbl_80665608:
/* 80665608  38 7F 08 C0 */	addi r3, r31, 0x8c0
/* 8066560C  4B A1 EE AD */	bl ResetTgHit__12dCcD_GObjInfFv
/* 80665610  38 7F 08 C0 */	addi r3, r31, 0x8c0
/* 80665614  4B A1 ED 05 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 80665618  38 7F 08 C0 */	addi r3, r31, 0x8c0
/* 8066561C  4B A1 F0 95 */	bl ResetCoHit__12dCcD_GObjInfFv
lbl_80665620:
/* 80665620  88 1F 0A DD */	lbz r0, 0xadd(r31)
/* 80665624  28 00 00 00 */	cmplwi r0, 0
/* 80665628  40 82 05 E0 */	bne lbl_80665C08
/* 8066562C  80 7F 09 FC */	lwz r3, 0x9fc(r31)
/* 80665630  80 03 00 00 */	lwz r0, 0(r3)
/* 80665634  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80665638  41 82 00 2C */	beq lbl_80665664
/* 8066563C  C0 03 01 30 */	lfs f0, 0x130(r3)
/* 80665640  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80665644  38 61 00 28 */	addi r3, r1, 0x28
/* 80665648  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 8066564C  C0 5E 02 8C */	lfs f2, 0x28c(r30)
/* 80665650  4B C0 B0 F1 */	bl cLib_chaseF__FPfff
/* 80665654  80 7F 09 FC */	lwz r3, 0x9fc(r31)
/* 80665658  38 63 01 24 */	addi r3, r3, 0x124
/* 8066565C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80665660  4B C0 9B A1 */	bl SetR__8cM3dGCylFf
lbl_80665664:
/* 80665664  88 1F 0A DF */	lbz r0, 0xadf(r31)
/* 80665668  28 00 00 02 */	cmplwi r0, 2
/* 8066566C  40 82 05 28 */	bne lbl_80665B94
/* 80665670  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80665674  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80665678  C0 1E 02 90 */	lfs f0, 0x290(r30)
/* 8066567C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80665680  4C 41 13 82 */	cror 2, 1, 2
/* 80665684  40 82 05 10 */	bne lbl_80665B94
/* 80665688  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 8066568C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80665690  40 80 05 04 */	bge lbl_80665B94
/* 80665694  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80665698  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8066569C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 806656A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806656A4  7C 64 02 14 */	add r3, r4, r0
/* 806656A8  C0 43 00 04 */	lfs f2, 4(r3)
/* 806656AC  7C 04 04 2E */	lfsx f0, r4, r0
/* 806656B0  C0 3E 01 CC */	lfs f1, 0x1cc(r30)
/* 806656B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 806656B8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 806656BC  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 806656C0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 806656C4  EC 01 00 B2 */	fmuls f0, f1, f2
/* 806656C8  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 806656CC  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 806656D0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806656D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806656D8  38 63 00 F0 */	addi r3, r3, 0xf0
/* 806656DC  38 9E 01 D4 */	addi r4, r30, 0x1d4
/* 806656E0  38 A1 00 94 */	addi r5, r1, 0x94
/* 806656E4  4B CE 16 89 */	bl PSMTXMultVec
/* 806656E8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 806656EC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806656F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806656F4  38 63 00 F0 */	addi r3, r3, 0xf0
/* 806656F8  38 9E 01 E0 */	addi r4, r30, 0x1e0
/* 806656FC  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 80665700  4B CE 16 6D */	bl PSMTXMultVec
/* 80665704  80 7F 0A 00 */	lwz r3, 0xa00(r31)
/* 80665708  38 63 01 24 */	addi r3, r3, 0x124
/* 8066570C  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80665710  38 A1 00 94 */	addi r5, r1, 0x94
/* 80665714  4B C0 9B D5 */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 80665718  80 7F 0A 00 */	lwz r3, 0xa00(r31)
/* 8066571C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80665720  D0 03 00 84 */	stfs f0, 0x84(r3)
/* 80665724  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80665728  D0 03 00 88 */	stfs f0, 0x88(r3)
/* 8066572C  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80665730  D0 03 00 8C */	stfs f0, 0x8c(r3)
/* 80665734  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80665738  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8066573C  3B 83 23 3C */	addi r28, r3, 0x233c
/* 80665740  7F 83 E3 78 */	mr r3, r28
/* 80665744  80 9F 0A 00 */	lwz r4, 0xa00(r31)
/* 80665748  4B BF F4 61 */	bl Set__4cCcSFP8cCcD_Obj
/* 8066574C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80665750  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80665754  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80665758  38 63 00 F0 */	addi r3, r3, 0xf0
/* 8066575C  38 9E 01 EC */	addi r4, r30, 0x1ec
/* 80665760  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 80665764  4B CE 16 09 */	bl PSMTXMultVec
/* 80665768  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 8066576C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80665770  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80665774  38 63 00 F0 */	addi r3, r3, 0xf0
/* 80665778  38 9E 01 F8 */	addi r4, r30, 0x1f8
/* 8066577C  38 A1 00 94 */	addi r5, r1, 0x94
/* 80665780  4B CE 15 ED */	bl PSMTXMultVec
/* 80665784  80 7F 0A 04 */	lwz r3, 0xa04(r31)
/* 80665788  38 63 01 24 */	addi r3, r3, 0x124
/* 8066578C  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80665790  38 A1 00 94 */	addi r5, r1, 0x94
/* 80665794  4B C0 9B 55 */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 80665798  80 7F 0A 04 */	lwz r3, 0xa04(r31)
/* 8066579C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 806657A0  D0 03 00 84 */	stfs f0, 0x84(r3)
/* 806657A4  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 806657A8  D0 03 00 88 */	stfs f0, 0x88(r3)
/* 806657AC  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 806657B0  D0 03 00 8C */	stfs f0, 0x8c(r3)
/* 806657B4  7F 83 E3 78 */	mr r3, r28
/* 806657B8  80 9F 0A 04 */	lwz r4, 0xa04(r31)
/* 806657BC  4B BF F3 ED */	bl Set__4cCcSFP8cCcD_Obj
/* 806657C0  80 1F 0A EC */	lwz r0, 0xaec(r31)
/* 806657C4  60 00 00 10 */	ori r0, r0, 0x10
/* 806657C8  90 1F 0A EC */	stw r0, 0xaec(r31)
/* 806657CC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 806657D0  38 63 00 0C */	addi r3, r3, 0xc
/* 806657D4  C0 3E 02 94 */	lfs f1, 0x294(r30)
/* 806657D8  4B CC 2C 55 */	bl checkPass__12J3DFrameCtrlFf
/* 806657DC  2C 03 00 00 */	cmpwi r3, 0
/* 806657E0  41 82 03 80 */	beq lbl_80665B60
/* 806657E4  80 7F 0A 04 */	lwz r3, 0xa04(r31)
/* 806657E8  38 83 01 24 */	addi r4, r3, 0x124
/* 806657EC  38 A4 00 0C */	addi r5, r4, 0xc
/* 806657F0  38 61 00 64 */	addi r3, r1, 0x64
/* 806657F4  4B C0 12 F1 */	bl __pl__4cXyzCFRC3Vec
/* 806657F8  38 61 00 58 */	addi r3, r1, 0x58
/* 806657FC  38 81 00 64 */	addi r4, r1, 0x64
/* 80665800  C0 3E 01 88 */	lfs f1, 0x188(r30)
/* 80665804  4B C0 13 81 */	bl __ml__4cXyzCFf
/* 80665808  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8066580C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80665810  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80665814  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80665818  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8066581C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80665820  38 61 00 88 */	addi r3, r1, 0x88
/* 80665824  4B 9B 84 99 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80665828  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8066582C  41 82 00 20 */	beq lbl_8066584C
/* 80665830  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80665834  C0 43 0C D0 */	lfs f2, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80665838  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8066583C  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 80665840  EC 01 00 28 */	fsubs f0, f1, f0
/* 80665844  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80665848  40 80 00 14 */	bge lbl_8066585C
lbl_8066584C:
/* 8066584C  80 1F 0A EC */	lwz r0, 0xaec(r31)
/* 80665850  60 00 00 20 */	ori r0, r0, 0x20
/* 80665854  90 1F 0A EC */	stw r0, 0xaec(r31)
/* 80665858  48 00 03 B0 */	b lbl_80665C08
lbl_8066585C:
/* 8066585C  3C 60 80 3F */	lis r3, mGndCheck__11fopAcM_gc_c@ha /* 0x803F1CC4@ha */
/* 80665860  34 63 1C C4 */	addic. r3, r3, mGndCheck__11fopAcM_gc_c@l /* 0x803F1CC4@l */
/* 80665864  41 82 00 08 */	beq lbl_8066586C
/* 80665868  38 63 00 14 */	addi r3, r3, 0x14
lbl_8066586C:
/* 8066586C  4B B4 5C 55 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 80665870  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80665874  38 7F 0A 14 */	addi r3, r31, 0xa14
/* 80665878  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040015@ha */
/* 8066587C  38 84 00 15 */	addi r4, r4, 0x0015 /* 0x00040015@l */
/* 80665880  81 9F 0A 14 */	lwz r12, 0xa14(r31)
/* 80665884  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80665888  7D 89 03 A6 */	mtctr r12
/* 8066588C  4E 80 04 21 */	bctrl 
/* 80665890  80 7F 0A 04 */	lwz r3, 0xa04(r31)
/* 80665894  38 63 01 30 */	addi r3, r3, 0x130
/* 80665898  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8066589C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806658A0  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 806658A4  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 806658A8  4B CE 1A F5 */	bl PSVECSquareDistance
/* 806658AC  C0 1E 02 98 */	lfs f0, 0x298(r30)
/* 806658B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806658B4  40 80 00 38 */	bge lbl_806658EC
/* 806658B8  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 806658BC  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 806658C0  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 806658C4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806658C8  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 806658CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806658D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806658D4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806658D8  38 80 00 04 */	li r4, 4
/* 806658DC  38 A0 00 1F */	li r5, 0x1f
/* 806658E0  38 C1 00 4C */	addi r6, r1, 0x4c
/* 806658E4  4B A0 A1 41 */	bl StartShock__12dVibration_cFii4cXyz
/* 806658E8  48 00 00 40 */	b lbl_80665928
lbl_806658EC:
/* 806658EC  C0 1E 02 9C */	lfs f0, 0x29c(r30)
/* 806658F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806658F4  40 80 00 34 */	bge lbl_80665928
/* 806658F8  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 806658FC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80665900  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80665904  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80665908  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8066590C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80665910  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80665914  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80665918  38 80 00 02 */	li r4, 2
/* 8066591C  38 A0 00 1F */	li r5, 0x1f
/* 80665920  38 C1 00 40 */	addi r6, r1, 0x40
/* 80665924  4B A0 A1 01 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80665928:
/* 80665928  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 8066592C  C0 23 0C D0 */	lfs f1, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80665930  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80665934  EC 01 00 28 */	fsubs f0, f1, f0
/* 80665938  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8066593C  80 7F 09 FC */	lwz r3, 0x9fc(r31)
/* 80665940  38 63 01 24 */	addi r3, r3, 0x124
/* 80665944  38 81 00 88 */	addi r4, r1, 0x88
/* 80665948  4B C0 98 95 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8066594C  80 7F 09 FC */	lwz r3, 0x9fc(r31)
/* 80665950  80 03 00 00 */	lwz r0, 0(r3)
/* 80665954  60 00 00 01 */	ori r0, r0, 1
/* 80665958  90 03 00 00 */	stw r0, 0(r3)
/* 8066595C  80 7F 09 FC */	lwz r3, 0x9fc(r31)
/* 80665960  38 63 01 24 */	addi r3, r3, 0x124
/* 80665964  C0 3E 02 A0 */	lfs f1, 0x2a0(r30)
/* 80665968  4B C0 98 99 */	bl SetR__8cM3dGCylFf
/* 8066596C  7F 83 E3 78 */	mr r3, r28
/* 80665970  80 9F 09 FC */	lwz r4, 0x9fc(r31)
/* 80665974  4B BF F2 35 */	bl Set__4cCcSFP8cCcD_Obj
/* 80665978  3C 60 80 66 */	lis r3, __vt__8cM3dGPla@ha /* 0x80667AF0@ha */
/* 8066597C  38 03 7A F0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80667AF0@l */
/* 80665980  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80665984  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80665988  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8066598C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80665990  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha /* 0x803F1CC4@ha */
/* 80665994  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l /* 0x803F1CC4@l */
/* 80665998  38 84 00 14 */	addi r4, r4, 0x14
/* 8066599C  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 806659A0  4B A0 ED A5 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 806659A4  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 806659A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806659AC  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 806659B0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806659B4  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 806659B8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806659BC  38 61 00 34 */	addi r3, r1, 0x34
/* 806659C0  4B CE 17 79 */	bl PSVECSquareMag
/* 806659C4  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 806659C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806659CC  40 81 00 58 */	ble lbl_80665A24
/* 806659D0  FC 00 08 34 */	frsqrte f0, f1
/* 806659D4  C8 9E 01 B0 */	lfd f4, 0x1b0(r30)
/* 806659D8  FC 44 00 32 */	fmul f2, f4, f0
/* 806659DC  C8 7E 01 B8 */	lfd f3, 0x1b8(r30)
/* 806659E0  FC 00 00 32 */	fmul f0, f0, f0
/* 806659E4  FC 01 00 32 */	fmul f0, f1, f0
/* 806659E8  FC 03 00 28 */	fsub f0, f3, f0
/* 806659EC  FC 02 00 32 */	fmul f0, f2, f0
/* 806659F0  FC 44 00 32 */	fmul f2, f4, f0
/* 806659F4  FC 00 00 32 */	fmul f0, f0, f0
/* 806659F8  FC 01 00 32 */	fmul f0, f1, f0
/* 806659FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80665A00  FC 02 00 32 */	fmul f0, f2, f0
/* 80665A04  FC 44 00 32 */	fmul f2, f4, f0
/* 80665A08  FC 00 00 32 */	fmul f0, f0, f0
/* 80665A0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80665A10  FC 03 00 28 */	fsub f0, f3, f0
/* 80665A14  FC 02 00 32 */	fmul f0, f2, f0
/* 80665A18  FF E1 00 32 */	fmul f31, f1, f0
/* 80665A1C  FF E0 F8 18 */	frsp f31, f31
/* 80665A20  48 00 00 90 */	b lbl_80665AB0
lbl_80665A24:
/* 80665A24  C8 1E 01 C0 */	lfd f0, 0x1c0(r30)
/* 80665A28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80665A2C  40 80 00 10 */	bge lbl_80665A3C
/* 80665A30  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80665A34  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80665A38  48 00 00 78 */	b lbl_80665AB0
lbl_80665A3C:
/* 80665A3C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80665A40  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80665A44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80665A48  3C 00 7F 80 */	lis r0, 0x7f80
/* 80665A4C  7C 03 00 00 */	cmpw r3, r0
/* 80665A50  41 82 00 14 */	beq lbl_80665A64
/* 80665A54  40 80 00 40 */	bge lbl_80665A94
/* 80665A58  2C 03 00 00 */	cmpwi r3, 0
/* 80665A5C  41 82 00 20 */	beq lbl_80665A7C
/* 80665A60  48 00 00 34 */	b lbl_80665A94
lbl_80665A64:
/* 80665A64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80665A68  41 82 00 0C */	beq lbl_80665A74
/* 80665A6C  38 00 00 01 */	li r0, 1
/* 80665A70  48 00 00 28 */	b lbl_80665A98
lbl_80665A74:
/* 80665A74  38 00 00 02 */	li r0, 2
/* 80665A78  48 00 00 20 */	b lbl_80665A98
lbl_80665A7C:
/* 80665A7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80665A80  41 82 00 0C */	beq lbl_80665A8C
/* 80665A84  38 00 00 05 */	li r0, 5
/* 80665A88  48 00 00 10 */	b lbl_80665A98
lbl_80665A8C:
/* 80665A8C  38 00 00 03 */	li r0, 3
/* 80665A90  48 00 00 08 */	b lbl_80665A98
lbl_80665A94:
/* 80665A94  38 00 00 04 */	li r0, 4
lbl_80665A98:
/* 80665A98  2C 00 00 01 */	cmpwi r0, 1
/* 80665A9C  40 82 00 10 */	bne lbl_80665AAC
/* 80665AA0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80665AA4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80665AA8  48 00 00 08 */	b lbl_80665AB0
lbl_80665AAC:
/* 80665AAC  FF E0 08 90 */	fmr f31, f1
lbl_80665AB0:
/* 80665AB0  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80665AB4  4B C0 16 75 */	bl atan2sX_Z__4cXyzCFv
/* 80665AB8  7C 78 1B 78 */	mr r24, r3
/* 80665ABC  FC 20 F8 90 */	fmr f1, f31
/* 80665AC0  C0 41 00 BC */	lfs f2, 0xbc(r1)
/* 80665AC4  4B C0 1B B1 */	bl cM_atan2s__Fff
/* 80665AC8  7C 64 1B 78 */	mr r4, r3
/* 80665ACC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80665AD0  7F 05 C3 78 */	mr r5, r24
/* 80665AD4  38 C0 00 00 */	li r6, 0
/* 80665AD8  4B C0 19 1D */	bl __ct__5csXyzFsss
/* 80665ADC  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80665AE0  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80665AE4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80665AE8  3A E0 00 00 */	li r23, 0
/* 80665AEC  3B 60 00 00 */	li r27, 0
/* 80665AF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80665AF4  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80665AF8  3B 1E 02 04 */	addi r24, r30, 0x204
lbl_80665AFC:
/* 80665AFC  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80665B00  38 80 00 00 */	li r4, 0
/* 80665B04  90 81 00 08 */	stw r4, 8(r1)
/* 80665B08  38 00 FF FF */	li r0, -1
/* 80665B0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80665B10  90 81 00 10 */	stw r4, 0x10(r1)
/* 80665B14  90 81 00 14 */	stw r4, 0x14(r1)
/* 80665B18  90 81 00 18 */	stw r4, 0x18(r1)
/* 80665B1C  38 80 00 00 */	li r4, 0
/* 80665B20  7C B8 DA 2E */	lhzx r5, r24, r27
/* 80665B24  38 C1 00 88 */	addi r6, r1, 0x88
/* 80665B28  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80665B2C  39 01 00 2C */	addi r8, r1, 0x2c
/* 80665B30  39 20 00 00 */	li r9, 0
/* 80665B34  39 40 00 FF */	li r10, 0xff
/* 80665B38  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80665B3C  4B 9E 6F 55 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80665B40  3A F7 00 01 */	addi r23, r23, 1
/* 80665B44  2C 17 00 04 */	cmpwi r23, 4
/* 80665B48  3B 7B 00 02 */	addi r27, r27, 2
/* 80665B4C  41 80 FF B0 */	blt lbl_80665AFC
/* 80665B50  3C 60 80 66 */	lis r3, __vt__8cM3dGPla@ha /* 0x80667AF0@ha */
/* 80665B54  38 03 7A F0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80667AF0@l */
/* 80665B58  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80665B5C  48 00 00 AC */	b lbl_80665C08
lbl_80665B60:
/* 80665B60  80 9F 09 FC */	lwz r4, 0x9fc(r31)
/* 80665B64  80 04 00 00 */	lwz r0, 0(r4)
/* 80665B68  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80665B6C  41 82 00 10 */	beq lbl_80665B7C
/* 80665B70  7F 83 E3 78 */	mr r3, r28
/* 80665B74  4B BF F0 35 */	bl Set__4cCcSFP8cCcD_Obj
/* 80665B78  48 00 00 90 */	b lbl_80665C08
lbl_80665B7C:
/* 80665B7C  80 04 00 00 */	lwz r0, 0(r4)
/* 80665B80  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80665B84  90 04 00 00 */	stw r0, 0(r4)
/* 80665B88  80 7F 09 FC */	lwz r3, 0x9fc(r31)
/* 80665B8C  4B A1 E7 8D */	bl ResetAtHit__12dCcD_GObjInfFv
/* 80665B90  48 00 00 78 */	b lbl_80665C08
lbl_80665B94:
/* 80665B94  28 00 00 02 */	cmplwi r0, 2
/* 80665B98  40 82 00 3C */	bne lbl_80665BD4
/* 80665B9C  80 9F 09 FC */	lwz r4, 0x9fc(r31)
/* 80665BA0  80 04 00 00 */	lwz r0, 0(r4)
/* 80665BA4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80665BA8  41 82 00 2C */	beq lbl_80665BD4
/* 80665BAC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80665BB0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80665BB4  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 80665BB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80665BBC  40 80 00 18 */	bge lbl_80665BD4
/* 80665BC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80665BC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80665BC8  38 63 23 3C */	addi r3, r3, 0x233c
/* 80665BCC  4B BF EF DD */	bl Set__4cCcSFP8cCcD_Obj
/* 80665BD0  48 00 00 38 */	b lbl_80665C08
lbl_80665BD4:
/* 80665BD4  80 7F 0A 00 */	lwz r3, 0xa00(r31)
/* 80665BD8  4B A1 E7 41 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 80665BDC  80 7F 0A 04 */	lwz r3, 0xa04(r31)
/* 80665BE0  4B A1 E7 39 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 80665BE4  80 7F 09 FC */	lwz r3, 0x9fc(r31)
/* 80665BE8  80 03 00 00 */	lwz r0, 0(r3)
/* 80665BEC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80665BF0  90 03 00 00 */	stw r0, 0(r3)
/* 80665BF4  80 7F 09 FC */	lwz r3, 0x9fc(r31)
/* 80665BF8  4B A1 E7 21 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 80665BFC  80 1F 0A EC */	lwz r0, 0xaec(r31)
/* 80665C00  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80665C04  90 1F 0A EC */	stw r0, 0xaec(r31)
lbl_80665C08:
/* 80665C08  88 1D 00 4C */	lbz r0, 0x4c(r29)
/* 80665C0C  7C 00 07 75 */	extsb. r0, r0
/* 80665C10  40 82 00 30 */	bne lbl_80665C40
/* 80665C14  C0 1E 02 A4 */	lfs f0, 0x2a4(r30)
/* 80665C18  D0 1D 00 50 */	stfs f0, 0x50(r29)
/* 80665C1C  38 7D 00 50 */	addi r3, r29, 0x50
/* 80665C20  D0 03 00 04 */	stfs f0, 4(r3)
/* 80665C24  D0 03 00 08 */	stfs f0, 8(r3)
/* 80665C28  3C 80 80 66 */	lis r4, __dt__4cXyzFv@ha /* 0x80663B34@ha */
/* 80665C2C  38 84 3B 34 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80663B34@l */
/* 80665C30  38 BD 00 40 */	addi r5, r29, 0x40
/* 80665C34  4B FF DA 05 */	bl __register_global_object
/* 80665C38  38 00 00 01 */	li r0, 1
/* 80665C3C  98 1D 00 4C */	stb r0, 0x4c(r29)
lbl_80665C40:
/* 80665C40  80 7F 0A 08 */	lwz r3, 0xa08(r31)
/* 80665C44  28 03 00 00 */	cmplwi r3, 0
/* 80665C48  41 82 01 AC */	beq lbl_80665DF4
/* 80665C4C  88 1F 0A DD */	lbz r0, 0xadd(r31)
/* 80665C50  28 00 00 04 */	cmplwi r0, 4
/* 80665C54  40 82 00 0C */	bne lbl_80665C60
/* 80665C58  38 63 08 88 */	addi r3, r3, 0x888
/* 80665C5C  48 00 00 08 */	b lbl_80665C64
lbl_80665C60:
/* 80665C60  38 63 03 A8 */	addi r3, r3, 0x3a8
lbl_80665C64:
/* 80665C64  38 00 00 02 */	li r0, 2
/* 80665C68  7C 09 03 A6 */	mtctr r0
lbl_80665C6C:
/* 80665C6C  88 1F 0A DF */	lbz r0, 0xadf(r31)
/* 80665C70  28 00 00 02 */	cmplwi r0, 2
/* 80665C74  40 82 00 14 */	bne lbl_80665C88
/* 80665C78  80 03 00 00 */	lwz r0, 0(r3)
/* 80665C7C  60 00 00 01 */	ori r0, r0, 1
/* 80665C80  90 03 00 00 */	stw r0, 0(r3)
/* 80665C84  48 00 00 10 */	b lbl_80665C94
lbl_80665C88:
/* 80665C88  80 03 00 00 */	lwz r0, 0(r3)
/* 80665C8C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80665C90  90 03 00 00 */	stw r0, 0(r3)
lbl_80665C94:
/* 80665C94  38 63 01 38 */	addi r3, r3, 0x138
/* 80665C98  42 00 FF D4 */	bdnz lbl_80665C6C
/* 80665C9C  83 5F 0A 08 */	lwz r26, 0xa08(r31)
/* 80665CA0  3A E0 00 00 */	li r23, 0
/* 80665CA4  3B 80 00 00 */	li r28, 0
/* 80665CA8  3B 60 00 00 */	li r27, 0
/* 80665CAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80665CB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80665CB4  3B 23 23 3C */	addi r25, r3, 0x233c
/* 80665CB8  3B 1E 02 0C */	addi r24, r30, 0x20c
lbl_80665CBC:
/* 80665CBC  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80665CC0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80665CC4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80665CC8  7C 18 DA 2E */	lhzx r0, r24, r27
/* 80665CCC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80665CD0  7C 63 02 14 */	add r3, r3, r0
/* 80665CD4  38 9E 02 20 */	addi r4, r30, 0x220
/* 80665CD8  7C 84 E2 14 */	add r4, r4, r28
/* 80665CDC  38 A1 00 7C */	addi r5, r1, 0x7c
/* 80665CE0  4B CE 10 8D */	bl PSMTXMultVec
/* 80665CE4  7F 43 D3 78 */	mr r3, r26
/* 80665CE8  38 81 00 7C */	addi r4, r1, 0x7c
/* 80665CEC  4B A1 ED D9 */	bl MoveCAt__8dCcD_SphFR4cXyz
/* 80665CF0  7F 23 CB 78 */	mr r3, r25
/* 80665CF4  7F 44 D3 78 */	mr r4, r26
/* 80665CF8  4B BF EE B1 */	bl Set__4cCcSFP8cCcD_Obj
/* 80665CFC  3A F7 00 01 */	addi r23, r23, 1
/* 80665D00  2C 17 00 09 */	cmpwi r23, 9
/* 80665D04  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80665D08  3B 7B 00 02 */	addi r27, r27, 2
/* 80665D0C  3B 5A 01 38 */	addi r26, r26, 0x138
/* 80665D10  41 80 FF AC */	blt lbl_80665CBC
/* 80665D14  88 1F 0A E5 */	lbz r0, 0xae5(r31)
/* 80665D18  28 00 00 00 */	cmplwi r0, 0
/* 80665D1C  41 82 00 D8 */	beq lbl_80665DF4
/* 80665D20  88 1F 0A DD */	lbz r0, 0xadd(r31)
/* 80665D24  28 00 00 04 */	cmplwi r0, 4
/* 80665D28  40 82 00 10 */	bne lbl_80665D38
/* 80665D2C  80 7F 0A 08 */	lwz r3, 0xa08(r31)
/* 80665D30  38 63 09 C0 */	addi r3, r3, 0x9c0
/* 80665D34  48 00 00 0C */	b lbl_80665D40
lbl_80665D38:
/* 80665D38  80 7F 0A 08 */	lwz r3, 0xa08(r31)
/* 80665D3C  38 63 04 E0 */	addi r3, r3, 0x4e0
lbl_80665D40:
/* 80665D40  C0 43 01 2C */	lfs f2, 0x12c(r3)
/* 80665D44  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80665D48  C0 03 01 24 */	lfs f0, 0x124(r3)
/* 80665D4C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80665D50  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80665D54  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80665D58  3A E0 00 00 */	li r23, 0
/* 80665D5C  3B 80 00 00 */	li r28, 0
/* 80665D60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80665D64  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80665D68  3B 3E 02 04 */	addi r25, r30, 0x204
/* 80665D6C  3C 60 80 45 */	lis r3, Zero__5csXyz@ha /* 0x80451160@ha */
/* 80665D70  3B 43 11 60 */	addi r26, r3, Zero__5csXyz@l /* 0x80451160@l */
/* 80665D74  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060159@ha */
/* 80665D78  3B 63 01 59 */	addi r27, r3, 0x0159 /* 0x00060159@l */
lbl_80665D7C:
/* 80665D7C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80665D80  38 80 00 00 */	li r4, 0
/* 80665D84  90 81 00 08 */	stw r4, 8(r1)
/* 80665D88  38 00 FF FF */	li r0, -1
/* 80665D8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80665D90  90 81 00 10 */	stw r4, 0x10(r1)
/* 80665D94  90 81 00 14 */	stw r4, 0x14(r1)
/* 80665D98  90 81 00 18 */	stw r4, 0x18(r1)
/* 80665D9C  38 80 00 00 */	li r4, 0
/* 80665DA0  7C B9 E2 2E */	lhzx r5, r25, r28
/* 80665DA4  38 C1 00 70 */	addi r6, r1, 0x70
/* 80665DA8  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80665DAC  7F 48 D3 78 */	mr r8, r26
/* 80665DB0  39 3D 00 50 */	addi r9, r29, 0x50
/* 80665DB4  39 40 00 FF */	li r10, 0xff
/* 80665DB8  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80665DBC  4B 9E 6C D5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80665DC0  93 61 00 24 */	stw r27, 0x24(r1)
/* 80665DC4  38 7F 0A 14 */	addi r3, r31, 0xa14
/* 80665DC8  38 81 00 24 */	addi r4, r1, 0x24
/* 80665DCC  38 A0 00 00 */	li r5, 0
/* 80665DD0  88 DF 0A DC */	lbz r6, 0xadc(r31)
/* 80665DD4  81 9F 0A 14 */	lwz r12, 0xa14(r31)
/* 80665DD8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80665DDC  7D 89 03 A6 */	mtctr r12
/* 80665DE0  4E 80 04 21 */	bctrl 
/* 80665DE4  3A F7 00 01 */	addi r23, r23, 1
/* 80665DE8  2C 17 00 04 */	cmpwi r23, 4
/* 80665DEC  3B 9C 00 02 */	addi r28, r28, 2
/* 80665DF0  41 80 FF 8C */	blt lbl_80665D7C
lbl_80665DF4:
/* 80665DF4  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 80665DF8  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80665DFC  39 61 01 00 */	addi r11, r1, 0x100
/* 80665E00  4B CF C4 11 */	bl _restgpr_23
/* 80665E04  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80665E08  7C 08 03 A6 */	mtlr r0
/* 80665E0C  38 21 01 10 */	addi r1, r1, 0x110
/* 80665E10  4E 80 00 20 */	blr 
