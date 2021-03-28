lbl_80CFF25C:
/* 80CFF25C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFF260  7C 08 02 A6 */	mflr r0
/* 80CFF264  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFF268  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFF26C  7C 7F 1B 78 */	mr r31, r3
/* 80CFF270  80 03 05 C8 */	lwz r0, 0x5c8(r3)
/* 80CFF274  2C 00 00 00 */	cmpwi r0, 0
/* 80CFF278  40 82 00 28 */	bne lbl_80CFF2A0
/* 80CFF27C  38 00 00 01 */	li r0, 1
/* 80CFF280  90 1F 05 C8 */	stw r0, 0x5c8(r31)
/* 80CFF284  38 80 00 02 */	li r4, 2
/* 80CFF288  38 A0 00 00 */	li r5, 0
/* 80CFF28C  38 C0 00 00 */	li r6, 0
/* 80CFF290  4B 31 C6 78 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80CFF294  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CFF298  60 00 00 02 */	ori r0, r0, 2
/* 80CFF29C  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CFF2A0:
/* 80CFF2A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFF2A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFF2A8  7C 08 03 A6 */	mtlr r0
/* 80CFF2AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFF2B0  4E 80 00 20 */	blr 
