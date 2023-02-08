lbl_802C0BE8:
/* 802C0BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0BEC  7C 08 02 A6 */	mflr r0
/* 802C0BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0BF4  38 C0 00 00 */	li r6, 0
/* 802C0BF8  38 63 00 08 */	addi r3, r3, 8
/* 802C0BFC  4B FF D8 A9 */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
/* 802C0C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0C04  7C 08 03 A6 */	mtlr r0
/* 802C0C08  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0C0C  4E 80 00 20 */	blr 
