lbl_801F7F24:
/* 801F7F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F7F28  7C 08 02 A6 */	mflr r0
/* 801F7F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F7F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F7F34  93 C1 00 08 */	stw r30, 8(r1)
/* 801F7F38  7C 7E 1B 78 */	mr r30, r3
/* 801F7F3C  38 00 00 00 */	li r0, 0
/* 801F7F40  B0 03 02 02 */	sth r0, 0x202(r3)
/* 801F7F44  88 03 02 06 */	lbz r0, 0x206(r3)
/* 801F7F48  54 1F 10 3A */	slwi r31, r0, 2
/* 801F7F4C  3C 60 80 39 */	lis r3, i_id@ha
/* 801F7F50  38 63 7A 18 */	addi r3, r3, i_id@l
/* 801F7F54  7C 03 F8 2E */	lwzx r0, r3, r31
/* 801F7F58  90 1E 01 FC */	stw r0, 0x1fc(r30)
/* 801F7F5C  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 801F7F60  C0 22 AA 88 */	lfs f1, lit_3808(r2)
/* 801F7F64  48 05 D8 6D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801F7F68  7F C3 F3 78 */	mr r3, r30
/* 801F7F6C  3C 80 80 39 */	lis r4, i_id1_4088@ha
/* 801F7F70  38 84 7A 34 */	addi r4, r4, i_id1_4088@l
/* 801F7F74  7C 04 F8 2E */	lwzx r0, r4, r31
/* 801F7F78  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 801F7F7C  48 00 14 45 */	bl setNameString__13dMenu_Skill_cFUs
/* 801F7F80  80 7E 01 80 */	lwz r3, 0x180(r30)
/* 801F7F84  80 A3 00 04 */	lwz r5, 4(r3)
/* 801F7F88  80 7E 01 9C */	lwz r3, 0x19c(r30)
/* 801F7F8C  80 9E 01 FC */	lwz r4, 0x1fc(r30)
/* 801F7F90  38 C0 00 00 */	li r6, 0
/* 801F7F94  38 E0 00 00 */	li r7, 0
/* 801F7F98  39 00 00 00 */	li r8, 0
/* 801F7F9C  39 20 00 00 */	li r9, 0
/* 801F7FA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F7FA4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F7FA8  7D 89 03 A6 */	mtctr r12
/* 801F7FAC  4E 80 04 21 */	bctrl 
/* 801F7FB0  7F C3 F3 78 */	mr r3, r30
/* 801F7FB4  38 80 00 00 */	li r4, 0
/* 801F7FB8  48 00 12 A9 */	bl setAButtonString__13dMenu_Skill_cFUs
/* 801F7FBC  7F C3 F3 78 */	mr r3, r30
/* 801F7FC0  38 80 00 00 */	li r4, 0
/* 801F7FC4  48 00 13 4D */	bl setBButtonString__13dMenu_Skill_cFUs
/* 801F7FC8  80 7E 01 58 */	lwz r3, 0x158(r30)
/* 801F7FCC  38 80 00 00 */	li r4, 0
/* 801F7FD0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F7FD4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801F7FD8  7D 89 03 A6 */	mtctr r12
/* 801F7FDC  4E 80 04 21 */	bctrl 
/* 801F7FE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F7FE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F7FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F7FEC  7C 08 03 A6 */	mtlr r0
/* 801F7FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 801F7FF4  4E 80 00 20 */	blr 
