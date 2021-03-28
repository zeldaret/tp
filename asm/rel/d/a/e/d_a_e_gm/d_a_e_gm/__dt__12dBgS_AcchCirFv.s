lbl_806D7350:
/* 806D7350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D7354  7C 08 02 A6 */	mflr r0
/* 806D7358  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D735C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D7360  93 C1 00 08 */	stw r30, 8(r1)
/* 806D7364  7C 7E 1B 79 */	or. r30, r3, r3
/* 806D7368  7C 9F 23 78 */	mr r31, r4
/* 806D736C  41 82 00 38 */	beq lbl_806D73A4
/* 806D7370  3C 60 80 6D */	lis r3, __vt__12dBgS_AcchCir@ha
/* 806D7374  38 03 7E 04 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 806D7378  90 1E 00 0C */	stw r0, 0xc(r30)
/* 806D737C  38 7E 00 14 */	addi r3, r30, 0x14
/* 806D7380  38 80 FF FF */	li r4, -1
/* 806D7384  4B B9 7B 94 */	b __dt__8cM3dGCirFv
/* 806D7388  7F C3 F3 78 */	mr r3, r30
/* 806D738C  38 80 00 00 */	li r4, 0
/* 806D7390  4B B9 0D 20 */	b __dt__13cBgS_PolyInfoFv
/* 806D7394  7F E0 07 35 */	extsh. r0, r31
/* 806D7398  40 81 00 0C */	ble lbl_806D73A4
/* 806D739C  7F C3 F3 78 */	mr r3, r30
/* 806D73A0  4B BF 79 9C */	b __dl__FPv
lbl_806D73A4:
/* 806D73A4  7F C3 F3 78 */	mr r3, r30
/* 806D73A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D73AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 806D73B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D73B4  7C 08 03 A6 */	mtlr r0
/* 806D73B8  38 21 00 10 */	addi r1, r1, 0x10
/* 806D73BC  4E 80 00 20 */	blr 
