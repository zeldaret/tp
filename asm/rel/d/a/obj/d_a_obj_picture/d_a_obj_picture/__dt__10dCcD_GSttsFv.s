lbl_80CAD66C:
/* 80CAD66C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAD670  7C 08 02 A6 */	mflr r0
/* 80CAD674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAD678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAD67C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CAD680  41 82 00 30 */	beq lbl_80CAD6B0
/* 80CAD684  3C 60 80 CB */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CAF21C@ha */
/* 80CAD688  38 03 F2 1C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CAF21C@l */
/* 80CAD68C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CAD690  41 82 00 10 */	beq lbl_80CAD6A0
/* 80CAD694  3C 60 80 CB */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CAF210@ha */
/* 80CAD698  38 03 F2 10 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CAF210@l */
/* 80CAD69C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CAD6A0:
/* 80CAD6A0  7C 80 07 35 */	extsh. r0, r4
/* 80CAD6A4  40 81 00 0C */	ble lbl_80CAD6B0
/* 80CAD6A8  7F E3 FB 78 */	mr r3, r31
/* 80CAD6AC  4B 62 16 91 */	bl __dl__FPv
lbl_80CAD6B0:
/* 80CAD6B0  7F E3 FB 78 */	mr r3, r31
/* 80CAD6B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAD6B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAD6BC  7C 08 03 A6 */	mtlr r0
/* 80CAD6C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAD6C4  4E 80 00 20 */	blr 
