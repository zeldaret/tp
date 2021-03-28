lbl_80031A20:
/* 80031A20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80031A24  7C 08 02 A6 */	mflr r0
/* 80031A28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80031A2C  7C 64 1B 78 */	mr r4, r3
/* 80031A30  80 6D 88 34 */	lwz r3, m_flower__9daGrass_c(r13)
/* 80031A34  28 03 00 00 */	cmplwi r3, 0
/* 80031A38  41 82 00 30 */	beq lbl_80031A68
/* 80031A3C  3C A0 80 42 */	lis r5, m_deleteRoom__16dFlower_packet_c@ha
/* 80031A40  38 C5 45 94 */	addi r6, r5, m_deleteRoom__16dFlower_packet_c@l
/* 80031A44  80 A6 00 00 */	lwz r5, 0(r6)
/* 80031A48  80 06 00 04 */	lwz r0, 4(r6)
/* 80031A4C  90 A1 00 08 */	stw r5, 8(r1)
/* 80031A50  90 01 00 0C */	stw r0, 0xc(r1)
/* 80031A54  80 06 00 08 */	lwz r0, 8(r6)
/* 80031A58  90 01 00 10 */	stw r0, 0x10(r1)
/* 80031A5C  39 81 00 08 */	addi r12, r1, 8
/* 80031A60  48 33 06 25 */	bl __ptmf_scall
/* 80031A64  60 00 00 00 */	nop 
lbl_80031A68:
/* 80031A68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80031A6C  7C 08 03 A6 */	mtlr r0
/* 80031A70  38 21 00 20 */	addi r1, r1, 0x20
/* 80031A74  4E 80 00 20 */	blr 
