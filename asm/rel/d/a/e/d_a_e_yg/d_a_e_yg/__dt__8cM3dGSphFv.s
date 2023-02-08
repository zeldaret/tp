lbl_807FBF54:
/* 807FBF54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FBF58  7C 08 02 A6 */	mflr r0
/* 807FBF5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FBF60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807FBF64  7C 7F 1B 79 */	or. r31, r3, r3
/* 807FBF68  41 82 00 1C */	beq lbl_807FBF84
/* 807FBF6C  3C A0 80 80 */	lis r5, __vt__8cM3dGSph@ha /* 0x807FCFD0@ha */
/* 807FBF70  38 05 CF D0 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x807FCFD0@l */
/* 807FBF74  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807FBF78  7C 80 07 35 */	extsh. r0, r4
/* 807FBF7C  40 81 00 08 */	ble lbl_807FBF84
/* 807FBF80  4B AD 2D BD */	bl __dl__FPv
lbl_807FBF84:
/* 807FBF84  7F E3 FB 78 */	mr r3, r31
/* 807FBF88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807FBF8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FBF90  7C 08 03 A6 */	mtlr r0
/* 807FBF94  38 21 00 10 */	addi r1, r1, 0x10
/* 807FBF98  4E 80 00 20 */	blr 
