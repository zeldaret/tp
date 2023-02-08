lbl_80575D9C:
/* 80575D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80575DA0  7C 08 02 A6 */	mflr r0
/* 80575DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80575DA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80575DAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80575DB0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80575DB4  7C 9F 23 78 */	mr r31, r4
/* 80575DB8  41 82 00 38 */	beq lbl_80575DF0
/* 80575DBC  3C 60 80 57 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8057688C@ha */
/* 80575DC0  38 03 68 8C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8057688C@l */
/* 80575DC4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80575DC8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80575DCC  38 80 FF FF */	li r4, -1
/* 80575DD0  4B CF 91 49 */	bl __dt__8cM3dGCirFv
/* 80575DD4  7F C3 F3 78 */	mr r3, r30
/* 80575DD8  38 80 00 00 */	li r4, 0
/* 80575DDC  4B CF 22 D5 */	bl __dt__13cBgS_PolyInfoFv
/* 80575DE0  7F E0 07 35 */	extsh. r0, r31
/* 80575DE4  40 81 00 0C */	ble lbl_80575DF0
/* 80575DE8  7F C3 F3 78 */	mr r3, r30
/* 80575DEC  4B D5 8F 51 */	bl __dl__FPv
lbl_80575DF0:
/* 80575DF0  7F C3 F3 78 */	mr r3, r30
/* 80575DF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80575DF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80575DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575E00  7C 08 03 A6 */	mtlr r0
/* 80575E04  38 21 00 10 */	addi r1, r1, 0x10
/* 80575E08  4E 80 00 20 */	blr 
