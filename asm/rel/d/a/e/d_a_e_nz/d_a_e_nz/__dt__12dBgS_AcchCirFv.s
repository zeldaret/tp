lbl_8072BBD0:
/* 8072BBD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072BBD4  7C 08 02 A6 */	mflr r0
/* 8072BBD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072BBDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072BBE0  93 C1 00 08 */	stw r30, 8(r1)
/* 8072BBE4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8072BBE8  7C 9F 23 78 */	mr r31, r4
/* 8072BBEC  41 82 00 38 */	beq lbl_8072BC24
/* 8072BBF0  3C 60 80 73 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8072BBF4  38 03 C3 74 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8072BBF8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8072BBFC  38 7E 00 14 */	addi r3, r30, 0x14
/* 8072BC00  38 80 FF FF */	li r4, -1
/* 8072BC04  4B B4 33 14 */	b __dt__8cM3dGCirFv
/* 8072BC08  7F C3 F3 78 */	mr r3, r30
/* 8072BC0C  38 80 00 00 */	li r4, 0
/* 8072BC10  4B B3 C4 A0 */	b __dt__13cBgS_PolyInfoFv
/* 8072BC14  7F E0 07 35 */	extsh. r0, r31
/* 8072BC18  40 81 00 0C */	ble lbl_8072BC24
/* 8072BC1C  7F C3 F3 78 */	mr r3, r30
/* 8072BC20  4B BA 31 1C */	b __dl__FPv
lbl_8072BC24:
/* 8072BC24  7F C3 F3 78 */	mr r3, r30
/* 8072BC28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072BC2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8072BC30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072BC34  7C 08 03 A6 */	mtlr r0
/* 8072BC38  38 21 00 10 */	addi r1, r1, 0x10
/* 8072BC3C  4E 80 00 20 */	blr 
