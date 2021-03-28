lbl_8004A364:
/* 8004A364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004A368  7C 08 02 A6 */	mflr r0
/* 8004A36C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004A370  7C 83 23 78 */	mr r3, r4
/* 8004A374  4B FF FD 95 */	bl static_gen_b_light8EcallBack__FP14JPABaseEmitter
/* 8004A378  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004A37C  7C 08 03 A6 */	mtlr r0
/* 8004A380  38 21 00 10 */	addi r1, r1, 0x10
/* 8004A384  4E 80 00 20 */	blr 
