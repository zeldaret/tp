lbl_80B51A8C:
/* 80B51A8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B51A90  7C 08 02 A6 */	mflr r0
/* 80B51A94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B51A98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B51A9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B51AA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B51AA4  7C 9F 23 78 */	mr r31, r4
/* 80B51AA8  41 82 00 38 */	beq lbl_80B51AE0
/* 80B51AAC  3C 60 80 B5 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B532AC@ha */
/* 80B51AB0  38 03 32 AC */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B532AC@l */
/* 80B51AB4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B51AB8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B51ABC  38 80 FF FF */	li r4, -1
/* 80B51AC0  4B 71 D4 59 */	bl __dt__8cM3dGCirFv
/* 80B51AC4  7F C3 F3 78 */	mr r3, r30
/* 80B51AC8  38 80 00 00 */	li r4, 0
/* 80B51ACC  4B 71 65 E5 */	bl __dt__13cBgS_PolyInfoFv
/* 80B51AD0  7F E0 07 35 */	extsh. r0, r31
/* 80B51AD4  40 81 00 0C */	ble lbl_80B51AE0
/* 80B51AD8  7F C3 F3 78 */	mr r3, r30
/* 80B51ADC  4B 77 D2 61 */	bl __dl__FPv
lbl_80B51AE0:
/* 80B51AE0  7F C3 F3 78 */	mr r3, r30
/* 80B51AE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B51AE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B51AEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B51AF0  7C 08 03 A6 */	mtlr r0
/* 80B51AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B51AF8  4E 80 00 20 */	blr 
