lbl_80BE01B8:
/* 80BE01B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE01BC  7C 08 02 A6 */	mflr r0
/* 80BE01C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE01C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE01C8  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE01CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BE01D0  7C 9F 23 78 */	mr r31, r4
/* 80BE01D4  41 82 00 38 */	beq lbl_80BE020C
/* 80BE01D8  3C 60 80 BE */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80BE01DC  38 03 21 D8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80BE01E0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80BE01E4  38 7E 00 14 */	addi r3, r30, 0x14
/* 80BE01E8  38 80 FF FF */	li r4, -1
/* 80BE01EC  4B 68 ED 2C */	b __dt__8cM3dGCirFv
/* 80BE01F0  7F C3 F3 78 */	mr r3, r30
/* 80BE01F4  38 80 00 00 */	li r4, 0
/* 80BE01F8  4B 68 7E B8 */	b __dt__13cBgS_PolyInfoFv
/* 80BE01FC  7F E0 07 35 */	extsh. r0, r31
/* 80BE0200  40 81 00 0C */	ble lbl_80BE020C
/* 80BE0204  7F C3 F3 78 */	mr r3, r30
/* 80BE0208  4B 6E EB 34 */	b __dl__FPv
lbl_80BE020C:
/* 80BE020C  7F C3 F3 78 */	mr r3, r30
/* 80BE0210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE0214  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE0218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE021C  7C 08 03 A6 */	mtlr r0
/* 80BE0220  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE0224  4E 80 00 20 */	blr 
