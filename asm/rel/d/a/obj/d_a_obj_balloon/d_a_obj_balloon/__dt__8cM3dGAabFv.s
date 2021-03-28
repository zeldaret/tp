lbl_80BA8B78:
/* 80BA8B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA8B7C  7C 08 02 A6 */	mflr r0
/* 80BA8B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA8B84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA8B88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA8B8C  41 82 00 1C */	beq lbl_80BA8BA8
/* 80BA8B90  3C A0 80 BB */	lis r5, __vt__8cM3dGAab@ha
/* 80BA8B94  38 05 8F 68 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80BA8B98  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BA8B9C  7C 80 07 35 */	extsh. r0, r4
/* 80BA8BA0  40 81 00 08 */	ble lbl_80BA8BA8
/* 80BA8BA4  4B 72 61 98 */	b __dl__FPv
lbl_80BA8BA8:
/* 80BA8BA8  7F E3 FB 78 */	mr r3, r31
/* 80BA8BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA8BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA8BB4  7C 08 03 A6 */	mtlr r0
/* 80BA8BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA8BBC  4E 80 00 20 */	blr 
