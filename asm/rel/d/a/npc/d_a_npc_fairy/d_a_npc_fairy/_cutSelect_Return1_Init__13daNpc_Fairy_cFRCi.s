lbl_809B77AC:
/* 809B77AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B77B0  7C 08 02 A6 */	mflr r0
/* 809B77B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B77B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B77BC  93 C1 00 08 */	stw r30, 8(r1)
/* 809B77C0  7C 7E 1B 78 */	mr r30, r3
/* 809B77C4  80 04 00 00 */	lwz r0, 0(r4)
/* 809B77C8  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B77CC  41 82 00 C0 */	beq lbl_809B788C
/* 809B77D0  40 80 00 10 */	bge lbl_809B77E0
/* 809B77D4  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B77D8  41 82 00 14 */	beq lbl_809B77EC
/* 809B77DC  48 00 00 F8 */	b lbl_809B78D4
lbl_809B77E0:
/* 809B77E0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 809B77E4  41 82 00 D8 */	beq lbl_809B78BC
/* 809B77E8  48 00 00 EC */	b lbl_809B78D4
lbl_809B77EC:
/* 809B77EC  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 809B77F0  28 00 00 00 */	cmplwi r0, 0
/* 809B77F4  40 82 00 38 */	bne lbl_809B782C
/* 809B77F8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B77FC  2C 00 00 00 */	cmpwi r0, 0
/* 809B7800  41 82 00 5C */	beq lbl_809B785C
/* 809B7804  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 809B7808  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B780C  4B 78 E0 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B7810  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 809B7814  38 00 00 00 */	li r0, 0
/* 809B7818  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B781C  3C 60 80 9C */	lis r3, lit_3945@ha
/* 809B7820  C0 03 93 CC */	lfs f0, lit_3945@l(r3)
/* 809B7824  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 809B7828  48 00 00 34 */	b lbl_809B785C
lbl_809B782C:
/* 809B782C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B7830  2C 00 00 03 */	cmpwi r0, 3
/* 809B7834  41 82 00 28 */	beq lbl_809B785C
/* 809B7838  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 809B783C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B7840  4B 78 E0 58 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B7844  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 809B7848  38 00 00 03 */	li r0, 3
/* 809B784C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B7850  3C 60 80 9C */	lis r3, lit_3945@ha
/* 809B7854  C0 03 93 CC */	lfs f0, lit_3945@l(r3)
/* 809B7858  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B785C:
/* 809B785C  38 00 00 3D */	li r0, 0x3d
/* 809B7860  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B7864  38 60 00 0A */	li r3, 0xa
/* 809B7868  4B 7F 0F 7C */	b dKy_change_colpat__FUc
/* 809B786C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809B7870  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809B7874  80 63 00 00 */	lwz r3, 0(r3)
/* 809B7878  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B787C  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200003F@ha */
/* 809B7880  38 84 00 3F */	addi r4, r4, 0x003F /* 0x0200003F@l */
/* 809B7884  4B 8F 83 10 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 809B7888  48 00 00 4C */	b lbl_809B78D4
lbl_809B788C:
/* 809B788C  38 00 00 00 */	li r0, 0
/* 809B7890  98 1E 0F F6 */	stb r0, 0xff6(r30)
/* 809B7894  38 00 00 78 */	li r0, 0x78
/* 809B7898  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B789C  38 60 00 0C */	li r3, 0xc
/* 809B78A0  4B 7F 0F 44 */	b dKy_change_colpat__FUc
/* 809B78A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809B78A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809B78AC  80 63 00 00 */	lwz r3, 0(r3)
/* 809B78B0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B78B4  4B 8F 85 64 */	b bgmStreamPlay__8Z2SeqMgrFv
/* 809B78B8  48 00 00 1C */	b lbl_809B78D4
lbl_809B78BC:
/* 809B78BC  38 60 00 0B */	li r3, 0xb
/* 809B78C0  4B 79 DE 74 */	b daNpcF_offTmpBit__FUl
/* 809B78C4  7F C3 F3 78 */	mr r3, r30
/* 809B78C8  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809B78CC  38 A0 00 00 */	li r5, 0
/* 809B78D0  4B 79 43 20 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_809B78D4:
/* 809B78D4  38 60 00 00 */	li r3, 0
/* 809B78D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B78DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B78E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B78E4  7C 08 03 A6 */	mtlr r0
/* 809B78E8  38 21 00 10 */	addi r1, r1, 0x10
/* 809B78EC  4E 80 00 20 */	blr 
