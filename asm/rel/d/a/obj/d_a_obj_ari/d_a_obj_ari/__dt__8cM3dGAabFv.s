lbl_80BA5310:
/* 80BA5310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA5314  7C 08 02 A6 */	mflr r0
/* 80BA5318  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA531C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA5320  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA5324  41 82 00 1C */	beq lbl_80BA5340
/* 80BA5328  3C A0 80 BA */	lis r5, __vt__8cM3dGAab@ha
/* 80BA532C  38 05 55 9C */	addi r0, r5, __vt__8cM3dGAab@l
/* 80BA5330  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BA5334  7C 80 07 35 */	extsh. r0, r4
/* 80BA5338  40 81 00 08 */	ble lbl_80BA5340
/* 80BA533C  4B 72 9A 00 */	b __dl__FPv
lbl_80BA5340:
/* 80BA5340  7F E3 FB 78 */	mr r3, r31
/* 80BA5344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA5348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA534C  7C 08 03 A6 */	mtlr r0
/* 80BA5350  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA5354  4E 80 00 20 */	blr 
