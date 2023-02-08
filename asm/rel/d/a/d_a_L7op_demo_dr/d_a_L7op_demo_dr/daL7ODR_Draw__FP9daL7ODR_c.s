lbl_805AB3D0:
/* 805AB3D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AB3D4  7C 08 02 A6 */	mflr r0
/* 805AB3D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AB3DC  4B FF FF 0D */	bl draw__9daL7ODR_cFv
/* 805AB3E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AB3E4  7C 08 03 A6 */	mtlr r0
/* 805AB3E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805AB3EC  4E 80 00 20 */	blr 
