lbl_801E5300:
/* 801E5300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E5304  7C 08 02 A6 */	mflr r0
/* 801E5308  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E530C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E5310  7C 7F 1B 78 */	mr r31, r3
/* 801E5314  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801E5318  80 03 00 04 */	lwz r0, 4(r3)
/* 801E531C  2C 00 00 00 */	cmpwi r0, 0
/* 801E5320  40 82 00 30 */	bne lbl_801E5350
/* 801E5324  48 01 7B 55 */	bl dMw_fade_in__5dMw_cFv
/* 801E5328  38 00 00 04 */	li r0, 4
/* 801E532C  98 1F 03 F3 */	stb r0, 0x3f3(r31)
/* 801E5330  7F E3 FB 78 */	mr r3, r31
/* 801E5334  38 80 00 01 */	li r4, 1
/* 801E5338  48 00 2A 29 */	bl setZButtonString__14dMenu_Option_cFUs
/* 801E533C  7F E3 FB 78 */	mr r3, r31
/* 801E5340  48 00 23 AD */	bl getSelectType__14dMenu_Option_cFv
/* 801E5344  7C 64 1B 78 */	mr r4, r3
/* 801E5348  7F E3 FB 78 */	mr r3, r31
/* 801E534C  48 00 1F C9 */	bl setCursorPos__14dMenu_Option_cFUc
lbl_801E5350:
/* 801E5350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E5354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E5358  7C 08 03 A6 */	mtlr r0
/* 801E535C  38 21 00 10 */	addi r1, r1, 0x10
/* 801E5360  4E 80 00 20 */	blr 
