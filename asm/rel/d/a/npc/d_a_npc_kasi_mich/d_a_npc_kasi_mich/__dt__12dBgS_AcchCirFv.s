lbl_80A29D84:
/* 80A29D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A29D88  7C 08 02 A6 */	mflr r0
/* 80A29D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A29D90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A29D94  93 C1 00 08 */	stw r30, 8(r1)
/* 80A29D98  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A29D9C  7C 9F 23 78 */	mr r31, r4
/* 80A29DA0  41 82 00 38 */	beq lbl_80A29DD8
/* 80A29DA4  3C 60 80 A3 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A2A734@ha */
/* 80A29DA8  38 03 A7 34 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A2A734@l */
/* 80A29DAC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A29DB0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A29DB4  38 80 FF FF */	li r4, -1
/* 80A29DB8  4B 84 51 61 */	bl __dt__8cM3dGCirFv
/* 80A29DBC  7F C3 F3 78 */	mr r3, r30
/* 80A29DC0  38 80 00 00 */	li r4, 0
/* 80A29DC4  4B 83 E2 ED */	bl __dt__13cBgS_PolyInfoFv
/* 80A29DC8  7F E0 07 35 */	extsh. r0, r31
/* 80A29DCC  40 81 00 0C */	ble lbl_80A29DD8
/* 80A29DD0  7F C3 F3 78 */	mr r3, r30
/* 80A29DD4  4B 8A 4F 69 */	bl __dl__FPv
lbl_80A29DD8:
/* 80A29DD8  7F C3 F3 78 */	mr r3, r30
/* 80A29DDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A29DE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A29DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A29DE8  7C 08 03 A6 */	mtlr r0
/* 80A29DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A29DF0  4E 80 00 20 */	blr 
