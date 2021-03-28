lbl_80CC7FAC:
/* 80CC7FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC7FB0  7C 08 02 A6 */	mflr r0
/* 80CC7FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC7FB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC7FBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC7FC0  7C 7E 1B 78 */	mr r30, r3
/* 80CC7FC4  2C 04 00 00 */	cmpwi r4, 0
/* 80CC7FC8  41 80 00 64 */	blt lbl_80CC802C
/* 80CC7FCC  3C 60 80 CD */	lis r3, s_demoTable__11daSCannon_c@ha
/* 80CC7FD0  38 A3 91 C4 */	addi r5, r3, s_demoTable__11daSCannon_c@l
/* 80CC7FD4  88 1E 06 18 */	lbz r0, 0x618(r30)
/* 80CC7FD8  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80CC7FDC  7C 65 32 14 */	add r3, r5, r6
/* 80CC7FE0  80 03 00 08 */	lwz r0, 8(r3)
/* 80CC7FE4  7C 04 00 00 */	cmpw r4, r0
/* 80CC7FE8  41 80 00 08 */	blt lbl_80CC7FF0
/* 80CC7FEC  48 00 00 40 */	b lbl_80CC802C
lbl_80CC7FF0:
/* 80CC7FF0  7C 05 30 2E */	lwzx r0, r5, r6
/* 80CC7FF4  1F E4 00 18 */	mulli r31, r4, 0x18
/* 80CC7FF8  7C 60 FA 14 */	add r3, r0, r31
/* 80CC7FFC  4B 69 A0 1C */	b __ptmf_test
/* 80CC8000  2C 03 00 00 */	cmpwi r3, 0
/* 80CC8004  41 82 00 28 */	beq lbl_80CC802C
/* 80CC8008  7F C3 F3 78 */	mr r3, r30
/* 80CC800C  88 1E 06 18 */	lbz r0, 0x618(r30)
/* 80CC8010  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CC8014  3C 80 80 CD */	lis r4, s_demoTable__11daSCannon_c@ha
/* 80CC8018  38 84 91 C4 */	addi r4, r4, s_demoTable__11daSCannon_c@l
/* 80CC801C  7C 04 00 2E */	lwzx r0, r4, r0
/* 80CC8020  7D 80 FA 14 */	add r12, r0, r31
/* 80CC8024  4B 69 A0 60 */	b __ptmf_scall
/* 80CC8028  60 00 00 00 */	nop 
lbl_80CC802C:
/* 80CC802C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC8030  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC8034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC8038  7C 08 03 A6 */	mtlr r0
/* 80CC803C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC8040  4E 80 00 20 */	blr 
