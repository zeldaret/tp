lbl_80D41E4C:
/* 80D41E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D41E50  7C 08 02 A6 */	mflr r0
/* 80D41E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D41E58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D41E5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D41E60  41 82 00 1C */	beq lbl_80D41E7C
/* 80D41E64  3C A0 80 D4 */	lis r5, __vt__8cM3dGAab@ha /* 0x80D42574@ha */
/* 80D41E68  38 05 25 74 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80D42574@l */
/* 80D41E6C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D41E70  7C 80 07 35 */	extsh. r0, r4
/* 80D41E74  40 81 00 08 */	ble lbl_80D41E7C
/* 80D41E78  4B 58 CE C5 */	bl __dl__FPv
lbl_80D41E7C:
/* 80D41E7C  7F E3 FB 78 */	mr r3, r31
/* 80D41E80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D41E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D41E88  7C 08 03 A6 */	mtlr r0
/* 80D41E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D41E90  4E 80 00 20 */	blr 
