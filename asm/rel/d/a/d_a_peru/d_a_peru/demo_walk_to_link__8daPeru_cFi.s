lbl_80D4910C:
/* 80D4910C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D49110  7C 08 02 A6 */	mflr r0
/* 80D49114  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D49118  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4911C  4B 61 90 C0 */	b _savegpr_29
/* 80D49120  7C 7F 1B 78 */	mr r31, r3
/* 80D49124  3C 60 80 D5 */	lis r3, m__14daPeru_Param_c@ha
/* 80D49128  3B C3 C0 60 */	addi r30, r3, m__14daPeru_Param_c@l
/* 80D4912C  A0 1F 0E 22 */	lhz r0, 0xe22(r31)
/* 80D49130  2C 00 00 02 */	cmpwi r0, 2
/* 80D49134  41 82 00 A4 */	beq lbl_80D491D8
/* 80D49138  40 80 01 54 */	bge lbl_80D4928C
/* 80D4913C  2C 00 FF FF */	cmpwi r0, -1
/* 80D49140  41 82 01 4C */	beq lbl_80D4928C
/* 80D49144  40 80 00 08 */	bge lbl_80D4914C
/* 80D49148  48 00 01 44 */	b lbl_80D4928C
lbl_80D4914C:
/* 80D4914C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80D49150  2C 00 00 02 */	cmpwi r0, 2
/* 80D49154  41 82 00 24 */	beq lbl_80D49178
/* 80D49158  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80D4915C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80D49160  4B 3F C7 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D49164  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80D49168  38 00 00 02 */	li r0, 2
/* 80D4916C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80D49170  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D49174  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80D49178:
/* 80D49178  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80D4917C  2C 00 00 08 */	cmpwi r0, 8
/* 80D49180  41 82 00 24 */	beq lbl_80D491A4
/* 80D49184  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80D49188  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80D4918C  4B 3F C7 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D49190  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80D49194  38 00 00 08 */	li r0, 8
/* 80D49198  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80D4919C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D491A0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80D491A4:
/* 80D491A4  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80D491A8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80D491AC  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D491B0  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80D491B4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80D491B8  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80D491BC  38 00 00 00 */	li r0, 0
/* 80D491C0  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
/* 80D491C4  38 00 00 14 */	li r0, 0x14
/* 80D491C8  B0 1F 0E 6C */	sth r0, 0xe6c(r31)
/* 80D491CC  38 00 00 02 */	li r0, 2
/* 80D491D0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80D491D4  48 00 00 B8 */	b lbl_80D4928C
lbl_80D491D8:
/* 80D491D8  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80D491DC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D491E0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D491E4  38 7F 0E 50 */	addi r3, r31, 0xe50
/* 80D491E8  4B 3F C5 20 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80D491EC  7C 7D 1B 78 */	mr r29, r3
/* 80D491F0  7F E3 FB 78 */	mr r3, r31
/* 80D491F4  7F A4 EB 78 */	mr r4, r29
/* 80D491F8  4B 2D 15 18 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D491FC  7C 64 1B 78 */	mr r4, r3
/* 80D49200  38 7F 0D 7A */	addi r3, r31, 0xd7a
/* 80D49204  38 A0 08 00 */	li r5, 0x800
/* 80D49208  4B 52 79 88 */	b cLib_chaseAngleS__FPsss
/* 80D4920C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80D49210  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80D49214  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80D49218  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80D4921C  7F E3 FB 78 */	mr r3, r31
/* 80D49220  7F A4 EB 78 */	mr r4, r29
/* 80D49224  4B 2D 17 40 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D49228  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 80D4922C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D49230  4C 40 13 82 */	cror 2, 0, 2
/* 80D49234  40 82 00 58 */	bne lbl_80D4928C
/* 80D49238  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D4923C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80D49240  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80D49244  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80D49248  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80D4924C  38 00 00 00 */	li r0, 0
/* 80D49250  B0 1F 0D D8 */	sth r0, 0xdd8(r31)
/* 80D49254  3C 60 80 D5 */	lis r3, lit_5219@ha
/* 80D49258  38 83 C5 8C */	addi r4, r3, lit_5219@l
/* 80D4925C  80 64 00 00 */	lwz r3, 0(r4)
/* 80D49260  80 04 00 04 */	lwz r0, 4(r4)
/* 80D49264  90 61 00 08 */	stw r3, 8(r1)
/* 80D49268  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D4926C  80 04 00 08 */	lwz r0, 8(r4)
/* 80D49270  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D49274  7F E3 FB 78 */	mr r3, r31
/* 80D49278  38 81 00 08 */	addi r4, r1, 8
/* 80D4927C  38 A0 00 00 */	li r5, 0
/* 80D49280  4B FF F0 E5 */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
/* 80D49284  38 60 00 01 */	li r3, 1
/* 80D49288  48 00 00 08 */	b lbl_80D49290
lbl_80D4928C:
/* 80D4928C  38 60 00 00 */	li r3, 0
lbl_80D49290:
/* 80D49290  39 61 00 30 */	addi r11, r1, 0x30
/* 80D49294  4B 61 8F 94 */	b _restgpr_29
/* 80D49298  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D4929C  7C 08 03 A6 */	mtlr r0
/* 80D492A0  38 21 00 30 */	addi r1, r1, 0x30
/* 80D492A4  4E 80 00 20 */	blr 
