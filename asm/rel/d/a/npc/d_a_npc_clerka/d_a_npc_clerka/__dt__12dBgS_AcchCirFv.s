lbl_80994FC0:
/* 80994FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80994FC4  7C 08 02 A6 */	mflr r0
/* 80994FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80994FCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80994FD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80994FD4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80994FD8  7C 9F 23 78 */	mr r31, r4
/* 80994FDC  41 82 00 38 */	beq lbl_80995014
/* 80994FE0  3C 60 80 99 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80995CDC@ha */
/* 80994FE4  38 03 5C DC */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80995CDC@l */
/* 80994FE8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80994FEC  38 7E 00 14 */	addi r3, r30, 0x14
/* 80994FF0  38 80 FF FF */	li r4, -1
/* 80994FF4  4B 8D 9F 25 */	bl __dt__8cM3dGCirFv
/* 80994FF8  7F C3 F3 78 */	mr r3, r30
/* 80994FFC  38 80 00 00 */	li r4, 0
/* 80995000  4B 8D 30 B1 */	bl __dt__13cBgS_PolyInfoFv
/* 80995004  7F E0 07 35 */	extsh. r0, r31
/* 80995008  40 81 00 0C */	ble lbl_80995014
/* 8099500C  7F C3 F3 78 */	mr r3, r30
/* 80995010  4B 93 9D 2D */	bl __dl__FPv
lbl_80995014:
/* 80995014  7F C3 F3 78 */	mr r3, r30
/* 80995018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099501C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80995020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80995024  7C 08 03 A6 */	mtlr r0
/* 80995028  38 21 00 10 */	addi r1, r1, 0x10
/* 8099502C  4E 80 00 20 */	blr 
