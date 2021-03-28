lbl_800319C8:
/* 800319C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800319CC  7C 08 02 A6 */	mflr r0
/* 800319D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800319D4  7C 64 1B 78 */	mr r4, r3
/* 800319D8  80 6D 88 30 */	lwz r3, m_grass__9daGrass_c(r13)
/* 800319DC  28 03 00 00 */	cmplwi r3, 0
/* 800319E0  41 82 00 30 */	beq lbl_80031A10
/* 800319E4  3C A0 80 42 */	lis r5, m_deleteRoom__15dGrass_packet_c@ha
/* 800319E8  38 C5 45 88 */	addi r6, r5, m_deleteRoom__15dGrass_packet_c@l
/* 800319EC  80 A6 00 00 */	lwz r5, 0(r6)
/* 800319F0  80 06 00 04 */	lwz r0, 4(r6)
/* 800319F4  90 A1 00 08 */	stw r5, 8(r1)
/* 800319F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800319FC  80 06 00 08 */	lwz r0, 8(r6)
/* 80031A00  90 01 00 10 */	stw r0, 0x10(r1)
/* 80031A04  39 81 00 08 */	addi r12, r1, 8
/* 80031A08  48 33 06 7D */	bl __ptmf_scall
/* 80031A0C  60 00 00 00 */	nop 
lbl_80031A10:
/* 80031A10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80031A14  7C 08 03 A6 */	mtlr r0
/* 80031A18  38 21 00 20 */	addi r1, r1, 0x20
/* 80031A1C  4E 80 00 20 */	blr 
