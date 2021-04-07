lbl_809B5094:
/* 809B5094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B5098  7C 08 02 A6 */	mflr r0
/* 809B509C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B50A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B50A4  93 C1 00 08 */	stw r30, 8(r1)
/* 809B50A8  7C 7E 1B 78 */	mr r30, r3
/* 809B50AC  80 04 00 00 */	lwz r0, 0(r4)
/* 809B50B0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 809B50B4  41 82 00 C8 */	beq lbl_809B517C
/* 809B50B8  40 80 00 1C */	bge lbl_809B50D4
/* 809B50BC  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B50C0  41 82 00 8C */	beq lbl_809B514C
/* 809B50C4  40 80 01 14 */	bge lbl_809B51D8
/* 809B50C8  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B50CC  41 82 00 20 */	beq lbl_809B50EC
/* 809B50D0  48 00 01 08 */	b lbl_809B51D8
lbl_809B50D4:
/* 809B50D4  2C 00 00 32 */	cmpwi r0, 0x32
/* 809B50D8  41 82 00 E8 */	beq lbl_809B51C0
/* 809B50DC  40 80 00 FC */	bge lbl_809B51D8
/* 809B50E0  2C 00 00 28 */	cmpwi r0, 0x28
/* 809B50E4  41 82 00 CC */	beq lbl_809B51B0
/* 809B50E8  48 00 00 F0 */	b lbl_809B51D8
lbl_809B50EC:
/* 809B50EC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B50F0  2C 00 00 00 */	cmpwi r0, 0
/* 809B50F4  41 82 00 28 */	beq lbl_809B511C
/* 809B50F8  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 809B50FC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B5100  4B 79 07 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B5104  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 809B5108  38 00 00 00 */	li r0, 0
/* 809B510C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B5110  3C 60 80 9C */	lis r3, lit_3945@ha /* 0x809B93CC@ha */
/* 809B5114  C0 03 93 CC */	lfs f0, lit_3945@l(r3)  /* 0x809B93CC@l */
/* 809B5118  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B511C:
/* 809B511C  38 00 00 3D */	li r0, 0x3d
/* 809B5120  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B5124  38 60 00 0A */	li r3, 0xa
/* 809B5128  4B 7F 36 BD */	bl dKy_change_colpat__FUc
/* 809B512C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B5130  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B5134  80 63 00 00 */	lwz r3, 0(r3)
/* 809B5138  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B513C  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200003F@ha */
/* 809B5140  38 84 00 3F */	addi r4, r4, 0x003F /* 0x0200003F@l */
/* 809B5144  4B 8F AA 51 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 809B5148  48 00 00 90 */	b lbl_809B51D8
lbl_809B514C:
/* 809B514C  38 00 00 00 */	li r0, 0
/* 809B5150  98 1E 0F F6 */	stb r0, 0xff6(r30)
/* 809B5154  38 00 00 78 */	li r0, 0x78
/* 809B5158  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B515C  38 60 00 0C */	li r3, 0xc
/* 809B5160  4B 7F 36 85 */	bl dKy_change_colpat__FUc
/* 809B5164  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B5168  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B516C  80 63 00 00 */	lwz r3, 0(r3)
/* 809B5170  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B5174  4B 8F AC A5 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 809B5178  48 00 00 60 */	b lbl_809B51D8
lbl_809B517C:
/* 809B517C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B5180  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B5184  41 82 00 54 */	beq lbl_809B51D8
/* 809B5188  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 809B518C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B5190  4B 79 07 09 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B5194  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 809B5198  38 00 00 0A */	li r0, 0xa
/* 809B519C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B51A0  3C 60 80 9C */	lis r3, lit_3945@ha /* 0x809B93CC@ha */
/* 809B51A4  C0 03 93 CC */	lfs f0, lit_3945@l(r3)  /* 0x809B93CC@l */
/* 809B51A8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 809B51AC  48 00 00 2C */	b lbl_809B51D8
lbl_809B51B0:
/* 809B51B0  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809B51B4  38 A0 00 00 */	li r5, 0
/* 809B51B8  4B 79 6A 39 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809B51BC  48 00 00 1C */	b lbl_809B51D8
lbl_809B51C0:
/* 809B51C0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B51C4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B51C8  80 63 00 00 */	lwz r3, 0(r3)
/* 809B51CC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B51D0  38 80 00 2D */	li r4, 0x2d
/* 809B51D4  4B 8F AD 09 */	bl bgmStreamStop__8Z2SeqMgrFUl
lbl_809B51D8:
/* 809B51D8  38 60 00 00 */	li r3, 0
/* 809B51DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B51E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B51E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B51E8  7C 08 03 A6 */	mtlr r0
/* 809B51EC  38 21 00 10 */	addi r1, r1, 0x10
/* 809B51F0  4E 80 00 20 */	blr 
