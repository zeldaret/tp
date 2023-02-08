lbl_80D41D94:
/* 80D41D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D41D98  7C 08 02 A6 */	mflr r0
/* 80D41D9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D41DA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D41DA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D41DA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D41DAC  7C 9F 23 78 */	mr r31, r4
/* 80D41DB0  41 82 00 38 */	beq lbl_80D41DE8
/* 80D41DB4  3C 60 80 D4 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80D42538@ha */
/* 80D41DB8  38 03 25 38 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80D42538@l */
/* 80D41DBC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80D41DC0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D41DC4  38 80 FF FF */	li r4, -1
/* 80D41DC8  4B 52 D1 51 */	bl __dt__8cM3dGCirFv
/* 80D41DCC  7F C3 F3 78 */	mr r3, r30
/* 80D41DD0  38 80 00 00 */	li r4, 0
/* 80D41DD4  4B 52 62 DD */	bl __dt__13cBgS_PolyInfoFv
/* 80D41DD8  7F E0 07 35 */	extsh. r0, r31
/* 80D41DDC  40 81 00 0C */	ble lbl_80D41DE8
/* 80D41DE0  7F C3 F3 78 */	mr r3, r30
/* 80D41DE4  4B 58 CF 59 */	bl __dl__FPv
lbl_80D41DE8:
/* 80D41DE8  7F C3 F3 78 */	mr r3, r30
/* 80D41DEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D41DF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D41DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D41DF8  7C 08 03 A6 */	mtlr r0
/* 80D41DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D41E00  4E 80 00 20 */	blr 
