lbl_80CA9A30:
/* 80CA9A30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA9A34  7C 08 02 A6 */	mflr r0
/* 80CA9A38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA9A3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA9A40  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA9A44  41 82 00 1C */	beq lbl_80CA9A60
/* 80CA9A48  3C A0 80 CB */	lis r5, __vt__10cCcD_GStts@ha /* 0x80CA9D50@ha */
/* 80CA9A4C  38 05 9D 50 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80CA9D50@l */
/* 80CA9A50  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA9A54  7C 80 07 35 */	extsh. r0, r4
/* 80CA9A58  40 81 00 08 */	ble lbl_80CA9A60
/* 80CA9A5C  4B 62 52 E1 */	bl __dl__FPv
lbl_80CA9A60:
/* 80CA9A60  7F E3 FB 78 */	mr r3, r31
/* 80CA9A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA9A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA9A6C  7C 08 03 A6 */	mtlr r0
/* 80CA9A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA9A74  4E 80 00 20 */	blr 
