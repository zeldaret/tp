lbl_806F0258:
/* 806F0258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F025C  7C 08 02 A6 */	mflr r0
/* 806F0260  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F0264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F0268  93 C1 00 08 */	stw r30, 8(r1)
/* 806F026C  7C 7E 1B 79 */	or. r30, r3, r3
/* 806F0270  7C 9F 23 78 */	mr r31, r4
/* 806F0274  41 82 00 38 */	beq lbl_806F02AC
/* 806F0278  3C 60 80 6F */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x806F0AB8@ha */
/* 806F027C  38 03 0A B8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x806F0AB8@l */
/* 806F0280  90 1E 00 0C */	stw r0, 0xc(r30)
/* 806F0284  38 7E 00 14 */	addi r3, r30, 0x14
/* 806F0288  38 80 FF FF */	li r4, -1
/* 806F028C  4B B7 EC 8D */	bl __dt__8cM3dGCirFv
/* 806F0290  7F C3 F3 78 */	mr r3, r30
/* 806F0294  38 80 00 00 */	li r4, 0
/* 806F0298  4B B7 7E 19 */	bl __dt__13cBgS_PolyInfoFv
/* 806F029C  7F E0 07 35 */	extsh. r0, r31
/* 806F02A0  40 81 00 0C */	ble lbl_806F02AC
/* 806F02A4  7F C3 F3 78 */	mr r3, r30
/* 806F02A8  4B BD EA 95 */	bl __dl__FPv
lbl_806F02AC:
/* 806F02AC  7F C3 F3 78 */	mr r3, r30
/* 806F02B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F02B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 806F02B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F02BC  7C 08 03 A6 */	mtlr r0
/* 806F02C0  38 21 00 10 */	addi r1, r1, 0x10
/* 806F02C4  4E 80 00 20 */	blr 
