lbl_807F2704:
/* 807F2704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F2708  7C 08 02 A6 */	mflr r0
/* 807F270C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F2710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F2714  7C 7F 1B 79 */	or. r31, r3, r3
/* 807F2718  41 82 00 1C */	beq lbl_807F2734
/* 807F271C  3C A0 80 7F */	lis r5, __vt__8cM3dGAab@ha /* 0x807F2AC4@ha */
/* 807F2720  38 05 2A C4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x807F2AC4@l */
/* 807F2724  90 1F 00 18 */	stw r0, 0x18(r31)
/* 807F2728  7C 80 07 35 */	extsh. r0, r4
/* 807F272C  40 81 00 08 */	ble lbl_807F2734
/* 807F2730  4B AD C6 0D */	bl __dl__FPv
lbl_807F2734:
/* 807F2734  7F E3 FB 78 */	mr r3, r31
/* 807F2738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F273C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F2740  7C 08 03 A6 */	mtlr r0
/* 807F2744  38 21 00 10 */	addi r1, r1, 0x10
/* 807F2748  4E 80 00 20 */	blr 
