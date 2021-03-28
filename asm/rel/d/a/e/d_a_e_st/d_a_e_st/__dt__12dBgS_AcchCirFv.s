lbl_807A6140:
/* 807A6140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A6144  7C 08 02 A6 */	mflr r0
/* 807A6148  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A614C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A6150  93 C1 00 08 */	stw r30, 8(r1)
/* 807A6154  7C 7E 1B 79 */	or. r30, r3, r3
/* 807A6158  7C 9F 23 78 */	mr r31, r4
/* 807A615C  41 82 00 38 */	beq lbl_807A6194
/* 807A6160  3C 60 80 7A */	lis r3, __vt__12dBgS_AcchCir@ha
/* 807A6164  38 03 6C D8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 807A6168  90 1E 00 0C */	stw r0, 0xc(r30)
/* 807A616C  38 7E 00 14 */	addi r3, r30, 0x14
/* 807A6170  38 80 FF FF */	li r4, -1
/* 807A6174  4B AC 8D A4 */	b __dt__8cM3dGCirFv
/* 807A6178  7F C3 F3 78 */	mr r3, r30
/* 807A617C  38 80 00 00 */	li r4, 0
/* 807A6180  4B AC 1F 30 */	b __dt__13cBgS_PolyInfoFv
/* 807A6184  7F E0 07 35 */	extsh. r0, r31
/* 807A6188  40 81 00 0C */	ble lbl_807A6194
/* 807A618C  7F C3 F3 78 */	mr r3, r30
/* 807A6190  4B B2 8B AC */	b __dl__FPv
lbl_807A6194:
/* 807A6194  7F C3 F3 78 */	mr r3, r30
/* 807A6198  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A619C  83 C1 00 08 */	lwz r30, 8(r1)
/* 807A61A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A61A4  7C 08 03 A6 */	mtlr r0
/* 807A61A8  38 21 00 10 */	addi r1, r1, 0x10
/* 807A61AC  4E 80 00 20 */	blr 
