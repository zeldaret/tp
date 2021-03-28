lbl_80BE85F8:
/* 80BE85F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE85FC  7C 08 02 A6 */	mflr r0
/* 80BE8600  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE8604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE8608  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE860C  41 82 00 1C */	beq lbl_80BE8628
/* 80BE8610  3C A0 80 BF */	lis r5, __vt__8cM3dGAab@ha
/* 80BE8614  38 05 90 50 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80BE8618  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BE861C  7C 80 07 35 */	extsh. r0, r4
/* 80BE8620  40 81 00 08 */	ble lbl_80BE8628
/* 80BE8624  4B 6E 67 18 */	b __dl__FPv
lbl_80BE8628:
/* 80BE8628  7F E3 FB 78 */	mr r3, r31
/* 80BE862C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE8630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE8634  7C 08 03 A6 */	mtlr r0
/* 80BE8638  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE863C  4E 80 00 20 */	blr 
