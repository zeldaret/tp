lbl_802BDFF8:
/* 802BDFF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BDFFC  7C 08 02 A6 */	mflr r0
/* 802BE000  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BE008  7C 7F 1B 78 */	mr r31, r3
/* 802BE00C  81 83 00 10 */	lwz r12, 0x10(r3)
/* 802BE010  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802BE014  7D 89 03 A6 */	mtctr r12
/* 802BE018  4E 80 04 21 */	bctrl 
/* 802BE01C  7F E3 FB 78 */	mr r3, r31
/* 802BE020  4B FE D1 01 */	bl deleteHandlesPool__14Z2SoundHandlesFv
/* 802BE024  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BE028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BE02C  7C 08 03 A6 */	mtlr r0
/* 802BE030  38 21 00 10 */	addi r1, r1, 0x10
/* 802BE034  4E 80 00 20 */	blr 
