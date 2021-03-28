lbl_80CE7710:
/* 80CE7710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE7714  7C 08 02 A6 */	mflr r0
/* 80CE7718  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE771C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE7720  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE7724  41 82 00 1C */	beq lbl_80CE7740
/* 80CE7728  3C A0 80 CE */	lis r5, __vt__8cM3dGPla@ha
/* 80CE772C  38 05 7F F8 */	addi r0, r5, __vt__8cM3dGPla@l
/* 80CE7730  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CE7734  7C 80 07 35 */	extsh. r0, r4
/* 80CE7738  40 81 00 08 */	ble lbl_80CE7740
/* 80CE773C  4B 5E 76 00 */	b __dl__FPv
lbl_80CE7740:
/* 80CE7740  7F E3 FB 78 */	mr r3, r31
/* 80CE7744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE7748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE774C  7C 08 03 A6 */	mtlr r0
/* 80CE7750  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE7754  4E 80 00 20 */	blr 
