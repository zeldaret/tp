lbl_802C54FC:
/* 802C54FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C5500  7C 08 02 A6 */	mflr r0
/* 802C5504  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5508  4B FF 8A A9 */	bl init__14Z2SoundObjBaseFP3VecUc
/* 802C550C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C5510  7C 08 03 A6 */	mtlr r0
/* 802C5514  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5518  4E 80 00 20 */	blr 
