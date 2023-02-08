lbl_801959C0:
/* 801959C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801959C4  7C 08 02 A6 */	mflr r0
/* 801959C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801959CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801959D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 801959D4  41 82 00 40 */	beq lbl_80195A14
/* 801959D8  3C 60 80 3D */	lis r3, __vt__18J2DAnmTransformKey@ha /* 0x803CD7BC@ha */
/* 801959DC  38 03 D7 BC */	addi r0, r3, __vt__18J2DAnmTransformKey@l /* 0x803CD7BC@l */
/* 801959E0  90 1F 00 00 */	stw r0, 0(r31)
/* 801959E4  41 82 00 20 */	beq lbl_80195A04
/* 801959E8  3C 60 80 3C */	lis r3, __vt__15J2DAnmTransform@ha /* 0x803BB3B8@ha */
/* 801959EC  38 03 B3 B8 */	addi r0, r3, __vt__15J2DAnmTransform@l /* 0x803BB3B8@l */
/* 801959F0  90 1F 00 00 */	stw r0, 0(r31)
/* 801959F4  41 82 00 10 */	beq lbl_80195A04
/* 801959F8  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha /* 0x803A8E04@ha */
/* 801959FC  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l /* 0x803A8E04@l */
/* 80195A00  90 1F 00 00 */	stw r0, 0(r31)
lbl_80195A04:
/* 80195A04  7C 80 07 35 */	extsh. r0, r4
/* 80195A08  40 81 00 0C */	ble lbl_80195A14
/* 80195A0C  7F E3 FB 78 */	mr r3, r31
/* 80195A10  48 13 93 2D */	bl __dl__FPv
lbl_80195A14:
/* 80195A14  7F E3 FB 78 */	mr r3, r31
/* 80195A18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80195A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80195A20  7C 08 03 A6 */	mtlr r0
/* 80195A24  38 21 00 10 */	addi r1, r1, 0x10
/* 80195A28  4E 80 00 20 */	blr 
