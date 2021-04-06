lbl_806F0144:
/* 806F0144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F0148  7C 08 02 A6 */	mflr r0
/* 806F014C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F0150  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F0154  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F0158  41 82 00 1C */	beq lbl_806F0174
/* 806F015C  3C A0 80 6F */	lis r5, __vt__8cM3dGAab@ha /* 0x806F0ADC@ha */
/* 806F0160  38 05 0A DC */	addi r0, r5, __vt__8cM3dGAab@l /* 0x806F0ADC@l */
/* 806F0164  90 1F 00 18 */	stw r0, 0x18(r31)
/* 806F0168  7C 80 07 35 */	extsh. r0, r4
/* 806F016C  40 81 00 08 */	ble lbl_806F0174
/* 806F0170  4B BD EB CD */	bl __dl__FPv
lbl_806F0174:
/* 806F0174  7F E3 FB 78 */	mr r3, r31
/* 806F0178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F017C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F0180  7C 08 03 A6 */	mtlr r0
/* 806F0184  38 21 00 10 */	addi r1, r1, 0x10
/* 806F0188  4E 80 00 20 */	blr 
