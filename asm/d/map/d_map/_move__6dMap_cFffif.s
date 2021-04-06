lbl_8002A32C:
/* 8002A32C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8002A330  7C 08 02 A6 */	mflr r0
/* 8002A334  90 01 00 64 */	stw r0, 0x64(r1)
/* 8002A338  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8002A33C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8002A340  39 61 00 50 */	addi r11, r1, 0x50
/* 8002A344  48 33 7E 99 */	bl _savegpr_29
/* 8002A348  7C 7E 1B 78 */	mr r30, r3
/* 8002A34C  7C 9F 23 78 */	mr r31, r4
/* 8002A350  FF E0 18 90 */	fmr f31, f3
/* 8002A354  80 03 00 7C */	lwz r0, 0x7c(r3)
/* 8002A358  2C 00 FF FF */	cmpwi r0, -1
/* 8002A35C  40 82 00 AC */	bne lbl_8002A408
/* 8002A360  93 FE 00 7C */	stw r31, 0x7c(r30)
/* 8002A364  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 8002A368  90 1E 00 80 */	stw r0, 0x80(r30)
/* 8002A36C  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 8002A370  90 1E 00 84 */	stw r0, 0x84(r30)
/* 8002A374  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 8002A378  90 0D 80 B0 */	stw r0, mNextRoomNo__10dMapInfo_c(r13)
/* 8002A37C  38 00 00 00 */	li r0, 0
/* 8002A380  98 1E 00 8E */	stb r0, 0x8e(r30)
/* 8002A384  98 1E 00 8F */	stb r0, 0x8f(r30)
/* 8002A388  98 1E 00 90 */	stb r0, 0x90(r30)
/* 8002A38C  D0 3E 00 50 */	stfs f1, 0x50(r30)
/* 8002A390  D0 5E 00 54 */	stfs f2, 0x54(r30)
/* 8002A394  80 9E 00 80 */	lwz r4, 0x80(r30)
/* 8002A398  38 BE 00 50 */	addi r5, r30, 0x50
/* 8002A39C  38 DE 00 54 */	addi r6, r30, 0x54
/* 8002A3A0  4B FF F9 D9 */	bl calcMapCenterXZ__6dMap_cFiPfPf
/* 8002A3A4  7F C3 F3 78 */	mr r3, r30
/* 8002A3A8  80 9E 00 80 */	lwz r4, 0x80(r30)
/* 8002A3AC  38 BE 00 58 */	addi r5, r30, 0x58
/* 8002A3B0  4B FF FA 6D */	bl calcMapCmPerTexel__6dMap_cFiPf
/* 8002A3B4  7F C3 F3 78 */	mr r3, r30
/* 8002A3B8  80 9E 00 80 */	lwz r4, 0x80(r30)
/* 8002A3BC  38 BE 00 5C */	addi r5, r30, 0x5c
/* 8002A3C0  38 DE 00 60 */	addi r6, r30, 0x60
/* 8002A3C4  4B FF F8 4D */	bl getPack__6dMap_cFiPfPf
/* 8002A3C8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8002A3CC  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8002A3D0  EC 01 00 2A */	fadds f0, f1, f0
/* 8002A3D4  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 8002A3D8  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8002A3DC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8002A3E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8002A3E4  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 8002A3E8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8002A3EC  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8002A3F0  EC 01 00 2A */	fadds f0, f1, f0
/* 8002A3F4  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 8002A3F8  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8002A3FC  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8002A400  EC 01 00 2A */	fadds f0, f1, f0
/* 8002A404  D0 1E 00 54 */	stfs f0, 0x54(r30)
lbl_8002A408:
/* 8002A408  7F C3 F3 78 */	mr r3, r30
/* 8002A40C  4B FF ED 55 */	bl getStayType__15renderingAmap_cCFv
/* 8002A410  2C 03 00 00 */	cmpwi r3, 0
/* 8002A414  40 82 00 AC */	bne lbl_8002A4C0
/* 8002A418  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002A41C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002A420  38 63 09 78 */	addi r3, r3, 0x978
/* 8002A424  38 80 00 32 */	li r4, 0x32
/* 8002A428  48 00 A7 C1 */	bl isSwitch__12dSv_danBit_cCFi
/* 8002A42C  2C 03 00 00 */	cmpwi r3, 0
/* 8002A430  41 82 00 90 */	beq lbl_8002A4C0
/* 8002A434  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002A438  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002A43C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8002A440  3C 80 80 38 */	lis r4, d_map_d_map__stringBase0@ha /* 0x80378F24@ha */
/* 8002A444  38 84 8F 24 */	addi r4, r4, d_map_d_map__stringBase0@l /* 0x80378F24@l */
/* 8002A448  38 84 00 07 */	addi r4, r4, 7
/* 8002A44C  48 33 E5 49 */	bl strcmp
/* 8002A450  2C 03 00 00 */	cmpwi r3, 0
/* 8002A454  40 82 00 6C */	bne lbl_8002A4C0
/* 8002A458  C0 82 82 E4 */	lfs f4, lit_4321(r2)
/* 8002A45C  D0 9E 00 64 */	stfs f4, 0x64(r30)
/* 8002A460  C0 02 82 EC */	lfs f0, lit_4688(r2)
/* 8002A464  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8002A468  C0 62 82 A0 */	lfs f3, lit_3745(r2)
/* 8002A46C  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 8002A470  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8002A474  38 03 00 04 */	addi r0, r3, 4
/* 8002A478  C8 22 82 B8 */	lfd f1, lit_3751(r2)
/* 8002A47C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8002A480  90 01 00 34 */	stw r0, 0x34(r1)
/* 8002A484  3C 00 43 30 */	lis r0, 0x4330
/* 8002A488  90 01 00 30 */	stw r0, 0x30(r1)
/* 8002A48C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8002A490  EC 00 08 28 */	fsubs f0, f0, f1
/* 8002A494  EC 02 00 32 */	fmuls f0, f2, f0
/* 8002A498  EC 43 00 32 */	fmuls f2, f3, f0
/* 8002A49C  D0 9E 00 6C */	stfs f4, 0x6c(r30)
/* 8002A4A0  C0 22 82 F0 */	lfs f1, lit_4689(r2)
/* 8002A4A4  C0 0D 88 F0 */	lfs f0, mMinZ__8dMpath_c(r13)
/* 8002A4A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8002A4AC  EC 20 10 28 */	fsubs f1, f0, f2
/* 8002A4B0  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8002A4B4  EC 01 00 24 */	fdivs f0, f1, f0
/* 8002A4B8  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8002A4BC  48 00 00 10 */	b lbl_8002A4CC
lbl_8002A4C0:
/* 8002A4C0  C0 02 82 E4 */	lfs f0, lit_4321(r2)
/* 8002A4C4  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8002A4C8  D0 1E 00 70 */	stfs f0, 0x70(r30)
lbl_8002A4CC:
/* 8002A4CC  83 BE 00 7C */	lwz r29, 0x7c(r30)
/* 8002A4D0  93 FE 00 7C */	stw r31, 0x7c(r30)
/* 8002A4D4  80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 8002A4D8  FC 20 F8 90 */	fmr f1, f31
/* 8002A4DC  48 01 51 ED */	bl move__10dMapInfo_cFif
/* 8002A4E0  38 00 00 00 */	li r0, 0
/* 8002A4E4  98 1E 00 8E */	stb r0, 0x8e(r30)
/* 8002A4E8  7F C3 F3 78 */	mr r3, r30
/* 8002A4EC  4B FF FC D1 */	bl getDispType__6dMap_cCFv
/* 8002A4F0  2C 03 00 01 */	cmpwi r3, 1
/* 8002A4F4  41 82 00 24 */	beq lbl_8002A518
/* 8002A4F8  40 80 00 08 */	bge lbl_8002A500
/* 8002A4FC  48 00 00 24 */	b lbl_8002A520
lbl_8002A500:
/* 8002A500  2C 03 00 05 */	cmpwi r3, 5
/* 8002A504  41 82 00 08 */	beq lbl_8002A50C
/* 8002A508  48 00 00 18 */	b lbl_8002A520
lbl_8002A50C:
/* 8002A50C  38 00 00 02 */	li r0, 2
/* 8002A510  98 1E 00 8E */	stb r0, 0x8e(r30)
/* 8002A514  48 00 00 0C */	b lbl_8002A520
lbl_8002A518:
/* 8002A518  38 00 00 01 */	li r0, 1
/* 8002A51C  98 1E 00 8E */	stb r0, 0x8e(r30)
lbl_8002A520:
/* 8002A520  88 1E 00 8E */	lbz r0, 0x8e(r30)
/* 8002A524  2C 00 00 01 */	cmpwi r0, 1
/* 8002A528  41 82 00 9C */	beq lbl_8002A5C4
/* 8002A52C  40 80 00 10 */	bge lbl_8002A53C
/* 8002A530  2C 00 00 00 */	cmpwi r0, 0
/* 8002A534  40 80 00 14 */	bge lbl_8002A548
/* 8002A538  48 00 02 C0 */	b lbl_8002A7F8
lbl_8002A53C:
/* 8002A53C  2C 00 00 03 */	cmpwi r0, 3
/* 8002A540  40 80 02 B8 */	bge lbl_8002A7F8
/* 8002A544  48 00 01 14 */	b lbl_8002A658
lbl_8002A548:
/* 8002A548  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 8002A54C  7C 00 E8 00 */	cmpw r0, r29
/* 8002A550  41 82 02 A8 */	beq lbl_8002A7F8
/* 8002A554  90 1E 00 80 */	stw r0, 0x80(r30)
/* 8002A558  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 8002A55C  90 1E 00 84 */	stw r0, 0x84(r30)
/* 8002A560  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 8002A564  90 1E 00 88 */	stw r0, 0x88(r30)
/* 8002A568  7F C3 F3 78 */	mr r3, r30
/* 8002A56C  80 9E 00 80 */	lwz r4, 0x80(r30)
/* 8002A570  38 BE 00 50 */	addi r5, r30, 0x50
/* 8002A574  38 DE 00 54 */	addi r6, r30, 0x54
/* 8002A578  4B FF F8 01 */	bl calcMapCenterXZ__6dMap_cFiPfPf
/* 8002A57C  7F C3 F3 78 */	mr r3, r30
/* 8002A580  80 9E 00 80 */	lwz r4, 0x80(r30)
/* 8002A584  38 BE 00 58 */	addi r5, r30, 0x58
/* 8002A588  4B FF F8 95 */	bl calcMapCmPerTexel__6dMap_cFiPf
/* 8002A58C  7F C3 F3 78 */	mr r3, r30
/* 8002A590  80 9E 00 80 */	lwz r4, 0x80(r30)
/* 8002A594  38 BE 00 5C */	addi r5, r30, 0x5c
/* 8002A598  38 DE 00 60 */	addi r6, r30, 0x60
/* 8002A59C  4B FF F6 75 */	bl getPack__6dMap_cFiPfPf
/* 8002A5A0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8002A5A4  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8002A5A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8002A5AC  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 8002A5B0  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8002A5B4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8002A5B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8002A5BC  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 8002A5C0  48 00 02 38 */	b lbl_8002A7F8
lbl_8002A5C4:
/* 8002A5C4  88 1E 00 8F */	lbz r0, 0x8f(r30)
/* 8002A5C8  2C 00 00 01 */	cmpwi r0, 1
/* 8002A5CC  41 82 00 4C */	beq lbl_8002A618
/* 8002A5D0  40 80 02 28 */	bge lbl_8002A7F8
/* 8002A5D4  2C 00 00 00 */	cmpwi r0, 0
/* 8002A5D8  40 80 00 08 */	bge lbl_8002A5E0
/* 8002A5DC  48 00 02 1C */	b lbl_8002A7F8
lbl_8002A5E0:
/* 8002A5E0  80 7E 00 80 */	lwz r3, 0x80(r30)
/* 8002A5E4  80 0D 80 B0 */	lwz r0, mNextRoomNo__10dMapInfo_c(r13)
/* 8002A5E8  7C 03 00 00 */	cmpw r3, r0
/* 8002A5EC  41 82 02 0C */	beq lbl_8002A7F8
/* 8002A5F0  38 00 00 01 */	li r0, 1
/* 8002A5F4  98 1E 00 8F */	stb r0, 0x8f(r30)
/* 8002A5F8  38 00 00 3C */	li r0, 0x3c
/* 8002A5FC  98 1E 00 90 */	stb r0, 0x90(r30)
/* 8002A600  80 0D 80 B0 */	lwz r0, mNextRoomNo__10dMapInfo_c(r13)
/* 8002A604  7C 00 07 74 */	extsb r0, r0
/* 8002A608  90 1E 00 84 */	stw r0, 0x84(r30)
/* 8002A60C  80 1E 00 80 */	lwz r0, 0x80(r30)
/* 8002A610  90 1E 00 88 */	stw r0, 0x88(r30)
/* 8002A614  48 00 01 E4 */	b lbl_8002A7F8
lbl_8002A618:
/* 8002A618  88 7E 00 90 */	lbz r3, 0x90(r30)
/* 8002A61C  38 03 FF FF */	addi r0, r3, -1
/* 8002A620  98 1E 00 90 */	stb r0, 0x90(r30)
/* 8002A624  88 1E 00 90 */	lbz r0, 0x90(r30)
/* 8002A628  28 00 00 00 */	cmplwi r0, 0
/* 8002A62C  40 82 01 CC */	bne lbl_8002A7F8
/* 8002A630  38 00 00 00 */	li r0, 0
/* 8002A634  98 1E 00 8F */	stb r0, 0x8f(r30)
/* 8002A638  80 1E 00 84 */	lwz r0, 0x84(r30)
/* 8002A63C  90 1E 00 80 */	stw r0, 0x80(r30)
/* 8002A640  7F C3 F3 78 */	mr r3, r30
/* 8002A644  80 9E 00 80 */	lwz r4, 0x80(r30)
/* 8002A648  38 BE 00 50 */	addi r5, r30, 0x50
/* 8002A64C  38 DE 00 54 */	addi r6, r30, 0x54
/* 8002A650  4B FF F7 29 */	bl calcMapCenterXZ__6dMap_cFiPfPf
/* 8002A654  48 00 01 A4 */	b lbl_8002A7F8
lbl_8002A658:
/* 8002A658  88 1E 00 8F */	lbz r0, 0x8f(r30)
/* 8002A65C  28 00 00 06 */	cmplwi r0, 6
/* 8002A660  41 81 01 98 */	bgt lbl_8002A7F8
/* 8002A664  3C 60 80 3A */	lis r3, lit_4694@ha /* 0x803A6F6C@ha */
/* 8002A668  38 63 6F 6C */	addi r3, r3, lit_4694@l /* 0x803A6F6C@l */
/* 8002A66C  54 00 10 3A */	slwi r0, r0, 2
/* 8002A670  7C 03 00 2E */	lwzx r0, r3, r0
/* 8002A674  7C 09 03 A6 */	mtctr r0
/* 8002A678  4E 80 04 20 */	bctr 
/* 8002A67C  80 1E 00 80 */	lwz r0, 0x80(r30)
/* 8002A680  80 6D 80 B0 */	lwz r3, mNextRoomNo__10dMapInfo_c(r13)
/* 8002A684  7C 00 18 00 */	cmpw r0, r3
/* 8002A688  41 82 01 70 */	beq lbl_8002A7F8
/* 8002A68C  7C 60 07 74 */	extsb r0, r3
/* 8002A690  90 1E 00 84 */	stw r0, 0x84(r30)
/* 8002A694  80 1E 00 80 */	lwz r0, 0x80(r30)
/* 8002A698  90 1E 00 88 */	stw r0, 0x88(r30)
/* 8002A69C  38 60 00 1E */	li r3, 0x1e
/* 8002A6A0  98 7E 00 90 */	stb r3, 0x90(r30)
/* 8002A6A4  38 00 00 01 */	li r0, 1
/* 8002A6A8  98 1E 00 8F */	stb r0, 0x8f(r30)
/* 8002A6AC  98 7E 00 90 */	stb r3, 0x90(r30)
/* 8002A6B0  48 00 01 48 */	b lbl_8002A7F8
/* 8002A6B4  88 7E 00 90 */	lbz r3, 0x90(r30)
/* 8002A6B8  28 03 00 00 */	cmplwi r3, 0
/* 8002A6BC  41 82 00 0C */	beq lbl_8002A6C8
/* 8002A6C0  38 03 FF FF */	addi r0, r3, -1
/* 8002A6C4  98 1E 00 90 */	stb r0, 0x90(r30)
lbl_8002A6C8:
/* 8002A6C8  88 1E 00 90 */	lbz r0, 0x90(r30)
/* 8002A6CC  28 00 00 00 */	cmplwi r0, 0
/* 8002A6D0  40 82 01 28 */	bne lbl_8002A7F8
/* 8002A6D4  80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 8002A6D8  80 1E 00 88 */	lwz r0, 0x88(r30)
/* 8002A6DC  7C 03 00 00 */	cmpw r3, r0
/* 8002A6E0  41 82 01 18 */	beq lbl_8002A7F8
/* 8002A6E4  38 00 00 02 */	li r0, 2
/* 8002A6E8  98 1E 00 8F */	stb r0, 0x8f(r30)
/* 8002A6EC  38 00 00 05 */	li r0, 5
/* 8002A6F0  98 1E 00 90 */	stb r0, 0x90(r30)
/* 8002A6F4  48 00 01 04 */	b lbl_8002A7F8
/* 8002A6F8  88 7E 00 90 */	lbz r3, 0x90(r30)
/* 8002A6FC  38 03 FF FF */	addi r0, r3, -1
/* 8002A700  98 1E 00 90 */	stb r0, 0x90(r30)
/* 8002A704  88 1E 00 90 */	lbz r0, 0x90(r30)
/* 8002A708  28 00 00 00 */	cmplwi r0, 0
/* 8002A70C  40 82 00 EC */	bne lbl_8002A7F8
/* 8002A710  38 00 00 03 */	li r0, 3
/* 8002A714  98 1E 00 8F */	stb r0, 0x8f(r30)
/* 8002A718  38 00 00 14 */	li r0, 0x14
/* 8002A71C  98 1E 00 90 */	stb r0, 0x90(r30)
/* 8002A720  48 00 00 D8 */	b lbl_8002A7F8
/* 8002A724  88 7E 00 90 */	lbz r3, 0x90(r30)
/* 8002A728  38 03 FF FF */	addi r0, r3, -1
/* 8002A72C  98 1E 00 90 */	stb r0, 0x90(r30)
/* 8002A730  88 1E 00 90 */	lbz r0, 0x90(r30)
/* 8002A734  28 00 00 00 */	cmplwi r0, 0
/* 8002A738  40 82 00 C0 */	bne lbl_8002A7F8
/* 8002A73C  80 1E 00 84 */	lwz r0, 0x84(r30)
/* 8002A740  90 1E 00 80 */	stw r0, 0x80(r30)
/* 8002A744  7F C3 F3 78 */	mr r3, r30
/* 8002A748  80 9E 00 80 */	lwz r4, 0x80(r30)
/* 8002A74C  38 BE 00 50 */	addi r5, r30, 0x50
/* 8002A750  38 DE 00 54 */	addi r6, r30, 0x54
/* 8002A754  4B FF F6 25 */	bl calcMapCenterXZ__6dMap_cFiPfPf
/* 8002A758  7F C3 F3 78 */	mr r3, r30
/* 8002A75C  80 9E 00 80 */	lwz r4, 0x80(r30)
/* 8002A760  38 BE 00 58 */	addi r5, r30, 0x58
/* 8002A764  4B FF F6 B9 */	bl calcMapCmPerTexel__6dMap_cFiPf
/* 8002A768  7F C3 F3 78 */	mr r3, r30
/* 8002A76C  80 9E 00 80 */	lwz r4, 0x80(r30)
/* 8002A770  38 BE 00 5C */	addi r5, r30, 0x5c
/* 8002A774  38 DE 00 60 */	addi r6, r30, 0x60
/* 8002A778  4B FF F4 99 */	bl getPack__6dMap_cFiPfPf
/* 8002A77C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8002A780  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8002A784  EC 01 00 2A */	fadds f0, f1, f0
/* 8002A788  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 8002A78C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8002A790  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8002A794  EC 01 00 28 */	fsubs f0, f1, f0
/* 8002A798  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 8002A79C  38 00 00 04 */	li r0, 4
/* 8002A7A0  98 1E 00 8F */	stb r0, 0x8f(r30)
/* 8002A7A4  38 00 00 05 */	li r0, 5
/* 8002A7A8  98 1E 00 90 */	stb r0, 0x90(r30)
/* 8002A7AC  48 00 00 4C */	b lbl_8002A7F8
/* 8002A7B0  88 7E 00 90 */	lbz r3, 0x90(r30)
/* 8002A7B4  38 03 FF FF */	addi r0, r3, -1
/* 8002A7B8  98 1E 00 90 */	stb r0, 0x90(r30)
/* 8002A7BC  88 1E 00 90 */	lbz r0, 0x90(r30)
/* 8002A7C0  28 00 00 00 */	cmplwi r0, 0
/* 8002A7C4  40 82 00 34 */	bne lbl_8002A7F8
/* 8002A7C8  38 00 00 05 */	li r0, 5
/* 8002A7CC  98 1E 00 8F */	stb r0, 0x8f(r30)
/* 8002A7D0  48 00 00 28 */	b lbl_8002A7F8
/* 8002A7D4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8002A7D8  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 8002A7DC  7C 03 00 00 */	cmpw r3, r0
/* 8002A7E0  40 82 00 18 */	bne lbl_8002A7F8
/* 8002A7E4  38 00 00 06 */	li r0, 6
/* 8002A7E8  98 1E 00 8F */	stb r0, 0x8f(r30)
/* 8002A7EC  48 00 00 0C */	b lbl_8002A7F8
/* 8002A7F0  38 00 00 00 */	li r0, 0
/* 8002A7F4  98 1E 00 8F */	stb r0, 0x8f(r30)
lbl_8002A7F8:
/* 8002A7F8  88 1E 00 8E */	lbz r0, 0x8e(r30)
/* 8002A7FC  2C 00 00 01 */	cmpwi r0, 1
/* 8002A800  41 82 00 18 */	beq lbl_8002A818
/* 8002A804  40 80 00 08 */	bge lbl_8002A80C
/* 8002A808  48 00 03 24 */	b lbl_8002AB2C
lbl_8002A80C:
/* 8002A80C  2C 00 00 03 */	cmpwi r0, 3
/* 8002A810  40 80 03 1C */	bge lbl_8002AB2C
/* 8002A814  48 00 00 A0 */	b lbl_8002A8B4
lbl_8002A818:
/* 8002A818  88 1E 00 8F */	lbz r0, 0x8f(r30)
/* 8002A81C  2C 00 00 01 */	cmpwi r0, 1
/* 8002A820  41 82 00 0C */	beq lbl_8002A82C
/* 8002A824  40 80 03 08 */	bge lbl_8002AB2C
/* 8002A828  48 00 03 04 */	b lbl_8002AB2C
lbl_8002A82C:
/* 8002A82C  7F C3 F3 78 */	mr r3, r30
/* 8002A830  80 9E 00 88 */	lwz r4, 0x88(r30)
/* 8002A834  38 BE 00 50 */	addi r5, r30, 0x50
/* 8002A838  38 DE 00 54 */	addi r6, r30, 0x54
/* 8002A83C  4B FF F5 3D */	bl calcMapCenterXZ__6dMap_cFiPfPf
/* 8002A840  7F C3 F3 78 */	mr r3, r30
/* 8002A844  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8002A848  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8002A84C  38 C1 00 28 */	addi r6, r1, 0x28
/* 8002A850  4B FF F5 29 */	bl calcMapCenterXZ__6dMap_cFiPfPf
/* 8002A854  C0 42 82 E0 */	lfs f2, lit_4284(r2)
/* 8002A858  88 1E 00 90 */	lbz r0, 0x90(r30)
/* 8002A85C  C8 22 82 B0 */	lfd f1, lit_3749(r2)
/* 8002A860  90 01 00 34 */	stw r0, 0x34(r1)
/* 8002A864  3C 00 43 30 */	lis r0, 0x4330
/* 8002A868  90 01 00 30 */	stw r0, 0x30(r1)
/* 8002A86C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8002A870  EC 20 08 28 */	fsubs f1, f0, f1
/* 8002A874  C0 02 82 F4 */	lfs f0, lit_4690(r2)
/* 8002A878  EC 01 00 24 */	fdivs f0, f1, f0
/* 8002A87C  EC 42 00 28 */	fsubs f2, f2, f0
/* 8002A880  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8002A884  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8002A888  EC 00 08 28 */	fsubs f0, f0, f1
/* 8002A88C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8002A890  EC 01 00 2A */	fadds f0, f1, f0
/* 8002A894  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 8002A898  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8002A89C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8002A8A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8002A8A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8002A8A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8002A8AC  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 8002A8B0  48 00 02 7C */	b lbl_8002AB2C
lbl_8002A8B4:
/* 8002A8B4  88 1E 00 8F */	lbz r0, 0x8f(r30)
/* 8002A8B8  2C 00 00 04 */	cmpwi r0, 4
/* 8002A8BC  41 82 02 10 */	beq lbl_8002AACC
/* 8002A8C0  40 80 00 14 */	bge lbl_8002A8D4
/* 8002A8C4  2C 00 00 02 */	cmpwi r0, 2
/* 8002A8C8  41 82 00 18 */	beq lbl_8002A8E0
/* 8002A8CC  40 80 00 64 */	bge lbl_8002A930
/* 8002A8D0  48 00 02 5C */	b lbl_8002AB2C
lbl_8002A8D4:
/* 8002A8D4  2C 00 00 06 */	cmpwi r0, 6
/* 8002A8D8  41 82 02 4C */	beq lbl_8002AB24
/* 8002A8DC  48 00 02 50 */	b lbl_8002AB2C
lbl_8002A8E0:
/* 8002A8E0  88 1E 00 90 */	lbz r0, 0x90(r30)
/* 8002A8E4  C8 22 82 B0 */	lfd f1, lit_3749(r2)
/* 8002A8E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8002A8EC  3C 00 43 30 */	lis r0, 0x4330
/* 8002A8F0  90 01 00 30 */	stw r0, 0x30(r1)
/* 8002A8F4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8002A8F8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8002A8FC  C0 02 82 F8 */	lfs f0, lit_4691(r2)
/* 8002A900  EF E1 00 24 */	fdivs f31, f1, f0
/* 8002A904  7F C3 F3 78 */	mr r3, r30
/* 8002A908  38 80 00 2F */	li r4, 0x2f
/* 8002A90C  38 A0 00 32 */	li r5, 0x32
/* 8002A910  FC 20 F8 90 */	fmr f1, f31
/* 8002A914  4B FF EE 95 */	bl setMapPaletteColorAlphaPer__6dMap_cFiif
/* 8002A918  7F C3 F3 78 */	mr r3, r30
/* 8002A91C  38 80 00 21 */	li r4, 0x21
/* 8002A920  38 A0 00 2B */	li r5, 0x2b
/* 8002A924  FC 20 F8 90 */	fmr f1, f31
/* 8002A928  4B FF EE 81 */	bl setMapPaletteColorAlphaPer__6dMap_cFiif
/* 8002A92C  48 00 02 00 */	b lbl_8002AB2C
lbl_8002A930:
/* 8002A930  7F C3 F3 78 */	mr r3, r30
/* 8002A934  80 9E 00 88 */	lwz r4, 0x88(r30)
/* 8002A938  38 BE 00 50 */	addi r5, r30, 0x50
/* 8002A93C  38 DE 00 54 */	addi r6, r30, 0x54
/* 8002A940  4B FF F4 39 */	bl calcMapCenterXZ__6dMap_cFiPfPf
/* 8002A944  7F C3 F3 78 */	mr r3, r30
/* 8002A948  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8002A94C  38 A1 00 24 */	addi r5, r1, 0x24
/* 8002A950  38 C1 00 20 */	addi r6, r1, 0x20
/* 8002A954  4B FF F4 25 */	bl calcMapCenterXZ__6dMap_cFiPfPf
/* 8002A958  C0 42 82 E0 */	lfs f2, lit_4284(r2)
/* 8002A95C  88 1E 00 90 */	lbz r0, 0x90(r30)
/* 8002A960  C8 22 82 B0 */	lfd f1, lit_3749(r2)
/* 8002A964  90 01 00 34 */	stw r0, 0x34(r1)
/* 8002A968  3C 00 43 30 */	lis r0, 0x4330
/* 8002A96C  90 01 00 30 */	stw r0, 0x30(r1)
/* 8002A970  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8002A974  EC 20 08 28 */	fsubs f1, f0, f1
/* 8002A978  C0 02 82 FC */	lfs f0, lit_4692(r2)
/* 8002A97C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8002A980  EF E2 00 28 */	fsubs f31, f2, f0
/* 8002A984  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8002A988  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8002A98C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8002A990  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8002A994  EC 01 00 2A */	fadds f0, f1, f0
/* 8002A998  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 8002A99C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8002A9A0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8002A9A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8002A9A8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8002A9AC  EC 01 00 2A */	fadds f0, f1, f0
/* 8002A9B0  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 8002A9B4  80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 8002A9B8  80 1E 00 88 */	lwz r0, 0x88(r30)
/* 8002A9BC  7C 03 00 00 */	cmpw r3, r0
/* 8002A9C0  40 82 00 34 */	bne lbl_8002A9F4
/* 8002A9C4  7F C3 F3 78 */	mr r3, r30
/* 8002A9C8  38 80 00 0A */	li r4, 0xa
/* 8002A9CC  38 A0 00 11 */	li r5, 0x11
/* 8002A9D0  FC 20 F8 90 */	fmr f1, f31
/* 8002A9D4  4B FF ED D5 */	bl setMapPaletteColorAlphaPer__6dMap_cFiif
/* 8002A9D8  7F C3 F3 78 */	mr r3, r30
/* 8002A9DC  38 80 00 12 */	li r4, 0x12
/* 8002A9E0  38 A0 00 19 */	li r5, 0x19
/* 8002A9E4  C0 02 82 E0 */	lfs f0, lit_4284(r2)
/* 8002A9E8  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8002A9EC  4B FF ED BD */	bl setMapPaletteColorAlphaPer__6dMap_cFiif
/* 8002A9F0  48 00 00 2C */	b lbl_8002AA1C
lbl_8002A9F4:
/* 8002A9F4  7F C3 F3 78 */	mr r3, r30
/* 8002A9F8  38 80 00 0A */	li r4, 0xa
/* 8002A9FC  38 A0 00 11 */	li r5, 0x11
/* 8002AA00  EC 22 F8 28 */	fsubs f1, f2, f31
/* 8002AA04  4B FF ED A5 */	bl setMapPaletteColorAlphaPer__6dMap_cFiif
/* 8002AA08  7F C3 F3 78 */	mr r3, r30
/* 8002AA0C  38 80 00 12 */	li r4, 0x12
/* 8002AA10  38 A0 00 19 */	li r5, 0x19
/* 8002AA14  FC 20 F8 90 */	fmr f1, f31
/* 8002AA18  4B FF ED 91 */	bl setMapPaletteColorAlphaPer__6dMap_cFiif
lbl_8002AA1C:
/* 8002AA1C  7F C3 F3 78 */	mr r3, r30
/* 8002AA20  80 9E 00 88 */	lwz r4, 0x88(r30)
/* 8002AA24  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8002AA28  4B FF F3 F5 */	bl calcMapCmPerTexel__6dMap_cFiPf
/* 8002AA2C  7F C3 F3 78 */	mr r3, r30
/* 8002AA30  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8002AA34  38 A1 00 18 */	addi r5, r1, 0x18
/* 8002AA38  4B FF F3 E5 */	bl calcMapCmPerTexel__6dMap_cFiPf
/* 8002AA3C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8002AA40  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8002AA44  EC 00 08 28 */	fsubs f0, f0, f1
/* 8002AA48  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8002AA4C  EC 01 00 2A */	fadds f0, f1, f0
/* 8002AA50  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8002AA54  7F C3 F3 78 */	mr r3, r30
/* 8002AA58  80 9E 00 88 */	lwz r4, 0x88(r30)
/* 8002AA5C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8002AA60  38 C1 00 10 */	addi r6, r1, 0x10
/* 8002AA64  4B FF F1 AD */	bl getPack__6dMap_cFiPfPf
/* 8002AA68  7F C3 F3 78 */	mr r3, r30
/* 8002AA6C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8002AA70  38 A1 00 0C */	addi r5, r1, 0xc
/* 8002AA74  38 C1 00 08 */	addi r6, r1, 8
/* 8002AA78  4B FF F1 99 */	bl getPack__6dMap_cFiPfPf
/* 8002AA7C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8002AA80  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8002AA84  EC 00 08 28 */	fsubs f0, f0, f1
/* 8002AA88  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8002AA8C  EC 41 00 2A */	fadds f2, f1, f0
/* 8002AA90  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8002AA94  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8002AA98  C0 01 00 08 */	lfs f0, 8(r1)
/* 8002AA9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8002AAA0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8002AAA4  EC 01 00 2A */	fadds f0, f1, f0
/* 8002AAA8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8002AAAC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8002AAB0  EC 00 10 2A */	fadds f0, f0, f2
/* 8002AAB4  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 8002AAB8  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8002AABC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8002AAC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8002AAC4  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 8002AAC8  48 00 00 64 */	b lbl_8002AB2C
lbl_8002AACC:
/* 8002AACC  C0 42 82 E0 */	lfs f2, lit_4284(r2)
/* 8002AAD0  88 1E 00 90 */	lbz r0, 0x90(r30)
/* 8002AAD4  C8 22 82 B0 */	lfd f1, lit_3749(r2)
/* 8002AAD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8002AADC  3C 00 43 30 */	lis r0, 0x4330
/* 8002AAE0  90 01 00 30 */	stw r0, 0x30(r1)
/* 8002AAE4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8002AAE8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8002AAEC  C0 02 82 F8 */	lfs f0, lit_4691(r2)
/* 8002AAF0  EC 01 00 24 */	fdivs f0, f1, f0
/* 8002AAF4  EF E2 00 28 */	fsubs f31, f2, f0
/* 8002AAF8  7F C3 F3 78 */	mr r3, r30
/* 8002AAFC  38 80 00 2F */	li r4, 0x2f
/* 8002AB00  38 A0 00 32 */	li r5, 0x32
/* 8002AB04  FC 20 F8 90 */	fmr f1, f31
/* 8002AB08  4B FF EC A1 */	bl setMapPaletteColorAlphaPer__6dMap_cFiif
/* 8002AB0C  7F C3 F3 78 */	mr r3, r30
/* 8002AB10  38 80 00 21 */	li r4, 0x21
/* 8002AB14  38 A0 00 2B */	li r5, 0x2b
/* 8002AB18  FC 20 F8 90 */	fmr f1, f31
/* 8002AB1C  4B FF EC 8D */	bl setMapPaletteColorAlphaPer__6dMap_cFiif
/* 8002AB20  48 00 00 0C */	b lbl_8002AB2C
lbl_8002AB24:
/* 8002AB24  7F C3 F3 78 */	mr r3, r30
/* 8002AB28  4B FF EC 25 */	bl copyPalette__6dMap_cFv
lbl_8002AB2C:
/* 8002AB2C  38 00 00 01 */	li r0, 1
/* 8002AB30  98 1E 00 8D */	stb r0, 0x8d(r30)
/* 8002AB34  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8002AB38  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8002AB3C  39 61 00 50 */	addi r11, r1, 0x50
/* 8002AB40  48 33 76 E9 */	bl _restgpr_29
/* 8002AB44  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8002AB48  7C 08 03 A6 */	mtlr r0
/* 8002AB4C  38 21 00 60 */	addi r1, r1, 0x60
/* 8002AB50  4E 80 00 20 */	blr 
