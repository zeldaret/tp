lbl_802CE784:
/* 802CE784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CE788  7C 08 02 A6 */	mflr r0
/* 802CE78C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CE790  81 83 00 00 */	lwz r12, 0(r3)
/* 802CE794  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802CE798  7D 89 03 A6 */	mtctr r12
/* 802CE79C  4E 80 04 21 */	bctrl 
/* 802CE7A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CE7A4  7C 08 03 A6 */	mtlr r0
/* 802CE7A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802CE7AC  4E 80 00 20 */	blr 
