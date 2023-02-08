lbl_80BF40E8:
/* 80BF40E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF40EC  7C 08 02 A6 */	mflr r0
/* 80BF40F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF40F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF40F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF40FC  41 82 00 1C */	beq lbl_80BF4118
/* 80BF4100  3C A0 80 BF */	lis r5, __vt__8cM3dGPla@ha /* 0x80BF4B00@ha */
/* 80BF4104  38 05 4B 00 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80BF4B00@l */
/* 80BF4108  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BF410C  7C 80 07 35 */	extsh. r0, r4
/* 80BF4110  40 81 00 08 */	ble lbl_80BF4118
/* 80BF4114  4B 6D AC 29 */	bl __dl__FPv
lbl_80BF4118:
/* 80BF4118  7F E3 FB 78 */	mr r3, r31
/* 80BF411C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF4120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF4124  7C 08 03 A6 */	mtlr r0
/* 80BF4128  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF412C  4E 80 00 20 */	blr 
