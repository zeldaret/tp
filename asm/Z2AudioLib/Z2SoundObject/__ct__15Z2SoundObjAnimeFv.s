lbl_802BEB94:
/* 802BEB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BEB98  7C 08 02 A6 */	mflr r0
/* 802BEB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BEBA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BEBA4  7C 7F 1B 78 */	mr r31, r3
/* 802BEBA8  4B FF F3 49 */	bl __ct__14Z2SoundObjBaseFv
/* 802BEBAC  3C 60 80 3D */	lis r3, __vt__15Z2SoundObjAnime@ha /* 0x803CACD0@ha */
/* 802BEBB0  38 03 AC D0 */	addi r0, r3, __vt__15Z2SoundObjAnime@l /* 0x803CACD0@l */
/* 802BEBB4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802BEBB8  38 00 00 00 */	li r0, 0
/* 802BEBBC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802BEBC0  98 1F 00 44 */	stb r0, 0x44(r31)
/* 802BEBC4  7F E3 FB 78 */	mr r3, r31
/* 802BEBC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BEBCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BEBD0  7C 08 03 A6 */	mtlr r0
/* 802BEBD4  38 21 00 10 */	addi r1, r1, 0x10
/* 802BEBD8  4E 80 00 20 */	blr 
