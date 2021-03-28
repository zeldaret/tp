lbl_80D1ED38:
/* 80D1ED38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1ED3C  7C 08 02 A6 */	mflr r0
/* 80D1ED40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1ED44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1ED48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1ED4C  41 82 00 1C */	beq lbl_80D1ED68
/* 80D1ED50  3C A0 80 D2 */	lis r5, __vt__8cM3dGAab@ha
/* 80D1ED54  38 05 EF C0 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80D1ED58  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D1ED5C  7C 80 07 35 */	extsh. r0, r4
/* 80D1ED60  40 81 00 08 */	ble lbl_80D1ED68
/* 80D1ED64  4B 5A FF D8 */	b __dl__FPv
lbl_80D1ED68:
/* 80D1ED68  7F E3 FB 78 */	mr r3, r31
/* 80D1ED6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1ED70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1ED74  7C 08 03 A6 */	mtlr r0
/* 80D1ED78  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1ED7C  4E 80 00 20 */	blr 
