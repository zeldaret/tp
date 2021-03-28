lbl_80B0C028:
/* 80B0C028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0C02C  7C 08 02 A6 */	mflr r0
/* 80B0C030  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0C034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0C038  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B0C03C  41 82 00 1C */	beq lbl_80B0C058
/* 80B0C040  3C A0 80 B1 */	lis r5, __vt__8cM3dGAab@ha
/* 80B0C044  38 05 C5 70 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80B0C048  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B0C04C  7C 80 07 35 */	extsh. r0, r4
/* 80B0C050  40 81 00 08 */	ble lbl_80B0C058
/* 80B0C054  4B 7C 2C E8 */	b __dl__FPv
lbl_80B0C058:
/* 80B0C058  7F E3 FB 78 */	mr r3, r31
/* 80B0C05C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0C060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0C064  7C 08 03 A6 */	mtlr r0
/* 80B0C068  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0C06C  4E 80 00 20 */	blr 
