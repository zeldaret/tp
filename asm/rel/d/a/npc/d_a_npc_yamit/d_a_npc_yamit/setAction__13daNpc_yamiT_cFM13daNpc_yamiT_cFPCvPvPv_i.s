lbl_80B4B374:
/* 80B4B374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4B378  7C 08 02 A6 */	mflr r0
/* 80B4B37C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4B380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4B384  93 C1 00 08 */	stw r30, 8(r1)
/* 80B4B388  7C 7E 1B 78 */	mr r30, r3
/* 80B4B38C  7C 9F 23 78 */	mr r31, r4
/* 80B4B390  38 00 00 03 */	li r0, 3
/* 80B4B394  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80B4B398  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80B4B39C  4B 81 6C 7D */	bl __ptmf_test
/* 80B4B3A0  2C 03 00 00 */	cmpwi r3, 0
/* 80B4B3A4  41 82 00 18 */	beq lbl_80B4B3BC
/* 80B4B3A8  7F C3 F3 78 */	mr r3, r30
/* 80B4B3AC  38 80 00 00 */	li r4, 0
/* 80B4B3B0  39 9E 0F 94 */	addi r12, r30, 0xf94
/* 80B4B3B4  4B 81 6C D1 */	bl __ptmf_scall
/* 80B4B3B8  60 00 00 00 */	nop 
lbl_80B4B3BC:
/* 80B4B3BC  38 00 00 00 */	li r0, 0
/* 80B4B3C0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B4B3C4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80B4B3C8  80 1F 00 04 */	lwz r0, 4(r31)
/* 80B4B3CC  90 7E 0F 94 */	stw r3, 0xf94(r30)
/* 80B4B3D0  90 1E 0F 98 */	stw r0, 0xf98(r30)
/* 80B4B3D4  80 1F 00 08 */	lwz r0, 8(r31)
/* 80B4B3D8  90 1E 0F 9C */	stw r0, 0xf9c(r30)
/* 80B4B3DC  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80B4B3E0  4B 81 6C 39 */	bl __ptmf_test
/* 80B4B3E4  2C 03 00 00 */	cmpwi r3, 0
/* 80B4B3E8  41 82 00 18 */	beq lbl_80B4B400
/* 80B4B3EC  7F C3 F3 78 */	mr r3, r30
/* 80B4B3F0  38 80 00 00 */	li r4, 0
/* 80B4B3F4  39 9E 0F 94 */	addi r12, r30, 0xf94
/* 80B4B3F8  4B 81 6C 8D */	bl __ptmf_scall
/* 80B4B3FC  60 00 00 00 */	nop 
lbl_80B4B400:
/* 80B4B400  38 60 00 01 */	li r3, 1
/* 80B4B404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4B408  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4B40C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4B410  7C 08 03 A6 */	mtlr r0
/* 80B4B414  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4B418  4E 80 00 20 */	blr 
