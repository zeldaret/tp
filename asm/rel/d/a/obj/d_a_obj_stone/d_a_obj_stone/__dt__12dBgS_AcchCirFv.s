lbl_80CE9AC0:
/* 80CE9AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE9AC4  7C 08 02 A6 */	mflr r0
/* 80CE9AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE9ACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE9AD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE9AD4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CE9AD8  7C 9F 23 78 */	mr r31, r4
/* 80CE9ADC  41 82 00 38 */	beq lbl_80CE9B14
/* 80CE9AE0  3C 60 80 CF */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80CE9AE4  38 03 CD A4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80CE9AE8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80CE9AEC  38 7E 00 14 */	addi r3, r30, 0x14
/* 80CE9AF0  38 80 FF FF */	li r4, -1
/* 80CE9AF4  4B 58 54 24 */	b __dt__8cM3dGCirFv
/* 80CE9AF8  7F C3 F3 78 */	mr r3, r30
/* 80CE9AFC  38 80 00 00 */	li r4, 0
/* 80CE9B00  4B 57 E5 B0 */	b __dt__13cBgS_PolyInfoFv
/* 80CE9B04  7F E0 07 35 */	extsh. r0, r31
/* 80CE9B08  40 81 00 0C */	ble lbl_80CE9B14
/* 80CE9B0C  7F C3 F3 78 */	mr r3, r30
/* 80CE9B10  4B 5E 52 2C */	b __dl__FPv
lbl_80CE9B14:
/* 80CE9B14  7F C3 F3 78 */	mr r3, r30
/* 80CE9B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE9B1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE9B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE9B24  7C 08 03 A6 */	mtlr r0
/* 80CE9B28  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE9B2C  4E 80 00 20 */	blr 
