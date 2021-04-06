lbl_802C1D10:
/* 802C1D10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C1D14  7C 08 02 A6 */	mflr r0
/* 802C1D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C1D1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C1D20  7C 7F 1B 78 */	mr r31, r3
/* 802C1D24  4B FF C1 CD */	bl __ct__14Z2SoundObjBaseFv
/* 802C1D28  3C 60 80 3D */	lis r3, __vt__18Z2SoundObjBeeGroup@ha /* 0x803CB810@ha */
/* 802C1D2C  38 03 B8 10 */	addi r0, r3, __vt__18Z2SoundObjBeeGroup@l /* 0x803CB810@l */
/* 802C1D30  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802C1D34  7F E3 FB 78 */	mr r3, r31
/* 802C1D38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C1D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C1D40  7C 08 03 A6 */	mtlr r0
/* 802C1D44  38 21 00 10 */	addi r1, r1, 0x10
/* 802C1D48  4E 80 00 20 */	blr 
