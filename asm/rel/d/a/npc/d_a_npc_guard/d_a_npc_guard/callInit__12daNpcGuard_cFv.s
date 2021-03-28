lbl_809EFE64:
/* 809EFE64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EFE68  7C 08 02 A6 */	mflr r0
/* 809EFE6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EFE70  81 83 0B 08 */	lwz r12, 0xb08(r3)
/* 809EFE74  4B 97 22 10 */	b __ptmf_scall
/* 809EFE78  60 00 00 00 */	nop 
/* 809EFE7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EFE80  7C 08 03 A6 */	mtlr r0
/* 809EFE84  38 21 00 10 */	addi r1, r1, 0x10
/* 809EFE88  4E 80 00 20 */	blr 
