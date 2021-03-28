lbl_8004A340:
/* 8004A340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004A344  7C 08 02 A6 */	mflr r0
/* 8004A348  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004A34C  7C 83 23 78 */	mr r3, r4
/* 8004A350  4B FF FC 9D */	bl static_light8EcallBack__FP14JPABaseEmitter
/* 8004A354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004A358  7C 08 03 A6 */	mtlr r0
/* 8004A35C  38 21 00 10 */	addi r1, r1, 0x10
/* 8004A360  4E 80 00 20 */	blr 
