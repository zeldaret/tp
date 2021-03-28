lbl_80480AD4:
/* 80480AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80480AD8  7C 08 02 A6 */	mflr r0
/* 80480ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80480AE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80480AE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80480AE8  41 82 00 1C */	beq lbl_80480B04
/* 80480AEC  3C A0 80 48 */	lis r5, __vt__8cM3dGCyl@ha
/* 80480AF0  38 05 17 D4 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80480AF4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80480AF8  7C 80 07 35 */	extsh. r0, r4
/* 80480AFC  40 81 00 08 */	ble lbl_80480B04
/* 80480B00  4B E4 E2 3C */	b __dl__FPv
lbl_80480B04:
/* 80480B04  7F E3 FB 78 */	mr r3, r31
/* 80480B08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80480B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80480B10  7C 08 03 A6 */	mtlr r0
/* 80480B14  38 21 00 10 */	addi r1, r1, 0x10
/* 80480B18  4E 80 00 20 */	blr 
