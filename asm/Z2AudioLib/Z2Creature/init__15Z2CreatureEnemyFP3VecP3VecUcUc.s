lbl_802C1094:
/* 802C1094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C1098  7C 08 02 A6 */	mflr r0
/* 802C109C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C10A0  4B FF F4 91 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 802C10A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C10A8  7C 08 03 A6 */	mtlr r0
/* 802C10AC  38 21 00 10 */	addi r1, r1, 0x10
/* 802C10B0  4E 80 00 20 */	blr 
