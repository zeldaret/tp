lbl_80597AD8:
/* 80597AD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80597ADC  7C 08 02 A6 */	mflr r0
/* 80597AE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80597AE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80597AE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80597AEC  41 82 00 1C */	beq lbl_80597B08
/* 80597AF0  3C A0 80 5A */	lis r5, __vt__8cM3dGAab@ha /* 0x805980B0@ha */
/* 80597AF4  38 05 80 B0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x805980B0@l */
/* 80597AF8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80597AFC  7C 80 07 35 */	extsh. r0, r4
/* 80597B00  40 81 00 08 */	ble lbl_80597B08
/* 80597B04  4B D3 72 39 */	bl __dl__FPv
lbl_80597B08:
/* 80597B08  7F E3 FB 78 */	mr r3, r31
/* 80597B0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80597B10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80597B14  7C 08 03 A6 */	mtlr r0
/* 80597B18  38 21 00 10 */	addi r1, r1, 0x10
/* 80597B1C  4E 80 00 20 */	blr 
