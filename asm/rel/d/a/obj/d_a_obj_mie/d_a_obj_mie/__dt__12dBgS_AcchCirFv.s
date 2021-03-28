lbl_80C94470:
/* 80C94470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C94474  7C 08 02 A6 */	mflr r0
/* 80C94478  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9447C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C94480  93 C1 00 08 */	stw r30, 8(r1)
/* 80C94484  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C94488  7C 9F 23 78 */	mr r31, r4
/* 80C9448C  41 82 00 38 */	beq lbl_80C944C4
/* 80C94490  3C 60 80 C9 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80C94494  38 03 5C 7C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80C94498  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80C9449C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80C944A0  38 80 FF FF */	li r4, -1
/* 80C944A4  4B 5D AA 74 */	b __dt__8cM3dGCirFv
/* 80C944A8  7F C3 F3 78 */	mr r3, r30
/* 80C944AC  38 80 00 00 */	li r4, 0
/* 80C944B0  4B 5D 3C 00 */	b __dt__13cBgS_PolyInfoFv
/* 80C944B4  7F E0 07 35 */	extsh. r0, r31
/* 80C944B8  40 81 00 0C */	ble lbl_80C944C4
/* 80C944BC  7F C3 F3 78 */	mr r3, r30
/* 80C944C0  4B 63 A8 7C */	b __dl__FPv
lbl_80C944C4:
/* 80C944C4  7F C3 F3 78 */	mr r3, r30
/* 80C944C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C944CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C944D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C944D4  7C 08 03 A6 */	mtlr r0
/* 80C944D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C944DC  4E 80 00 20 */	blr 
