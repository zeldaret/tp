lbl_80CA6A14:
/* 80CA6A14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA6A18  7C 08 02 A6 */	mflr r0
/* 80CA6A1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA6A20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA6A24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA6A28  41 82 00 30 */	beq lbl_80CA6A58
/* 80CA6A2C  3C 60 80 CA */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CA7A64@ha */
/* 80CA6A30  38 03 7A 64 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CA7A64@l */
/* 80CA6A34  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA6A38  41 82 00 10 */	beq lbl_80CA6A48
/* 80CA6A3C  3C 60 80 CA */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CA7A58@ha */
/* 80CA6A40  38 03 7A 58 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CA7A58@l */
/* 80CA6A44  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CA6A48:
/* 80CA6A48  7C 80 07 35 */	extsh. r0, r4
/* 80CA6A4C  40 81 00 0C */	ble lbl_80CA6A58
/* 80CA6A50  7F E3 FB 78 */	mr r3, r31
/* 80CA6A54  4B 62 82 E9 */	bl __dl__FPv
lbl_80CA6A58:
/* 80CA6A58  7F E3 FB 78 */	mr r3, r31
/* 80CA6A5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA6A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA6A64  7C 08 03 A6 */	mtlr r0
/* 80CA6A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA6A6C  4E 80 00 20 */	blr 
