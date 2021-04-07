lbl_809F81C0:
/* 809F81C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F81C4  7C 08 02 A6 */	mflr r0
/* 809F81C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F81CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F81D0  93 C1 00 08 */	stw r30, 8(r1)
/* 809F81D4  7C 7E 1B 79 */	or. r30, r3, r3
/* 809F81D8  7C 9F 23 78 */	mr r31, r4
/* 809F81DC  41 82 00 38 */	beq lbl_809F8214
/* 809F81E0  3C 60 80 A0 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x809F8E74@ha */
/* 809F81E4  38 03 8E 74 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x809F8E74@l */
/* 809F81E8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809F81EC  38 7E 00 14 */	addi r3, r30, 0x14
/* 809F81F0  38 80 FF FF */	li r4, -1
/* 809F81F4  4B 87 6D 25 */	bl __dt__8cM3dGCirFv
/* 809F81F8  7F C3 F3 78 */	mr r3, r30
/* 809F81FC  38 80 00 00 */	li r4, 0
/* 809F8200  4B 86 FE B1 */	bl __dt__13cBgS_PolyInfoFv
/* 809F8204  7F E0 07 35 */	extsh. r0, r31
/* 809F8208  40 81 00 0C */	ble lbl_809F8214
/* 809F820C  7F C3 F3 78 */	mr r3, r30
/* 809F8210  4B 8D 6B 2D */	bl __dl__FPv
lbl_809F8214:
/* 809F8214  7F C3 F3 78 */	mr r3, r30
/* 809F8218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F821C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809F8220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F8224  7C 08 03 A6 */	mtlr r0
/* 809F8228  38 21 00 10 */	addi r1, r1, 0x10
/* 809F822C  4E 80 00 20 */	blr 
