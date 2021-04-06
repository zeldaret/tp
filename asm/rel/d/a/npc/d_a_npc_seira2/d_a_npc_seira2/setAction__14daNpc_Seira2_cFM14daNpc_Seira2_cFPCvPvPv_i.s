lbl_80AD289C:
/* 80AD289C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD28A0  7C 08 02 A6 */	mflr r0
/* 80AD28A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD28A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD28AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD28B0  7C 7E 1B 78 */	mr r30, r3
/* 80AD28B4  7C 9F 23 78 */	mr r31, r4
/* 80AD28B8  38 00 00 03 */	li r0, 3
/* 80AD28BC  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80AD28C0  38 7E 10 D8 */	addi r3, r30, 0x10d8
/* 80AD28C4  4B 88 F7 55 */	bl __ptmf_test
/* 80AD28C8  2C 03 00 00 */	cmpwi r3, 0
/* 80AD28CC  41 82 00 18 */	beq lbl_80AD28E4
/* 80AD28D0  7F C3 F3 78 */	mr r3, r30
/* 80AD28D4  38 80 00 00 */	li r4, 0
/* 80AD28D8  39 9E 10 D8 */	addi r12, r30, 0x10d8
/* 80AD28DC  4B 88 F7 A9 */	bl __ptmf_scall
/* 80AD28E0  60 00 00 00 */	nop 
lbl_80AD28E4:
/* 80AD28E4  38 00 00 00 */	li r0, 0
/* 80AD28E8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80AD28EC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80AD28F0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80AD28F4  90 7E 10 D8 */	stw r3, 0x10d8(r30)
/* 80AD28F8  90 1E 10 DC */	stw r0, 0x10dc(r30)
/* 80AD28FC  80 1F 00 08 */	lwz r0, 8(r31)
/* 80AD2900  90 1E 10 E0 */	stw r0, 0x10e0(r30)
/* 80AD2904  38 7E 10 D8 */	addi r3, r30, 0x10d8
/* 80AD2908  4B 88 F7 11 */	bl __ptmf_test
/* 80AD290C  2C 03 00 00 */	cmpwi r3, 0
/* 80AD2910  41 82 00 18 */	beq lbl_80AD2928
/* 80AD2914  7F C3 F3 78 */	mr r3, r30
/* 80AD2918  38 80 00 00 */	li r4, 0
/* 80AD291C  39 9E 10 D8 */	addi r12, r30, 0x10d8
/* 80AD2920  4B 88 F7 65 */	bl __ptmf_scall
/* 80AD2924  60 00 00 00 */	nop 
lbl_80AD2928:
/* 80AD2928  38 60 00 01 */	li r3, 1
/* 80AD292C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD2930  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD2934  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD2938  7C 08 03 A6 */	mtlr r0
/* 80AD293C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD2940  4E 80 00 20 */	blr 
