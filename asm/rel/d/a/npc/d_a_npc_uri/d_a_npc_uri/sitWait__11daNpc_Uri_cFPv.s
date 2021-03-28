lbl_80B2B24C:
/* 80B2B24C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B2B250  7C 08 02 A6 */	mflr r0
/* 80B2B254  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B2B258  39 61 00 30 */	addi r11, r1, 0x30
/* 80B2B25C  4B 83 6F 7C */	b _savegpr_28
/* 80B2B260  7C 7E 1B 78 */	mr r30, r3
/* 80B2B264  3C 60 80 B3 */	lis r3, m__17daNpc_Uri_Param_c@ha
/* 80B2B268  3B E3 CE 14 */	addi r31, r3, m__17daNpc_Uri_Param_c@l
/* 80B2B26C  38 7F 00 00 */	addi r3, r31, 0
/* 80B2B270  AB 83 00 92 */	lha r28, 0x92(r3)
/* 80B2B274  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80B2B278  2C 00 00 02 */	cmpwi r0, 2
/* 80B2B27C  41 82 02 40 */	beq lbl_80B2B4BC
/* 80B2B280  40 80 05 24 */	bge lbl_80B2B7A4
/* 80B2B284  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B288  40 80 00 0C */	bge lbl_80B2B294
/* 80B2B28C  48 00 05 18 */	b lbl_80B2B7A4
/* 80B2B290  48 00 05 14 */	b lbl_80B2B7A4
lbl_80B2B294:
/* 80B2B294  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B2B298  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B29C  40 82 02 20 */	bne lbl_80B2B4BC
/* 80B2B2A0  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80B2B2A4  2C 00 00 04 */	cmpwi r0, 4
/* 80B2B2A8  41 82 01 28 */	beq lbl_80B2B3D0
/* 80B2B2AC  40 80 02 08 */	bge lbl_80B2B4B4
/* 80B2B2B0  2C 00 00 01 */	cmpwi r0, 1
/* 80B2B2B4  41 82 00 08 */	beq lbl_80B2B2BC
/* 80B2B2B8  48 00 01 FC */	b lbl_80B2B4B4
lbl_80B2B2BC:
/* 80B2B2BC  88 1E 10 0C */	lbz r0, 0x100c(r30)
/* 80B2B2C0  28 00 00 00 */	cmplwi r0, 0
/* 80B2B2C4  41 82 00 60 */	beq lbl_80B2B324
/* 80B2B2C8  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B2B2CC  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B2B2D0  41 82 00 24 */	beq lbl_80B2B2F4
/* 80B2B2D4  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B2B2D8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B2B2DC  4B 61 A5 BC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2B2E0  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B2B2E4  38 00 00 11 */	li r0, 0x11
/* 80B2B2E8  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B2B2EC  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2B2F0  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B2B2F4:
/* 80B2B2F4  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B2B2F8  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B2B2FC  41 82 01 B8 */	beq lbl_80B2B4B4
/* 80B2B300  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B2B304  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B2B308  4B 61 A5 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2B30C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B2B310  38 00 00 1A */	li r0, 0x1a
/* 80B2B314  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B2B318  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 80B2B31C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80B2B320  48 00 01 94 */	b lbl_80B2B4B4
lbl_80B2B324:
/* 80B2B324  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B2B328  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B2B32C  41 82 00 24 */	beq lbl_80B2B350
/* 80B2B330  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B2B334  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B2B338  4B 61 A5 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2B33C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B2B340  38 00 00 11 */	li r0, 0x11
/* 80B2B344  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B2B348  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2B34C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B2B350:
/* 80B2B350  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B2B354  2C 00 00 05 */	cmpwi r0, 5
/* 80B2B358  41 82 00 24 */	beq lbl_80B2B37C
/* 80B2B35C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B2B360  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B2B364  4B 61 A5 34 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2B368  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B2B36C  38 00 00 05 */	li r0, 5
/* 80B2B370  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B2B374  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2B378  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80B2B37C:
/* 80B2B37C  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 80B2B380  C8 7F 01 10 */	lfd f3, 0x110(r31)
/* 80B2B384  6F 83 80 00 */	xoris r3, r28, 0x8000
/* 80B2B388  90 61 00 0C */	stw r3, 0xc(r1)
/* 80B2B38C  3C 00 43 30 */	lis r0, 0x4330
/* 80B2B390  90 01 00 08 */	stw r0, 8(r1)
/* 80B2B394  C8 01 00 08 */	lfd f0, 8(r1)
/* 80B2B398  EC 00 18 28 */	fsubs f0, f0, f3
/* 80B2B39C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B2B3A0  C0 5F 01 54 */	lfs f2, 0x154(r31)
/* 80B2B3A4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B2B3A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B2B3AC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80B2B3B0  EC 00 18 28 */	fsubs f0, f0, f3
/* 80B2B3B4  EC 42 00 32 */	fmuls f2, f2, f0
/* 80B2B3B8  48 00 17 75 */	bl func_80B2CB2C
/* 80B2B3BC  FC 00 08 1E */	fctiwz f0, f1
/* 80B2B3C0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B2B3C4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B2B3C8  90 1E 0F F0 */	stw r0, 0xff0(r30)
/* 80B2B3CC  48 00 00 E8 */	b lbl_80B2B4B4
lbl_80B2B3D0:
/* 80B2B3D0  38 60 00 3D */	li r3, 0x3d
/* 80B2B3D4  4B 62 16 D8 */	b daNpcT_chkEvtBit__FUl
/* 80B2B3D8  2C 03 00 00 */	cmpwi r3, 0
/* 80B2B3DC  41 82 00 80 */	beq lbl_80B2B45C
/* 80B2B3E0  38 60 01 4A */	li r3, 0x14a
/* 80B2B3E4  4B 62 16 C8 */	b daNpcT_chkEvtBit__FUl
/* 80B2B3E8  2C 03 00 00 */	cmpwi r3, 0
/* 80B2B3EC  40 82 00 14 */	bne lbl_80B2B400
/* 80B2B3F0  38 60 02 04 */	li r3, 0x204
/* 80B2B3F4  4B 62 16 B8 */	b daNpcT_chkEvtBit__FUl
/* 80B2B3F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B2B3FC  41 82 00 60 */	beq lbl_80B2B45C
lbl_80B2B400:
/* 80B2B400  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B2B404  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B2B408  41 82 00 24 */	beq lbl_80B2B42C
/* 80B2B40C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B2B410  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B2B414  4B 61 A4 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2B418  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B2B41C  38 00 00 11 */	li r0, 0x11
/* 80B2B420  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B2B424  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2B428  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B2B42C:
/* 80B2B42C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B2B430  2C 00 00 03 */	cmpwi r0, 3
/* 80B2B434  41 82 00 80 */	beq lbl_80B2B4B4
/* 80B2B438  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B2B43C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B2B440  4B 61 A4 58 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2B444  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B2B448  38 00 00 03 */	li r0, 3
/* 80B2B44C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B2B450  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2B454  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80B2B458  48 00 00 5C */	b lbl_80B2B4B4
lbl_80B2B45C:
/* 80B2B45C  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B2B460  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B2B464  41 82 00 24 */	beq lbl_80B2B488
/* 80B2B468  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B2B46C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B2B470  4B 61 A4 28 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2B474  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B2B478  38 00 00 0A */	li r0, 0xa
/* 80B2B47C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B2B480  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2B484  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B2B488:
/* 80B2B488  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B2B48C  2C 00 00 12 */	cmpwi r0, 0x12
/* 80B2B490  41 82 00 24 */	beq lbl_80B2B4B4
/* 80B2B494  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B2B498  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B2B49C  4B 61 A3 FC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2B4A0  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B2B4A4  38 00 00 12 */	li r0, 0x12
/* 80B2B4A8  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B2B4AC  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2B4B0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80B2B4B4:
/* 80B2B4B4  38 00 00 02 */	li r0, 2
/* 80B2B4B8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B2B4BC:
/* 80B2B4BC  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80B2B4C0  28 00 00 04 */	cmplwi r0, 4
/* 80B2B4C4  40 82 00 20 */	bne lbl_80B2B4E4
/* 80B2B4C8  38 60 01 4A */	li r3, 0x14a
/* 80B2B4CC  4B 62 15 E0 */	b daNpcT_chkEvtBit__FUl
/* 80B2B4D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B2B4D4  40 82 00 10 */	bne lbl_80B2B4E4
/* 80B2B4D8  38 00 00 01 */	li r0, 1
/* 80B2B4DC  98 1E 0E 32 */	stb r0, 0xe32(r30)
/* 80B2B4E0  98 1E 0E 33 */	stb r0, 0xe33(r30)
lbl_80B2B4E4:
/* 80B2B4E4  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B2B4E8  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B4EC  40 82 02 B8 */	bne lbl_80B2B7A4
/* 80B2B4F0  88 1E 10 0C */	lbz r0, 0x100c(r30)
/* 80B2B4F4  28 00 00 00 */	cmplwi r0, 0
/* 80B2B4F8  41 82 00 70 */	beq lbl_80B2B568
/* 80B2B4FC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B2B500  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B504  41 82 00 24 */	beq lbl_80B2B528
/* 80B2B508  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B2B50C  4B 61 A1 F0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B2B510  38 00 00 00 */	li r0, 0
/* 80B2B514  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B2B518  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B2B51C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B2B520  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B2B524  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B2B528:
/* 80B2B528  38 00 00 00 */	li r0, 0
/* 80B2B52C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B2B530  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B2B534  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B2B538  40 82 00 24 */	bne lbl_80B2B55C
/* 80B2B53C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B2B540  4B 61 A4 E4 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80B2B544  2C 03 00 00 */	cmpwi r3, 0
/* 80B2B548  41 82 00 14 */	beq lbl_80B2B55C
/* 80B2B54C  38 00 00 00 */	li r0, 0
/* 80B2B550  98 1E 10 0C */	stb r0, 0x100c(r30)
/* 80B2B554  38 00 00 01 */	li r0, 1
/* 80B2B558  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B2B55C:
/* 80B2B55C  38 00 00 00 */	li r0, 0
/* 80B2B560  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80B2B564  48 00 01 A4 */	b lbl_80B2B708
lbl_80B2B568:
/* 80B2B568  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B2B56C  4B 61 A1 9C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B2B570  28 03 00 00 */	cmplwi r3, 0
/* 80B2B574  41 82 00 CC */	beq lbl_80B2B640
/* 80B2B578  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B2B57C  28 00 00 00 */	cmplwi r0, 0
/* 80B2B580  40 82 00 C0 */	bne lbl_80B2B640
/* 80B2B584  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B2B588  2C 00 00 01 */	cmpwi r0, 1
/* 80B2B58C  41 82 00 28 */	beq lbl_80B2B5B4
/* 80B2B590  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B2B594  4B 61 A1 68 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B2B598  38 00 00 00 */	li r0, 0
/* 80B2B59C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B2B5A0  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B2B5A4  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B2B5A8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B2B5AC  38 00 00 01 */	li r0, 1
/* 80B2B5B0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B2B5B4:
/* 80B2B5B4  38 00 00 00 */	li r0, 0
/* 80B2B5B8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B2B5BC  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B2B5C0  4B 61 A1 48 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B2B5C4  7C 64 1B 78 */	mr r4, r3
/* 80B2B5C8  7F C3 F3 78 */	mr r3, r30
/* 80B2B5CC  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 80B2B5D0  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80B2B5D4  4B 61 F5 FC */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B2B5D8  2C 03 00 00 */	cmpwi r3, 0
/* 80B2B5DC  40 82 00 38 */	bne lbl_80B2B614
/* 80B2B5E0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B2B5E4  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B5E8  41 82 00 24 */	beq lbl_80B2B60C
/* 80B2B5EC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B2B5F0  4B 61 A1 0C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B2B5F4  38 00 00 00 */	li r0, 0
/* 80B2B5F8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B2B5FC  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B2B600  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B2B604  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B2B608  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B2B60C:
/* 80B2B60C  38 00 00 00 */	li r0, 0
/* 80B2B610  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80B2B614:
/* 80B2B614  7F C3 F3 78 */	mr r3, r30
/* 80B2B618  4B 61 FD 20 */	b srchPlayerActor__8daNpcT_cFv
/* 80B2B61C  2C 03 00 00 */	cmpwi r3, 0
/* 80B2B620  40 82 00 E8 */	bne lbl_80B2B708
/* 80B2B624  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80B2B628  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B2B62C  7C 03 00 00 */	cmpw r3, r0
/* 80B2B630  40 82 00 D8 */	bne lbl_80B2B708
/* 80B2B634  38 00 00 01 */	li r0, 1
/* 80B2B638  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B2B63C  48 00 00 CC */	b lbl_80B2B708
lbl_80B2B640:
/* 80B2B640  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B2B644  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B648  41 82 00 24 */	beq lbl_80B2B66C
/* 80B2B64C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B2B650  4B 61 A0 AC */	b remove__18daNpcT_ActorMngr_cFv
/* 80B2B654  38 00 00 00 */	li r0, 0
/* 80B2B658  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B2B65C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B2B660  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B2B664  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B2B668  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B2B66C:
/* 80B2B66C  38 00 00 00 */	li r0, 0
/* 80B2B670  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B2B674  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80B2B678  28 00 00 01 */	cmplwi r0, 1
/* 80B2B67C  40 82 00 68 */	bne lbl_80B2B6E4
/* 80B2B680  80 7E 0F F0 */	lwz r3, 0xff0(r30)
/* 80B2B684  2C 03 00 00 */	cmpwi r3, 0
/* 80B2B688  40 82 00 54 */	bne lbl_80B2B6DC
/* 80B2B68C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B2B690  2C 00 00 07 */	cmpwi r0, 7
/* 80B2B694  40 82 00 20 */	bne lbl_80B2B6B4
/* 80B2B698  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B2B69C  4B 61 A3 88 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80B2B6A0  2C 03 00 00 */	cmpwi r3, 0
/* 80B2B6A4  41 82 00 40 */	beq lbl_80B2B6E4
/* 80B2B6A8  38 00 00 01 */	li r0, 1
/* 80B2B6AC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B2B6B0  48 00 00 34 */	b lbl_80B2B6E4
lbl_80B2B6B4:
/* 80B2B6B4  41 82 00 30 */	beq lbl_80B2B6E4
/* 80B2B6B8  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B2B6BC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B2B6C0  4B 61 A1 D8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2B6C4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B2B6C8  38 00 00 07 */	li r0, 7
/* 80B2B6CC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B2B6D0  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2B6D4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80B2B6D8  48 00 00 0C */	b lbl_80B2B6E4
lbl_80B2B6DC:
/* 80B2B6DC  38 03 FF FF */	addi r0, r3, -1
/* 80B2B6E0  90 1E 0F F0 */	stw r0, 0xff0(r30)
lbl_80B2B6E4:
/* 80B2B6E4  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B2B6E8  28 00 00 00 */	cmplwi r0, 0
/* 80B2B6EC  40 82 00 1C */	bne lbl_80B2B708
/* 80B2B6F0  7F C3 F3 78 */	mr r3, r30
/* 80B2B6F4  4B 61 FC 44 */	b srchPlayerActor__8daNpcT_cFv
/* 80B2B6F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B2B6FC  41 82 00 0C */	beq lbl_80B2B708
/* 80B2B700  38 00 00 01 */	li r0, 1
/* 80B2B704  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B2B708:
/* 80B2B708  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B2B70C  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B710  41 82 00 08 */	beq lbl_80B2B718
/* 80B2B714  48 00 00 90 */	b lbl_80B2B7A4
lbl_80B2B718:
/* 80B2B718  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80B2B71C  28 00 00 04 */	cmplwi r0, 4
/* 80B2B720  40 82 00 84 */	bne lbl_80B2B7A4
/* 80B2B724  38 7E 0F 88 */	addi r3, r30, 0xf88
/* 80B2B728  4B 61 9F E0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B2B72C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80B2B730  41 82 00 74 */	beq lbl_80B2B7A4
/* 80B2B734  80 7E 0B C8 */	lwz r3, 0xbc8(r30)
/* 80B2B738  38 1D 05 38 */	addi r0, r29, 0x538
/* 80B2B73C  7C 63 00 50 */	subf r3, r3, r0
/* 80B2B740  30 03 FF FF */	addic r0, r3, -1
/* 80B2B744  7C 00 19 10 */	subfe r0, r0, r3
/* 80B2B748  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B2B74C  40 82 00 10 */	bne lbl_80B2B75C
/* 80B2B750  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B2B754  2C 00 00 03 */	cmpwi r0, 3
/* 80B2B758  41 82 00 30 */	beq lbl_80B2B788
lbl_80B2B75C:
/* 80B2B75C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B2B760  4B 61 9F 9C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B2B764  38 00 00 00 */	li r0, 0
/* 80B2B768  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B2B76C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B2B770  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B2B774  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B2B778  38 00 00 03 */	li r0, 3
/* 80B2B77C  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 80B2B780  38 00 00 01 */	li r0, 1
/* 80B2B784  48 00 00 08 */	b lbl_80B2B78C
lbl_80B2B788:
/* 80B2B788  38 00 00 00 */	li r0, 0
lbl_80B2B78C:
/* 80B2B78C  2C 00 00 00 */	cmpwi r0, 0
/* 80B2B790  41 82 00 0C */	beq lbl_80B2B79C
/* 80B2B794  38 1D 05 38 */	addi r0, r29, 0x538
/* 80B2B798  90 1E 0B C8 */	stw r0, 0xbc8(r30)
lbl_80B2B79C:
/* 80B2B79C  38 00 00 00 */	li r0, 0
/* 80B2B7A0  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80B2B7A4:
/* 80B2B7A4  38 60 00 01 */	li r3, 1
/* 80B2B7A8  39 61 00 30 */	addi r11, r1, 0x30
/* 80B2B7AC  4B 83 6A 78 */	b _restgpr_28
/* 80B2B7B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B2B7B4  7C 08 03 A6 */	mtlr r0
/* 80B2B7B8  38 21 00 30 */	addi r1, r1, 0x30
/* 80B2B7BC  4E 80 00 20 */	blr 
