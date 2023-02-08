lbl_80BAE0FC:
/* 80BAE0FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAE100  7C 08 02 A6 */	mflr r0
/* 80BAE104  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAE108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAE10C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BAE110  41 82 00 1C */	beq lbl_80BAE12C
/* 80BAE114  3C A0 80 BB */	lis r5, __vt__17daObj_Bed_Param_c@ha /* 0x80BAE240@ha */
/* 80BAE118  38 05 E2 40 */	addi r0, r5, __vt__17daObj_Bed_Param_c@l /* 0x80BAE240@l */
/* 80BAE11C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BAE120  7C 80 07 35 */	extsh. r0, r4
/* 80BAE124  40 81 00 08 */	ble lbl_80BAE12C
/* 80BAE128  4B 72 0C 15 */	bl __dl__FPv
lbl_80BAE12C:
/* 80BAE12C  7F E3 FB 78 */	mr r3, r31
/* 80BAE130  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAE134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAE138  7C 08 03 A6 */	mtlr r0
/* 80BAE13C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAE140  4E 80 00 20 */	blr 
