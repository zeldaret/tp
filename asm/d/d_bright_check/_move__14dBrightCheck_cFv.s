lbl_801934D0:
/* 801934D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801934D4  7C 08 02 A6 */	mflr r0
/* 801934D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801934DC  88 03 00 18 */	lbz r0, 0x18(r3)
/* 801934E0  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801934E4  3C 80 80 3C */	lis r4, brightChackProc@ha
/* 801934E8  38 04 B5 D4 */	addi r0, r4, brightChackProc@l
/* 801934EC  7D 80 2A 14 */	add r12, r0, r5
/* 801934F0  48 1C EB 95 */	bl __ptmf_scall
/* 801934F4  60 00 00 00 */	nop 
/* 801934F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801934FC  7C 08 03 A6 */	mtlr r0
/* 80193500  38 21 00 10 */	addi r1, r1, 0x10
/* 80193504  4E 80 00 20 */	blr 
