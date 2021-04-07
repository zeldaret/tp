lbl_80590504:
/* 80590504  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80590508  7C 08 02 A6 */	mflr r0
/* 8059050C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80590510  39 61 00 50 */	addi r11, r1, 0x50
/* 80590514  4B DD 1C C5 */	bl _savegpr_28
/* 80590518  7C 7C 1B 78 */	mr r28, r3
/* 8059051C  7C 9F 23 78 */	mr r31, r4
/* 80590520  3C 80 80 59 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80592980@ha */
/* 80590524  3B A4 29 80 */	addi r29, r4, cNullVec__6Z2Calc@l /* 0x80592980@l */
/* 80590528  3C 80 80 59 */	lis r4, l_magne_scale@ha /* 0x80592848@ha */
/* 8059052C  3B C4 28 48 */	addi r30, r4, l_magne_scale@l /* 0x80592848@l */
/* 80590530  80 83 09 F4 */	lwz r4, 0x9f4(r3)
/* 80590534  38 04 00 01 */	addi r0, r4, 1
/* 80590538  90 03 09 F4 */	stw r0, 0x9f4(r3)
/* 8059053C  48 00 02 DD */	bl action__11daObjMarm_cFv
/* 80590540  A8 1C 09 FC */	lha r0, 0x9fc(r28)
/* 80590544  7C 00 00 D0 */	neg r0, r0
/* 80590548  B0 1C 09 FE */	sth r0, 0x9fe(r28)
/* 8059054C  A8 1C 0A 00 */	lha r0, 0xa00(r28)
/* 80590550  7C 00 00 D0 */	neg r0, r0
/* 80590554  B0 1C 0A 02 */	sth r0, 0xa02(r28)
/* 80590558  A8 1C 09 FE */	lha r0, 0x9fe(r28)
/* 8059055C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80590560  7F 83 E3 78 */	mr r3, r28
/* 80590564  48 00 16 D5 */	bl calcHimo__11daObjMarm_cFv
/* 80590568  38 1C 05 6C */	addi r0, r28, 0x56c
/* 8059056C  90 1F 00 00 */	stw r0, 0(r31)
/* 80590570  7F 83 E3 78 */	mr r3, r28
/* 80590574  4B FF F2 09 */	bl setBaseMtx__11daObjMarm_cFv
/* 80590578  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 8059057C  4B AE B4 45 */	bl Move__4dBgWFv
/* 80590580  80 7C 06 30 */	lwz r3, 0x630(r28)
/* 80590584  4B AE B4 3D */	bl Move__4dBgWFv
/* 80590588  80 7C 05 C0 */	lwz r3, 0x5c0(r28)
/* 8059058C  4B A7 CE 9D */	bl play__14mDoExt_baseAnmFv
/* 80590590  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 80590594  4B A7 CE 95 */	bl play__14mDoExt_baseAnmFv
/* 80590598  80 1C 0A 18 */	lwz r0, 0xa18(r28)
/* 8059059C  90 01 00 08 */	stw r0, 8(r1)
/* 805905A0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805905A4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805905A8  38 81 00 08 */	addi r4, r1, 8
/* 805905AC  4B A8 92 4D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805905B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 805905B4  41 82 00 CC */	beq lbl_80590680
/* 805905B8  7F 83 E3 78 */	mr r3, r28
/* 805905BC  38 81 00 18 */	addi r4, r1, 0x18
/* 805905C0  4B FF EF 45 */	bl getFpartsOffset__11daObjMarm_cFP4cXyz
/* 805905C4  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 805905C8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805905CC  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 805905D0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805905D4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805905D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805905DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805905E0  A8 BC 0A 30 */	lha r5, 0xa30(r28)
/* 805905E4  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 805905E8  A8 1C 09 FE */	lha r0, 0x9fe(r28)
/* 805905EC  7C 00 2A 14 */	add r0, r0, r5
/* 805905F0  7C 04 02 14 */	add r0, r4, r0
/* 805905F4  7C 04 07 34 */	extsh r4, r0
/* 805905F8  4B A7 BD E5 */	bl mDoMtx_YrotS__FPA4_fs
/* 805905FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80590600  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80590604  A8 9C 0A 32 */	lha r4, 0xa32(r28)
/* 80590608  4B A7 BE C5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8059060C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80590610  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80590614  38 81 00 0C */	addi r4, r1, 0xc
/* 80590618  7C 85 23 78 */	mr r5, r4
/* 8059061C  4B DB 67 51 */	bl PSMTXMultVec
/* 80590620  38 61 00 18 */	addi r3, r1, 0x18
/* 80590624  38 81 00 0C */	addi r4, r1, 0xc
/* 80590628  7C 65 1B 78 */	mr r5, r3
/* 8059062C  4B DB 6A 65 */	bl PSVECAdd
/* 80590630  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80590634  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80590638  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8059063C  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80590640  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80590644  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 80590648  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8059064C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80590650  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80590654  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80590658  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8059065C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80590660  A8 9C 0A 30 */	lha r4, 0xa30(r28)
/* 80590664  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 80590668  A8 1C 09 FE */	lha r0, 0x9fe(r28)
/* 8059066C  7C 00 22 14 */	add r0, r0, r4
/* 80590670  7C 03 02 14 */	add r0, r3, r0
/* 80590674  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80590678  A8 1C 0A 32 */	lha r0, 0xa32(r28)
/* 8059067C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
lbl_80590680:
/* 80590680  80 1C 09 F4 */	lwz r0, 0x9f4(r28)
/* 80590684  1C 00 1F 40 */	mulli r0, r0, 0x1f40
/* 80590688  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8059068C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80590690  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80590694  7C 23 04 2E */	lfsx f1, r3, r0
/* 80590698  C0 1C 0A 2C */	lfs f0, 0xa2c(r28)
/* 8059069C  EC 00 00 72 */	fmuls f0, f0, f1
/* 805906A0  FC 00 00 1E */	fctiwz f0, f0
/* 805906A4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805906A8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805906AC  B0 1C 0A 30 */	sth r0, 0xa30(r28)
/* 805906B0  80 1C 09 F4 */	lwz r0, 0x9f4(r28)
/* 805906B4  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 805906B8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805906BC  7C 23 04 2E */	lfsx f1, r3, r0
/* 805906C0  C0 1C 0A 2C */	lfs f0, 0xa2c(r28)
/* 805906C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 805906C8  FC 00 00 1E */	fctiwz f0, f0
/* 805906CC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805906D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805906D4  B0 1C 0A 38 */	sth r0, 0xa38(r28)
/* 805906D8  38 7C 0A 2C */	addi r3, r28, 0xa2c
/* 805906DC  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 805906E0  C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 805906E4  4B CD F3 9D */	bl cLib_addCalc0__FPfff
/* 805906E8  A8 7C 0A 40 */	lha r3, 0xa40(r28)
/* 805906EC  38 03 00 01 */	addi r0, r3, 1
/* 805906F0  B0 1C 0A 40 */	sth r0, 0xa40(r28)
/* 805906F4  A8 1C 0A 40 */	lha r0, 0xa40(r28)
/* 805906F8  1C 00 0B B8 */	mulli r0, r0, 0xbb8
/* 805906FC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80590700  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80590704  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80590708  7C 23 04 2E */	lfsx f1, r3, r0
/* 8059070C  C0 1C 0A 3C */	lfs f0, 0xa3c(r28)
/* 80590710  EC 00 00 72 */	fmuls f0, f0, f1
/* 80590714  FC 00 00 1E */	fctiwz f0, f0
/* 80590718  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8059071C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80590720  B0 1C 0A 32 */	sth r0, 0xa32(r28)
/* 80590724  38 7C 0A 3C */	addi r3, r28, 0xa3c
/* 80590728  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 8059072C  C0 5E 00 C0 */	lfs f2, 0xc0(r30)
/* 80590730  4B CD F3 51 */	bl cLib_addCalc0__FPfff
/* 80590734  80 7C 05 AC */	lwz r3, 0x5ac(r28)
/* 80590738  38 63 00 24 */	addi r3, r3, 0x24
/* 8059073C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80590740  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80590744  4B DB 5D 6D */	bl PSMTXCopy
/* 80590748  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059074C  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80590750  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80590754  D0 1C 0A 44 */	stfs f0, 0xa44(r28)
/* 80590758  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8059075C  D0 1C 0A 48 */	stfs f0, 0xa48(r28)
/* 80590760  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80590764  D0 1C 0A 4C */	stfs f0, 0xa4c(r28)
/* 80590768  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 8059076C  38 63 00 24 */	addi r3, r3, 0x24
/* 80590770  7F E4 FB 78 */	mr r4, r31
/* 80590774  4B DB 5D 3D */	bl PSMTXCopy
/* 80590778  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8059077C  D0 1C 0A 50 */	stfs f0, 0xa50(r28)
/* 80590780  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80590784  D0 1C 0A 54 */	stfs f0, 0xa54(r28)
/* 80590788  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8059078C  D0 1C 0A 58 */	stfs f0, 0xa58(r28)
/* 80590790  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80590794  38 63 00 24 */	addi r3, r3, 0x24
/* 80590798  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059079C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805907A0  4B DB 5D 11 */	bl PSMTXCopy
/* 805907A4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 805907A8  D0 1C 0A 5C */	stfs f0, 0xa5c(r28)
/* 805907AC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805907B0  D0 1C 0A 60 */	stfs f0, 0xa60(r28)
/* 805907B4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 805907B8  D0 1C 0A 64 */	stfs f0, 0xa64(r28)
/* 805907BC  C0 3C 0A 60 */	lfs f1, 0xa60(r28)
/* 805907C0  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 805907C4  EC 01 00 2A */	fadds f0, f1, f0
/* 805907C8  D0 1C 0A 60 */	stfs f0, 0xa60(r28)
/* 805907CC  38 00 00 00 */	li r0, 0
/* 805907D0  98 1C 0A 1D */	stb r0, 0xa1d(r28)
/* 805907D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805907D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805907DC  38 63 5B 6C */	addi r3, r3, 0x5b6c
/* 805907E0  7F 84 E3 78 */	mr r4, r28
/* 805907E4  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 805907E8  C0 5D 00 58 */	lfs f2, 0x58(r29)
/* 805907EC  C0 7D 00 5C */	lfs f3, 0x5c(r29)
/* 805907F0  A8 BD 00 60 */	lha r5, 0x60(r29)
/* 805907F4  38 C0 00 01 */	li r6, 1
/* 805907F8  4B AE 35 11 */	bl request__10dAttLook_cFP10fopAc_ac_cfffsi
/* 805907FC  38 60 00 01 */	li r3, 1
/* 80590800  39 61 00 50 */	addi r11, r1, 0x50
/* 80590804  4B DD 1A 21 */	bl _restgpr_28
/* 80590808  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8059080C  7C 08 03 A6 */	mtlr r0
/* 80590810  38 21 00 50 */	addi r1, r1, 0x50
/* 80590814  4E 80 00 20 */	blr 
