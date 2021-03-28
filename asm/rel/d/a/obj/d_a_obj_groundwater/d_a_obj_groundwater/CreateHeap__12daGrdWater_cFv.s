lbl_80C13618:
/* 80C13618  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C1361C  7C 08 02 A6 */	mflr r0
/* 80C13620  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C13624  39 61 00 20 */	addi r11, r1, 0x20
/* 80C13628  4B 74 EB B4 */	b _savegpr_29
/* 80C1362C  7C 7E 1B 78 */	mr r30, r3
/* 80C13630  3C 60 80 C1 */	lis r3, stringBase0@ha
/* 80C13634  38 63 49 F4 */	addi r3, r3, stringBase0@l
/* 80C13638  38 80 00 12 */	li r4, 0x12
/* 80C1363C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C13640  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C13644  3F E5 00 02 */	addis r31, r5, 2
/* 80C13648  3B FF C2 F8 */	addi r31, r31, -15624
/* 80C1364C  7F E5 FB 78 */	mr r5, r31
/* 80C13650  38 C0 00 80 */	li r6, 0x80
/* 80C13654  4B 42 8C 98 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C13658  7C 7D 1B 78 */	mr r29, r3
/* 80C1365C  3C 80 00 08 */	lis r4, 8
/* 80C13660  3C A0 19 00 */	lis r5, 0x1900 /* 0x19000284@ha */
/* 80C13664  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x19000284@l */
/* 80C13668  4B 40 15 EC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C1366C  90 7E 05 AC */	stw r3, 0x5ac(r30)
/* 80C13670  80 1E 05 AC */	lwz r0, 0x5ac(r30)
/* 80C13674  28 00 00 00 */	cmplwi r0, 0
/* 80C13678  40 82 00 0C */	bne lbl_80C13684
/* 80C1367C  38 60 00 00 */	li r3, 0
/* 80C13680  48 00 03 4C */	b lbl_80C139CC
lbl_80C13684:
/* 80C13684  3C 60 80 C1 */	lis r3, stringBase0@ha
/* 80C13688  38 63 49 F4 */	addi r3, r3, stringBase0@l
/* 80C1368C  38 80 00 1A */	li r4, 0x1a
/* 80C13690  7F E5 FB 78 */	mr r5, r31
/* 80C13694  38 C0 00 80 */	li r6, 0x80
/* 80C13698  4B 42 8C 54 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C1369C  7C 65 1B 78 */	mr r5, r3
/* 80C136A0  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80C136A4  38 9D 00 58 */	addi r4, r29, 0x58
/* 80C136A8  38 C0 00 01 */	li r6, 1
/* 80C136AC  38 E0 00 02 */	li r7, 2
/* 80C136B0  3D 00 80 C1 */	lis r8, lit_3712@ha
/* 80C136B4  C0 28 49 E4 */	lfs f1, lit_3712@l(r8)
/* 80C136B8  39 00 00 00 */	li r8, 0
/* 80C136BC  39 20 FF FF */	li r9, -1
/* 80C136C0  4B 3F 9F 7C */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C136C4  3C 60 80 C1 */	lis r3, stringBase0@ha
/* 80C136C8  38 63 49 F4 */	addi r3, r3, stringBase0@l
/* 80C136CC  38 80 00 0A */	li r4, 0xa
/* 80C136D0  7F E5 FB 78 */	mr r5, r31
/* 80C136D4  38 C0 00 80 */	li r6, 0x80
/* 80C136D8  4B 42 8C 14 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C136DC  7C 64 1B 78 */	mr r4, r3
/* 80C136E0  38 7E 06 80 */	addi r3, r30, 0x680
/* 80C136E4  38 A0 00 01 */	li r5, 1
/* 80C136E8  38 C0 00 00 */	li r6, 0
/* 80C136EC  3C E0 80 C1 */	lis r7, lit_3712@ha
/* 80C136F0  C0 27 49 E4 */	lfs f1, lit_3712@l(r7)
/* 80C136F4  38 E0 00 00 */	li r7, 0
/* 80C136F8  39 00 FF FF */	li r8, -1
/* 80C136FC  39 20 00 00 */	li r9, 0
/* 80C13700  4B 3F A0 DC */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C13704  3C 60 80 C1 */	lis r3, stringBase0@ha
/* 80C13708  38 63 49 F4 */	addi r3, r3, stringBase0@l
/* 80C1370C  38 80 00 09 */	li r4, 9
/* 80C13710  7F E5 FB 78 */	mr r5, r31
/* 80C13714  38 C0 00 80 */	li r6, 0x80
/* 80C13718  4B 42 8B D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C1371C  7C 64 1B 78 */	mr r4, r3
/* 80C13720  38 7E 06 9C */	addi r3, r30, 0x69c
/* 80C13724  38 A0 00 01 */	li r5, 1
/* 80C13728  38 C0 00 00 */	li r6, 0
/* 80C1372C  3C E0 80 C1 */	lis r7, lit_3712@ha
/* 80C13730  C0 27 49 E4 */	lfs f1, lit_3712@l(r7)
/* 80C13734  38 E0 00 00 */	li r7, 0
/* 80C13738  39 00 FF FF */	li r8, -1
/* 80C1373C  39 20 00 00 */	li r9, 0
/* 80C13740  4B 3F A0 9C */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C13744  3C 60 80 C1 */	lis r3, stringBase0@ha
/* 80C13748  38 63 49 F4 */	addi r3, r3, stringBase0@l
/* 80C1374C  38 80 00 0C */	li r4, 0xc
/* 80C13750  7F E5 FB 78 */	mr r5, r31
/* 80C13754  38 C0 00 80 */	li r6, 0x80
/* 80C13758  4B 42 8B 94 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C1375C  7C 64 1B 78 */	mr r4, r3
/* 80C13760  38 7E 06 B8 */	addi r3, r30, 0x6b8
/* 80C13764  38 A0 00 01 */	li r5, 1
/* 80C13768  38 C0 00 00 */	li r6, 0
/* 80C1376C  3C E0 80 C1 */	lis r7, lit_3712@ha
/* 80C13770  C0 27 49 E4 */	lfs f1, lit_3712@l(r7)
/* 80C13774  38 E0 00 00 */	li r7, 0
/* 80C13778  39 00 FF FF */	li r8, -1
/* 80C1377C  39 20 00 00 */	li r9, 0
/* 80C13780  4B 3F A0 5C */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C13784  3C 60 80 C1 */	lis r3, stringBase0@ha
/* 80C13788  38 63 49 F4 */	addi r3, r3, stringBase0@l
/* 80C1378C  38 80 00 0B */	li r4, 0xb
/* 80C13790  7F E5 FB 78 */	mr r5, r31
/* 80C13794  38 C0 00 80 */	li r6, 0x80
/* 80C13798  4B 42 8B 54 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C1379C  7C 64 1B 78 */	mr r4, r3
/* 80C137A0  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 80C137A4  38 A0 00 01 */	li r5, 1
/* 80C137A8  38 C0 00 00 */	li r6, 0
/* 80C137AC  3C E0 80 C1 */	lis r7, lit_3712@ha
/* 80C137B0  C0 27 49 E4 */	lfs f1, lit_3712@l(r7)
/* 80C137B4  38 E0 00 00 */	li r7, 0
/* 80C137B8  39 00 FF FF */	li r8, -1
/* 80C137BC  39 20 00 00 */	li r9, 0
/* 80C137C0  4B 3F A0 1C */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C137C4  3C 60 80 C1 */	lis r3, stringBase0@ha
/* 80C137C8  38 63 49 F4 */	addi r3, r3, stringBase0@l
/* 80C137CC  38 80 00 11 */	li r4, 0x11
/* 80C137D0  7F E5 FB 78 */	mr r5, r31
/* 80C137D4  38 C0 00 80 */	li r6, 0x80
/* 80C137D8  4B 42 8B 14 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C137DC  7C 7D 1B 78 */	mr r29, r3
/* 80C137E0  3C 80 00 08 */	lis r4, 8
/* 80C137E4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C137E8  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C137EC  4B 40 14 68 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C137F0  90 7E 05 A8 */	stw r3, 0x5a8(r30)
/* 80C137F4  80 1E 05 A8 */	lwz r0, 0x5a8(r30)
/* 80C137F8  28 00 00 00 */	cmplwi r0, 0
/* 80C137FC  40 82 00 0C */	bne lbl_80C13808
/* 80C13800  38 60 00 00 */	li r3, 0
/* 80C13804  48 00 01 C8 */	b lbl_80C139CC
lbl_80C13808:
/* 80C13808  3C 60 80 C1 */	lis r3, stringBase0@ha
/* 80C1380C  38 63 49 F4 */	addi r3, r3, stringBase0@l
/* 80C13810  38 80 00 19 */	li r4, 0x19
/* 80C13814  7F E5 FB 78 */	mr r5, r31
/* 80C13818  38 C0 00 80 */	li r6, 0x80
/* 80C1381C  4B 42 8A D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C13820  7C 65 1B 78 */	mr r5, r3
/* 80C13824  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80C13828  38 9D 00 58 */	addi r4, r29, 0x58
/* 80C1382C  38 C0 00 01 */	li r6, 1
/* 80C13830  38 E0 00 02 */	li r7, 2
/* 80C13834  3D 00 80 C1 */	lis r8, lit_3712@ha
/* 80C13838  C0 28 49 E4 */	lfs f1, lit_3712@l(r8)
/* 80C1383C  39 00 00 00 */	li r8, 0
/* 80C13840  39 20 FF FF */	li r9, -1
/* 80C13844  4B 3F 9D F8 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C13848  3C 60 80 C1 */	lis r3, stringBase0@ha
/* 80C1384C  38 63 49 F4 */	addi r3, r3, stringBase0@l
/* 80C13850  38 80 00 15 */	li r4, 0x15
/* 80C13854  7F E5 FB 78 */	mr r5, r31
/* 80C13858  38 C0 00 80 */	li r6, 0x80
/* 80C1385C  4B 42 8A 90 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C13860  7C 65 1B 78 */	mr r5, r3
/* 80C13864  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80C13868  38 9D 00 58 */	addi r4, r29, 0x58
/* 80C1386C  38 C0 00 01 */	li r6, 1
/* 80C13870  38 E0 00 00 */	li r7, 0
/* 80C13874  3D 00 80 C1 */	lis r8, lit_3712@ha
/* 80C13878  C0 28 49 E4 */	lfs f1, lit_3712@l(r8)
/* 80C1387C  39 00 00 00 */	li r8, 0
/* 80C13880  39 20 FF FF */	li r9, -1
/* 80C13884  4B 3F 9E 88 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C13888  3C 60 80 C1 */	lis r3, stringBase0@ha
/* 80C1388C  38 63 49 F4 */	addi r3, r3, stringBase0@l
/* 80C13890  38 80 00 16 */	li r4, 0x16
/* 80C13894  7F E5 FB 78 */	mr r5, r31
/* 80C13898  38 C0 00 80 */	li r6, 0x80
/* 80C1389C  4B 42 8A 50 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C138A0  7C 65 1B 78 */	mr r5, r3
/* 80C138A4  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80C138A8  38 9D 00 58 */	addi r4, r29, 0x58
/* 80C138AC  38 C0 00 01 */	li r6, 1
/* 80C138B0  38 E0 00 00 */	li r7, 0
/* 80C138B4  3D 00 80 C1 */	lis r8, lit_3712@ha
/* 80C138B8  C0 28 49 E4 */	lfs f1, lit_3712@l(r8)
/* 80C138BC  39 00 00 00 */	li r8, 0
/* 80C138C0  39 20 FF FF */	li r9, -1
/* 80C138C4  4B 3F 9E 48 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C138C8  3C 60 80 C1 */	lis r3, stringBase0@ha
/* 80C138CC  38 63 49 F4 */	addi r3, r3, stringBase0@l
/* 80C138D0  38 80 00 08 */	li r4, 8
/* 80C138D4  7F E5 FB 78 */	mr r5, r31
/* 80C138D8  38 C0 00 80 */	li r6, 0x80
/* 80C138DC  4B 42 8A 10 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C138E0  7C 64 1B 78 */	mr r4, r3
/* 80C138E4  38 7E 06 10 */	addi r3, r30, 0x610
/* 80C138E8  38 A0 00 01 */	li r5, 1
/* 80C138EC  38 C0 00 00 */	li r6, 0
/* 80C138F0  3C E0 80 C1 */	lis r7, lit_3712@ha
/* 80C138F4  C0 27 49 E4 */	lfs f1, lit_3712@l(r7)
/* 80C138F8  38 E0 00 00 */	li r7, 0
/* 80C138FC  39 00 FF FF */	li r8, -1
/* 80C13900  39 20 00 00 */	li r9, 0
/* 80C13904  4B 3F 9E D8 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C13908  3C 60 80 C1 */	lis r3, stringBase0@ha
/* 80C1390C  38 63 49 F4 */	addi r3, r3, stringBase0@l
/* 80C13910  38 80 00 07 */	li r4, 7
/* 80C13914  7F E5 FB 78 */	mr r5, r31
/* 80C13918  38 C0 00 80 */	li r6, 0x80
/* 80C1391C  4B 42 89 D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C13920  7C 64 1B 78 */	mr r4, r3
/* 80C13924  38 7E 06 2C */	addi r3, r30, 0x62c
/* 80C13928  38 A0 00 01 */	li r5, 1
/* 80C1392C  38 C0 00 00 */	li r6, 0
/* 80C13930  3C E0 80 C1 */	lis r7, lit_3712@ha
/* 80C13934  C0 27 49 E4 */	lfs f1, lit_3712@l(r7)
/* 80C13938  38 E0 00 00 */	li r7, 0
/* 80C1393C  39 00 FF FF */	li r8, -1
/* 80C13940  39 20 00 00 */	li r9, 0
/* 80C13944  4B 3F 9E 98 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C13948  3C 60 80 C1 */	lis r3, stringBase0@ha
/* 80C1394C  38 63 49 F4 */	addi r3, r3, stringBase0@l
/* 80C13950  38 80 00 0E */	li r4, 0xe
/* 80C13954  7F E5 FB 78 */	mr r5, r31
/* 80C13958  38 C0 00 80 */	li r6, 0x80
/* 80C1395C  4B 42 89 90 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C13960  7C 64 1B 78 */	mr r4, r3
/* 80C13964  38 7E 06 48 */	addi r3, r30, 0x648
/* 80C13968  38 A0 00 01 */	li r5, 1
/* 80C1396C  38 C0 00 00 */	li r6, 0
/* 80C13970  3C E0 80 C1 */	lis r7, lit_3712@ha
/* 80C13974  C0 27 49 E4 */	lfs f1, lit_3712@l(r7)
/* 80C13978  38 E0 00 00 */	li r7, 0
/* 80C1397C  39 00 FF FF */	li r8, -1
/* 80C13980  39 20 00 00 */	li r9, 0
/* 80C13984  4B 3F 9E 58 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C13988  3C 60 80 C1 */	lis r3, stringBase0@ha
/* 80C1398C  38 63 49 F4 */	addi r3, r3, stringBase0@l
/* 80C13990  38 80 00 0D */	li r4, 0xd
/* 80C13994  7F E5 FB 78 */	mr r5, r31
/* 80C13998  38 C0 00 80 */	li r6, 0x80
/* 80C1399C  4B 42 89 50 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C139A0  7C 64 1B 78 */	mr r4, r3
/* 80C139A4  38 7E 06 64 */	addi r3, r30, 0x664
/* 80C139A8  38 A0 00 01 */	li r5, 1
/* 80C139AC  38 C0 00 00 */	li r6, 0
/* 80C139B0  3C E0 80 C1 */	lis r7, lit_3712@ha
/* 80C139B4  C0 27 49 E4 */	lfs f1, lit_3712@l(r7)
/* 80C139B8  38 E0 00 00 */	li r7, 0
/* 80C139BC  39 00 FF FF */	li r8, -1
/* 80C139C0  39 20 00 00 */	li r9, 0
/* 80C139C4  4B 3F 9E 18 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C139C8  38 60 00 01 */	li r3, 1
lbl_80C139CC:
/* 80C139CC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C139D0  4B 74 E8 58 */	b _restgpr_29
/* 80C139D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C139D8  7C 08 03 A6 */	mtlr r0
/* 80C139DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C139E0  4E 80 00 20 */	blr 
