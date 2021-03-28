lbl_809DEC98:
/* 809DEC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DEC9C  7C 08 02 A6 */	mflr r0
/* 809DECA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DECA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DECA8  93 C1 00 08 */	stw r30, 8(r1)
/* 809DECAC  7C 7E 1B 79 */	or. r30, r3, r3
/* 809DECB0  7C 9F 23 78 */	mr r31, r4
/* 809DECB4  41 82 00 38 */	beq lbl_809DECEC
/* 809DECB8  3C 60 80 9E */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809DECBC  38 03 F6 B0 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809DECC0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809DECC4  38 7E 00 14 */	addi r3, r30, 0x14
/* 809DECC8  38 80 FF FF */	li r4, -1
/* 809DECCC  4B 89 02 4C */	b __dt__8cM3dGCirFv
/* 809DECD0  7F C3 F3 78 */	mr r3, r30
/* 809DECD4  38 80 00 00 */	li r4, 0
/* 809DECD8  4B 88 93 D8 */	b __dt__13cBgS_PolyInfoFv
/* 809DECDC  7F E0 07 35 */	extsh. r0, r31
/* 809DECE0  40 81 00 0C */	ble lbl_809DECEC
/* 809DECE4  7F C3 F3 78 */	mr r3, r30
/* 809DECE8  4B 8F 00 54 */	b __dl__FPv
lbl_809DECEC:
/* 809DECEC  7F C3 F3 78 */	mr r3, r30
/* 809DECF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DECF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 809DECF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DECFC  7C 08 03 A6 */	mtlr r0
/* 809DED00  38 21 00 10 */	addi r1, r1, 0x10
/* 809DED04  4E 80 00 20 */	blr 
