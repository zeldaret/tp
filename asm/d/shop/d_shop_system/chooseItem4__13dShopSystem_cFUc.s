lbl_80198250:
/* 80198250  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80198254  7C 08 02 A6 */	mflr r0
/* 80198258  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019825C  39 61 00 20 */	addi r11, r1, 0x20
/* 80198260  48 1C 9F 7D */	bl _savegpr_29
/* 80198264  7C 7F 1B 78 */	mr r31, r3
/* 80198268  7C 9D 23 78 */	mr r29, r4
/* 8019826C  8B C3 0F 6F */	lbz r30, 0xf6f(r3)
/* 80198270  80 83 0E 40 */	lwz r4, 0xe40(r3)
/* 80198274  48 00 28 ED */	bl checkLeftTrigger__13dShopSystem_cFP9STControl
/* 80198278  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8019827C  41 82 00 D4 */	beq lbl_80198350
/* 80198280  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80198284  28 00 00 02 */	cmplwi r0, 2
/* 80198288  41 82 00 C8 */	beq lbl_80198350
/* 8019828C  88 1F 0F 6E */	lbz r0, 0xf6e(r31)
/* 80198290  28 00 00 00 */	cmplwi r0, 0
/* 80198294  41 82 00 BC */	beq lbl_80198350
/* 80198298  98 1F 0F 6F */	stb r0, 0xf6f(r31)
/* 8019829C  88 7F 0F 6E */	lbz r3, 0xf6e(r31)
/* 801982A0  38 03 FF FF */	addi r0, r3, -1
/* 801982A4  98 1F 0F 6E */	stb r0, 0xf6e(r31)
/* 801982A8  88 9F 0F 6E */	lbz r4, 0xf6e(r31)
/* 801982AC  28 04 00 00 */	cmplwi r4, 0
/* 801982B0  41 82 00 28 */	beq lbl_801982D8
/* 801982B4  7F E3 FB 78 */	mr r3, r31
/* 801982B8  38 84 FF FF */	addi r4, r4, -1
/* 801982BC  4B FF F3 3D */	bl isFlag__13dShopSystem_cFi
/* 801982C0  2C 03 00 00 */	cmpwi r3, 0
/* 801982C4  41 82 00 14 */	beq lbl_801982D8
/* 801982C8  88 1F 0F 6F */	lbz r0, 0xf6f(r31)
/* 801982CC  98 1F 0F 6E */	stb r0, 0xf6e(r31)
/* 801982D0  9B DF 0F 6F */	stb r30, 0xf6f(r31)
/* 801982D4  48 00 00 7C */	b lbl_80198350
lbl_801982D8:
/* 801982D8  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801982DC  28 00 00 01 */	cmplwi r0, 1
/* 801982E0  41 82 00 68 */	beq lbl_80198348
/* 801982E4  88 1F 0F 6E */	lbz r0, 0xf6e(r31)
/* 801982E8  28 00 00 00 */	cmplwi r0, 0
/* 801982EC  41 82 00 38 */	beq lbl_80198324
/* 801982F0  38 00 00 5F */	li r0, 0x5f
/* 801982F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801982F8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801982FC  38 81 00 0C */	addi r4, r1, 0xc
/* 80198300  38 A0 00 00 */	li r5, 0
/* 80198304  38 C0 00 00 */	li r6, 0
/* 80198308  38 E0 00 00 */	li r7, 0
/* 8019830C  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 80198310  FC 40 08 90 */	fmr f2, f1
/* 80198314  C0 62 A1 14 */	lfs f3, lit_4493(r2)
/* 80198318  FC 80 18 90 */	fmr f4, f3
/* 8019831C  39 00 00 00 */	li r8, 0
/* 80198320  48 11 36 65 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80198324:
/* 80198324  88 1F 0F 6E */	lbz r0, 0xf6e(r31)
/* 80198328  B0 1F 0F 4C */	sth r0, 0xf4c(r31)
/* 8019832C  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 80198330  D0 3F 0F 38 */	stfs f1, 0xf38(r31)
/* 80198334  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 80198338  D0 1F 0F 3C */	stfs f0, 0xf3c(r31)
/* 8019833C  D0 3F 0F 40 */	stfs f1, 0xf40(r31)
/* 80198340  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 80198344  D0 1F 0F 44 */	stfs f0, 0xf44(r31)
lbl_80198348:
/* 80198348  38 60 00 03 */	li r3, 3
/* 8019834C  48 00 00 E0 */	b lbl_8019842C
lbl_80198350:
/* 80198350  7F E3 FB 78 */	mr r3, r31
/* 80198354  80 9F 0E 40 */	lwz r4, 0xe40(r31)
/* 80198358  48 00 28 2D */	bl checkRightTrigger__13dShopSystem_cFP9STControl
/* 8019835C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80198360  41 82 00 C8 */	beq lbl_80198428
/* 80198364  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80198368  28 00 00 02 */	cmplwi r0, 2
/* 8019836C  41 82 00 BC */	beq lbl_80198428
/* 80198370  88 1F 0F 6E */	lbz r0, 0xf6e(r31)
/* 80198374  28 00 00 04 */	cmplwi r0, 4
/* 80198378  40 80 00 B0 */	bge lbl_80198428
/* 8019837C  98 1F 0F 6F */	stb r0, 0xf6f(r31)
/* 80198380  88 7F 0F 6E */	lbz r3, 0xf6e(r31)
/* 80198384  38 03 00 01 */	addi r0, r3, 1
/* 80198388  98 1F 0F 6E */	stb r0, 0xf6e(r31)
/* 8019838C  88 9F 0F 6E */	lbz r4, 0xf6e(r31)
/* 80198390  28 04 00 00 */	cmplwi r4, 0
/* 80198394  41 82 00 28 */	beq lbl_801983BC
/* 80198398  7F E3 FB 78 */	mr r3, r31
/* 8019839C  38 84 FF FF */	addi r4, r4, -1
/* 801983A0  4B FF F2 59 */	bl isFlag__13dShopSystem_cFi
/* 801983A4  2C 03 00 00 */	cmpwi r3, 0
/* 801983A8  41 82 00 14 */	beq lbl_801983BC
/* 801983AC  88 1F 0F 6F */	lbz r0, 0xf6f(r31)
/* 801983B0  98 1F 0F 6E */	stb r0, 0xf6e(r31)
/* 801983B4  9B DF 0F 6F */	stb r30, 0xf6f(r31)
/* 801983B8  48 00 00 70 */	b lbl_80198428
lbl_801983BC:
/* 801983BC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801983C0  28 00 00 01 */	cmplwi r0, 1
/* 801983C4  41 82 00 5C */	beq lbl_80198420
/* 801983C8  38 00 00 5F */	li r0, 0x5f
/* 801983CC  90 01 00 08 */	stw r0, 8(r1)
/* 801983D0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801983D4  38 81 00 08 */	addi r4, r1, 8
/* 801983D8  38 A0 00 00 */	li r5, 0
/* 801983DC  38 C0 00 00 */	li r6, 0
/* 801983E0  38 E0 00 00 */	li r7, 0
/* 801983E4  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 801983E8  FC 40 08 90 */	fmr f2, f1
/* 801983EC  C0 62 A1 14 */	lfs f3, lit_4493(r2)
/* 801983F0  FC 80 18 90 */	fmr f4, f3
/* 801983F4  39 00 00 00 */	li r8, 0
/* 801983F8  48 11 35 8D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801983FC  88 1F 0F 6E */	lbz r0, 0xf6e(r31)
/* 80198400  B0 1F 0F 4C */	sth r0, 0xf4c(r31)
/* 80198404  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 80198408  D0 3F 0F 38 */	stfs f1, 0xf38(r31)
/* 8019840C  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 80198410  D0 1F 0F 3C */	stfs f0, 0xf3c(r31)
/* 80198414  D0 3F 0F 40 */	stfs f1, 0xf40(r31)
/* 80198418  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 8019841C  D0 1F 0F 44 */	stfs f0, 0xf44(r31)
lbl_80198420:
/* 80198420  38 60 00 04 */	li r3, 4
/* 80198424  48 00 00 08 */	b lbl_8019842C
lbl_80198428:
/* 80198428  38 60 00 00 */	li r3, 0
lbl_8019842C:
/* 8019842C  39 61 00 20 */	addi r11, r1, 0x20
/* 80198430  48 1C 9D F9 */	bl _restgpr_29
/* 80198434  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80198438  7C 08 03 A6 */	mtlr r0
/* 8019843C  38 21 00 20 */	addi r1, r1, 0x20
/* 80198440  4E 80 00 20 */	blr 
