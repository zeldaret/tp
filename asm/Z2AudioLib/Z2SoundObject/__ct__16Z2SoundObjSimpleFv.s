lbl_802BE844:
/* 802BE844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BE848  7C 08 02 A6 */	mflr r0
/* 802BE84C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE850  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BE854  7C 7F 1B 78 */	mr r31, r3
/* 802BE858  4B FF F6 99 */	bl __ct__14Z2SoundObjBaseFv
/* 802BE85C  3C 60 80 3D */	lis r3, __vt__16Z2SoundObjSimple@ha
/* 802BE860  38 03 AD 10 */	addi r0, r3, __vt__16Z2SoundObjSimple@l
/* 802BE864  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802BE868  7F E3 FB 78 */	mr r3, r31
/* 802BE86C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BE870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BE874  7C 08 03 A6 */	mtlr r0
/* 802BE878  38 21 00 10 */	addi r1, r1, 0x10
/* 802BE87C  4E 80 00 20 */	blr 
