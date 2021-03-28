lbl_8048A3DC:
/* 8048A3DC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8048A3E0  7C 08 02 A6 */	mflr r0
/* 8048A3E4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8048A3E8  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8048A3EC  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8048A3F0  3C 80 80 49 */	lis r4, lit_3874@ha
/* 8048A3F4  3B C4 A5 90 */	addi r30, r4, lit_3874@l
/* 8048A3F8  7C 7F 1B 78 */	mr r31, r3
/* 8048A3FC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8048A400  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8048A404  40 82 00 1C */	bne lbl_8048A420
/* 8048A408  28 1F 00 00 */	cmplwi r31, 0
/* 8048A40C  41 82 00 08 */	beq lbl_8048A414
/* 8048A410  4B B8 E7 54 */	b __ct__10fopAc_ac_cFv
lbl_8048A414:
/* 8048A414  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8048A418  60 00 00 08 */	ori r0, r0, 8
/* 8048A41C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8048A420:
/* 8048A420  7F E3 FB 78 */	mr r3, r31
/* 8048A424  4B FF FB 39 */	bl getAreaType__11daTag_Cam_cFv
/* 8048A428  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8048A42C  40 82 00 8C */	bne lbl_8048A4B8
/* 8048A430  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048A434  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 8048A438  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8048A43C  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8048A440  C0 3F 04 F0 */	lfs f1, 0x4f0(r31)
/* 8048A444  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 8048A448  EC 01 00 32 */	fmuls f0, f1, f0
/* 8048A44C  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8048A450  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8048A454  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8048A458  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8048A45C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8048A460  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8048A464  EC 61 00 28 */	fsubs f3, f1, f0
/* 8048A468  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8048A46C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8048A470  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048A474  EC 01 00 28 */	fsubs f0, f1, f0
/* 8048A478  D0 1F 05 74 */	stfs f0, 0x574(r31)
/* 8048A47C  D0 5F 05 78 */	stfs f2, 0x578(r31)
/* 8048A480  D0 7F 05 7C */	stfs f3, 0x57c(r31)
/* 8048A484  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8048A488  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8048A48C  EC 61 00 2A */	fadds f3, f1, f0
/* 8048A490  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8048A494  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8048A498  EC 41 00 2A */	fadds f2, f1, f0
/* 8048A49C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8048A4A0  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048A4A4  EC 01 00 2A */	fadds f0, f1, f0
/* 8048A4A8  D0 1F 05 80 */	stfs f0, 0x580(r31)
/* 8048A4AC  D0 5F 05 84 */	stfs f2, 0x584(r31)
/* 8048A4B0  D0 7F 05 88 */	stfs f3, 0x588(r31)
/* 8048A4B4  48 00 00 58 */	b lbl_8048A50C
lbl_8048A4B8:
/* 8048A4B8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8048A4BC  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8048A4C0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048A4C4  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8048A4C8  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8048A4CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048A4D0  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8048A4D4  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8048A4D8  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8048A4DC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8048A4E0  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8048A4E4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8048A4E8  D0 5F 05 74 */	stfs f2, 0x574(r31)
/* 8048A4EC  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 8048A4F0  D0 5F 05 7C */	stfs f2, 0x57c(r31)
/* 8048A4F4  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8048A4F8  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8048A4FC  EC 01 00 2A */	fadds f0, f1, f0
/* 8048A500  D0 5F 05 80 */	stfs f2, 0x580(r31)
/* 8048A504  D0 1F 05 84 */	stfs f0, 0x584(r31)
/* 8048A508  D0 5F 05 88 */	stfs f2, 0x588(r31)
lbl_8048A50C:
/* 8048A50C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8048A510  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048A514  80 03 5D B4 */	lwz r0, 0x5db4(r3)
/* 8048A518  3C 60 80 49 */	lis r3, data_8048A670@ha
/* 8048A51C  90 03 A6 70 */	stw r0, data_8048A670@l(r3)
/* 8048A520  38 A1 00 04 */	addi r5, r1, 4
/* 8048A524  38 9E 00 08 */	addi r4, r30, 8
/* 8048A528  38 00 00 0B */	li r0, 0xb
/* 8048A52C  7C 09 03 A6 */	mtctr r0
lbl_8048A530:
/* 8048A530  80 64 00 04 */	lwz r3, 4(r4)
/* 8048A534  84 04 00 08 */	lwzu r0, 8(r4)
/* 8048A538  90 65 00 04 */	stw r3, 4(r5)
/* 8048A53C  94 05 00 08 */	stwu r0, 8(r5)
/* 8048A540  42 00 FF F0 */	bdnz lbl_8048A530
/* 8048A544  7F E3 FB 78 */	mr r3, r31
/* 8048A548  4B FF F9 F1 */	bl getCondition__11daTag_Cam_cFv
/* 8048A54C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8048A550  2C 00 00 16 */	cmpwi r0, 0x16
/* 8048A554  40 81 00 08 */	ble lbl_8048A55C
/* 8048A558  38 60 00 03 */	li r3, 3
lbl_8048A55C:
/* 8048A55C  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 8048A560  38 61 00 08 */	addi r3, r1, 8
/* 8048A564  7C 03 00 2E */	lwzx r0, r3, r0
/* 8048A568  90 1F 05 70 */	stw r0, 0x570(r31)
/* 8048A56C  38 60 00 04 */	li r3, 4
/* 8048A570  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8048A574  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8048A578  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8048A57C  7C 08 03 A6 */	mtlr r0
/* 8048A580  38 21 00 70 */	addi r1, r1, 0x70
/* 8048A584  4E 80 00 20 */	blr 
