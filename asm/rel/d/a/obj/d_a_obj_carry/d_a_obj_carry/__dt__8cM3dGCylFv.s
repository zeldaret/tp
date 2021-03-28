lbl_8046FDD8:
/* 8046FDD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046FDDC  7C 08 02 A6 */	mflr r0
/* 8046FDE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046FDE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046FDE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046FDEC  41 82 00 1C */	beq lbl_8046FE08
/* 8046FDF0  3C A0 80 48 */	lis r5, __vt__8cM3dGCyl@ha
/* 8046FDF4  38 05 B1 90 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 8046FDF8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8046FDFC  7C 80 07 35 */	extsh. r0, r4
/* 8046FE00  40 81 00 08 */	ble lbl_8046FE08
/* 8046FE04  4B E5 EF 38 */	b __dl__FPv
lbl_8046FE08:
/* 8046FE08  7F E3 FB 78 */	mr r3, r31
/* 8046FE0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046FE10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046FE14  7C 08 03 A6 */	mtlr r0
/* 8046FE18  38 21 00 10 */	addi r1, r1, 0x10
/* 8046FE1C  4E 80 00 20 */	blr 
