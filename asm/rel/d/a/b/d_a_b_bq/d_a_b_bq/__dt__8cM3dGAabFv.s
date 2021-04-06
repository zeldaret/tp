lbl_805B9F10:
/* 805B9F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B9F14  7C 08 02 A6 */	mflr r0
/* 805B9F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B9F1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B9F20  7C 7F 1B 79 */	or. r31, r3, r3
/* 805B9F24  41 82 00 1C */	beq lbl_805B9F40
/* 805B9F28  3C A0 80 5C */	lis r5, __vt__8cM3dGAab@ha /* 0x805BAD20@ha */
/* 805B9F2C  38 05 AD 20 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x805BAD20@l */
/* 805B9F30  90 1F 00 18 */	stw r0, 0x18(r31)
/* 805B9F34  7C 80 07 35 */	extsh. r0, r4
/* 805B9F38  40 81 00 08 */	ble lbl_805B9F40
/* 805B9F3C  4B D1 4E 01 */	bl __dl__FPv
lbl_805B9F40:
/* 805B9F40  7F E3 FB 78 */	mr r3, r31
/* 805B9F44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B9F48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B9F4C  7C 08 03 A6 */	mtlr r0
/* 805B9F50  38 21 00 10 */	addi r1, r1, 0x10
/* 805B9F54  4E 80 00 20 */	blr 
