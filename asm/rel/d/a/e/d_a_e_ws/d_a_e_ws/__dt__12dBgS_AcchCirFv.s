lbl_807E6D6C:
/* 807E6D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E6D70  7C 08 02 A6 */	mflr r0
/* 807E6D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E6D78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E6D7C  93 C1 00 08 */	stw r30, 8(r1)
/* 807E6D80  7C 7E 1B 79 */	or. r30, r3, r3
/* 807E6D84  7C 9F 23 78 */	mr r31, r4
/* 807E6D88  41 82 00 38 */	beq lbl_807E6DC0
/* 807E6D8C  3C 60 80 7E */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x807E7534@ha */
/* 807E6D90  38 03 75 34 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x807E7534@l */
/* 807E6D94  90 1E 00 0C */	stw r0, 0xc(r30)
/* 807E6D98  38 7E 00 14 */	addi r3, r30, 0x14
/* 807E6D9C  38 80 FF FF */	li r4, -1
/* 807E6DA0  4B A8 81 79 */	bl __dt__8cM3dGCirFv
/* 807E6DA4  7F C3 F3 78 */	mr r3, r30
/* 807E6DA8  38 80 00 00 */	li r4, 0
/* 807E6DAC  4B A8 13 05 */	bl __dt__13cBgS_PolyInfoFv
/* 807E6DB0  7F E0 07 35 */	extsh. r0, r31
/* 807E6DB4  40 81 00 0C */	ble lbl_807E6DC0
/* 807E6DB8  7F C3 F3 78 */	mr r3, r30
/* 807E6DBC  4B AE 7F 81 */	bl __dl__FPv
lbl_807E6DC0:
/* 807E6DC0  7F C3 F3 78 */	mr r3, r30
/* 807E6DC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E6DC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 807E6DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E6DD0  7C 08 03 A6 */	mtlr r0
/* 807E6DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 807E6DD8  4E 80 00 20 */	blr 
