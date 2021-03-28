lbl_80B4F080:
/* 80B4F080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4F084  7C 08 02 A6 */	mflr r0
/* 80B4F088  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4F08C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4F090  93 C1 00 08 */	stw r30, 8(r1)
/* 80B4F094  7C 7E 1B 78 */	mr r30, r3
/* 80B4F098  7C 9F 23 78 */	mr r31, r4
/* 80B4F09C  38 00 00 03 */	li r0, 3
/* 80B4F0A0  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80B4F0A4  38 7E 0F B0 */	addi r3, r30, 0xfb0
/* 80B4F0A8  4B 81 2F 70 */	b __ptmf_test
/* 80B4F0AC  2C 03 00 00 */	cmpwi r3, 0
/* 80B4F0B0  41 82 00 18 */	beq lbl_80B4F0C8
/* 80B4F0B4  7F C3 F3 78 */	mr r3, r30
/* 80B4F0B8  38 80 00 00 */	li r4, 0
/* 80B4F0BC  39 9E 0F B0 */	addi r12, r30, 0xfb0
/* 80B4F0C0  4B 81 2F C4 */	b __ptmf_scall
/* 80B4F0C4  60 00 00 00 */	nop 
lbl_80B4F0C8:
/* 80B4F0C8  38 00 00 00 */	li r0, 0
/* 80B4F0CC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B4F0D0  80 7F 00 00 */	lwz r3, 0(r31)
/* 80B4F0D4  80 1F 00 04 */	lwz r0, 4(r31)
/* 80B4F0D8  90 7E 0F B0 */	stw r3, 0xfb0(r30)
/* 80B4F0DC  90 1E 0F B4 */	stw r0, 0xfb4(r30)
/* 80B4F0E0  80 1F 00 08 */	lwz r0, 8(r31)
/* 80B4F0E4  90 1E 0F B8 */	stw r0, 0xfb8(r30)
/* 80B4F0E8  38 7E 0F B0 */	addi r3, r30, 0xfb0
/* 80B4F0EC  4B 81 2F 2C */	b __ptmf_test
/* 80B4F0F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B4F0F4  41 82 00 18 */	beq lbl_80B4F10C
/* 80B4F0F8  7F C3 F3 78 */	mr r3, r30
/* 80B4F0FC  38 80 00 00 */	li r4, 0
/* 80B4F100  39 9E 0F B0 */	addi r12, r30, 0xfb0
/* 80B4F104  4B 81 2F 80 */	b __ptmf_scall
/* 80B4F108  60 00 00 00 */	nop 
lbl_80B4F10C:
/* 80B4F10C  38 60 00 01 */	li r3, 1
/* 80B4F110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4F114  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4F118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4F11C  7C 08 03 A6 */	mtlr r0
/* 80B4F120  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4F124  4E 80 00 20 */	blr 
