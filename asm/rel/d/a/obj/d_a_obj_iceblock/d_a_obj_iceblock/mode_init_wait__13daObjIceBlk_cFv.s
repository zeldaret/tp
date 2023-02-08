lbl_80C22EF8:
/* 80C22EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C22EFC  7C 08 02 A6 */	mflr r0
/* 80C22F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C22F04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C22F08  7C 7F 1B 78 */	mr r31, r3
/* 80C22F0C  4B FF F0 BD */	bl saveCurrentPos__13daObjIceBlk_cFv
/* 80C22F10  38 63 FF FF */	addi r3, r3, -1
/* 80C22F14  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C22F18  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80C22F1C  7C 03 00 00 */	cmpw r3, r0
/* 80C22F20  40 82 00 0C */	bne lbl_80C22F2C
/* 80C22F24  7F E3 FB 78 */	mr r3, r31
/* 80C22F28  4B FF F3 25 */	bl disablePushPull__13daObjIceBlk_cFv
lbl_80C22F2C:
/* 80C22F2C  3C 60 80 C2 */	lis r3, lit_3936@ha /* 0x80C24370@ha */
/* 80C22F30  C0 03 43 70 */	lfs f0, lit_3936@l(r3)  /* 0x80C24370@l */
/* 80C22F34  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C22F38  3C 60 80 C2 */	lis r3, lit_4079@ha /* 0x80C24398@ha */
/* 80C22F3C  C0 03 43 98 */	lfs f0, lit_4079@l(r3)  /* 0x80C24398@l */
/* 80C22F40  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80C22F44  38 00 FF FF */	li r0, -1
/* 80C22F48  90 1F 09 50 */	stw r0, 0x950(r31)
/* 80C22F4C  7F E3 FB 78 */	mr r3, r31
/* 80C22F50  4B FF FB B5 */	bl clrCounter__13daObjIceBlk_cFv
/* 80C22F54  38 00 00 00 */	li r0, 0
/* 80C22F58  98 1F 09 D0 */	stb r0, 0x9d0(r31)
/* 80C22F5C  98 1F 09 4D */	stb r0, 0x94d(r31)
/* 80C22F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C22F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C22F68  7C 08 03 A6 */	mtlr r0
/* 80C22F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C22F70  4E 80 00 20 */	blr 
