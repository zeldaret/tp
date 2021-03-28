lbl_80978E6C:
/* 80978E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80978E70  7C 08 02 A6 */	mflr r0
/* 80978E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80978E78  3C 80 80 98 */	lis r4, lit_4037@ha
/* 80978E7C  C0 04 F5 40 */	lfs f0, lit_4037@l(r4)
/* 80978E80  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80978E84  38 00 00 00 */	li r0, 0
/* 80978E88  98 03 0B 97 */	stb r0, 0xb97(r3)
/* 80978E8C  38 00 00 01 */	li r0, 1
/* 80978E90  98 03 0B 94 */	stb r0, 0xb94(r3)
/* 80978E94  38 80 00 00 */	li r4, 0
/* 80978E98  80 03 0B 78 */	lwz r0, 0xb78(r3)
/* 80978E9C  54 00 10 3A */	slwi r0, r0, 2
/* 80978EA0  3C A0 80 98 */	lis r5, m_funcTbl__11daNpcCdn3_c@ha
/* 80978EA4  38 A5 F8 48 */	addi r5, r5, m_funcTbl__11daNpcCdn3_c@l
/* 80978EA8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80978EAC  88 03 0B 97 */	lbz r0, 0xb97(r3)
/* 80978EB0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80978EB4  7D 85 02 14 */	add r12, r5, r0
/* 80978EB8  4B 9E 91 CC */	b __ptmf_scall
/* 80978EBC  60 00 00 00 */	nop 
/* 80978EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80978EC4  7C 08 03 A6 */	mtlr r0
/* 80978EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80978ECC  4E 80 00 20 */	blr 
