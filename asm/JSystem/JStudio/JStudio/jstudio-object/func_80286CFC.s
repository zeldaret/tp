lbl_80286CFC:
/* 80286CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286D00  7C 08 02 A6 */	mflr r0
/* 80286D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286D08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80286D0C  7C 7F 1B 78 */	mr r31, r3
/* 80286D10  4B FF FB 55 */	bl __ct__Q27JStudio7TObjectFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio8TAdaptor
/* 80286D14  3C 60 80 3C */	lis r3, __vt__Q27JStudio20TObject_ambientLight@ha
/* 80286D18  38 03 55 40 */	addi r0, r3, __vt__Q27JStudio20TObject_ambientLight@l
/* 80286D1C  90 1F 00 08 */	stw r0, 8(r31)
/* 80286D20  7F E3 FB 78 */	mr r3, r31
/* 80286D24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80286D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286D2C  7C 08 03 A6 */	mtlr r0
/* 80286D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80286D34  4E 80 00 20 */	blr 
