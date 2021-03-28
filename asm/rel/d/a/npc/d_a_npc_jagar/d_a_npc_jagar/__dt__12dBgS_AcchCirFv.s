lbl_80A19AD4:
/* 80A19AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A19AD8  7C 08 02 A6 */	mflr r0
/* 80A19ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A19AE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A19AE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80A19AE8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A19AEC  7C 9F 23 78 */	mr r31, r4
/* 80A19AF0  41 82 00 38 */	beq lbl_80A19B28
/* 80A19AF4  3C 60 80 A2 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A19AF8  38 03 AC 9C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A19AFC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A19B00  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A19B04  38 80 FF FF */	li r4, -1
/* 80A19B08  4B 85 54 10 */	b __dt__8cM3dGCirFv
/* 80A19B0C  7F C3 F3 78 */	mr r3, r30
/* 80A19B10  38 80 00 00 */	li r4, 0
/* 80A19B14  4B 84 E5 9C */	b __dt__13cBgS_PolyInfoFv
/* 80A19B18  7F E0 07 35 */	extsh. r0, r31
/* 80A19B1C  40 81 00 0C */	ble lbl_80A19B28
/* 80A19B20  7F C3 F3 78 */	mr r3, r30
/* 80A19B24  4B 8B 52 18 */	b __dl__FPv
lbl_80A19B28:
/* 80A19B28  7F C3 F3 78 */	mr r3, r30
/* 80A19B2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A19B30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A19B34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A19B38  7C 08 03 A6 */	mtlr r0
/* 80A19B3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A19B40  4E 80 00 20 */	blr 
