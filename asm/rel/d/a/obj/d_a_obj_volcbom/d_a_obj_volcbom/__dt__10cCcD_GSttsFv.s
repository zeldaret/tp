lbl_80D26AE0:
/* 80D26AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D26AE4  7C 08 02 A6 */	mflr r0
/* 80D26AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D26AEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D26AF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D26AF4  41 82 00 1C */	beq lbl_80D26B10
/* 80D26AF8  3C A0 80 D2 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80D26E20@ha */
/* 80D26AFC  38 05 6E 20 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80D26E20@l */
/* 80D26B00  90 1F 00 00 */	stw r0, 0(r31)
/* 80D26B04  7C 80 07 35 */	extsh. r0, r4
/* 80D26B08  40 81 00 08 */	ble lbl_80D26B10
/* 80D26B0C  4B 5A 82 31 */	bl __dl__FPv
lbl_80D26B10:
/* 80D26B10  7F E3 FB 78 */	mr r3, r31
/* 80D26B14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D26B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D26B1C  7C 08 03 A6 */	mtlr r0
/* 80D26B20  38 21 00 10 */	addi r1, r1, 0x10
/* 80D26B24  4E 80 00 20 */	blr 
