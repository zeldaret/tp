lbl_801EB3CC:
/* 801EB3CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801EB3D0  7C 08 02 A6 */	mflr r0
/* 801EB3D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801EB3D8  39 61 00 30 */	addi r11, r1, 0x30
/* 801EB3DC  48 17 6E 01 */	bl _savegpr_29
/* 801EB3E0  7C 7E 1B 78 */	mr r30, r3
/* 801EB3E4  3B E0 00 01 */	li r31, 1
/* 801EB3E8  A8 03 06 74 */	lha r0, 0x674(r3)
/* 801EB3EC  2C 00 00 00 */	cmpwi r0, 0
/* 801EB3F0  40 82 00 28 */	bne lbl_801EB418
/* 801EB3F4  A8 1E 06 76 */	lha r0, 0x676(r30)
/* 801EB3F8  2C 00 00 00 */	cmpwi r0, 0
/* 801EB3FC  40 82 00 1C */	bne lbl_801EB418
/* 801EB400  A8 1E 06 78 */	lha r0, 0x678(r30)
/* 801EB404  2C 00 00 00 */	cmpwi r0, 0
/* 801EB408  40 82 00 10 */	bne lbl_801EB418
/* 801EB40C  A8 1E 06 7A */	lha r0, 0x67a(r30)
/* 801EB410  2C 00 00 00 */	cmpwi r0, 0
/* 801EB414  41 82 00 0C */	beq lbl_801EB420
lbl_801EB418:
/* 801EB418  38 60 00 00 */	li r3, 0
/* 801EB41C  48 00 01 F0 */	b lbl_801EB60C
lbl_801EB420:
/* 801EB420  A8 7E 06 38 */	lha r3, 0x638(r30)
/* 801EB424  38 03 FF FF */	addi r0, r3, -1
/* 801EB428  B0 1E 06 38 */	sth r0, 0x638(r30)
/* 801EB42C  A8 1E 06 38 */	lha r0, 0x638(r30)
/* 801EB430  C8 42 A9 C8 */	lfd f2, lit_4596(r2)
/* 801EB434  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801EB438  90 01 00 0C */	stw r0, 0xc(r1)
/* 801EB43C  3C 80 43 30 */	lis r4, 0x4330
/* 801EB440  90 81 00 08 */	stw r4, 8(r1)
/* 801EB444  C8 01 00 08 */	lfd f0, 8(r1)
/* 801EB448  EC 20 10 28 */	fsubs f1, f0, f2
/* 801EB44C  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801EB450  38 63 FA FC */	addi r3, r3, g_ringHIO@l
/* 801EB454  A8 03 01 3C */	lha r0, 0x13c(r3)
/* 801EB458  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801EB45C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EB460  90 81 00 10 */	stw r4, 0x10(r1)
/* 801EB464  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801EB468  EC 00 10 28 */	fsubs f0, f0, f2
/* 801EB46C  EC 01 00 24 */	fdivs f0, f1, f0
/* 801EB470  D0 1E 05 14 */	stfs f0, 0x514(r30)
/* 801EB474  A8 1E 06 38 */	lha r0, 0x638(r30)
/* 801EB478  2C 00 00 00 */	cmpwi r0, 0
/* 801EB47C  41 81 00 34 */	bgt lbl_801EB4B0
/* 801EB480  3B A0 00 00 */	li r29, 0
lbl_801EB484:
/* 801EB484  7F C3 F3 78 */	mr r3, r30
/* 801EB488  7F A4 EB 78 */	mr r4, r29
/* 801EB48C  48 00 2A A1 */	bl setSelectItemForce__12dMenu_Ring_cFi
/* 801EB490  3B BD 00 01 */	addi r29, r29, 1
/* 801EB494  2C 1D 00 04 */	cmpwi r29, 4
/* 801EB498  41 80 FF EC */	blt lbl_801EB484
/* 801EB49C  38 00 00 00 */	li r0, 0
/* 801EB4A0  B0 1E 06 38 */	sth r0, 0x638(r30)
/* 801EB4A4  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801EB4A8  D0 1E 05 14 */	stfs f0, 0x514(r30)
/* 801EB4AC  48 00 00 08 */	b lbl_801EB4B4
lbl_801EB4B0:
/* 801EB4B0  3B E0 00 00 */	li r31, 0
lbl_801EB4B4:
/* 801EB4B4  88 1E 06 BC */	lbz r0, 0x6bc(r30)
/* 801EB4B8  28 00 00 00 */	cmplwi r0, 0
/* 801EB4BC  40 82 00 28 */	bne lbl_801EB4E4
/* 801EB4C0  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801EB4C4  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 801EB4C8  C0 42 A9 90 */	lfs f2, lit_4302(r2)
/* 801EB4CC  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EB4D0  C0 1E 05 14 */	lfs f0, 0x514(r30)
/* 801EB4D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 801EB4D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 801EB4DC  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 801EB4E0  48 00 00 84 */	b lbl_801EB564
lbl_801EB4E4:
/* 801EB4E4  28 00 00 02 */	cmplwi r0, 2
/* 801EB4E8  40 82 00 28 */	bne lbl_801EB510
/* 801EB4EC  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801EB4F0  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 801EB4F4  C0 42 A9 8C */	lfs f2, lit_4301(r2)
/* 801EB4F8  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EB4FC  C0 1E 05 14 */	lfs f0, 0x514(r30)
/* 801EB500  EC 01 00 28 */	fsubs f0, f1, f0
/* 801EB504  EC 02 00 32 */	fmuls f0, f2, f0
/* 801EB508  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 801EB50C  48 00 00 58 */	b lbl_801EB564
lbl_801EB510:
/* 801EB510  28 00 00 03 */	cmplwi r0, 3
/* 801EB514  40 82 00 28 */	bne lbl_801EB53C
/* 801EB518  C0 42 A9 98 */	lfs f2, lit_4304(r2)
/* 801EB51C  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EB520  C0 1E 05 14 */	lfs f0, 0x514(r30)
/* 801EB524  EC 01 00 28 */	fsubs f0, f1, f0
/* 801EB528  EC 02 00 32 */	fmuls f0, f2, f0
/* 801EB52C  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 801EB530  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801EB534  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 801EB538  48 00 00 2C */	b lbl_801EB564
lbl_801EB53C:
/* 801EB53C  28 00 00 01 */	cmplwi r0, 1
/* 801EB540  40 82 00 24 */	bne lbl_801EB564
/* 801EB544  C0 42 A9 94 */	lfs f2, lit_4303(r2)
/* 801EB548  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EB54C  C0 1E 05 14 */	lfs f0, 0x514(r30)
/* 801EB550  EC 01 00 28 */	fsubs f0, f1, f0
/* 801EB554  EC 02 00 32 */	fmuls f0, f2, f0
/* 801EB558  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 801EB55C  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801EB560  D0 1E 05 6C */	stfs f0, 0x56c(r30)
lbl_801EB564:
/* 801EB564  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EB568  54 00 10 3A */	slwi r0, r0, 2
/* 801EB56C  7C 7E 02 14 */	add r3, r30, r0
/* 801EB570  C0 23 03 EC */	lfs f1, 0x3ec(r3)
/* 801EB574  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 801EB578  EC 41 00 2A */	fadds f2, f1, f0
/* 801EB57C  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 801EB580  C0 23 03 8C */	lfs f1, 0x38c(r3)
/* 801EB584  C0 1E 05 68 */	lfs f0, 0x568(r30)
/* 801EB588  EC 01 00 2A */	fadds f0, f1, f0
/* 801EB58C  D0 04 00 58 */	stfs f0, 0x58(r4)
/* 801EB590  D0 44 00 5C */	stfs f2, 0x5c(r4)
/* 801EB594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EB598  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EB59C  38 63 00 9C */	addi r3, r3, 0x9c
/* 801EB5A0  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EB5A4  7C 9E 02 14 */	add r4, r30, r0
/* 801EB5A8  88 84 06 90 */	lbz r4, 0x690(r4)
/* 801EB5AC  38 A0 00 00 */	li r5, 0
/* 801EB5B0  4B E4 7A 81 */	bl getItem__17dSv_player_item_cCFib
/* 801EB5B4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801EB5B8  28 00 00 FF */	cmplwi r0, 0xff
/* 801EB5BC  41 82 00 30 */	beq lbl_801EB5EC
/* 801EB5C0  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 801EB5C4  54 00 10 3A */	slwi r0, r0, 2
/* 801EB5C8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801EB5CC  7C 9E 02 14 */	add r4, r30, r0
/* 801EB5D0  C0 24 04 4C */	lfs f1, 0x44c(r4)
/* 801EB5D4  C0 44 04 AC */	lfs f2, 0x4ac(r4)
/* 801EB5D8  C0 62 A9 A8 */	lfs f3, lit_4308(r2)
/* 801EB5DC  C0 82 A9 AC */	lfs f4, lit_4309(r2)
/* 801EB5E0  C0 A2 A9 B0 */	lfs f5, lit_4310(r2)
/* 801EB5E4  4B FA 9B CD */	bl setParam__16dSelect_cursor_cFfffff
/* 801EB5E8  48 00 00 20 */	b lbl_801EB608
lbl_801EB5EC:
/* 801EB5EC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801EB5F0  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EB5F4  FC 40 08 90 */	fmr f2, f1
/* 801EB5F8  C0 62 A9 A8 */	lfs f3, lit_4308(r2)
/* 801EB5FC  C0 82 A9 AC */	lfs f4, lit_4309(r2)
/* 801EB600  C0 A2 A9 B0 */	lfs f5, lit_4310(r2)
/* 801EB604  4B FA 9B AD */	bl setParam__16dSelect_cursor_cFfffff
lbl_801EB608:
/* 801EB608  7F E3 FB 78 */	mr r3, r31
lbl_801EB60C:
/* 801EB60C  39 61 00 30 */	addi r11, r1, 0x30
/* 801EB610  48 17 6C 19 */	bl _restgpr_29
/* 801EB614  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801EB618  7C 08 03 A6 */	mtlr r0
/* 801EB61C  38 21 00 30 */	addi r1, r1, 0x30
/* 801EB620  4E 80 00 20 */	blr 
