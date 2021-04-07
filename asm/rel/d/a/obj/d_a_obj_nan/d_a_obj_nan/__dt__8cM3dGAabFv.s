lbl_80CA3024:
/* 80CA3024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA3028  7C 08 02 A6 */	mflr r0
/* 80CA302C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA3030  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA3034  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA3038  41 82 00 1C */	beq lbl_80CA3054
/* 80CA303C  3C A0 80 CA */	lis r5, __vt__8cM3dGAab@ha /* 0x80CA3450@ha */
/* 80CA3040  38 05 34 50 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80CA3450@l */
/* 80CA3044  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CA3048  7C 80 07 35 */	extsh. r0, r4
/* 80CA304C  40 81 00 08 */	ble lbl_80CA3054
/* 80CA3050  4B 62 BC ED */	bl __dl__FPv
lbl_80CA3054:
/* 80CA3054  7F E3 FB 78 */	mr r3, r31
/* 80CA3058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA305C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA3060  7C 08 03 A6 */	mtlr r0
/* 80CA3064  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA3068  4E 80 00 20 */	blr 
