lbl_80CA39AC:
/* 80CA39AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA39B0  7C 08 02 A6 */	mflr r0
/* 80CA39B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA39B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA39BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA39C0  41 82 00 1C */	beq lbl_80CA39DC
/* 80CA39C4  3C A0 80 CA */	lis r5, __vt__8cM3dGSph@ha
/* 80CA39C8  38 05 3B 08 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80CA39CC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CA39D0  7C 80 07 35 */	extsh. r0, r4
/* 80CA39D4  40 81 00 08 */	ble lbl_80CA39DC
/* 80CA39D8  4B 62 B3 64 */	b __dl__FPv
lbl_80CA39DC:
/* 80CA39DC  7F E3 FB 78 */	mr r3, r31
/* 80CA39E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA39E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA39E8  7C 08 03 A6 */	mtlr r0
/* 80CA39EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA39F0  4E 80 00 20 */	blr 
