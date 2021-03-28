lbl_80BD2DC4:
/* 80BD2DC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD2DC8  7C 08 02 A6 */	mflr r0
/* 80BD2DCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD2DD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD2DD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BD2DD8  41 82 00 1C */	beq lbl_80BD2DF4
/* 80BD2DDC  3C A0 80 BD */	lis r5, __vt__8cM3dGSph@ha
/* 80BD2DE0  38 05 32 48 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80BD2DE4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BD2DE8  7C 80 07 35 */	extsh. r0, r4
/* 80BD2DEC  40 81 00 08 */	ble lbl_80BD2DF4
/* 80BD2DF0  4B 6F BF 4C */	b __dl__FPv
lbl_80BD2DF4:
/* 80BD2DF4  7F E3 FB 78 */	mr r3, r31
/* 80BD2DF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD2DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD2E00  7C 08 03 A6 */	mtlr r0
/* 80BD2E04  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD2E08  4E 80 00 20 */	blr 
