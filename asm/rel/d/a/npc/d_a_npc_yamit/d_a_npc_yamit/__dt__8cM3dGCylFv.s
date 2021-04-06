lbl_80B4C00C:
/* 80B4C00C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4C010  7C 08 02 A6 */	mflr r0
/* 80B4C014  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4C018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4C01C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4C020  41 82 00 1C */	beq lbl_80B4C03C
/* 80B4C024  3C A0 80 B5 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80B4D104@ha */
/* 80B4C028  38 05 D1 04 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80B4D104@l */
/* 80B4C02C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B4C030  7C 80 07 35 */	extsh. r0, r4
/* 80B4C034  40 81 00 08 */	ble lbl_80B4C03C
/* 80B4C038  4B 78 2D 05 */	bl __dl__FPv
lbl_80B4C03C:
/* 80B4C03C  7F E3 FB 78 */	mr r3, r31
/* 80B4C040  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4C044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4C048  7C 08 03 A6 */	mtlr r0
/* 80B4C04C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4C050  4E 80 00 20 */	blr 
