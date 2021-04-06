lbl_8011B71C:
/* 8011B71C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011B720  7C 08 02 A6 */	mflr r0
/* 8011B724  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011B728  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011B72C  93 C1 00 08 */	stw r30, 8(r1)
/* 8011B730  7C 7F 1B 78 */	mr r31, r3
/* 8011B734  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 8011B738  80 03 31 98 */	lwz r0, 0x3198(r3)
/* 8011B73C  2C 00 00 00 */	cmpwi r0, 0
/* 8011B740  40 82 00 98 */	bne lbl_8011B7D8
/* 8011B744  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8011B748  2C 00 00 00 */	cmpwi r0, 0
/* 8011B74C  40 82 00 48 */	bne lbl_8011B794
/* 8011B750  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 8011B754  2C 00 00 00 */	cmpwi r0, 0
/* 8011B758  41 82 00 3C */	beq lbl_8011B794
/* 8011B75C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8011B760  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 8011B764  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011B768  4C 41 13 82 */	cror 2, 1, 2
/* 8011B76C  40 82 00 1C */	bne lbl_8011B788
/* 8011B770  C0 1F 34 7C */	lfs f0, 0x347c(r31)
/* 8011B774  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011B778  40 80 00 10 */	bge lbl_8011B788
/* 8011B77C  38 00 00 03 */	li r0, 3
/* 8011B780  98 1F 2F 92 */	stb r0, 0x2f92(r31)
/* 8011B784  48 00 00 54 */	b lbl_8011B7D8
lbl_8011B788:
/* 8011B788  38 00 00 04 */	li r0, 4
/* 8011B78C  98 1F 2F 92 */	stb r0, 0x2f92(r31)
/* 8011B790  48 00 00 48 */	b lbl_8011B7D8
lbl_8011B794:
/* 8011B794  7F C3 F3 78 */	mr r3, r30
/* 8011B798  C0 22 93 C0 */	lfs f1, lit_10193(r2)
/* 8011B79C  48 20 CC 91 */	bl checkPass__12J3DFrameCtrlFf
/* 8011B7A0  2C 03 00 00 */	cmpwi r3, 0
/* 8011B7A4  41 82 00 34 */	beq lbl_8011B7D8
/* 8011B7A8  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 8011B7AC  2C 00 00 00 */	cmpwi r0, 0
/* 8011B7B0  41 82 00 28 */	beq lbl_8011B7D8
/* 8011B7B4  7F E3 FB 78 */	mr r3, r31
/* 8011B7B8  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010013@ha */
/* 8011B7BC  38 84 00 13 */	addi r4, r4, 0x0013 /* 0x00010013@l */
/* 8011B7C0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8011B7C4  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011B7C8  7D 89 03 A6 */	mtctr r12
/* 8011B7CC  4E 80 04 21 */	bctrl 
/* 8011B7D0  38 00 00 00 */	li r0, 0
/* 8011B7D4  B0 1F 30 0E */	sth r0, 0x300e(r31)
lbl_8011B7D8:
/* 8011B7D8  7F C3 F3 78 */	mr r3, r30
/* 8011B7DC  48 04 2C F1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011B7E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011B7E4  41 82 00 C4 */	beq lbl_8011B8A8
/* 8011B7E8  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 8011B7EC  2C 00 00 00 */	cmpwi r0, 0
/* 8011B7F0  41 82 00 50 */	beq lbl_8011B840
/* 8011B7F4  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8011B7F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8011B7FC  3B C0 00 EA */	li r30, 0xea
/* 8011B800  41 82 00 08 */	beq lbl_8011B808
/* 8011B804  3B C0 00 EB */	li r30, 0xeb
lbl_8011B808:
/* 8011B808  7F E3 FB 78 */	mr r3, r31
/* 8011B80C  3C 80 00 08 */	lis r4, 0x0008 /* 0x00080023@ha */
/* 8011B810  38 84 00 23 */	addi r4, r4, 0x0023 /* 0x00080023@l */
/* 8011B814  4B FA 39 81 */	bl seStartMapInfo__9daAlink_cFUl
/* 8011B818  7F E3 FB 78 */	mr r3, r31
/* 8011B81C  7F C4 F3 78 */	mr r4, r30
/* 8011B820  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011B824  4B F9 17 8D */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 8011B828  38 60 00 00 */	li r3, 0
/* 8011B82C  B0 7F 30 08 */	sth r3, 0x3008(r31)
/* 8011B830  38 00 00 05 */	li r0, 5
/* 8011B834  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8011B838  B0 7F 30 10 */	sth r3, 0x3010(r31)
/* 8011B83C  48 00 00 BC */	b lbl_8011B8F8
lbl_8011B840:
/* 8011B840  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8011B844  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8011B848  90 1F 19 9C */	stw r0, 0x199c(r31)
/* 8011B84C  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8011B850  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8011B854  90 1F 19 9C */	stw r0, 0x199c(r31)
/* 8011B858  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011B85C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011B860  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011B864  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011B868  4B F2 C9 15 */	bl cutEnd__16dEvent_manager_cFi
/* 8011B86C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8011B870  60 00 00 01 */	ori r0, r0, 1
/* 8011B874  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 8011B878  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8011B87C  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8011B880  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 8011B884  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8011B888  2C 00 00 00 */	cmpwi r0, 0
/* 8011B88C  40 82 00 10 */	bne lbl_8011B89C
/* 8011B890  7F E3 FB 78 */	mr r3, r31
/* 8011B894  C0 3F 34 78 */	lfs f1, 0x3478(r31)
/* 8011B898  4B F9 25 7D */	bl setBlendMoveAnime__9daAlink_cFf
lbl_8011B89C:
/* 8011B89C  38 00 00 01 */	li r0, 1
/* 8011B8A0  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 8011B8A4  48 00 00 54 */	b lbl_8011B8F8
lbl_8011B8A8:
/* 8011B8A8  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 8011B8AC  2C 00 00 00 */	cmpwi r0, 0
/* 8011B8B0  40 82 00 34 */	bne lbl_8011B8E4
/* 8011B8B4  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8011B8B8  2C 00 00 00 */	cmpwi r0, 0
/* 8011B8BC  40 82 00 3C */	bne lbl_8011B8F8
/* 8011B8C0  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 8011B8C4  2C 00 00 00 */	cmpwi r0, 0
/* 8011B8C8  40 82 00 10 */	bne lbl_8011B8D8
/* 8011B8CC  38 00 00 01 */	li r0, 1
/* 8011B8D0  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 8011B8D4  48 00 00 24 */	b lbl_8011B8F8
lbl_8011B8D8:
/* 8011B8D8  38 00 00 05 */	li r0, 5
/* 8011B8DC  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8011B8E0  48 00 00 18 */	b lbl_8011B8F8
lbl_8011B8E4:
/* 8011B8E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011B8E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011B8EC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011B8F0  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8011B8F4  4B F2 C8 89 */	bl cutEnd__16dEvent_manager_cFi
lbl_8011B8F8:
/* 8011B8F8  38 60 00 01 */	li r3, 1
/* 8011B8FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011B900  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011B904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011B908  7C 08 03 A6 */	mtlr r0
/* 8011B90C  38 21 00 10 */	addi r1, r1, 0x10
/* 8011B910  4E 80 00 20 */	blr 
