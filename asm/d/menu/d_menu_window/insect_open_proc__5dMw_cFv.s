lbl_801FBC1C:
/* 801FBC1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FBC20  7C 08 02 A6 */	mflr r0
/* 801FBC24  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FBC28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FBC2C  7C 7F 1B 78 */	mr r31, r3
/* 801FBC30  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801FBC34  80 03 00 04 */	lwz r0, 4(r3)
/* 801FBC38  2C 00 00 00 */	cmpwi r0, 0
/* 801FBC3C  40 82 00 28 */	bne lbl_801FBC64
/* 801FBC40  38 00 00 00 */	li r0, 0
/* 801FBC44  98 1F 01 52 */	stb r0, 0x152(r31)
/* 801FBC48  38 60 00 01 */	li r3, 1
/* 801FBC4C  4B E3 24 95 */	bl dComIfGp_setHeapLockFlag__FUc
/* 801FBC50  7F E3 FB 78 */	mr r3, r31
/* 801FBC54  38 80 00 01 */	li r4, 1
/* 801FBC58  48 00 0F 3D */	bl dMw_insect_create__5dMw_cFUc
/* 801FBC5C  38 00 00 20 */	li r0, 0x20
/* 801FBC60  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FBC64:
/* 801FBC64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FBC68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FBC6C  7C 08 03 A6 */	mtlr r0
/* 801FBC70  38 21 00 10 */	addi r1, r1, 0x10
/* 801FBC74  4E 80 00 20 */	blr 
