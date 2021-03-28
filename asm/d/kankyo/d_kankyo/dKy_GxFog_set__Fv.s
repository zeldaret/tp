lbl_801A862C:
/* 801A862C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A8630  7C 08 02 A6 */	mflr r0
/* 801A8634  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A8638  4B FF FF B1 */	bl GxFog_set__Fv
/* 801A863C  48 00 01 65 */	bl GxXFog_set__Fv
/* 801A8640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A8644  7C 08 03 A6 */	mtlr r0
/* 801A8648  38 21 00 10 */	addi r1, r1, 0x10
/* 801A864C  4E 80 00 20 */	blr 
