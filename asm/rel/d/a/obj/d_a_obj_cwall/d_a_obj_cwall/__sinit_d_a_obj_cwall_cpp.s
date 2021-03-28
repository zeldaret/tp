lbl_80BD9EE4:
/* 80BD9EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD9EE8  7C 08 02 A6 */	mflr r0
/* 80BD9EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD9EF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD9EF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BD9EF8  3C 60 80 BE */	lis r3, lit_1109@ha
/* 80BD9EFC  3B C3 A3 00 */	addi r30, r3, lit_1109@l
/* 80BD9F00  3C 60 80 BE */	lis r3, l_wallBmd@ha
/* 80BD9F04  3B E3 9F A4 */	addi r31, r3, l_wallBmd@l
/* 80BD9F08  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD9F0C  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 80BD9F10  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80BD9F14  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80BD9F18  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BD9F1C  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80BD9F20  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BD9F24  3C 80 80 BD */	lis r4, __dt__4cXyzFv@ha
/* 80BD9F28  38 84 6C CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BD9F2C  38 BE 00 40 */	addi r5, r30, 0x40
/* 80BD9F30  4B FF CA A9 */	bl __register_global_object
/* 80BD9F34  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BD9F38  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 80BD9F3C  38 7E 00 64 */	addi r3, r30, 0x64
/* 80BD9F40  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BD9F44  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80BD9F48  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BD9F4C  3C 80 80 BD */	lis r4, __dt__4cXyzFv@ha
/* 80BD9F50  38 84 6C CC */	addi r4, r4, __dt__4cXyzFv@l
/* 80BD9F54  38 BE 00 58 */	addi r5, r30, 0x58
/* 80BD9F58  4B FF CA 81 */	bl __register_global_object
/* 80BD9F5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD9F60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BD9F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD9F68  7C 08 03 A6 */	mtlr r0
/* 80BD9F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD9F70  4E 80 00 20 */	blr 
