lbl_809B7C38:
/* 809B7C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B7C3C  7C 08 02 A6 */	mflr r0
/* 809B7C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B7C44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B7C48  93 C1 00 08 */	stw r30, 8(r1)
/* 809B7C4C  7C 7E 1B 78 */	mr r30, r3
/* 809B7C50  80 04 00 00 */	lwz r0, 0(r4)
/* 809B7C54  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B7C58  41 82 00 C0 */	beq lbl_809B7D18
/* 809B7C5C  40 80 00 10 */	bge lbl_809B7C6C
/* 809B7C60  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B7C64  41 82 00 14 */	beq lbl_809B7C78
/* 809B7C68  48 00 00 F8 */	b lbl_809B7D60
lbl_809B7C6C:
/* 809B7C6C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 809B7C70  41 82 00 D8 */	beq lbl_809B7D48
/* 809B7C74  48 00 00 EC */	b lbl_809B7D60
lbl_809B7C78:
/* 809B7C78  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 809B7C7C  28 00 00 00 */	cmplwi r0, 0
/* 809B7C80  40 82 00 38 */	bne lbl_809B7CB8
/* 809B7C84  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B7C88  2C 00 00 00 */	cmpwi r0, 0
/* 809B7C8C  41 82 00 5C */	beq lbl_809B7CE8
/* 809B7C90  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 809B7C94  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B7C98  4B 78 DC 00 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B7C9C  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 809B7CA0  38 00 00 00 */	li r0, 0
/* 809B7CA4  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B7CA8  3C 60 80 9C */	lis r3, lit_3945@ha
/* 809B7CAC  C0 03 93 CC */	lfs f0, lit_3945@l(r3)
/* 809B7CB0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 809B7CB4  48 00 00 34 */	b lbl_809B7CE8
lbl_809B7CB8:
/* 809B7CB8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B7CBC  2C 00 00 03 */	cmpwi r0, 3
/* 809B7CC0  41 82 00 28 */	beq lbl_809B7CE8
/* 809B7CC4  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 809B7CC8  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B7CCC  4B 78 DB CC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B7CD0  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 809B7CD4  38 00 00 03 */	li r0, 3
/* 809B7CD8  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B7CDC  3C 60 80 9C */	lis r3, lit_3945@ha
/* 809B7CE0  C0 03 93 CC */	lfs f0, lit_3945@l(r3)
/* 809B7CE4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B7CE8:
/* 809B7CE8  38 00 00 3D */	li r0, 0x3d
/* 809B7CEC  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B7CF0  38 60 00 0A */	li r3, 0xa
/* 809B7CF4  4B 7F 0A F0 */	b dKy_change_colpat__FUc
/* 809B7CF8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809B7CFC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809B7D00  80 63 00 00 */	lwz r3, 0(r3)
/* 809B7D04  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B7D08  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200003F@ha */
/* 809B7D0C  38 84 00 3F */	addi r4, r4, 0x003F /* 0x0200003F@l */
/* 809B7D10  4B 8F 7E 84 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 809B7D14  48 00 00 4C */	b lbl_809B7D60
lbl_809B7D18:
/* 809B7D18  38 00 00 00 */	li r0, 0
/* 809B7D1C  98 1E 0F F6 */	stb r0, 0xff6(r30)
/* 809B7D20  38 00 00 78 */	li r0, 0x78
/* 809B7D24  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B7D28  38 60 00 0C */	li r3, 0xc
/* 809B7D2C  4B 7F 0A B8 */	b dKy_change_colpat__FUc
/* 809B7D30  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809B7D34  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809B7D38  80 63 00 00 */	lwz r3, 0(r3)
/* 809B7D3C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B7D40  4B 8F 80 D8 */	b bgmStreamPlay__8Z2SeqMgrFv
/* 809B7D44  48 00 00 1C */	b lbl_809B7D60
lbl_809B7D48:
/* 809B7D48  38 60 00 0C */	li r3, 0xc
/* 809B7D4C  4B 79 D9 E8 */	b daNpcF_offTmpBit__FUl
/* 809B7D50  7F C3 F3 78 */	mr r3, r30
/* 809B7D54  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809B7D58  38 A0 00 00 */	li r5, 0
/* 809B7D5C  4B 79 3E 94 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_809B7D60:
/* 809B7D60  38 60 00 00 */	li r3, 0
/* 809B7D64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B7D68  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B7D6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B7D70  7C 08 03 A6 */	mtlr r0
/* 809B7D74  38 21 00 10 */	addi r1, r1, 0x10
/* 809B7D78  4E 80 00 20 */	blr 
