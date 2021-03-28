lbl_805A92DC:
/* 805A92DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A92E0  7C 08 02 A6 */	mflr r0
/* 805A92E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A92E8  39 83 06 3C */	addi r12, r3, 0x63c
/* 805A92EC  4B DB 8D 98 */	b __ptmf_scall
/* 805A92F0  60 00 00 00 */	nop 
/* 805A92F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A92F8  7C 08 03 A6 */	mtlr r0
/* 805A92FC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A9300  4E 80 00 20 */	blr 
