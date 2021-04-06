lbl_80332B94:
/* 80332B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80332B98  7C 08 02 A6 */	mflr r0
/* 80332B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80332BA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80332BA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80332BA8  41 82 00 1C */	beq lbl_80332BC4
/* 80332BAC  3C A0 80 3D */	lis r5, __vt__11J3DMaterial@ha /* 0x803CDCF0@ha */
/* 80332BB0  38 05 DC F0 */	addi r0, r5, __vt__11J3DMaterial@l /* 0x803CDCF0@l */
/* 80332BB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80332BB8  7C 80 07 35 */	extsh. r0, r4
/* 80332BBC  40 81 00 08 */	ble lbl_80332BC4
/* 80332BC0  4B F9 C1 7D */	bl __dl__FPv
lbl_80332BC4:
/* 80332BC4  7F E3 FB 78 */	mr r3, r31
/* 80332BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80332BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80332BD0  7C 08 03 A6 */	mtlr r0
/* 80332BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80332BD8  4E 80 00 20 */	blr 
