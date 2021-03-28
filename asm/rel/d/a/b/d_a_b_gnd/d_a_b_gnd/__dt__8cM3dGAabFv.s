lbl_80601EDC:
/* 80601EDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80601EE0  7C 08 02 A6 */	mflr r0
/* 80601EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80601EE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80601EEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80601EF0  41 82 00 1C */	beq lbl_80601F0C
/* 80601EF4  3C A0 80 60 */	lis r5, __vt__8cM3dGAab@ha
/* 80601EF8  38 05 2F 0C */	addi r0, r5, __vt__8cM3dGAab@l
/* 80601EFC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80601F00  7C 80 07 35 */	extsh. r0, r4
/* 80601F04  40 81 00 08 */	ble lbl_80601F0C
/* 80601F08  4B CC CE 34 */	b __dl__FPv
lbl_80601F0C:
/* 80601F0C  7F E3 FB 78 */	mr r3, r31
/* 80601F10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80601F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80601F18  7C 08 03 A6 */	mtlr r0
/* 80601F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80601F20  4E 80 00 20 */	blr 
