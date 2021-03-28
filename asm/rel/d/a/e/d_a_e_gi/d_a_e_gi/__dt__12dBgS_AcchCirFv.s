lbl_806D08B4:
/* 806D08B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D08B8  7C 08 02 A6 */	mflr r0
/* 806D08BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D08C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D08C4  93 C1 00 08 */	stw r30, 8(r1)
/* 806D08C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 806D08CC  7C 9F 23 78 */	mr r31, r4
/* 806D08D0  41 82 00 38 */	beq lbl_806D0908
/* 806D08D4  3C 60 80 6D */	lis r3, __vt__12dBgS_AcchCir@ha
/* 806D08D8  38 03 10 B4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 806D08DC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 806D08E0  38 7E 00 14 */	addi r3, r30, 0x14
/* 806D08E4  38 80 FF FF */	li r4, -1
/* 806D08E8  4B B9 E6 30 */	b __dt__8cM3dGCirFv
/* 806D08EC  7F C3 F3 78 */	mr r3, r30
/* 806D08F0  38 80 00 00 */	li r4, 0
/* 806D08F4  4B B9 77 BC */	b __dt__13cBgS_PolyInfoFv
/* 806D08F8  7F E0 07 35 */	extsh. r0, r31
/* 806D08FC  40 81 00 0C */	ble lbl_806D0908
/* 806D0900  7F C3 F3 78 */	mr r3, r30
/* 806D0904  4B BF E4 38 */	b __dl__FPv
lbl_806D0908:
/* 806D0908  7F C3 F3 78 */	mr r3, r30
/* 806D090C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D0910  83 C1 00 08 */	lwz r30, 8(r1)
/* 806D0914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D0918  7C 08 03 A6 */	mtlr r0
/* 806D091C  38 21 00 10 */	addi r1, r1, 0x10
/* 806D0920  4E 80 00 20 */	blr 
