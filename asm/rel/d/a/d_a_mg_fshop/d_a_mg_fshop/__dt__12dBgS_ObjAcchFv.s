lbl_8086FDB8:
/* 8086FDB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8086FDBC  7C 08 02 A6 */	mflr r0
/* 8086FDC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8086FDC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8086FDC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8086FDCC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8086FDD0  7C 9F 23 78 */	mr r31, r4
/* 8086FDD4  41 82 00 38 */	beq lbl_8086FE0C
/* 8086FDD8  3C 80 80 87 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80870918@ha */
/* 8086FDDC  38 84 09 18 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80870918@l */
/* 8086FDE0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8086FDE4  38 04 00 0C */	addi r0, r4, 0xc
/* 8086FDE8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8086FDEC  38 04 00 18 */	addi r0, r4, 0x18
/* 8086FDF0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8086FDF4  38 80 00 00 */	li r4, 0
/* 8086FDF8  4B 80 61 9D */	bl __dt__9dBgS_AcchFv
/* 8086FDFC  7F E0 07 35 */	extsh. r0, r31
/* 8086FE00  40 81 00 0C */	ble lbl_8086FE0C
/* 8086FE04  7F C3 F3 78 */	mr r3, r30
/* 8086FE08  4B A5 EF 35 */	bl __dl__FPv
lbl_8086FE0C:
/* 8086FE0C  7F C3 F3 78 */	mr r3, r30
/* 8086FE10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8086FE14  83 C1 00 08 */	lwz r30, 8(r1)
/* 8086FE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086FE1C  7C 08 03 A6 */	mtlr r0
/* 8086FE20  38 21 00 10 */	addi r1, r1, 0x10
/* 8086FE24  4E 80 00 20 */	blr 
