lbl_802463CC:
/* 802463CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802463D0  7C 08 02 A6 */	mflr r0
/* 802463D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802463D8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802463DC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 802463E0  39 61 00 20 */	addi r11, r1, 0x20
/* 802463E4  48 11 BD ED */	bl _savegpr_26
/* 802463E8  7C 7F 1B 78 */	mr r31, r3
/* 802463EC  4B FF 5C F1 */	bl __ct__14dMsgScrnBase_cFv
/* 802463F0  3C 60 80 3C */	lis r3, __vt__15dMsgScrnPlace_c@ha
/* 802463F4  38 03 12 E8 */	addi r0, r3, __vt__15dMsgScrnPlace_c@l
/* 802463F8  90 1F 00 00 */	stw r0, 0(r31)
/* 802463FC  7F E3 FB 78 */	mr r3, r31
/* 80246400  4B FF 5D 6D */	bl init__14dMsgScrnBase_cFv
/* 80246404  4B F3 B2 3D */	bl dCam_getBody__Fv
/* 80246408  80 03 09 24 */	lwz r0, 0x924(r3)
/* 8024640C  2C 00 00 00 */	cmpwi r0, 0
/* 80246410  41 82 00 30 */	beq lbl_80246440
/* 80246414  4B F3 B2 2D */	bl dCam_getBody__Fv
/* 80246418  80 03 09 24 */	lwz r0, 0x924(r3)
/* 8024641C  2C 00 00 04 */	cmpwi r0, 4
/* 80246420  41 82 00 20 */	beq lbl_80246440
/* 80246424  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 80246428  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l
/* 8024642C  C0 03 01 94 */	lfs f0, 0x194(r3)
/* 80246430  D0 1F 00 CC */	stfs f0, 0xcc(r31)
/* 80246434  C0 03 01 B4 */	lfs f0, 0x1b4(r3)
/* 80246438  D0 1F 00 D0 */	stfs f0, 0xd0(r31)
/* 8024643C  48 00 00 10 */	b lbl_8024644C
lbl_80246440:
/* 80246440  C0 02 B2 E8 */	lfs f0, lit_3998(r2)
/* 80246444  D0 1F 00 D0 */	stfs f0, 0xd0(r31)
/* 80246448  D0 1F 00 CC */	stfs f0, 0xcc(r31)
lbl_8024644C:
/* 8024644C  38 60 01 18 */	li r3, 0x118
/* 80246450  48 08 87 FD */	bl __nw__FUl
/* 80246454  7C 60 1B 79 */	or. r0, r3, r3
/* 80246458  41 82 00 0C */	beq lbl_80246464
/* 8024645C  48 0B 20 3D */	bl __ct__9J2DScreenFv
/* 80246460  7C 60 1B 78 */	mr r0, r3
lbl_80246464:
/* 80246464  90 1F 00 04 */	stw r0, 4(r31)
/* 80246468  80 7F 00 04 */	lwz r3, 4(r31)
/* 8024646C  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_place__stringBase0@ha
/* 80246470  38 84 9B 78 */	addi r4, r4, msg_scrn_d_msg_scrn_place__stringBase0@l
/* 80246474  3C A0 00 02 */	lis r5, 2
/* 80246478  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 8024647C  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l
/* 80246480  80 C6 5C 7C */	lwz r6, 0x5c7c(r6)
/* 80246484  48 0B 21 C5 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 80246488  80 7F 00 04 */	lwz r3, 4(r31)
/* 8024648C  48 00 EC 5D */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 80246490  38 60 00 6C */	li r3, 0x6c
/* 80246494  48 08 87 B9 */	bl __nw__FUl
/* 80246498  7C 60 1B 79 */	or. r0, r3, r3
/* 8024649C  41 82 00 24 */	beq lbl_802464C0
/* 802464A0  80 9F 00 04 */	lwz r4, 4(r31)
/* 802464A4  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 802464A8  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 802464AC  38 A0 00 6E */	li r5, 0x6e
/* 802464B0  38 E0 00 02 */	li r7, 2
/* 802464B4  39 00 00 00 */	li r8, 0
/* 802464B8  48 00 D4 CD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802464BC  7C 60 1B 78 */	mr r0, r3
lbl_802464C0:
/* 802464C0  90 1F 00 08 */	stw r0, 8(r31)
/* 802464C4  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 802464C8  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l
/* 802464CC  C0 24 00 BC */	lfs f1, 0xbc(r4)
/* 802464D0  80 7F 00 08 */	lwz r3, 8(r31)
/* 802464D4  80 63 00 04 */	lwz r3, 4(r3)
/* 802464D8  C0 04 00 90 */	lfs f0, 0x90(r4)
/* 802464DC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 802464E0  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 802464E4  81 83 00 00 */	lwz r12, 0(r3)
/* 802464E8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802464EC  7D 89 03 A6 */	mtctr r12
/* 802464F0  4E 80 04 21 */	bctrl 
/* 802464F4  38 60 00 6C */	li r3, 0x6c
/* 802464F8  48 08 87 55 */	bl __nw__FUl
/* 802464FC  7C 60 1B 79 */	or. r0, r3, r3
/* 80246500  41 82 00 28 */	beq lbl_80246528
/* 80246504  80 9F 00 04 */	lwz r4, 4(r31)
/* 80246508  3C A0 6E 74 */	lis r5, 0x6E74 /* 0x6E745F6E@ha */
/* 8024650C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6E745F6E@l */
/* 80246510  3C A0 73 5F */	lis r5, 0x735F /* 0x735F666F@ha */
/* 80246514  38 A5 66 6F */	addi r5, r5, 0x666F /* 0x735F666F@l */
/* 80246518  38 E0 00 00 */	li r7, 0
/* 8024651C  39 00 00 00 */	li r8, 0
/* 80246520  48 00 D4 65 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80246524  7C 60 1B 78 */	mr r0, r3
lbl_80246528:
/* 80246528  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8024652C  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 80246530  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l
/* 80246534  C0 24 01 A4 */	lfs f1, 0x1a4(r4)
/* 80246538  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 8024653C  80 63 00 04 */	lwz r3, 4(r3)
/* 80246540  C0 04 01 9C */	lfs f0, 0x19c(r4)
/* 80246544  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80246548  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 8024654C  81 83 00 00 */	lwz r12, 0(r3)
/* 80246550  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80246554  7D 89 03 A6 */	mtctr r12
/* 80246558  4E 80 04 21 */	bctrl 
/* 8024655C  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 80246560  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha
/* 80246564  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l
/* 80246568  C0 24 01 8C */	lfs f1, 0x18c(r4)
/* 8024656C  C0 44 01 94 */	lfs f2, 0x194(r4)
/* 80246570  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80246574  EC 42 00 28 */	fsubs f2, f2, f0
/* 80246578  48 00 E0 39 */	bl paneTrans__8CPaneMgrFff
/* 8024657C  38 60 00 6C */	li r3, 0x6c
/* 80246580  48 08 86 CD */	bl __nw__FUl
/* 80246584  7C 60 1B 79 */	or. r0, r3, r3
/* 80246588  41 82 00 24 */	beq lbl_802465AC
/* 8024658C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80246590  3C A0 73 65 */	lis r5, 0x7365 /* 0x73655F6E@ha */
/* 80246594  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x73655F6E@l */
/* 80246598  38 A0 62 61 */	li r5, 0x6261
/* 8024659C  38 E0 00 02 */	li r7, 2
/* 802465A0  39 00 00 00 */	li r8, 0
/* 802465A4  48 00 D3 E1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802465A8  7C 60 1B 78 */	mr r0, r3
lbl_802465AC:
/* 802465AC  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 802465B0  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha
/* 802465B4  38 83 02 8C */	addi r4, r3, g_MsgObject_HIO_c@l
/* 802465B8  C0 24 01 C4 */	lfs f1, 0x1c4(r4)
/* 802465BC  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 802465C0  80 63 00 04 */	lwz r3, 4(r3)
/* 802465C4  C0 04 01 BC */	lfs f0, 0x1bc(r4)
/* 802465C8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 802465CC  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 802465D0  81 83 00 00 */	lwz r12, 0(r3)
/* 802465D4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802465D8  7D 89 03 A6 */	mtctr r12
/* 802465DC  4E 80 04 21 */	bctrl 
/* 802465E0  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 802465E4  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha
/* 802465E8  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l
/* 802465EC  C0 24 01 AC */	lfs f1, 0x1ac(r4)
/* 802465F0  C0 44 01 B4 */	lfs f2, 0x1b4(r4)
/* 802465F4  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 802465F8  EC 42 00 28 */	fsubs f2, f2, f0
/* 802465FC  48 00 DF B5 */	bl paneTrans__8CPaneMgrFff
/* 80246600  3B C0 00 00 */	li r30, 0
/* 80246604  3B A0 00 00 */	li r29, 0
/* 80246608  3B 80 00 00 */	li r28, 0
/* 8024660C  3C 60 80 3A */	lis r3, msg_scrn_d_msg_scrn_place__stringBase0@ha
/* 80246610  3B 63 9B 78 */	addi r27, r3, msg_scrn_d_msg_scrn_place__stringBase0@l
/* 80246614  C3 E2 B2 EC */	lfs f31, lit_3999(r2)
lbl_80246618:
/* 80246618  38 60 00 6C */	li r3, 0x6c
/* 8024661C  48 08 86 31 */	bl __nw__FUl
/* 80246620  7C 64 1B 79 */	or. r4, r3, r3
/* 80246624  41 82 00 2C */	beq lbl_80246650
/* 80246628  80 9F 00 04 */	lwz r4, 4(r31)
/* 8024662C  3C A0 80 3C */	lis r5, t_tag@ha
/* 80246630  38 05 12 B0 */	addi r0, r5, t_tag@l
/* 80246634  7C C0 E2 14 */	add r6, r0, r28
/* 80246638  80 A6 00 00 */	lwz r5, 0(r6)
/* 8024663C  80 C6 00 04 */	lwz r6, 4(r6)
/* 80246640  38 E0 00 00 */	li r7, 0
/* 80246644  39 00 00 00 */	li r8, 0
/* 80246648  48 00 D3 3D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8024664C  7C 64 1B 78 */	mr r4, r3
lbl_80246650:
/* 80246650  38 1D 00 0C */	addi r0, r29, 0xc
/* 80246654  7C 9F 01 2E */	stwx r4, r31, r0
/* 80246658  7C 7F 00 2E */	lwzx r3, r31, r0
/* 8024665C  83 43 00 04 */	lwz r26, 4(r3)
/* 80246660  4B DC E4 A5 */	bl mDoExt_getRubyFont__Fv
/* 80246664  7C 64 1B 78 */	mr r4, r3
/* 80246668  7F 43 D3 78 */	mr r3, r26
/* 8024666C  81 9A 00 00 */	lwz r12, 0(r26)
/* 80246670  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80246674  7D 89 03 A6 */	mtctr r12
/* 80246678  4E 80 04 21 */	bctrl 
/* 8024667C  38 1D 00 0C */	addi r0, r29, 0xc
/* 80246680  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80246684  80 63 00 04 */	lwz r3, 4(r3)
/* 80246688  38 80 00 80 */	li r4, 0x80
/* 8024668C  38 BB 00 1E */	addi r5, r27, 0x1e
/* 80246690  4C C6 31 82 */	crclr 6
/* 80246694  48 0B A0 B9 */	bl setString__10J2DTextBoxFsPCce
/* 80246698  38 1D 00 0C */	addi r0, r29, 0xc
/* 8024669C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 802466A0  80 63 00 04 */	lwz r3, 4(r3)
/* 802466A4  D3 E3 01 14 */	stfs f31, 0x114(r3)
/* 802466A8  3B DE 00 01 */	addi r30, r30, 1
/* 802466AC  2C 1E 00 07 */	cmpwi r30, 7
/* 802466B0  3B BD 00 04 */	addi r29, r29, 4
/* 802466B4  3B 9C 00 08 */	addi r28, r28, 8
/* 802466B8  41 80 FF 60 */	blt lbl_80246618
/* 802466BC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802466C0  80 63 00 04 */	lwz r3, 4(r3)
/* 802466C4  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 802466C8  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 802466CC  C0 03 01 20 */	lfs f0, 0x120(r3)
/* 802466D0  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 802466D4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802466D8  80 63 00 04 */	lwz r3, 4(r3)
/* 802466DC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 802466E0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802466E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 802466E8  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 802466EC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802466F0  80 63 00 04 */	lwz r3, 4(r3)
/* 802466F4  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 802466F8  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802466FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80246700  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 80246704  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80246708  80 63 00 04 */	lwz r3, 4(r3)
/* 8024670C  C0 03 01 18 */	lfs f0, 0x118(r3)
/* 80246710  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 80246714  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80246718  80 63 00 04 */	lwz r3, 4(r3)
/* 8024671C  C0 03 01 14 */	lfs f0, 0x114(r3)
/* 80246720  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80246724  3B 40 00 00 */	li r26, 0
/* 80246728  3B C0 00 00 */	li r30, 0
/* 8024672C  C3 E2 B2 F0 */	lfs f31, lit_4000(r2)
lbl_80246730:
/* 80246730  38 1E 00 0C */	addi r0, r30, 0xc
/* 80246734  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80246738  80 63 00 04 */	lwz r3, 4(r3)
/* 8024673C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80246740  D0 03 01 18 */	stfs f0, 0x118(r3)
/* 80246744  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80246748  80 63 00 04 */	lwz r3, 4(r3)
/* 8024674C  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80246750  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80246754  EC 41 00 28 */	fsubs f2, f1, f0
/* 80246758  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8024675C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80246760  EC 01 00 28 */	fsubs f0, f1, f0
/* 80246764  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80246768  81 83 00 00 */	lwz r12, 0(r3)
/* 8024676C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80246770  7D 89 03 A6 */	mtctr r12
/* 80246774  4E 80 04 21 */	bctrl 
/* 80246778  3B 5A 00 01 */	addi r26, r26, 1
/* 8024677C  2C 1A 00 07 */	cmpwi r26, 7
/* 80246780  3B DE 00 04 */	addi r30, r30, 4
/* 80246784  41 80 FF AC */	blt lbl_80246730
/* 80246788  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8024678C  48 00 DB 5D */	bl getGlobalPosX__8CPaneMgrFv
/* 80246790  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 80246794  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80246798  48 00 DB CD */	bl getGlobalPosY__8CPaneMgrFv
/* 8024679C  D0 3F 00 68 */	stfs f1, 0x68(r31)
/* 802467A0  7F E3 FB 78 */	mr r3, r31
/* 802467A4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 802467A8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802467AC  39 61 00 20 */	addi r11, r1, 0x20
/* 802467B0  48 11 BA 6D */	bl _restgpr_26
/* 802467B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802467B8  7C 08 03 A6 */	mtlr r0
/* 802467BC  38 21 00 30 */	addi r1, r1, 0x30
/* 802467C0  4E 80 00 20 */	blr 
