lbl_80A05E38:
/* 80A05E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A05E3C  7C 08 02 A6 */	mflr r0
/* 80A05E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A05E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A05E48  93 C1 00 08 */	stw r30, 8(r1)
/* 80A05E4C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A05E50  7C 9F 23 78 */	mr r31, r4
/* 80A05E54  41 82 00 38 */	beq lbl_80A05E8C
/* 80A05E58  3C 60 80 A0 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A077B0@ha */
/* 80A05E5C  38 03 77 B0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A077B0@l */
/* 80A05E60  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A05E64  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A05E68  38 80 FF FF */	li r4, -1
/* 80A05E6C  4B 86 90 AD */	bl __dt__8cM3dGCirFv
/* 80A05E70  7F C3 F3 78 */	mr r3, r30
/* 80A05E74  38 80 00 00 */	li r4, 0
/* 80A05E78  4B 86 22 39 */	bl __dt__13cBgS_PolyInfoFv
/* 80A05E7C  7F E0 07 35 */	extsh. r0, r31
/* 80A05E80  40 81 00 0C */	ble lbl_80A05E8C
/* 80A05E84  7F C3 F3 78 */	mr r3, r30
/* 80A05E88  4B 8C 8E B5 */	bl __dl__FPv
lbl_80A05E8C:
/* 80A05E8C  7F C3 F3 78 */	mr r3, r30
/* 80A05E90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A05E94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A05E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A05E9C  7C 08 03 A6 */	mtlr r0
/* 80A05EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A05EA4  4E 80 00 20 */	blr 
