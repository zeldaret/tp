lbl_80AA3230:
/* 80AA3230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA3234  7C 08 02 A6 */	mflr r0
/* 80AA3238  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA323C  81 83 0A F4 */	lwz r12, 0xaf4(r3)
/* 80AA3240  4B 8B EE 44 */	b __ptmf_scall
/* 80AA3244  60 00 00 00 */	nop 
/* 80AA3248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA324C  7C 08 03 A6 */	mtlr r0
/* 80AA3250  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA3254  4E 80 00 20 */	blr 
