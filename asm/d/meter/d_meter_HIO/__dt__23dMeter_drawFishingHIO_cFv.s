lbl_80200F08:
/* 80200F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80200F0C  7C 08 02 A6 */	mflr r0
/* 80200F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80200F14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80200F18  7C 7F 1B 79 */	or. r31, r3, r3
/* 80200F1C  41 82 00 1C */	beq lbl_80200F38
/* 80200F20  3C A0 80 3C */	lis r5, __vt__23dMeter_drawFishingHIO_c@ha /* 0x803BF16C@ha */
/* 80200F24  38 05 F1 6C */	addi r0, r5, __vt__23dMeter_drawFishingHIO_c@l /* 0x803BF16C@l */
/* 80200F28  90 1F 00 00 */	stw r0, 0(r31)
/* 80200F2C  7C 80 07 35 */	extsh. r0, r4
/* 80200F30  40 81 00 08 */	ble lbl_80200F38
/* 80200F34  48 0C DE 09 */	bl __dl__FPv
lbl_80200F38:
/* 80200F38  7F E3 FB 78 */	mr r3, r31
/* 80200F3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80200F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80200F44  7C 08 03 A6 */	mtlr r0
/* 80200F48  38 21 00 10 */	addi r1, r1, 0x10
/* 80200F4C  4E 80 00 20 */	blr 
