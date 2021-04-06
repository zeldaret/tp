lbl_80286910:
/* 80286910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286914  7C 08 02 A6 */	mflr r0
/* 80286918  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028691C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80286920  7C 7F 1B 78 */	mr r31, r3
/* 80286924  4B FF FF 41 */	bl __ct__Q27JStudio7TObjectFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio8TAdaptor
/* 80286928  3C 60 80 3C */	lis r3, __vt__Q27JStudio13TObject_actor@ha /* 0x803C5580@ha */
/* 8028692C  38 03 55 80 */	addi r0, r3, __vt__Q27JStudio13TObject_actor@l /* 0x803C5580@l */
/* 80286930  90 1F 00 08 */	stw r0, 8(r31)
/* 80286934  7F E3 FB 78 */	mr r3, r31
/* 80286938  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028693C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286940  7C 08 03 A6 */	mtlr r0
/* 80286944  38 21 00 10 */	addi r1, r1, 0x10
/* 80286948  4E 80 00 20 */	blr 
