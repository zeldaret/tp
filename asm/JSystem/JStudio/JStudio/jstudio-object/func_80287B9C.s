lbl_80287B9C:
/* 80287B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80287BA0  7C 08 02 A6 */	mflr r0
/* 80287BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80287BAC  7C 7F 1B 78 */	mr r31, r3
/* 80287BB0  4B FF EC B5 */	bl __ct__Q27JStudio7TObjectFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio8TAdaptor
/* 80287BB4  3C 60 80 3C */	lis r3, __vt__Q27JStudio13TObject_sound@ha
/* 80287BB8  38 03 53 3C */	addi r0, r3, __vt__Q27JStudio13TObject_sound@l
/* 80287BBC  90 1F 00 08 */	stw r0, 8(r31)
/* 80287BC0  7F E3 FB 78 */	mr r3, r31
/* 80287BC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80287BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80287BCC  7C 08 03 A6 */	mtlr r0
/* 80287BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80287BD4  4E 80 00 20 */	blr 
