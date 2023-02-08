lbl_805771EC:
/* 805771EC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805771F0  7C 08 02 A6 */	mflr r0
/* 805771F4  90 01 00 64 */	stw r0, 0x64(r1)
/* 805771F8  39 61 00 60 */	addi r11, r1, 0x60
/* 805771FC  4B DE AF DD */	bl _savegpr_28
/* 80577200  7C 7D 1B 78 */	mr r29, r3
/* 80577204  3C 60 80 58 */	lis r3, ccCylSrc@ha /* 0x80578A88@ha */
/* 80577208  3B E3 8A 88 */	addi r31, r3, ccCylSrc@l /* 0x80578A88@l */
/* 8057720C  A8 1D 11 E4 */	lha r0, 0x11e4(r29)
/* 80577210  2C 00 00 00 */	cmpwi r0, 0
/* 80577214  40 82 02 D4 */	bne lbl_805774E8
/* 80577218  38 7D 13 04 */	addi r3, r29, 0x1304
/* 8057721C  4B B0 C6 15 */	bl Move__10dCcD_GSttsFv
/* 80577220  38 7D 13 24 */	addi r3, r29, 0x1324
/* 80577224  4B B0 D2 3D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80577228  28 03 00 00 */	cmplwi r3, 0
/* 8057722C  41 82 02 BC */	beq lbl_805774E8
/* 80577230  38 00 00 0A */	li r0, 0xa
/* 80577234  B0 1D 11 E4 */	sth r0, 0x11e4(r29)
/* 80577238  38 7D 13 24 */	addi r3, r29, 0x1324
/* 8057723C  4B B0 D2 BD */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80577240  4B CE C8 09 */	bl GetAc__8cCcD_ObjFv
/* 80577244  7C 7C 1B 78 */	mr r28, r3
/* 80577248  38 9D 13 F8 */	addi r4, r29, 0x13f8
/* 8057724C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80577250  4B CF 99 B5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80577254  7C 7E 1B 78 */	mr r30, r3
/* 80577258  A8 1C 00 08 */	lha r0, 8(r28)
/* 8057725C  2C 00 02 16 */	cmpwi r0, 0x216
/* 80577260  40 82 02 74 */	bne lbl_805774D4
/* 80577264  A8 7D 05 A8 */	lha r3, 0x5a8(r29)
/* 80577268  38 03 00 01 */	addi r0, r3, 1
/* 8057726C  B0 1D 05 A8 */	sth r0, 0x5a8(r29)
/* 80577270  38 60 02 16 */	li r3, 0x216
/* 80577274  38 81 00 24 */	addi r4, r1, 0x24
/* 80577278  4B AA 27 B5 */	bl fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 8057727C  2C 03 00 00 */	cmpwi r3, 0
/* 80577280  41 82 00 40 */	beq lbl_805772C0
/* 80577284  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80577288  28 03 00 00 */	cmplwi r3, 0
/* 8057728C  41 82 00 34 */	beq lbl_805772C0
/* 80577290  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80577294  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80577298  4B CF 99 6D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8057729C  7C 60 07 34 */	extsh r0, r3
/* 805772A0  C8 3F 00 98 */	lfd f1, 0x98(r31)
/* 805772A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805772A8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805772AC  3C 00 43 30 */	lis r0, 0x4330
/* 805772B0  90 01 00 48 */	stw r0, 0x48(r1)
/* 805772B4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 805772B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 805772BC  D0 1D 11 DC */	stfs f0, 0x11dc(r29)
lbl_805772C0:
/* 805772C0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802A0@ha */
/* 805772C4  38 03 02 A0 */	addi r0, r3, 0x02A0 /* 0x000802A0@l */
/* 805772C8  90 01 00 20 */	stw r0, 0x20(r1)
/* 805772CC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805772D0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805772D4  80 63 00 00 */	lwz r3, 0(r3)
/* 805772D8  38 81 00 20 */	addi r4, r1, 0x20
/* 805772DC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805772E0  38 C0 00 00 */	li r6, 0
/* 805772E4  38 E0 00 00 */	li r7, 0
/* 805772E8  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 805772EC  FC 40 08 90 */	fmr f2, f1
/* 805772F0  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 805772F4  FC 80 18 90 */	fmr f4, f3
/* 805772F8  39 00 00 00 */	li r8, 0
/* 805772FC  4B D3 46 89 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80577300  7F A3 EB 78 */	mr r3, r29
/* 80577304  4B FF F8 75 */	bl Set_Hahen__13daObjBHASHI_cFv
/* 80577308  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8057730C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80577310  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80577314  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80577318  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8057731C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80577320  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80577324  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80577328  38 80 00 07 */	li r4, 7
/* 8057732C  38 A0 00 01 */	li r5, 1
/* 80577330  38 C1 00 30 */	addi r6, r1, 0x30
/* 80577334  4B AF 86 F1 */	bl StartShock__12dVibration_cFii4cXyz
/* 80577338  88 9D 11 E2 */	lbz r4, 0x11e2(r29)
/* 8057733C  28 04 00 FF */	cmplwi r4, 0xff
/* 80577340  41 82 00 38 */	beq lbl_80577378
/* 80577344  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80577348  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057734C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80577350  7C 05 07 74 */	extsb r5, r0
/* 80577354  4B AB E0 0D */	bl isSwitch__10dSv_info_cCFii
/* 80577358  2C 03 00 00 */	cmpwi r3, 0
/* 8057735C  40 82 00 1C */	bne lbl_80577378
/* 80577360  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80577364  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80577368  88 9D 11 E2 */	lbz r4, 0x11e2(r29)
/* 8057736C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80577370  7C 05 07 74 */	extsb r5, r0
/* 80577374  4B AB DE 8D */	bl onSwitch__10dSv_info_cFii
lbl_80577378:
/* 80577378  38 61 00 28 */	addi r3, r1, 0x28
/* 8057737C  38 80 00 00 */	li r4, 0
/* 80577380  7F C5 F3 78 */	mr r5, r30
/* 80577384  38 C0 00 00 */	li r6, 0
/* 80577388  4B CF 00 6D */	bl __ct__5csXyzFsss
/* 8057738C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80577390  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80577394  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80577398  EC 21 00 28 */	fsubs f1, f1, f0
/* 8057739C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805773A0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805773A4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 805773A8  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 805773AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805773B0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805773B4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 805773B8  38 80 00 00 */	li r4, 0
/* 805773BC  90 81 00 08 */	stw r4, 8(r1)
/* 805773C0  38 00 FF FF */	li r0, -1
/* 805773C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805773C8  90 81 00 10 */	stw r4, 0x10(r1)
/* 805773CC  90 81 00 14 */	stw r4, 0x14(r1)
/* 805773D0  90 81 00 18 */	stw r4, 0x18(r1)
/* 805773D4  38 80 00 00 */	li r4, 0
/* 805773D8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008BFD@ha */
/* 805773DC  38 A5 8B FD */	addi r5, r5, 0x8BFD /* 0x00008BFD@l */
/* 805773E0  38 C1 00 3C */	addi r6, r1, 0x3c
/* 805773E4  38 FD 01 0C */	addi r7, r29, 0x10c
/* 805773E8  39 01 00 28 */	addi r8, r1, 0x28
/* 805773EC  39 20 00 00 */	li r9, 0
/* 805773F0  39 40 00 FF */	li r10, 0xff
/* 805773F4  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 805773F8  4B AD 56 99 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805773FC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80577400  38 80 00 00 */	li r4, 0
/* 80577404  90 81 00 08 */	stw r4, 8(r1)
/* 80577408  38 00 FF FF */	li r0, -1
/* 8057740C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80577410  90 81 00 10 */	stw r4, 0x10(r1)
/* 80577414  90 81 00 14 */	stw r4, 0x14(r1)
/* 80577418  90 81 00 18 */	stw r4, 0x18(r1)
/* 8057741C  38 80 00 00 */	li r4, 0
/* 80577420  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008BFE@ha */
/* 80577424  38 A5 8B FE */	addi r5, r5, 0x8BFE /* 0x00008BFE@l */
/* 80577428  38 C1 00 3C */	addi r6, r1, 0x3c
/* 8057742C  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80577430  39 01 00 28 */	addi r8, r1, 0x28
/* 80577434  39 20 00 00 */	li r9, 0
/* 80577438  39 40 00 FF */	li r10, 0xff
/* 8057743C  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80577440  4B AD 56 51 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80577444  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80577448  38 80 00 00 */	li r4, 0
/* 8057744C  90 81 00 08 */	stw r4, 8(r1)
/* 80577450  38 00 FF FF */	li r0, -1
/* 80577454  90 01 00 0C */	stw r0, 0xc(r1)
/* 80577458  90 81 00 10 */	stw r4, 0x10(r1)
/* 8057745C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80577460  90 81 00 18 */	stw r4, 0x18(r1)
/* 80577464  38 80 00 00 */	li r4, 0
/* 80577468  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008BFF@ha */
/* 8057746C  38 A5 8B FF */	addi r5, r5, 0x8BFF /* 0x00008BFF@l */
/* 80577470  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80577474  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80577478  39 01 00 28 */	addi r8, r1, 0x28
/* 8057747C  39 20 00 00 */	li r9, 0
/* 80577480  39 40 00 FF */	li r10, 0xff
/* 80577484  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80577488  4B AD 56 09 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8057748C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80577490  38 80 00 00 */	li r4, 0
/* 80577494  90 81 00 08 */	stw r4, 8(r1)
/* 80577498  38 00 FF FF */	li r0, -1
/* 8057749C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805774A0  90 81 00 10 */	stw r4, 0x10(r1)
/* 805774A4  90 81 00 14 */	stw r4, 0x14(r1)
/* 805774A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 805774AC  38 80 00 00 */	li r4, 0
/* 805774B0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008C00@ha */
/* 805774B4  38 A5 8C 00 */	addi r5, r5, 0x8C00 /* 0x00008C00@l */
/* 805774B8  38 C1 00 3C */	addi r6, r1, 0x3c
/* 805774BC  38 FD 01 0C */	addi r7, r29, 0x10c
/* 805774C0  39 01 00 28 */	addi r8, r1, 0x28
/* 805774C4  39 20 00 00 */	li r9, 0
/* 805774C8  39 40 00 FF */	li r10, 0xff
/* 805774CC  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 805774D0  4B AD 55 C1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_805774D4:
/* 805774D4  38 7D 13 24 */	addi r3, r29, 0x1324
/* 805774D8  4B B0 CF E1 */	bl ResetTgHit__12dCcD_GObjInfFv
/* 805774DC  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 805774E0  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 805774E4  90 1D 04 9C */	stw r0, 0x49c(r29)
lbl_805774E8:
/* 805774E8  39 61 00 60 */	addi r11, r1, 0x60
/* 805774EC  4B DE AD 39 */	bl _restgpr_28
/* 805774F0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805774F4  7C 08 03 A6 */	mtlr r0
/* 805774F8  38 21 00 60 */	addi r1, r1, 0x60
/* 805774FC  4E 80 00 20 */	blr 
