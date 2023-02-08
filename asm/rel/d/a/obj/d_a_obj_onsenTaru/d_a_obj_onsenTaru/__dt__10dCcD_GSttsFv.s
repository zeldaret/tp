lbl_80CA8AE4:
/* 80CA8AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA8AE8  7C 08 02 A6 */	mflr r0
/* 80CA8AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8AF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA8AF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA8AF8  41 82 00 30 */	beq lbl_80CA8B28
/* 80CA8AFC  3C 60 80 CB */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CA9D5C@ha */
/* 80CA8B00  38 03 9D 5C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CA9D5C@l */
/* 80CA8B04  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA8B08  41 82 00 10 */	beq lbl_80CA8B18
/* 80CA8B0C  3C 60 80 CB */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CA9D50@ha */
/* 80CA8B10  38 03 9D 50 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CA9D50@l */
/* 80CA8B14  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CA8B18:
/* 80CA8B18  7C 80 07 35 */	extsh. r0, r4
/* 80CA8B1C  40 81 00 0C */	ble lbl_80CA8B28
/* 80CA8B20  7F E3 FB 78 */	mr r3, r31
/* 80CA8B24  4B 62 62 19 */	bl __dl__FPv
lbl_80CA8B28:
/* 80CA8B28  7F E3 FB 78 */	mr r3, r31
/* 80CA8B2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA8B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA8B34  7C 08 03 A6 */	mtlr r0
/* 80CA8B38  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8B3C  4E 80 00 20 */	blr 
