lbl_802BEB38:
/* 802BEB38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BEB3C  7C 08 02 A6 */	mflr r0
/* 802BEB40  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BEB44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BEB48  7C 7F 1B 78 */	mr r31, r3
/* 802BEB4C  4B FF FA 55 */	bl __ct__21Z2DopplerSoundObjBaseFv
/* 802BEB50  3C 60 80 3D */	lis r3, __vt__15Z2SoundObjArrow@ha /* 0x803CACF0@ha */
/* 802BEB54  38 03 AC F0 */	addi r0, r3, __vt__15Z2SoundObjArrow@l /* 0x803CACF0@l */
/* 802BEB58  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802BEB5C  7F E3 FB 78 */	mr r3, r31
/* 802BEB60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BEB64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BEB68  7C 08 03 A6 */	mtlr r0
/* 802BEB6C  38 21 00 10 */	addi r1, r1, 0x10
/* 802BEB70  4E 80 00 20 */	blr 
