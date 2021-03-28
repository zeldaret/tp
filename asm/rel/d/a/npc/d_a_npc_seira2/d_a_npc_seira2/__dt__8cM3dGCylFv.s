lbl_80AD3AE4:
/* 80AD3AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD3AE8  7C 08 02 A6 */	mflr r0
/* 80AD3AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD3AF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD3AF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD3AF8  41 82 00 1C */	beq lbl_80AD3B14
/* 80AD3AFC  3C A0 80 AD */	lis r5, __vt__8cM3dGCyl@ha
/* 80AD3B00  38 05 55 24 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80AD3B04  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AD3B08  7C 80 07 35 */	extsh. r0, r4
/* 80AD3B0C  40 81 00 08 */	ble lbl_80AD3B14
/* 80AD3B10  4B 7F B2 2C */	b __dl__FPv
lbl_80AD3B14:
/* 80AD3B14  7F E3 FB 78 */	mr r3, r31
/* 80AD3B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD3B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD3B20  7C 08 03 A6 */	mtlr r0
/* 80AD3B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD3B28  4E 80 00 20 */	blr 
