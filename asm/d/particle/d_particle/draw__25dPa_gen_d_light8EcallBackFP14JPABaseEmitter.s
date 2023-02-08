lbl_8004A388:
/* 8004A388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004A38C  7C 08 02 A6 */	mflr r0
/* 8004A390  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004A394  7C 83 23 78 */	mr r3, r4
/* 8004A398  4B FF FE 8D */	bl static_gen_d_light8EcallBack__FP14JPABaseEmitter
/* 8004A39C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004A3A0  7C 08 03 A6 */	mtlr r0
/* 8004A3A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8004A3A8  4E 80 00 20 */	blr 
