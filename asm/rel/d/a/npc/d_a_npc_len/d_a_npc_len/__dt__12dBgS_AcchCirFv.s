lbl_80A6864C:
/* 80A6864C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A68650  7C 08 02 A6 */	mflr r0
/* 80A68654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A68658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6865C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A68660  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A68664  7C 9F 23 78 */	mr r31, r4
/* 80A68668  41 82 00 38 */	beq lbl_80A686A0
/* 80A6866C  3C 60 80 A7 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A69910@ha */
/* 80A68670  38 03 99 10 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A69910@l */
/* 80A68674  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A68678  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A6867C  38 80 FF FF */	li r4, -1
/* 80A68680  4B 80 68 99 */	bl __dt__8cM3dGCirFv
/* 80A68684  7F C3 F3 78 */	mr r3, r30
/* 80A68688  38 80 00 00 */	li r4, 0
/* 80A6868C  4B 7F FA 25 */	bl __dt__13cBgS_PolyInfoFv
/* 80A68690  7F E0 07 35 */	extsh. r0, r31
/* 80A68694  40 81 00 0C */	ble lbl_80A686A0
/* 80A68698  7F C3 F3 78 */	mr r3, r30
/* 80A6869C  4B 86 66 A1 */	bl __dl__FPv
lbl_80A686A0:
/* 80A686A0  7F C3 F3 78 */	mr r3, r30
/* 80A686A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A686A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A686AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A686B0  7C 08 03 A6 */	mtlr r0
/* 80A686B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A686B8  4E 80 00 20 */	blr 
