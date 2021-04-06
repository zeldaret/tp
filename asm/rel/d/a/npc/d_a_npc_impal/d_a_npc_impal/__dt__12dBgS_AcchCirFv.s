lbl_80A0C02C:
/* 80A0C02C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0C030  7C 08 02 A6 */	mflr r0
/* 80A0C034  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0C038  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0C03C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A0C040  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A0C044  7C 9F 23 78 */	mr r31, r4
/* 80A0C048  41 82 00 38 */	beq lbl_80A0C080
/* 80A0C04C  3C 60 80 A1 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A0C8A4@ha */
/* 80A0C050  38 03 C8 A4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A0C8A4@l */
/* 80A0C054  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A0C058  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A0C05C  38 80 FF FF */	li r4, -1
/* 80A0C060  4B 86 2E B9 */	bl __dt__8cM3dGCirFv
/* 80A0C064  7F C3 F3 78 */	mr r3, r30
/* 80A0C068  38 80 00 00 */	li r4, 0
/* 80A0C06C  4B 85 C0 45 */	bl __dt__13cBgS_PolyInfoFv
/* 80A0C070  7F E0 07 35 */	extsh. r0, r31
/* 80A0C074  40 81 00 0C */	ble lbl_80A0C080
/* 80A0C078  7F C3 F3 78 */	mr r3, r30
/* 80A0C07C  4B 8C 2C C1 */	bl __dl__FPv
lbl_80A0C080:
/* 80A0C080  7F C3 F3 78 */	mr r3, r30
/* 80A0C084  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0C088  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A0C08C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0C090  7C 08 03 A6 */	mtlr r0
/* 80A0C094  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0C098  4E 80 00 20 */	blr 
