lbl_801BE328:
/* 801BE328  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801BE32C  7C 08 02 A6 */	mflr r0
/* 801BE330  90 01 00 64 */	stw r0, 0x64(r1)
/* 801BE334  39 61 00 60 */	addi r11, r1, 0x60
/* 801BE338  48 1A 3E 9D */	bl _savegpr_27
/* 801BE33C  7C 7B 1B 78 */	mr r27, r3
/* 801BE340  3B A0 00 00 */	li r29, 0
/* 801BE344  3B 80 00 00 */	li r28, 0
/* 801BE348  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801BE34C  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801BE350  AB C3 00 94 */	lha r30, 0x94(r3)
/* 801BE354  AB E3 00 96 */	lha r31, 0x96(r3)
/* 801BE358  38 00 00 00 */	li r0, 0
/* 801BE35C  90 1B 01 00 */	stw r0, 0x100(r27)
/* 801BE360  80 1B 00 E4 */	lwz r0, 0xe4(r27)
/* 801BE364  28 00 00 00 */	cmplwi r0, 0
/* 801BE368  40 82 00 A8 */	bne lbl_801BE410
/* 801BE36C  80 1B 00 E0 */	lwz r0, 0xe0(r27)
/* 801BE370  28 00 00 00 */	cmplwi r0, 0
/* 801BE374  40 82 00 24 */	bne lbl_801BE398
/* 801BE378  4B E5 0A B9 */	bl mDoExt_getJ2dHeap__Fv
/* 801BE37C  7C 65 1B 78 */	mr r5, r3
/* 801BE380  3C 60 80 39 */	lis r3, d_menu_d_menu_dmap__stringBase0@ha /* 0x80395760@ha */
/* 801BE384  38 63 57 60 */	addi r3, r3, d_menu_d_menu_dmap__stringBase0@l /* 0x80395760@l */
/* 801BE388  38 63 00 C6 */	addi r3, r3, 0xc6
/* 801BE38C  38 80 00 02 */	li r4, 2
/* 801BE390  4B E5 7A 85 */	bl create__24mDoDvdThd_mountArchive_cFPCcUcP7JKRHeap
/* 801BE394  90 7B 00 E0 */	stw r3, 0xe0(r27)
lbl_801BE398:
/* 801BE398  80 7B 00 E0 */	lwz r3, 0xe0(r27)
/* 801BE39C  88 03 00 0C */	lbz r0, 0xc(r3)
/* 801BE3A0  2C 00 00 00 */	cmpwi r0, 0
/* 801BE3A4  41 82 00 64 */	beq lbl_801BE408
/* 801BE3A8  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 801BE3AC  90 1B 00 E4 */	stw r0, 0xe4(r27)
/* 801BE3B0  80 7B 00 E0 */	lwz r3, 0xe0(r27)
/* 801BE3B4  28 03 00 00 */	cmplwi r3, 0
/* 801BE3B8  41 82 00 18 */	beq lbl_801BE3D0
/* 801BE3BC  38 80 00 01 */	li r4, 1
/* 801BE3C0  81 83 00 10 */	lwz r12, 0x10(r3)
/* 801BE3C4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801BE3C8  7D 89 03 A6 */	mtctr r12
/* 801BE3CC  4E 80 04 21 */	bctrl 
lbl_801BE3D0:
/* 801BE3D0  38 00 00 00 */	li r0, 0
/* 801BE3D4  90 1B 00 E0 */	stw r0, 0xe0(r27)
/* 801BE3D8  80 7B 00 E4 */	lwz r3, 0xe4(r27)
/* 801BE3DC  3C 80 80 39 */	lis r4, d_menu_d_menu_dmap__stringBase0@ha /* 0x80395760@ha */
/* 801BE3E0  38 84 57 60 */	addi r4, r4, d_menu_d_menu_dmap__stringBase0@l /* 0x80395760@l */
/* 801BE3E4  38 84 00 DE */	addi r4, r4, 0xde
/* 801BE3E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801BE3EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801BE3F0  7D 89 03 A6 */	mtctr r12
/* 801BE3F4  4E 80 04 21 */	bctrl 
/* 801BE3F8  90 7B 01 00 */	stw r3, 0x100(r27)
/* 801BE3FC  7F 63 DB 78 */	mr r3, r27
/* 801BE400  4B FF F3 C1 */	bl _create__12dMenu_Dmap_cFv
/* 801BE404  48 00 00 0C */	b lbl_801BE410
lbl_801BE408:
/* 801BE408  38 60 00 00 */	li r3, 0
/* 801BE40C  48 00 02 4C */	b lbl_801BE658
lbl_801BE410:
/* 801BE410  A8 1B 01 64 */	lha r0, 0x164(r27)
/* 801BE414  2C 00 00 00 */	cmpwi r0, 0
/* 801BE418  40 82 00 08 */	bne lbl_801BE420
/* 801BE41C  3B 80 00 01 */	li r28, 1
lbl_801BE420:
/* 801BE420  A8 7B 01 64 */	lha r3, 0x164(r27)
/* 801BE424  38 03 00 01 */	addi r0, r3, 1
/* 801BE428  B0 1B 01 64 */	sth r0, 0x164(r27)
/* 801BE42C  A8 1B 01 64 */	lha r0, 0x164(r27)
/* 801BE430  C8 42 A5 F8 */	lfd f2, lit_4108(r2)
/* 801BE434  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BE438  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801BE43C  3C 60 43 30 */	lis r3, 0x4330
/* 801BE440  90 61 00 38 */	stw r3, 0x38(r1)
/* 801BE444  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 801BE448  EC 20 10 28 */	fsubs f1, f0, f2
/* 801BE44C  7F C0 07 34 */	extsh r0, r30
/* 801BE450  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801BE454  90 01 00 44 */	stw r0, 0x44(r1)
/* 801BE458  90 61 00 40 */	stw r3, 0x40(r1)
/* 801BE45C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801BE460  EC 00 10 28 */	fsubs f0, f0, f2
/* 801BE464  EC 41 00 24 */	fdivs f2, f1, f0
/* 801BE468  88 1B 01 7A */	lbz r0, 0x17a(r27)
/* 801BE46C  28 00 00 01 */	cmplwi r0, 1
/* 801BE470  40 82 00 24 */	bne lbl_801BE494
/* 801BE474  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801BE478  EC 20 10 28 */	fsubs f1, f0, f2
/* 801BE47C  C0 02 A6 44 */	lfs f0, lit_4926(r2)
/* 801BE480  EC 01 00 32 */	fmuls f0, f1, f0
/* 801BE484  D0 1B 01 04 */	stfs f0, 0x104(r27)
/* 801BE488  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BE48C  D0 1B 01 08 */	stfs f0, 0x108(r27)
/* 801BE490  48 00 00 78 */	b lbl_801BE508
lbl_801BE494:
/* 801BE494  28 00 00 03 */	cmplwi r0, 3
/* 801BE498  40 82 00 24 */	bne lbl_801BE4BC
/* 801BE49C  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801BE4A0  EC 20 10 28 */	fsubs f1, f0, f2
/* 801BE4A4  C0 02 A6 24 */	lfs f0, lit_4784(r2)
/* 801BE4A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801BE4AC  D0 1B 01 04 */	stfs f0, 0x104(r27)
/* 801BE4B0  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BE4B4  D0 1B 01 08 */	stfs f0, 0x108(r27)
/* 801BE4B8  48 00 00 50 */	b lbl_801BE508
lbl_801BE4BC:
/* 801BE4BC  28 00 00 02 */	cmplwi r0, 2
/* 801BE4C0  40 82 00 24 */	bne lbl_801BE4E4
/* 801BE4C4  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BE4C8  D0 1B 01 04 */	stfs f0, 0x104(r27)
/* 801BE4CC  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801BE4D0  EC 20 10 28 */	fsubs f1, f0, f2
/* 801BE4D4  C0 02 A6 48 */	lfs f0, lit_4927(r2)
/* 801BE4D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801BE4DC  D0 1B 01 08 */	stfs f0, 0x108(r27)
/* 801BE4E0  48 00 00 28 */	b lbl_801BE508
lbl_801BE4E4:
/* 801BE4E4  28 00 00 00 */	cmplwi r0, 0
/* 801BE4E8  40 82 00 20 */	bne lbl_801BE508
/* 801BE4EC  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BE4F0  D0 1B 01 04 */	stfs f0, 0x104(r27)
/* 801BE4F4  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801BE4F8  EC 20 10 28 */	fsubs f1, f0, f2
/* 801BE4FC  C0 02 A6 28 */	lfs f0, lit_4785(r2)
/* 801BE500  EC 01 00 32 */	fmuls f0, f1, f0
/* 801BE504  D0 1B 01 08 */	stfs f0, 0x108(r27)
lbl_801BE508:
/* 801BE508  D0 5B 01 0C */	stfs f2, 0x10c(r27)
/* 801BE50C  88 1B 01 7B */	lbz r0, 0x17b(r27)
/* 801BE510  28 00 00 00 */	cmplwi r0, 0
/* 801BE514  40 82 00 78 */	bne lbl_801BE58C
/* 801BE518  88 1B 01 77 */	lbz r0, 0x177(r27)
/* 801BE51C  54 00 10 3A */	slwi r0, r0, 2
/* 801BE520  7C 7B 02 14 */	add r3, r27, r0
/* 801BE524  80 83 00 7C */	lwz r4, 0x7c(r3)
/* 801BE528  38 61 00 14 */	addi r3, r1, 0x14
/* 801BE52C  80 A4 00 04 */	lwz r5, 4(r4)
/* 801BE530  38 C0 00 00 */	li r6, 0
/* 801BE534  38 E0 00 00 */	li r7, 0
/* 801BE538  48 09 69 85 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801BE53C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801BE540  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801BE544  90 61 00 2C */	stw r3, 0x2c(r1)
/* 801BE548  90 01 00 30 */	stw r0, 0x30(r1)
/* 801BE54C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801BE550  90 01 00 34 */	stw r0, 0x34(r1)
/* 801BE554  88 1B 01 77 */	lbz r0, 0x177(r27)
/* 801BE558  54 00 10 3A */	slwi r0, r0, 2
/* 801BE55C  7C 7B 02 14 */	add r3, r27, r0
/* 801BE560  80 63 00 7C */	lwz r3, 0x7c(r3)
/* 801BE564  80 83 00 04 */	lwz r4, 4(r3)
/* 801BE568  80 7B 00 08 */	lwz r3, 8(r27)
/* 801BE56C  80 63 0C C0 */	lwz r3, 0xcc0(r3)
/* 801BE570  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 801BE574  C0 1B 01 04 */	lfs f0, 0x104(r27)
/* 801BE578  EC 21 00 2A */	fadds f1, f1, f0
/* 801BE57C  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 801BE580  38 A0 00 00 */	li r5, 0
/* 801BE584  4B FD 6B 71 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 801BE588  48 00 00 84 */	b lbl_801BE60C
lbl_801BE58C:
/* 801BE58C  7F 63 DB 78 */	mr r3, r27
/* 801BE590  4B FF EC 59 */	bl getDefaultCurFloorPos__12dMenu_Dmap_cFv
/* 801BE594  7C 60 07 74 */	extsb r0, r3
/* 801BE598  54 00 10 3A */	slwi r0, r0, 2
/* 801BE59C  7C 7B 02 14 */	add r3, r27, r0
/* 801BE5A0  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801BE5A4  38 61 00 08 */	addi r3, r1, 8
/* 801BE5A8  80 A4 00 04 */	lwz r5, 4(r4)
/* 801BE5AC  38 C0 00 00 */	li r6, 0
/* 801BE5B0  38 E0 00 00 */	li r7, 0
/* 801BE5B4  48 09 69 09 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801BE5B8  80 61 00 08 */	lwz r3, 8(r1)
/* 801BE5BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801BE5C0  90 61 00 20 */	stw r3, 0x20(r1)
/* 801BE5C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801BE5C8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801BE5CC  90 01 00 28 */	stw r0, 0x28(r1)
/* 801BE5D0  7F 63 DB 78 */	mr r3, r27
/* 801BE5D4  4B FF EC 15 */	bl getDefaultCurFloorPos__12dMenu_Dmap_cFv
/* 801BE5D8  7C 60 07 74 */	extsb r0, r3
/* 801BE5DC  54 00 10 3A */	slwi r0, r0, 2
/* 801BE5E0  7C 7B 02 14 */	add r3, r27, r0
/* 801BE5E4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801BE5E8  80 83 00 04 */	lwz r4, 4(r3)
/* 801BE5EC  80 7B 00 08 */	lwz r3, 8(r27)
/* 801BE5F0  80 63 0C C0 */	lwz r3, 0xcc0(r3)
/* 801BE5F4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801BE5F8  C0 1B 01 04 */	lfs f0, 0x104(r27)
/* 801BE5FC  EC 21 00 2A */	fadds f1, f1, f0
/* 801BE600  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 801BE604  38 A0 00 01 */	li r5, 1
/* 801BE608  4B FD 6A ED */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
lbl_801BE60C:
/* 801BE60C  A8 7B 01 64 */	lha r3, 0x164(r27)
/* 801BE610  7F C0 07 34 */	extsh r0, r30
/* 801BE614  7C 03 00 00 */	cmpw r3, r0
/* 801BE618  41 80 00 20 */	blt lbl_801BE638
/* 801BE61C  B3 FB 01 64 */	sth r31, 0x164(r27)
/* 801BE620  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BE624  D0 1B 01 04 */	stfs f0, 0x104(r27)
/* 801BE628  D0 1B 01 08 */	stfs f0, 0x108(r27)
/* 801BE62C  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801BE630  D0 1B 01 0C */	stfs f0, 0x10c(r27)
/* 801BE634  3B A0 00 01 */	li r29, 1
lbl_801BE638:
/* 801BE638  80 7B 00 08 */	lwz r3, 8(r27)
/* 801BE63C  C0 3B 01 0C */	lfs f1, 0x10c(r27)
/* 801BE640  7F 84 E3 78 */	mr r4, r28
/* 801BE644  4B FF BF C9 */	bl setAllAlphaRate__14dMenu_DmapBg_cFfb
/* 801BE648  80 7B 00 08 */	lwz r3, 8(r27)
/* 801BE64C  C0 22 A5 E8 */	lfs f1, lit_3962(r2)
/* 801BE650  4B FF C1 A1 */	bl setGoldFrameAlphaRate__14dMenu_DmapBg_cFf
/* 801BE654  7F A3 EB 78 */	mr r3, r29
lbl_801BE658:
/* 801BE658  39 61 00 60 */	addi r11, r1, 0x60
/* 801BE65C  48 1A 3B C5 */	bl _restgpr_27
/* 801BE660  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801BE664  7C 08 03 A6 */	mtlr r0
/* 801BE668  38 21 00 60 */	addi r1, r1, 0x60
/* 801BE66C  4E 80 00 20 */	blr 
