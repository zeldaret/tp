lbl_80CA5EE4:
/* 80CA5EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA5EE8  7C 08 02 A6 */	mflr r0
/* 80CA5EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA5EF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA5EF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA5EF8  41 82 00 1C */	beq lbl_80CA5F14
/* 80CA5EFC  3C A0 80 CA */	lis r5, __vt__8cM3dGCyl@ha
/* 80CA5F00  38 05 66 40 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80CA5F04  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CA5F08  7C 80 07 35 */	extsh. r0, r4
/* 80CA5F0C  40 81 00 08 */	ble lbl_80CA5F14
/* 80CA5F10  4B 62 8E 2C */	b __dl__FPv
lbl_80CA5F14:
/* 80CA5F14  7F E3 FB 78 */	mr r3, r31
/* 80CA5F18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA5F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA5F20  7C 08 03 A6 */	mtlr r0
/* 80CA5F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA5F28  4E 80 00 20 */	blr 
