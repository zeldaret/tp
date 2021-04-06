lbl_80A481CC:
/* 80A481CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A481D0  7C 08 02 A6 */	mflr r0
/* 80A481D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A481D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A481DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A481E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A481E4  7C 9F 23 78 */	mr r31, r4
/* 80A481E8  41 82 00 38 */	beq lbl_80A48220
/* 80A481EC  3C 60 80 A5 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A48D44@ha */
/* 80A481F0  38 03 8D 44 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A48D44@l */
/* 80A481F4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A481F8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A481FC  38 80 FF FF */	li r4, -1
/* 80A48200  4B 82 6D 19 */	bl __dt__8cM3dGCirFv
/* 80A48204  7F C3 F3 78 */	mr r3, r30
/* 80A48208  38 80 00 00 */	li r4, 0
/* 80A4820C  4B 81 FE A5 */	bl __dt__13cBgS_PolyInfoFv
/* 80A48210  7F E0 07 35 */	extsh. r0, r31
/* 80A48214  40 81 00 0C */	ble lbl_80A48220
/* 80A48218  7F C3 F3 78 */	mr r3, r30
/* 80A4821C  4B 88 6B 21 */	bl __dl__FPv
lbl_80A48220:
/* 80A48220  7F C3 F3 78 */	mr r3, r30
/* 80A48224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A48228  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A4822C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A48230  7C 08 03 A6 */	mtlr r0
/* 80A48234  38 21 00 10 */	addi r1, r1, 0x10
/* 80A48238  4E 80 00 20 */	blr 
