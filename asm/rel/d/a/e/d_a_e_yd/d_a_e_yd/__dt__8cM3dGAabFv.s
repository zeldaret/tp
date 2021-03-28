lbl_807F73D8:
/* 807F73D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F73DC  7C 08 02 A6 */	mflr r0
/* 807F73E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F73E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F73E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 807F73EC  41 82 00 1C */	beq lbl_807F7408
/* 807F73F0  3C A0 80 7F */	lis r5, __vt__8cM3dGAab@ha
/* 807F73F4  38 05 7D 28 */	addi r0, r5, __vt__8cM3dGAab@l
/* 807F73F8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 807F73FC  7C 80 07 35 */	extsh. r0, r4
/* 807F7400  40 81 00 08 */	ble lbl_807F7408
/* 807F7404  4B AD 79 38 */	b __dl__FPv
lbl_807F7408:
/* 807F7408  7F E3 FB 78 */	mr r3, r31
/* 807F740C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F7410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F7414  7C 08 03 A6 */	mtlr r0
/* 807F7418  38 21 00 10 */	addi r1, r1, 0x10
/* 807F741C  4E 80 00 20 */	blr 
