lbl_80CE9A1C:
/* 80CE9A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE9A20  7C 08 02 A6 */	mflr r0
/* 80CE9A24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE9A28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE9A2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE9A30  41 82 00 1C */	beq lbl_80CE9A4C
/* 80CE9A34  3C A0 80 CF */	lis r5, __vt__8cM3dGAab@ha
/* 80CE9A38  38 05 CD D4 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80CE9A3C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CE9A40  7C 80 07 35 */	extsh. r0, r4
/* 80CE9A44  40 81 00 08 */	ble lbl_80CE9A4C
/* 80CE9A48  4B 5E 52 F4 */	b __dl__FPv
lbl_80CE9A4C:
/* 80CE9A4C  7F E3 FB 78 */	mr r3, r31
/* 80CE9A50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE9A54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE9A58  7C 08 03 A6 */	mtlr r0
/* 80CE9A5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE9A60  4E 80 00 20 */	blr 
