lbl_80A3D32C:
/* 80A3D32C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A3D330  7C 08 02 A6 */	mflr r0
/* 80A3D334  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A3D338  39 61 00 30 */	addi r11, r1, 0x30
/* 80A3D33C  4B 92 4E A1 */	bl _savegpr_29
/* 80A3D340  7C 7E 1B 78 */	mr r30, r3
/* 80A3D344  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A3D348  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A3D34C  A0 1E 0E 2A */	lhz r0, 0xe2a(r30)
/* 80A3D350  2C 00 00 02 */	cmpwi r0, 2
/* 80A3D354  41 82 00 E0 */	beq lbl_80A3D434
/* 80A3D358  40 80 03 64 */	bge lbl_80A3D6BC
/* 80A3D35C  2C 00 00 00 */	cmpwi r0, 0
/* 80A3D360  40 80 00 0C */	bge lbl_80A3D36C
/* 80A3D364  48 00 03 58 */	b lbl_80A3D6BC
/* 80A3D368  48 00 03 54 */	b lbl_80A3D6BC
lbl_80A3D36C:
/* 80A3D36C  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A3D370  2C 00 00 01 */	cmpwi r0, 1
/* 80A3D374  41 82 00 24 */	beq lbl_80A3D398
/* 80A3D378  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A3D37C  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A3D380  4B 70 85 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3D384  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A3D388  38 00 00 01 */	li r0, 1
/* 80A3D38C  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A3D390  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3D394  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A3D398:
/* 80A3D398  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A3D39C  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A3D3A0  41 82 00 24 */	beq lbl_80A3D3C4
/* 80A3D3A4  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A3D3A8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A3D3AC  4B 70 84 ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3D3B0  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A3D3B4  38 00 00 12 */	li r0, 0x12
/* 80A3D3B8  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A3D3BC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3D3C0  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
lbl_80A3D3C4:
/* 80A3D3C4  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005004F@ha */
/* 80A3D3C8  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0005004F@l */
/* 80A3D3CC  90 01 00 08 */	stw r0, 8(r1)
/* 80A3D3D0  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80A3D3D4  38 81 00 08 */	addi r4, r1, 8
/* 80A3D3D8  38 A0 FF FF */	li r5, -1
/* 80A3D3DC  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80A3D3E0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A3D3E4  7D 89 03 A6 */	mtctr r12
/* 80A3D3E8  4E 80 04 21 */	bctrl 
/* 80A3D3EC  80 1E 0D 14 */	lwz r0, 0xd14(r30)
/* 80A3D3F0  2C 00 00 00 */	cmpwi r0, 0
/* 80A3D3F4  41 82 00 24 */	beq lbl_80A3D418
/* 80A3D3F8  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A3D3FC  4B 70 83 01 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A3D400  38 00 00 00 */	li r0, 0
/* 80A3D404  90 1E 0B FC */	stw r0, 0xbfc(r30)
/* 80A3D408  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3D40C  D0 1E 0D 28 */	stfs f0, 0xd28(r30)
/* 80A3D410  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A3D414  90 1E 0D 14 */	stw r0, 0xd14(r30)
lbl_80A3D418:
/* 80A3D418  38 00 00 00 */	li r0, 0
/* 80A3D41C  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A3D420  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80A3D424  A8 03 00 8E */	lha r0, 0x8e(r3)
/* 80A3D428  90 1E 0D EC */	stw r0, 0xdec(r30)
/* 80A3D42C  38 00 00 02 */	li r0, 2
/* 80A3D430  B0 1E 0E 2A */	sth r0, 0xe2a(r30)
lbl_80A3D434:
/* 80A3D434  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A3D438  D0 1E 15 B0 */	stfs f0, 0x15b0(r30)
/* 80A3D43C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A3D440  D0 1E 15 B4 */	stfs f0, 0x15b4(r30)
/* 80A3D444  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A3D448  D0 1E 15 B8 */	stfs f0, 0x15b8(r30)
/* 80A3D44C  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A3D450  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A3D454  40 82 00 98 */	bne lbl_80A3D4EC
/* 80A3D458  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80A3D45C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3D460  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3D464  4C 40 13 82 */	cror 2, 0, 2
/* 80A3D468  40 82 01 EC */	bne lbl_80A3D654
/* 80A3D46C  80 1E 06 FC */	lwz r0, 0x6fc(r30)
/* 80A3D470  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A3D474  41 82 01 E0 */	beq lbl_80A3D654
/* 80A3D478  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A3D47C  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80A3D480  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A3D484  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80A3D488  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A3D48C  2C 00 00 01 */	cmpwi r0, 1
/* 80A3D490  41 82 00 24 */	beq lbl_80A3D4B4
/* 80A3D494  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A3D498  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A3D49C  4B 70 83 FD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3D4A0  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A3D4A4  38 00 00 01 */	li r0, 1
/* 80A3D4A8  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A3D4AC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3D4B0  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A3D4B4:
/* 80A3D4B4  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A3D4B8  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A3D4BC  41 82 00 24 */	beq lbl_80A3D4E0
/* 80A3D4C0  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A3D4C4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A3D4C8  4B 70 83 D1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3D4CC  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A3D4D0  38 00 00 13 */	li r0, 0x13
/* 80A3D4D4  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A3D4D8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3D4DC  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
lbl_80A3D4E0:
/* 80A3D4E0  7F C3 F3 78 */	mr r3, r30
/* 80A3D4E4  4B FF A0 75 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A3D4E8  48 00 01 6C */	b lbl_80A3D654
lbl_80A3D4EC:
/* 80A3D4EC  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A3D4F0  40 82 01 64 */	bne lbl_80A3D654
/* 80A3D4F4  80 1E 0B B8 */	lwz r0, 0xbb8(r30)
/* 80A3D4F8  2C 00 00 00 */	cmpwi r0, 0
/* 80A3D4FC  40 82 00 34 */	bne lbl_80A3D530
/* 80A3D500  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80A3D504  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A3D508  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 80A3D50C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3D510  4C 41 13 82 */	cror 2, 1, 2
/* 80A3D514  40 82 01 40 */	bne lbl_80A3D654
/* 80A3D518  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80A3D51C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A3D520  40 80 01 34 */	bge lbl_80A3D654
/* 80A3D524  7F C3 F3 78 */	mr r3, r30
/* 80A3D528  4B FF A0 31 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A3D52C  48 00 01 28 */	b lbl_80A3D654
lbl_80A3D530:
/* 80A3D530  A0 7E 05 8E */	lhz r3, 0x58e(r30)
/* 80A3D534  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80A3D538  40 82 00 70 */	bne lbl_80A3D5A8
/* 80A3D53C  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 80A3D540  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A3D544  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3D548  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A3D54C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A3D550  60 60 00 01 */	ori r0, r3, 1
/* 80A3D554  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 80A3D558  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80A3D55C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A3D560  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A3D564  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A3D568  38 63 00 30 */	addi r3, r3, 0x30
/* 80A3D56C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A3D570  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A3D574  4B 90 8F 3D */	bl PSMTXCopy
/* 80A3D578  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A3D57C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A3D580  38 81 00 0C */	addi r4, r1, 0xc
/* 80A3D584  38 BE 15 C0 */	addi r5, r30, 0x15c0
/* 80A3D588  4B 90 97 E5 */	bl PSMTXMultVec
/* 80A3D58C  C0 1E 15 C0 */	lfs f0, 0x15c0(r30)
/* 80A3D590  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 80A3D594  C0 1E 15 C4 */	lfs f0, 0x15c4(r30)
/* 80A3D598  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 80A3D59C  C0 1E 15 C8 */	lfs f0, 0x15c8(r30)
/* 80A3D5A0  D0 1E 05 70 */	stfs f0, 0x570(r30)
/* 80A3D5A4  48 00 00 B0 */	b lbl_80A3D654
lbl_80A3D5A8:
/* 80A3D5A8  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80A3D5AC  41 82 00 A8 */	beq lbl_80A3D654
/* 80A3D5B0  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A3D5B4  2C 00 00 01 */	cmpwi r0, 1
/* 80A3D5B8  41 82 00 24 */	beq lbl_80A3D5DC
/* 80A3D5BC  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A3D5C0  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A3D5C4  4B 70 82 D5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3D5C8  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A3D5CC  38 00 00 01 */	li r0, 1
/* 80A3D5D0  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A3D5D4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3D5D8  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A3D5DC:
/* 80A3D5DC  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A3D5E0  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A3D5E4  41 82 00 24 */	beq lbl_80A3D608
/* 80A3D5E8  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A3D5EC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A3D5F0  4B 70 82 A9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3D5F4  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A3D5F8  38 00 00 14 */	li r0, 0x14
/* 80A3D5FC  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A3D600  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3D604  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
lbl_80A3D608:
/* 80A3D608  88 1E 15 AC */	lbz r0, 0x15ac(r30)
/* 80A3D60C  28 00 00 00 */	cmplwi r0, 0
/* 80A3D610  40 82 00 10 */	bne lbl_80A3D620
/* 80A3D614  38 00 00 07 */	li r0, 7
/* 80A3D618  B0 1E 0E 36 */	sth r0, 0xe36(r30)
/* 80A3D61C  48 00 00 14 */	b lbl_80A3D630
lbl_80A3D620:
/* 80A3D620  28 00 00 01 */	cmplwi r0, 1
/* 80A3D624  40 82 00 0C */	bne lbl_80A3D630
/* 80A3D628  38 00 00 09 */	li r0, 9
/* 80A3D62C  B0 1E 0E 36 */	sth r0, 0xe36(r30)
lbl_80A3D630:
/* 80A3D630  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80A3D634  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040001@ha */
/* 80A3D638  38 84 00 01 */	addi r4, r4, 0x0001 /* 0x00040001@l */
/* 80A3D63C  38 A0 00 1E */	li r5, 0x1e
/* 80A3D640  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80A3D644  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A3D648  7D 89 03 A6 */	mtctr r12
/* 80A3D64C  4E 80 04 21 */	bctrl 
/* 80A3D650  48 00 00 6C */	b lbl_80A3D6BC
lbl_80A3D654:
/* 80A3D654  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80A3D658  4B FF E6 F1 */	bl func_80A3BD48
/* 80A3D65C  2C 03 00 00 */	cmpwi r3, 0
/* 80A3D660  40 82 00 5C */	bne lbl_80A3D6BC
/* 80A3D664  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3D668  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A3D66C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A3D670  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80A3D674  28 00 00 27 */	cmplwi r0, 0x27
/* 80A3D678  41 82 00 44 */	beq lbl_80A3D6BC
/* 80A3D67C  A0 7E 05 8E */	lhz r3, 0x58e(r30)
/* 80A3D680  38 00 FF E8 */	li r0, -24
/* 80A3D684  7C 60 00 38 */	and r0, r3, r0
/* 80A3D688  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 80A3D68C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A3D690  D0 1E 15 B0 */	stfs f0, 0x15b0(r30)
/* 80A3D694  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A3D698  D0 1E 15 B4 */	stfs f0, 0x15b4(r30)
/* 80A3D69C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A3D6A0  D0 1E 15 B8 */	stfs f0, 0x15b8(r30)
/* 80A3D6A4  38 00 00 03 */	li r0, 3
/* 80A3D6A8  B0 1E 0E 36 */	sth r0, 0xe36(r30)
/* 80A3D6AC  38 00 02 DC */	li r0, 0x2dc
/* 80A3D6B0  90 1E 0A B0 */	stw r0, 0xab0(r30)
/* 80A3D6B4  38 00 00 02 */	li r0, 2
/* 80A3D6B8  98 1E 15 AE */	stb r0, 0x15ae(r30)
lbl_80A3D6BC:
/* 80A3D6BC  38 60 00 01 */	li r3, 1
/* 80A3D6C0  39 61 00 30 */	addi r11, r1, 0x30
/* 80A3D6C4  4B 92 4B 65 */	bl _restgpr_29
/* 80A3D6C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A3D6CC  7C 08 03 A6 */	mtlr r0
/* 80A3D6D0  38 21 00 30 */	addi r1, r1, 0x30
/* 80A3D6D4  4E 80 00 20 */	blr 
