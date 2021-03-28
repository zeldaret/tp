lbl_802C03C8:
/* 802C03C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C03CC  7C 08 02 A6 */	mflr r0
/* 802C03D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C03D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C03D8  7C 7F 1B 78 */	mr r31, r3
/* 802C03DC  3C 60 80 3D */	lis r3, __vt__10Z2Creature@ha
/* 802C03E0  38 03 B8 C0 */	addi r0, r3, __vt__10Z2Creature@l
/* 802C03E4  90 1F 00 00 */	stw r0, 0(r31)
/* 802C03E8  38 7F 00 08 */	addi r3, r31, 8
/* 802C03EC  4B FF E7 A9 */	bl __ct__15Z2SoundObjAnimeFv
/* 802C03F0  38 7F 00 50 */	addi r3, r31, 0x50
/* 802C03F4  4B FF E4 51 */	bl __ct__16Z2SoundObjSimpleFv
/* 802C03F8  38 7F 00 70 */	addi r3, r31, 0x70
/* 802C03FC  4B FF E4 49 */	bl __ct__16Z2SoundObjSimpleFv
/* 802C0400  38 00 00 00 */	li r0, 0
/* 802C0404  90 1F 00 04 */	stw r0, 4(r31)
/* 802C0408  7F E3 FB 78 */	mr r3, r31
/* 802C040C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0410  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0414  7C 08 03 A6 */	mtlr r0
/* 802C0418  38 21 00 10 */	addi r1, r1, 0x10
/* 802C041C  4E 80 00 20 */	blr 
