lbl_806F53B4:
/* 806F53B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F53B8  7C 08 02 A6 */	mflr r0
/* 806F53BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F53C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F53C4  93 C1 00 08 */	stw r30, 8(r1)
/* 806F53C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 806F53CC  7C 9F 23 78 */	mr r31, r4
/* 806F53D0  41 82 00 38 */	beq lbl_806F5408
/* 806F53D4  3C 60 80 6F */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x806F58A4@ha */
/* 806F53D8  38 03 58 A4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x806F58A4@l */
/* 806F53DC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 806F53E0  38 7E 00 14 */	addi r3, r30, 0x14
/* 806F53E4  38 80 FF FF */	li r4, -1
/* 806F53E8  4B B7 9B 31 */	bl __dt__8cM3dGCirFv
/* 806F53EC  7F C3 F3 78 */	mr r3, r30
/* 806F53F0  38 80 00 00 */	li r4, 0
/* 806F53F4  4B B7 2C BD */	bl __dt__13cBgS_PolyInfoFv
/* 806F53F8  7F E0 07 35 */	extsh. r0, r31
/* 806F53FC  40 81 00 0C */	ble lbl_806F5408
/* 806F5400  7F C3 F3 78 */	mr r3, r30
/* 806F5404  4B BD 99 39 */	bl __dl__FPv
lbl_806F5408:
/* 806F5408  7F C3 F3 78 */	mr r3, r30
/* 806F540C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F5410  83 C1 00 08 */	lwz r30, 8(r1)
/* 806F5414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F5418  7C 08 03 A6 */	mtlr r0
/* 806F541C  38 21 00 10 */	addi r1, r1, 0x10
/* 806F5420  4E 80 00 20 */	blr 
