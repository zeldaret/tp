lbl_80AC36CC:
/* 80AC36CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC36D0  7C 08 02 A6 */	mflr r0
/* 80AC36D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC36D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC36DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC36E0  41 82 00 1C */	beq lbl_80AC36FC
/* 80AC36E4  3C A0 80 AC */	lis r5, __vt__13daNpcT_Path_c@ha /* 0x80AC4F04@ha */
/* 80AC36E8  38 05 4F 04 */	addi r0, r5, __vt__13daNpcT_Path_c@l /* 0x80AC4F04@l */
/* 80AC36EC  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80AC36F0  7C 80 07 35 */	extsh. r0, r4
/* 80AC36F4  40 81 00 08 */	ble lbl_80AC36FC
/* 80AC36F8  4B 80 B6 45 */	bl __dl__FPv
lbl_80AC36FC:
/* 80AC36FC  7F E3 FB 78 */	mr r3, r31
/* 80AC3700  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC3704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC3708  7C 08 03 A6 */	mtlr r0
/* 80AC370C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC3710  4E 80 00 20 */	blr 
