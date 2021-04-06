lbl_80314EEC:
/* 80314EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80314EF0  7C 08 02 A6 */	mflr r0
/* 80314EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80314EF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80314EFC  7C 7F 1B 78 */	mr r31, r3
/* 80314F00  38 60 00 09 */	li r3, 9
/* 80314F04  3C 80 80 43 */	lis r4, j3dSys@ha /* 0x80434AC8@ha */
/* 80314F08  38 84 4A C8 */	addi r4, r4, j3dSys@l /* 0x80434AC8@l */
/* 80314F0C  80 84 01 0C */	lwz r4, 0x10c(r4)
/* 80314F10  4B FF FF A1 */	bl J3DLoadArrayBasePtr__F7_GXAttrPv
/* 80314F14  88 1F 00 34 */	lbz r0, 0x34(r31)
/* 80314F18  28 00 00 00 */	cmplwi r0, 0
/* 80314F1C  40 82 00 18 */	bne lbl_80314F34
/* 80314F20  38 60 00 0A */	li r3, 0xa
/* 80314F24  3C 80 80 43 */	lis r4, j3dSys@ha /* 0x80434AC8@ha */
/* 80314F28  38 84 4A C8 */	addi r4, r4, j3dSys@l /* 0x80434AC8@l */
/* 80314F2C  80 84 01 10 */	lwz r4, 0x110(r4)
/* 80314F30  4B FF FF 81 */	bl J3DLoadArrayBasePtr__F7_GXAttrPv
lbl_80314F34:
/* 80314F34  38 60 00 0B */	li r3, 0xb
/* 80314F38  3C 80 80 43 */	lis r4, j3dSys@ha /* 0x80434AC8@ha */
/* 80314F3C  38 84 4A C8 */	addi r4, r4, j3dSys@l /* 0x80434AC8@l */
/* 80314F40  80 84 01 14 */	lwz r4, 0x114(r4)
/* 80314F44  4B FF FF 6D */	bl J3DLoadArrayBasePtr__F7_GXAttrPv
/* 80314F48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80314F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80314F50  7C 08 03 A6 */	mtlr r0
/* 80314F54  38 21 00 10 */	addi r1, r1, 0x10
/* 80314F58  4E 80 00 20 */	blr 
