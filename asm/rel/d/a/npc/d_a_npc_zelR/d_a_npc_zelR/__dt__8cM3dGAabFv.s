lbl_80B70DA4:
/* 80B70DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B70DA8  7C 08 02 A6 */	mflr r0
/* 80B70DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B70DB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B70DB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B70DB8  41 82 00 1C */	beq lbl_80B70DD4
/* 80B70DBC  3C A0 80 B7 */	lis r5, __vt__8cM3dGAab@ha /* 0x80B71DB0@ha */
/* 80B70DC0  38 05 1D B0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80B71DB0@l */
/* 80B70DC4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B70DC8  7C 80 07 35 */	extsh. r0, r4
/* 80B70DCC  40 81 00 08 */	ble lbl_80B70DD4
/* 80B70DD0  4B 75 DF 6D */	bl __dl__FPv
lbl_80B70DD4:
/* 80B70DD4  7F E3 FB 78 */	mr r3, r31
/* 80B70DD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B70DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B70DE0  7C 08 03 A6 */	mtlr r0
/* 80B70DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B70DE8  4E 80 00 20 */	blr 
