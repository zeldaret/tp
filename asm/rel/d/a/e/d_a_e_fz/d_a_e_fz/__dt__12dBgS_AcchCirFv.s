lbl_806C1364:
/* 806C1364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C1368  7C 08 02 A6 */	mflr r0
/* 806C136C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C1370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C1374  93 C1 00 08 */	stw r30, 8(r1)
/* 806C1378  7C 7E 1B 79 */	or. r30, r3, r3
/* 806C137C  7C 9F 23 78 */	mr r31, r4
/* 806C1380  41 82 00 38 */	beq lbl_806C13B8
/* 806C1384  3C 60 80 6C */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x806C1B2C@ha */
/* 806C1388  38 03 1B 2C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x806C1B2C@l */
/* 806C138C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 806C1390  38 7E 00 14 */	addi r3, r30, 0x14
/* 806C1394  38 80 FF FF */	li r4, -1
/* 806C1398  4B BA DB 81 */	bl __dt__8cM3dGCirFv
/* 806C139C  7F C3 F3 78 */	mr r3, r30
/* 806C13A0  38 80 00 00 */	li r4, 0
/* 806C13A4  4B BA 6D 0D */	bl __dt__13cBgS_PolyInfoFv
/* 806C13A8  7F E0 07 35 */	extsh. r0, r31
/* 806C13AC  40 81 00 0C */	ble lbl_806C13B8
/* 806C13B0  7F C3 F3 78 */	mr r3, r30
/* 806C13B4  4B C0 D9 89 */	bl __dl__FPv
lbl_806C13B8:
/* 806C13B8  7F C3 F3 78 */	mr r3, r30
/* 806C13BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C13C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 806C13C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C13C8  7C 08 03 A6 */	mtlr r0
/* 806C13CC  38 21 00 10 */	addi r1, r1, 0x10
/* 806C13D0  4E 80 00 20 */	blr 
