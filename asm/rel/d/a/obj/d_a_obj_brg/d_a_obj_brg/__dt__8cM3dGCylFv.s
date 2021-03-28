lbl_80BC1EC4:
/* 80BC1EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC1EC8  7C 08 02 A6 */	mflr r0
/* 80BC1ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC1ED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC1ED4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC1ED8  41 82 00 1C */	beq lbl_80BC1EF4
/* 80BC1EDC  3C A0 80 BC */	lis r5, __vt__8cM3dGCyl@ha
/* 80BC1EE0  38 05 24 BC */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80BC1EE4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BC1EE8  7C 80 07 35 */	extsh. r0, r4
/* 80BC1EEC  40 81 00 08 */	ble lbl_80BC1EF4
/* 80BC1EF0  4B 70 CE 4C */	b __dl__FPv
lbl_80BC1EF4:
/* 80BC1EF4  7F E3 FB 78 */	mr r3, r31
/* 80BC1EF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC1EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC1F00  7C 08 03 A6 */	mtlr r0
/* 80BC1F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC1F08  4E 80 00 20 */	blr 
