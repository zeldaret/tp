lbl_809BCD5C:
/* 809BCD5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BCD60  7C 08 02 A6 */	mflr r0
/* 809BCD64  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BCD68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BCD6C  93 C1 00 08 */	stw r30, 8(r1)
/* 809BCD70  7C 7E 1B 78 */	mr r30, r3
/* 809BCD74  7C 9F 23 78 */	mr r31, r4
/* 809BCD78  38 00 00 03 */	li r0, 3
/* 809BCD7C  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 809BCD80  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 809BCD84  4B 9A 52 95 */	bl __ptmf_test
/* 809BCD88  2C 03 00 00 */	cmpwi r3, 0
/* 809BCD8C  41 82 00 18 */	beq lbl_809BCDA4
/* 809BCD90  7F C3 F3 78 */	mr r3, r30
/* 809BCD94  38 80 00 00 */	li r4, 0
/* 809BCD98  39 9E 0F 90 */	addi r12, r30, 0xf90
/* 809BCD9C  4B 9A 52 E9 */	bl __ptmf_scall
/* 809BCDA0  60 00 00 00 */	nop 
lbl_809BCDA4:
/* 809BCDA4  38 00 00 00 */	li r0, 0
/* 809BCDA8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 809BCDAC  80 7F 00 00 */	lwz r3, 0(r31)
/* 809BCDB0  80 1F 00 04 */	lwz r0, 4(r31)
/* 809BCDB4  90 7E 0F 90 */	stw r3, 0xf90(r30)
/* 809BCDB8  90 1E 0F 94 */	stw r0, 0xf94(r30)
/* 809BCDBC  80 1F 00 08 */	lwz r0, 8(r31)
/* 809BCDC0  90 1E 0F 98 */	stw r0, 0xf98(r30)
/* 809BCDC4  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 809BCDC8  4B 9A 52 51 */	bl __ptmf_test
/* 809BCDCC  2C 03 00 00 */	cmpwi r3, 0
/* 809BCDD0  41 82 00 18 */	beq lbl_809BCDE8
/* 809BCDD4  7F C3 F3 78 */	mr r3, r30
/* 809BCDD8  38 80 00 00 */	li r4, 0
/* 809BCDDC  39 9E 0F 90 */	addi r12, r30, 0xf90
/* 809BCDE0  4B 9A 52 A5 */	bl __ptmf_scall
/* 809BCDE4  60 00 00 00 */	nop 
lbl_809BCDE8:
/* 809BCDE8  38 60 00 01 */	li r3, 1
/* 809BCDEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BCDF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BCDF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BCDF8  7C 08 03 A6 */	mtlr r0
/* 809BCDFC  38 21 00 10 */	addi r1, r1, 0x10
/* 809BCE00  4E 80 00 20 */	blr 
