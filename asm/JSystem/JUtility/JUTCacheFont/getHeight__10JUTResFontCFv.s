lbl_802DE01C:
/* 802DE01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE020  7C 08 02 A6 */	mflr r0
/* 802DE024  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DE02C  93 C1 00 08 */	stw r30, 8(r1)
/* 802DE030  7C 7E 1B 78 */	mr r30, r3
/* 802DE034  81 83 00 00 */	lwz r12, 0(r3)
/* 802DE038  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802DE03C  7D 89 03 A6 */	mtctr r12
/* 802DE040  4E 80 04 21 */	bctrl 
/* 802DE044  7C 7F 1B 78 */	mr r31, r3
/* 802DE048  7F C3 F3 78 */	mr r3, r30
/* 802DE04C  81 9E 00 00 */	lwz r12, 0(r30)
/* 802DE050  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802DE054  7D 89 03 A6 */	mtctr r12
/* 802DE058  4E 80 04 21 */	bctrl 
/* 802DE05C  7C 63 FA 14 */	add r3, r3, r31
/* 802DE060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DE064  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DE068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE06C  7C 08 03 A6 */	mtlr r0
/* 802DE070  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE074  4E 80 00 20 */	blr 
