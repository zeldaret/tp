lbl_802BA704:
/* 802BA704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BA708  7C 08 02 A6 */	mflr r0
/* 802BA70C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BA710  80 6D 87 40 */	lwz r3, data_80450CC0(r13)
/* 802BA714  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 802BA718  28 00 00 00 */	cmplwi r0, 0
/* 802BA71C  41 81 00 0C */	bgt lbl_802BA728
/* 802BA720  38 60 00 00 */	li r3, 0
/* 802BA724  48 00 00 0C */	b lbl_802BA730
lbl_802BA728:
/* 802BA728  80 63 00 F4 */	lwz r3, 0xf4(r3)
/* 802BA72C  80 63 00 00 */	lwz r3, 0(r3)
lbl_802BA730:
/* 802BA730  28 03 00 00 */	cmplwi r3, 0
/* 802BA734  41 82 00 28 */	beq lbl_802BA75C
/* 802BA738  81 83 00 00 */	lwz r12, 0(r3)
/* 802BA73C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802BA740  7D 89 03 A6 */	mtctr r12
/* 802BA744  4E 80 04 21 */	bctrl 
/* 802BA748  28 03 00 00 */	cmplwi r3, 0
/* 802BA74C  41 82 00 10 */	beq lbl_802BA75C
/* 802BA750  38 80 00 00 */	li r4, 0
/* 802BA754  4B FD FD 6D */	bl load__10JASWaveArcFP7JASHeap
/* 802BA758  48 00 00 08 */	b lbl_802BA760
lbl_802BA75C:
/* 802BA75C  38 60 00 00 */	li r3, 0
lbl_802BA760:
/* 802BA760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BA764  7C 08 03 A6 */	mtlr r0
/* 802BA768  38 21 00 10 */	addi r1, r1, 0x10
/* 802BA76C  4E 80 00 20 */	blr 
