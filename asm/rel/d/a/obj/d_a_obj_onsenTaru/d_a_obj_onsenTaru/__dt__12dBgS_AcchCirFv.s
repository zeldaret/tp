lbl_80CA8B40:
/* 80CA8B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA8B44  7C 08 02 A6 */	mflr r0
/* 80CA8B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8B4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA8B50  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA8B54  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CA8B58  7C 9F 23 78 */	mr r31, r4
/* 80CA8B5C  41 82 00 38 */	beq lbl_80CA8B94
/* 80CA8B60  3C 60 80 CB */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80CA9D44@ha */
/* 80CA8B64  38 03 9D 44 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80CA9D44@l */
/* 80CA8B68  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80CA8B6C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80CA8B70  38 80 FF FF */	li r4, -1
/* 80CA8B74  4B 5C 63 A5 */	bl __dt__8cM3dGCirFv
/* 80CA8B78  7F C3 F3 78 */	mr r3, r30
/* 80CA8B7C  38 80 00 00 */	li r4, 0
/* 80CA8B80  4B 5B F5 31 */	bl __dt__13cBgS_PolyInfoFv
/* 80CA8B84  7F E0 07 35 */	extsh. r0, r31
/* 80CA8B88  40 81 00 0C */	ble lbl_80CA8B94
/* 80CA8B8C  7F C3 F3 78 */	mr r3, r30
/* 80CA8B90  4B 62 61 AD */	bl __dl__FPv
lbl_80CA8B94:
/* 80CA8B94  7F C3 F3 78 */	mr r3, r30
/* 80CA8B98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA8B9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA8BA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA8BA4  7C 08 03 A6 */	mtlr r0
/* 80CA8BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8BAC  4E 80 00 20 */	blr 
