lbl_80BE1DCC:
/* 80BE1DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE1DD0  7C 08 02 A6 */	mflr r0
/* 80BE1DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE1DD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE1DDC  7C 7F 1B 78 */	mr r31, r3
/* 80BE1DE0  4B FF E9 3D */	bl removeLineEffect__11daObjDrop_cFv
/* 80BE1DE4  7F E3 FB 78 */	mr r3, r31
/* 80BE1DE8  4B FF EA 59 */	bl removeBodyEffect__11daObjDrop_cFv
/* 80BE1DEC  38 7F 06 C0 */	addi r3, r31, 0x6c0
/* 80BE1DF0  4B 6D C2 09 */	bl deleteObject__14Z2SoundObjBaseFv
/* 80BE1DF4  38 60 00 01 */	li r3, 1
/* 80BE1DF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE1DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE1E00  7C 08 03 A6 */	mtlr r0
/* 80BE1E04  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE1E08  4E 80 00 20 */	blr 
