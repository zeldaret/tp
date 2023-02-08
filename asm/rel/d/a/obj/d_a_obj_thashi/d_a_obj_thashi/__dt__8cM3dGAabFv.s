lbl_80D0CC10:
/* 80D0CC10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0CC14  7C 08 02 A6 */	mflr r0
/* 80D0CC18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0CC1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0CC20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0CC24  41 82 00 1C */	beq lbl_80D0CC40
/* 80D0CC28  3C A0 80 D1 */	lis r5, __vt__8cM3dGAab@ha /* 0x80D0D3C4@ha */
/* 80D0CC2C  38 05 D3 C4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80D0D3C4@l */
/* 80D0CC30  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D0CC34  7C 80 07 35 */	extsh. r0, r4
/* 80D0CC38  40 81 00 08 */	ble lbl_80D0CC40
/* 80D0CC3C  4B 5C 21 01 */	bl __dl__FPv
lbl_80D0CC40:
/* 80D0CC40  7F E3 FB 78 */	mr r3, r31
/* 80D0CC44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0CC48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0CC4C  7C 08 03 A6 */	mtlr r0
/* 80D0CC50  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0CC54  4E 80 00 20 */	blr 
