lbl_80A55174:
/* 80A55174  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A55178  7C 08 02 A6 */	mflr r0
/* 80A5517C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A55180  39 61 00 30 */	addi r11, r1, 0x30
/* 80A55184  4B 90 D0 58 */	b _savegpr_29
/* 80A55188  7C 7D 1B 78 */	mr r29, r3
/* 80A5518C  3C 80 80 A6 */	lis r4, lit_4030@ha
/* 80A55190  3B E4 DE FC */	addi r31, r4, lit_4030@l
/* 80A55194  3B C0 00 01 */	li r30, 1
/* 80A55198  A8 03 05 EA */	lha r0, 0x5ea(r3)
/* 80A5519C  2C 00 00 05 */	cmpwi r0, 5
/* 80A551A0  41 82 01 50 */	beq lbl_80A552F0
/* 80A551A4  40 80 00 1C */	bge lbl_80A551C0
/* 80A551A8  2C 00 00 01 */	cmpwi r0, 1
/* 80A551AC  41 82 00 4C */	beq lbl_80A551F8
/* 80A551B0  40 80 02 38 */	bge lbl_80A553E8
/* 80A551B4  2C 00 00 00 */	cmpwi r0, 0
/* 80A551B8  40 80 00 14 */	bge lbl_80A551CC
/* 80A551BC  48 00 02 2C */	b lbl_80A553E8
lbl_80A551C0:
/* 80A551C0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A551C4  41 82 01 C8 */	beq lbl_80A5538C
/* 80A551C8  48 00 02 20 */	b lbl_80A553E8
lbl_80A551CC:
/* 80A551CC  38 80 00 1A */	li r4, 0x1a
/* 80A551D0  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A551D4  38 A0 00 02 */	li r5, 2
/* 80A551D8  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A551DC  4B FF 3F C9 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A551E0  38 00 00 01 */	li r0, 1
/* 80A551E4  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A551E8  38 00 00 00 */	li r0, 0
/* 80A551EC  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A551F0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A551F4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80A551F8:
/* 80A551F8  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A551FC  C0 1F 04 20 */	lfs f0, 0x420(r31)
/* 80A55200  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A55204  41 81 00 20 */	bgt lbl_80A55224
/* 80A55208  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A5520C  1C A0 00 34 */	mulli r5, r0, 0x34
/* 80A55210  3C 60 80 A6 */	lis r3, guide_path_00_2@ha
/* 80A55214  38 83 EC 2C */	addi r4, r3, guide_path_00_2@l
/* 80A55218  7C 04 28 2E */	lwzx r0, r4, r5
/* 80A5521C  2C 00 00 00 */	cmpwi r0, 0
/* 80A55220  40 80 00 70 */	bge lbl_80A55290
lbl_80A55224:
/* 80A55224  3C 60 80 A6 */	lis r3, call_pt@ha
/* 80A55228  80 03 FE A4 */	lwz r0, call_pt@l(r3)
/* 80A5522C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A55230  41 82 00 20 */	beq lbl_80A55250
/* 80A55234  7F A3 EB 78 */	mr r3, r29
/* 80A55238  38 80 00 08 */	li r4, 8
/* 80A5523C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A55240  38 A0 00 02 */	li r5, 2
/* 80A55244  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A55248  4B FF 3F 5D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A5524C  48 00 00 1C */	b lbl_80A55268
lbl_80A55250:
/* 80A55250  7F A3 EB 78 */	mr r3, r29
/* 80A55254  38 80 00 07 */	li r4, 7
/* 80A55258  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A5525C  38 A0 00 02 */	li r5, 2
/* 80A55260  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A55264  4B FF 3F 41 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A55268:
/* 80A55268  3C 60 80 A6 */	lis r3, call_pt@ha
/* 80A5526C  38 83 FE A4 */	addi r4, r3, call_pt@l
/* 80A55270  80 64 00 00 */	lwz r3, 0(r4)
/* 80A55274  38 03 00 01 */	addi r0, r3, 1
/* 80A55278  90 04 00 00 */	stw r0, 0(r4)
/* 80A5527C  38 00 00 0A */	li r0, 0xa
/* 80A55280  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A55284  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A55288  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A5528C  48 00 01 5C */	b lbl_80A553E8
lbl_80A55290:
/* 80A55290  7C 64 2A 14 */	add r3, r4, r5
/* 80A55294  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A55298  D0 1D 08 F0 */	stfs f0, 0x8f0(r29)
/* 80A5529C  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A552A0  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A552A4  7C 64 02 14 */	add r3, r4, r0
/* 80A552A8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A552AC  D0 1D 08 F8 */	stfs f0, 0x8f8(r29)
/* 80A552B0  38 00 00 05 */	li r0, 5
/* 80A552B4  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A552B8  3C 60 80 A6 */	lis r3, l_HIO@ha
/* 80A552BC  38 63 FE B8 */	addi r3, r3, l_HIO@l
/* 80A552C0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A552C4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A552C8  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A552CC  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80A552D0  41 82 01 18 */	beq lbl_80A553E8
/* 80A552D4  7F A3 EB 78 */	mr r3, r29
/* 80A552D8  38 80 00 1A */	li r4, 0x1a
/* 80A552DC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A552E0  38 A0 00 02 */	li r5, 2
/* 80A552E4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A552E8  4B FF 3E BD */	bl anm_init__FP12npc_ks_classifUcf
/* 80A552EC  48 00 00 FC */	b lbl_80A553E8
lbl_80A552F0:
/* 80A552F0  C0 3D 08 F0 */	lfs f1, 0x8f0(r29)
/* 80A552F4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A552F8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A552FC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A55300  C0 5D 08 F8 */	lfs f2, 0x8f8(r29)
/* 80A55304  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A55308  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A5530C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80A55310  4B 81 23 64 */	b cM_atan2s__Fff
/* 80A55314  B0 7D 08 FE */	sth r3, 0x8fe(r29)
/* 80A55318  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A5531C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A55320  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A55324  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A55328  EC 41 00 2A */	fadds f2, f1, f0
/* 80A5532C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A55330  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A55334  40 81 00 0C */	ble lbl_80A55340
/* 80A55338  FC 00 10 34 */	frsqrte f0, f2
/* 80A5533C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A55340:
/* 80A55340  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80A55344  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80A55348  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A5534C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A55350  40 80 00 98 */	bge lbl_80A553E8
/* 80A55354  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 80A55358  28 00 00 00 */	cmplwi r0, 0
/* 80A5535C  41 82 00 0C */	beq lbl_80A55368
/* 80A55360  28 00 00 01 */	cmplwi r0, 1
/* 80A55364  40 82 00 10 */	bne lbl_80A55374
lbl_80A55368:
/* 80A55368  80 7D 09 04 */	lwz r3, 0x904(r29)
/* 80A5536C  38 03 00 01 */	addi r0, r3, 1
/* 80A55370  90 1D 09 04 */	stw r0, 0x904(r29)
lbl_80A55374:
/* 80A55374  80 7D 09 04 */	lwz r3, 0x904(r29)
/* 80A55378  38 03 00 01 */	addi r0, r3, 1
/* 80A5537C  90 1D 09 04 */	stw r0, 0x904(r29)
/* 80A55380  38 00 00 01 */	li r0, 1
/* 80A55384  B0 1D 05 EA */	sth r0, 0x5ea(r29)
/* 80A55388  48 00 00 60 */	b lbl_80A553E8
lbl_80A5538C:
/* 80A5538C  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 80A55390  2C 00 00 07 */	cmpwi r0, 7
/* 80A55394  40 82 00 10 */	bne lbl_80A553A4
/* 80A55398  A8 1D 05 C8 */	lha r0, 0x5c8(r29)
/* 80A5539C  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80A553A0  48 00 00 14 */	b lbl_80A553B4
lbl_80A553A4:
/* 80A553A4  A8 7D 05 C8 */	lha r3, 0x5c8(r29)
/* 80A553A8  3C 63 00 01 */	addis r3, r3, 1
/* 80A553AC  38 03 80 00 */	addi r0, r3, -32768
/* 80A553B0  B0 1D 08 FE */	sth r0, 0x8fe(r29)
lbl_80A553B4:
/* 80A553B4  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80A553B8  C0 1F 04 24 */	lfs f0, 0x424(r31)
/* 80A553BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A553C0  40 80 00 28 */	bge lbl_80A553E8
/* 80A553C4  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80A553C8  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A553CC  3C 60 80 A6 */	lis r3, guide_path_00_2@ha
/* 80A553D0  38 63 EC 2C */	addi r3, r3, guide_path_00_2@l
/* 80A553D4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A553D8  2C 00 00 00 */	cmpwi r0, 0
/* 80A553DC  41 80 00 0C */	blt lbl_80A553E8
/* 80A553E0  38 00 00 01 */	li r0, 1
/* 80A553E4  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A553E8:
/* 80A553E8  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80A553EC  A8 9D 08 FE */	lha r4, 0x8fe(r29)
/* 80A553F0  38 A0 00 01 */	li r5, 1
/* 80A553F4  38 C0 10 00 */	li r6, 0x1000
/* 80A553F8  4B 81 B2 10 */	b cLib_addCalcAngleS2__FPssss
/* 80A553FC  A8 7D 08 FE */	lha r3, 0x8fe(r29)
/* 80A55400  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A55404  7C 03 00 50 */	subf r0, r3, r0
/* 80A55408  7C 00 07 34 */	extsh r0, r0
/* 80A5540C  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80A55410  41 81 00 0C */	bgt lbl_80A5541C
/* 80A55414  2C 00 F0 00 */	cmpwi r0, -4096
/* 80A55418  40 80 00 08 */	bge lbl_80A55420
lbl_80A5541C:
/* 80A5541C  3B C0 00 00 */	li r30, 0
lbl_80A55420:
/* 80A55420  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80A55424  38 80 00 00 */	li r4, 0
/* 80A55428  38 A0 00 01 */	li r5, 1
/* 80A5542C  38 C0 08 00 */	li r6, 0x800
/* 80A55430  4B 81 B1 D8 */	b cLib_addCalcAngleS2__FPssss
/* 80A55434  4B FF 3C 21 */	bl checkDoorDemo__Fv
/* 80A55438  2C 03 00 00 */	cmpwi r3, 0
/* 80A5543C  41 82 00 14 */	beq lbl_80A55450
/* 80A55440  38 00 00 64 */	li r0, 0x64
/* 80A55444  B0 1D 05 E8 */	sth r0, 0x5e8(r29)
/* 80A55448  38 00 00 00 */	li r0, 0
/* 80A5544C  B0 1D 05 EA */	sth r0, 0x5ea(r29)
lbl_80A55450:
/* 80A55450  7F C3 F3 78 */	mr r3, r30
/* 80A55454  39 61 00 30 */	addi r11, r1, 0x30
/* 80A55458  4B 90 CD D0 */	b _restgpr_29
/* 80A5545C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A55460  7C 08 03 A6 */	mtlr r0
/* 80A55464  38 21 00 30 */	addi r1, r1, 0x30
/* 80A55468  4E 80 00 20 */	blr 
