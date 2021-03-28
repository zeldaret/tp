lbl_8074B990:
/* 8074B990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074B994  7C 08 02 A6 */	mflr r0
/* 8074B998  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074B99C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8074B9A0  93 C1 00 08 */	stw r30, 8(r1)
/* 8074B9A4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8074B9A8  7C 9F 23 78 */	mr r31, r4
/* 8074B9AC  41 82 00 38 */	beq lbl_8074B9E4
/* 8074B9B0  3C 60 80 75 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8074B9B4  38 03 C2 8C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8074B9B8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8074B9BC  38 7E 00 14 */	addi r3, r30, 0x14
/* 8074B9C0  38 80 FF FF */	li r4, -1
/* 8074B9C4  4B B2 35 54 */	b __dt__8cM3dGCirFv
/* 8074B9C8  7F C3 F3 78 */	mr r3, r30
/* 8074B9CC  38 80 00 00 */	li r4, 0
/* 8074B9D0  4B B1 C6 E0 */	b __dt__13cBgS_PolyInfoFv
/* 8074B9D4  7F E0 07 35 */	extsh. r0, r31
/* 8074B9D8  40 81 00 0C */	ble lbl_8074B9E4
/* 8074B9DC  7F C3 F3 78 */	mr r3, r30
/* 8074B9E0  4B B8 33 5C */	b __dl__FPv
lbl_8074B9E4:
/* 8074B9E4  7F C3 F3 78 */	mr r3, r30
/* 8074B9E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8074B9EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8074B9F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074B9F4  7C 08 03 A6 */	mtlr r0
/* 8074B9F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8074B9FC  4E 80 00 20 */	blr 
