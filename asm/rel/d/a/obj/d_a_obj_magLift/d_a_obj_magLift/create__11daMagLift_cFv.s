lbl_80C8DB94:
/* 80C8DB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8DB98  7C 08 02 A6 */	mflr r0
/* 80C8DB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8DBA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8DBA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8DBA8  7C 7E 1B 78 */	mr r30, r3
/* 80C8DBAC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C8DBB0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C8DBB4  40 82 00 28 */	bne lbl_80C8DBDC
/* 80C8DBB8  28 1E 00 00 */	cmplwi r30, 0
/* 80C8DBBC  41 82 00 14 */	beq lbl_80C8DBD0
/* 80C8DBC0  4B 3E AA 65 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C8DBC4  3C 60 80 C9 */	lis r3, __vt__11daMagLift_c@ha /* 0x80C8E800@ha */
/* 80C8DBC8  38 03 E8 00 */	addi r0, r3, __vt__11daMagLift_c@l /* 0x80C8E800@l */
/* 80C8DBCC  90 1E 05 9C */	stw r0, 0x59c(r30)
lbl_80C8DBD0:
/* 80C8DBD0  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C8DBD4  60 00 00 08 */	ori r0, r0, 8
/* 80C8DBD8  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C8DBDC:
/* 80C8DBDC  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C8DBE0  3C 80 80 C9 */	lis r4, d_a_obj_magLift__stringBase0@ha /* 0x80C8E6D0@ha */
/* 80C8DBE4  38 84 E6 D0 */	addi r4, r4, d_a_obj_magLift__stringBase0@l /* 0x80C8E6D0@l */
/* 80C8DBE8  4B 39 F2 D5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C8DBEC  7C 7F 1B 78 */	mr r31, r3
/* 80C8DBF0  2C 1F 00 04 */	cmpwi r31, 4
/* 80C8DBF4  40 82 01 28 */	bne lbl_80C8DD1C
/* 80C8DBF8  7F C3 F3 78 */	mr r3, r30
/* 80C8DBFC  3C 80 80 C9 */	lis r4, d_a_obj_magLift__stringBase0@ha /* 0x80C8E6D0@ha */
/* 80C8DC00  38 84 E6 D0 */	addi r4, r4, d_a_obj_magLift__stringBase0@l /* 0x80C8E6D0@l */
/* 80C8DC04  38 A0 00 07 */	li r5, 7
/* 80C8DC08  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C8DC0C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C8DC10  38 E0 40 00 */	li r7, 0x4000
/* 80C8DC14  39 00 00 00 */	li r8, 0
/* 80C8DC18  4B 3E AB A5 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C8DC1C  2C 03 00 05 */	cmpwi r3, 5
/* 80C8DC20  40 82 00 0C */	bne lbl_80C8DC2C
/* 80C8DC24  38 60 00 05 */	li r3, 5
/* 80C8DC28  48 00 00 F8 */	b lbl_80C8DD20
lbl_80C8DC2C:
/* 80C8DC2C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C8DC30  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 80C8DC34  88 7E 05 AE */	lbz r3, 0x5ae(r30)
/* 80C8DC38  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C8DC3C  7C 04 07 74 */	extsb r4, r0
/* 80C8DC40  4B 3C 3B AD */	bl dPath_GetRoomPath__Fii
/* 80C8DC44  28 03 00 00 */	cmplwi r3, 0
/* 80C8DC48  40 82 00 0C */	bne lbl_80C8DC54
/* 80C8DC4C  38 60 00 00 */	li r3, 0
/* 80C8DC50  48 00 00 D0 */	b lbl_80C8DD20
lbl_80C8DC54:
/* 80C8DC54  80 63 00 08 */	lwz r3, 8(r3)
/* 80C8DC58  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C8DC5C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C8DC60  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C8DC64  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C8DC68  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C8DC6C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C8DC70  38 00 00 01 */	li r0, 1
/* 80C8DC74  98 1E 05 AF */	stb r0, 0x5af(r30)
/* 80C8DC78  38 00 00 00 */	li r0, 0
/* 80C8DC7C  B0 1E 05 B0 */	sth r0, 0x5b0(r30)
/* 80C8DC80  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C8DC84  54 00 D6 BA */	rlwinm r0, r0, 0x1a, 0x1a, 0x1d
/* 80C8DC88  3C 60 80 C9 */	lis r3, mSpeed__11daMagLift_c@ha /* 0x80C8E65C@ha */
/* 80C8DC8C  38 63 E6 5C */	addi r3, r3, mSpeed__11daMagLift_c@l /* 0x80C8E65C@l */
/* 80C8DC90  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C8DC94  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 80C8DC98  3C 60 80 C9 */	lis r3, lit_3718@ha /* 0x80C8E69C@ha */
/* 80C8DC9C  C0 03 E6 9C */	lfs f0, lit_3718@l(r3)  /* 0x80C8E69C@l */
/* 80C8DCA0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C8DCA4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C8DCA8  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 80C8DCAC  28 04 00 FF */	cmplwi r4, 0xff
/* 80C8DCB0  40 82 00 10 */	bne lbl_80C8DCC0
/* 80C8DCB4  7F C3 F3 78 */	mr r3, r30
/* 80C8DCB8  48 00 05 A9 */	bl init_modeWaitInit__11daMagLift_cFv
/* 80C8DCBC  48 00 00 3C */	b lbl_80C8DCF8
lbl_80C8DCC0:
/* 80C8DCC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8DCC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8DCC8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C8DCCC  7C 05 07 74 */	extsb r5, r0
/* 80C8DCD0  4B 3A 76 91 */	bl isSwitch__10dSv_info_cCFii
/* 80C8DCD4  98 7E 05 D1 */	stb r3, 0x5d1(r30)
/* 80C8DCD8  88 1E 05 D1 */	lbz r0, 0x5d1(r30)
/* 80C8DCDC  28 00 00 00 */	cmplwi r0, 0
/* 80C8DCE0  41 82 00 10 */	beq lbl_80C8DCF0
/* 80C8DCE4  7F C3 F3 78 */	mr r3, r30
/* 80C8DCE8  48 00 05 79 */	bl init_modeWaitInit__11daMagLift_cFv
/* 80C8DCEC  48 00 00 0C */	b lbl_80C8DCF8
lbl_80C8DCF0:
/* 80C8DCF0  7F C3 F3 78 */	mr r3, r30
/* 80C8DCF4  48 00 05 C5 */	bl init_modeMoveWait__11daMagLift_cFv
lbl_80C8DCF8:
/* 80C8DCF8  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8DCFC  38 03 00 24 */	addi r0, r3, 0x24
/* 80C8DD00  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C8DD04  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C8DD08  80 83 00 04 */	lwz r4, 4(r3)
/* 80C8DD0C  7F C3 F3 78 */	mr r3, r30
/* 80C8DD10  4B 38 C8 69 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C8DD14  7F C3 F3 78 */	mr r3, r30
/* 80C8DD18  4B FF FD 89 */	bl setBaseMtx__11daMagLift_cFv
lbl_80C8DD1C:
/* 80C8DD1C  7F E3 FB 78 */	mr r3, r31
lbl_80C8DD20:
/* 80C8DD20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8DD24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8DD28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8DD2C  7C 08 03 A6 */	mtlr r0
/* 80C8DD30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8DD34  4E 80 00 20 */	blr 
