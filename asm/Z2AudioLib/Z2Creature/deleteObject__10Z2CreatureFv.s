lbl_802C04E8:
/* 802C04E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C04EC  7C 08 02 A6 */	mflr r0
/* 802C04F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C04F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C04F8  7C 7F 1B 78 */	mr r31, r3
/* 802C04FC  38 00 00 00 */	li r0, 0
/* 802C0500  90 03 00 28 */	stw r0, 0x28(r3)
/* 802C0504  38 7F 00 08 */	addi r3, r31, 8
/* 802C0508  4B FF DA F1 */	bl deleteObject__14Z2SoundObjBaseFv
/* 802C050C  38 7F 00 50 */	addi r3, r31, 0x50
/* 802C0510  4B FF DA E9 */	bl deleteObject__14Z2SoundObjBaseFv
/* 802C0514  38 7F 00 70 */	addi r3, r31, 0x70
/* 802C0518  4B FF DA E1 */	bl deleteObject__14Z2SoundObjBaseFv
/* 802C051C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0524  7C 08 03 A6 */	mtlr r0
/* 802C0528  38 21 00 10 */	addi r1, r1, 0x10
/* 802C052C  4E 80 00 20 */	blr 
