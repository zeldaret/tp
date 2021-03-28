lbl_801D8914:
/* 801D8914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D8918  7C 08 02 A6 */	mflr r0
/* 801D891C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8920  88 03 00 F3 */	lbz r0, 0xf3(r3)
/* 801D8924  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801D8928  3C 80 80 3C */	lis r4, map_init_process@ha
/* 801D892C  38 04 D7 C8 */	addi r0, r4, map_init_process@l
/* 801D8930  7D 80 2A 14 */	add r12, r0, r5
/* 801D8934  48 18 97 51 */	bl __ptmf_scall
/* 801D8938  60 00 00 00 */	nop 
/* 801D893C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D8940  7C 08 03 A6 */	mtlr r0
/* 801D8944  38 21 00 10 */	addi r1, r1, 0x10
/* 801D8948  4E 80 00 20 */	blr 
