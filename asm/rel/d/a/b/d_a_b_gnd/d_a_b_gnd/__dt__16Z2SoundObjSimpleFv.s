lbl_80601DEC:
/* 80601DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80601DF0  7C 08 02 A6 */	mflr r0
/* 80601DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80601DF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80601DFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80601E00  7C 7E 1B 79 */	or. r30, r3, r3
/* 80601E04  7C 9F 23 78 */	mr r31, r4
/* 80601E08  41 82 00 28 */	beq lbl_80601E30
/* 80601E0C  3C 80 80 3D */	lis r4, __vt__16Z2SoundObjSimple@ha /* 0x803CAD10@ha */
/* 80601E10  38 04 AD 10 */	addi r0, r4, __vt__16Z2SoundObjSimple@l /* 0x803CAD10@l */
/* 80601E14  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80601E18  38 80 00 00 */	li r4, 0
/* 80601E1C  4B CB C1 2D */	bl __dt__14Z2SoundObjBaseFv
/* 80601E20  7F E0 07 35 */	extsh. r0, r31
/* 80601E24  40 81 00 0C */	ble lbl_80601E30
/* 80601E28  7F C3 F3 78 */	mr r3, r30
/* 80601E2C  4B CC CF 11 */	bl __dl__FPv
lbl_80601E30:
/* 80601E30  7F C3 F3 78 */	mr r3, r30
/* 80601E34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80601E38  83 C1 00 08 */	lwz r30, 8(r1)
/* 80601E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80601E40  7C 08 03 A6 */	mtlr r0
/* 80601E44  38 21 00 10 */	addi r1, r1, 0x10
/* 80601E48  4E 80 00 20 */	blr 
