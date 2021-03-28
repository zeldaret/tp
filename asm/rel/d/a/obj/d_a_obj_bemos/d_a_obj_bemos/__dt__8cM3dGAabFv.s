lbl_80BB3258:
/* 80BB3258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB325C  7C 08 02 A6 */	mflr r0
/* 80BB3260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB3264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB3268  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB326C  41 82 00 1C */	beq lbl_80BB3288
/* 80BB3270  3C A0 80 BB */	lis r5, __vt__8cM3dGAab@ha
/* 80BB3274  38 05 3E 10 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80BB3278  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BB327C  7C 80 07 35 */	extsh. r0, r4
/* 80BB3280  40 81 00 08 */	ble lbl_80BB3288
/* 80BB3284  4B 71 BA B8 */	b __dl__FPv
lbl_80BB3288:
/* 80BB3288  7F E3 FB 78 */	mr r3, r31
/* 80BB328C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB3290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB3294  7C 08 03 A6 */	mtlr r0
/* 80BB3298  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB329C  4E 80 00 20 */	blr 
