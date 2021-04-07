lbl_804CD348:
/* 804CD348  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CD34C  7C 08 02 A6 */	mflr r0
/* 804CD350  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CD354  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CD358  93 C1 00 08 */	stw r30, 8(r1)
/* 804CD35C  7C 7E 1B 79 */	or. r30, r3, r3
/* 804CD360  7C 9F 23 78 */	mr r31, r4
/* 804CD364  41 82 00 38 */	beq lbl_804CD39C
/* 804CD368  3C 60 80 4D */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x804CE5CC@ha */
/* 804CD36C  38 03 E5 CC */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x804CE5CC@l */
/* 804CD370  90 1E 00 0C */	stw r0, 0xc(r30)
/* 804CD374  38 7E 00 14 */	addi r3, r30, 0x14
/* 804CD378  38 80 FF FF */	li r4, -1
/* 804CD37C  4B DA 1B 9D */	bl __dt__8cM3dGCirFv
/* 804CD380  7F C3 F3 78 */	mr r3, r30
/* 804CD384  38 80 00 00 */	li r4, 0
/* 804CD388  4B D9 AD 29 */	bl __dt__13cBgS_PolyInfoFv
/* 804CD38C  7F E0 07 35 */	extsh. r0, r31
/* 804CD390  40 81 00 0C */	ble lbl_804CD39C
/* 804CD394  7F C3 F3 78 */	mr r3, r30
/* 804CD398  4B E0 19 A5 */	bl __dl__FPv
lbl_804CD39C:
/* 804CD39C  7F C3 F3 78 */	mr r3, r30
/* 804CD3A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CD3A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804CD3A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CD3AC  7C 08 03 A6 */	mtlr r0
/* 804CD3B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804CD3B4  4E 80 00 20 */	blr 
