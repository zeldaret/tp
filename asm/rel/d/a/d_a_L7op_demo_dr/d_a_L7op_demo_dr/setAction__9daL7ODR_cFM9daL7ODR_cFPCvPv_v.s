lbl_805AB098:
/* 805AB098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AB09C  7C 08 02 A6 */	mflr r0
/* 805AB0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AB0A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AB0A8  93 C1 00 08 */	stw r30, 8(r1)
/* 805AB0AC  7C 7E 1B 78 */	mr r30, r3
/* 805AB0B0  7C 9F 23 78 */	mr r31, r4
/* 805AB0B4  38 7E 08 58 */	addi r3, r30, 0x858
/* 805AB0B8  4B DB 6F 60 */	b __ptmf_test
/* 805AB0BC  2C 03 00 00 */	cmpwi r3, 0
/* 805AB0C0  41 82 00 1C */	beq lbl_805AB0DC
/* 805AB0C4  38 00 FF FF */	li r0, -1
/* 805AB0C8  90 1E 08 88 */	stw r0, 0x888(r30)
/* 805AB0CC  7F C3 F3 78 */	mr r3, r30
/* 805AB0D0  39 9E 08 58 */	addi r12, r30, 0x858
/* 805AB0D4  4B DB 6F B0 */	b __ptmf_scall
/* 805AB0D8  60 00 00 00 */	nop 
lbl_805AB0DC:
/* 805AB0DC  80 7E 08 58 */	lwz r3, 0x858(r30)
/* 805AB0E0  80 1E 08 5C */	lwz r0, 0x85c(r30)
/* 805AB0E4  90 7E 08 64 */	stw r3, 0x864(r30)
/* 805AB0E8  90 1E 08 68 */	stw r0, 0x868(r30)
/* 805AB0EC  80 1E 08 60 */	lwz r0, 0x860(r30)
/* 805AB0F0  90 1E 08 6C */	stw r0, 0x86c(r30)
/* 805AB0F4  80 7F 00 00 */	lwz r3, 0(r31)
/* 805AB0F8  80 1F 00 04 */	lwz r0, 4(r31)
/* 805AB0FC  90 7E 08 58 */	stw r3, 0x858(r30)
/* 805AB100  90 1E 08 5C */	stw r0, 0x85c(r30)
/* 805AB104  80 1F 00 08 */	lwz r0, 8(r31)
/* 805AB108  90 1E 08 60 */	stw r0, 0x860(r30)
/* 805AB10C  38 00 00 00 */	li r0, 0
/* 805AB110  90 1E 08 88 */	stw r0, 0x888(r30)
/* 805AB114  7F C3 F3 78 */	mr r3, r30
/* 805AB118  39 9E 08 58 */	addi r12, r30, 0x858
/* 805AB11C  4B DB 6F 68 */	b __ptmf_scall
/* 805AB120  60 00 00 00 */	nop 
/* 805AB124  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AB128  83 C1 00 08 */	lwz r30, 8(r1)
/* 805AB12C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AB130  7C 08 03 A6 */	mtlr r0
/* 805AB134  38 21 00 10 */	addi r1, r1, 0x10
/* 805AB138  4E 80 00 20 */	blr 
