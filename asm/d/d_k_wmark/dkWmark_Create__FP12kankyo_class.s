lbl_8026141C:
/* 8026141C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80261420  7C 08 02 A6 */	mflr r0
/* 80261424  90 01 00 14 */	stw r0, 0x14(r1)
/* 80261428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026142C  93 C1 00 08 */	stw r30, 8(r1)
/* 80261430  7C 7F 1B 78 */	mr r31, r3
/* 80261434  88 0D 8B B4 */	lbz r0, data_80451134(r13)
/* 80261438  7C 00 07 75 */	extsb. r0, r0
/* 8026143C  40 82 00 3C */	bne lbl_80261478
/* 80261440  C0 02 B5 B0 */	lfs f0, lit_3718(r2)
/* 80261444  3C 60 80 43 */	lis r3, data_80430C9C@ha /* 0x80430C9C@ha */
/* 80261448  D4 03 0C 9C */	stfsu f0, data_80430C9C@l(r3)  /* 0x80430C9C@l */
/* 8026144C  C0 02 B5 B4 */	lfs f0, lit_3719(r2)
/* 80261450  D0 03 00 04 */	stfs f0, 4(r3)
/* 80261454  C0 02 B5 B8 */	lfs f0, lit_3720(r2)
/* 80261458  D0 03 00 08 */	stfs f0, 8(r3)
/* 8026145C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 80261460  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 80261464  3C A0 80 43 */	lis r5, lit_3644@ha /* 0x80430C90@ha */
/* 80261468  38 A5 0C 90 */	addi r5, r5, lit_3644@l /* 0x80430C90@l */
/* 8026146C  48 10 07 B9 */	bl __register_global_object
/* 80261470  38 00 00 01 */	li r0, 1
/* 80261474  98 0D 8B B4 */	stb r0, data_80451134(r13)
lbl_80261478:
/* 80261478  28 1F 00 00 */	cmplwi r31, 0
/* 8026147C  41 82 00 34 */	beq lbl_802614B0
/* 80261480  3B DF 01 00 */	addi r30, r31, 0x100
/* 80261484  7F C3 F3 78 */	mr r3, r30
/* 80261488  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 8026148C  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 80261490  48 0C 42 35 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 80261494  38 7E 00 74 */	addi r3, r30, 0x74
/* 80261498  3C 80 80 02 */	lis r4, __ct__11J3DLightObjFv@ha /* 0x80018C0C@ha */
/* 8026149C  38 84 8C 0C */	addi r4, r4, __ct__11J3DLightObjFv@l /* 0x80018C0C@l */
/* 802614A0  38 A0 00 00 */	li r5, 0
/* 802614A4  38 C0 00 74 */	li r6, 0x74
/* 802614A8  38 E0 00 06 */	li r7, 6
/* 802614AC  48 10 08 B5 */	bl __construct_array
lbl_802614B0:
/* 802614B0  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 802614B4  54 00 84 3E */	srwi r0, r0, 0x10
/* 802614B8  B0 1F 04 8A */	sth r0, 0x48a(r31)
/* 802614BC  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 802614C0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 802614C4  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 802614C8  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 802614CC  2C 00 00 04 */	cmpwi r0, 4
/* 802614D0  41 80 00 0C */	blt lbl_802614DC
/* 802614D4  38 60 00 05 */	li r3, 5
/* 802614D8  48 00 01 50 */	b lbl_80261628
lbl_802614DC:
/* 802614DC  2C 00 00 03 */	cmpwi r0, 3
/* 802614E0  40 82 00 10 */	bne lbl_802614F0
/* 802614E4  38 00 00 02 */	li r0, 2
/* 802614E8  B0 1F 04 8E */	sth r0, 0x48e(r31)
/* 802614EC  48 00 00 08 */	b lbl_802614F4
lbl_802614F0:
/* 802614F0  B0 1F 04 8E */	sth r0, 0x48e(r31)
lbl_802614F4:
/* 802614F4  38 60 08 80 */	li r3, 0x880
/* 802614F8  38 80 00 20 */	li r4, 0x20
/* 802614FC  4B DA DB 49 */	bl mDoExt_createSolidHeapFromGameToCurrent__FUlUl
/* 80261500  90 7F 00 F8 */	stw r3, 0xf8(r31)
/* 80261504  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 80261508  28 00 00 00 */	cmplwi r0, 0
/* 8026150C  41 82 00 4C */	beq lbl_80261558
/* 80261510  3C 60 80 3A */	lis r3, d_d_k_wmark__stringBase0@ha /* 0x8039A494@ha */
/* 80261514  38 63 A4 94 */	addi r3, r3, d_d_k_wmark__stringBase0@l /* 0x8039A494@l */
/* 80261518  38 80 00 23 */	li r4, 0x23
/* 8026151C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80261520  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80261524  3C A5 00 02 */	addis r5, r5, 2
/* 80261528  38 C0 00 80 */	li r6, 0x80
/* 8026152C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80261530  4B DD AD BD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80261534  3C 80 00 08 */	lis r4, 8
/* 80261538  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8026153C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80261540  4B DB 37 15 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80261544  90 7F 00 FC */	stw r3, 0xfc(r31)
/* 80261548  4B DA DC AD */	bl mDoExt_restoreCurrentHeap__Fv
/* 8026154C  80 7F 00 F8 */	lwz r3, 0xf8(r31)
/* 80261550  4B DA DB 3D */	bl mDoExt_adjustSolidHeap__FP12JKRSolidHeap
/* 80261554  48 00 00 0C */	b lbl_80261560
lbl_80261558:
/* 80261558  38 60 00 05 */	li r3, 5
/* 8026155C  48 00 00 CC */	b lbl_80261628
lbl_80261560:
/* 80261560  80 9F 00 FC */	lwz r4, 0xfc(r31)
/* 80261564  28 04 00 00 */	cmplwi r4, 0
/* 80261568  40 82 00 0C */	bne lbl_80261574
/* 8026156C  38 60 00 05 */	li r3, 5
/* 80261570  48 00 00 B8 */	b lbl_80261628
lbl_80261574:
/* 80261574  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 80261578  2C 00 00 03 */	cmpwi r0, 3
/* 8026157C  41 82 00 38 */	beq lbl_802615B4
/* 80261580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80261584  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80261588  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8026158C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80261590  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80261594  41 82 00 20 */	beq lbl_802615B4
/* 80261598  3C 60 80 43 */	lis r3, data_80430C9C@ha /* 0x80430C9C@ha */
/* 8026159C  C4 03 0C 9C */	lfsu f0, data_80430C9C@l(r3)  /* 0x80430C9C@l */
/* 802615A0  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 802615A4  C0 03 00 04 */	lfs f0, 4(r3)
/* 802615A8  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 802615AC  C0 03 00 08 */	lfs f0, 8(r3)
/* 802615B0  D0 04 00 20 */	stfs f0, 0x20(r4)
lbl_802615B4:
/* 802615B4  7F E3 FB 78 */	mr r3, r31
/* 802615B8  48 00 01 0D */	bl setMatrix__9dkWmark_cFv
/* 802615BC  2C 03 00 00 */	cmpwi r3, 0
/* 802615C0  40 82 00 0C */	bne lbl_802615CC
/* 802615C4  38 60 00 05 */	li r3, 5
/* 802615C8  48 00 00 60 */	b lbl_80261628
lbl_802615CC:
/* 802615CC  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 802615D0  2C 00 00 01 */	cmpwi r0, 1
/* 802615D4  41 82 00 14 */	beq lbl_802615E8
/* 802615D8  2C 00 00 03 */	cmpwi r0, 3
/* 802615DC  41 82 00 0C */	beq lbl_802615E8
/* 802615E0  2C 00 00 02 */	cmpwi r0, 2
/* 802615E4  40 82 00 1C */	bne lbl_80261600
lbl_802615E8:
/* 802615E8  80 0D 8B B0 */	lwz r0, m_nowID__9dkWmark_c(r13)
/* 802615EC  90 1F 04 94 */	stw r0, 0x494(r31)
/* 802615F0  80 6D 8B B0 */	lwz r3, m_nowID__9dkWmark_c(r13)
/* 802615F4  38 03 00 01 */	addi r0, r3, 1
/* 802615F8  90 0D 8B B0 */	stw r0, m_nowID__9dkWmark_c(r13)
/* 802615FC  48 00 00 0C */	b lbl_80261608
lbl_80261600:
/* 80261600  38 00 00 01 */	li r0, 1
/* 80261604  98 1F 04 88 */	stb r0, 0x488(r31)
lbl_80261608:
/* 80261608  C0 02 B5 B4 */	lfs f0, lit_3719(r2)
/* 8026160C  D0 1F 04 90 */	stfs f0, 0x490(r31)
/* 80261610  38 7F 01 00 */	addi r3, r31, 0x100
/* 80261614  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 80261618  7C 04 07 74 */	extsb r4, r0
/* 8026161C  38 A0 00 FF */	li r5, 0xff
/* 80261620  4B F4 72 CD */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
/* 80261624  38 60 00 04 */	li r3, 4
lbl_80261628:
/* 80261628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026162C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80261630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80261634  7C 08 03 A6 */	mtlr r0
/* 80261638  38 21 00 10 */	addi r1, r1, 0x10
/* 8026163C  4E 80 00 20 */	blr 
