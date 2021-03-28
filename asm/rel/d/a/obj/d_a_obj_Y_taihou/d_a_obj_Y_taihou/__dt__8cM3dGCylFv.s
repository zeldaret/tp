lbl_80BA0DA4:
/* 80BA0DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA0DA8  7C 08 02 A6 */	mflr r0
/* 80BA0DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA0DB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA0DB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA0DB8  41 82 00 1C */	beq lbl_80BA0DD4
/* 80BA0DBC  3C A0 80 BA */	lis r5, __vt__8cM3dGCyl@ha
/* 80BA0DC0  38 05 12 98 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80BA0DC4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BA0DC8  7C 80 07 35 */	extsh. r0, r4
/* 80BA0DCC  40 81 00 08 */	ble lbl_80BA0DD4
/* 80BA0DD0  4B 72 DF 6C */	b __dl__FPv
lbl_80BA0DD4:
/* 80BA0DD4  7F E3 FB 78 */	mr r3, r31
/* 80BA0DD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA0DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA0DE0  7C 08 03 A6 */	mtlr r0
/* 80BA0DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA0DE8  4E 80 00 20 */	blr 
