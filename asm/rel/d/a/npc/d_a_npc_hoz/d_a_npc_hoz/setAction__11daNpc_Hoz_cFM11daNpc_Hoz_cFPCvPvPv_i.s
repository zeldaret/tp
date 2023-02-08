lbl_80A030D4:
/* 80A030D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A030D8  7C 08 02 A6 */	mflr r0
/* 80A030DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A030E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A030E4  93 C1 00 08 */	stw r30, 8(r1)
/* 80A030E8  7C 7E 1B 78 */	mr r30, r3
/* 80A030EC  7C 9F 23 78 */	mr r31, r4
/* 80A030F0  38 00 00 03 */	li r0, 3
/* 80A030F4  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80A030F8  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 80A030FC  4B 95 EF 1D */	bl __ptmf_test
/* 80A03100  2C 03 00 00 */	cmpwi r3, 0
/* 80A03104  41 82 00 18 */	beq lbl_80A0311C
/* 80A03108  7F C3 F3 78 */	mr r3, r30
/* 80A0310C  38 80 00 00 */	li r4, 0
/* 80A03110  39 9E 0F B8 */	addi r12, r30, 0xfb8
/* 80A03114  4B 95 EF 71 */	bl __ptmf_scall
/* 80A03118  60 00 00 00 */	nop 
lbl_80A0311C:
/* 80A0311C  38 00 00 00 */	li r0, 0
/* 80A03120  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A03124  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A03128  80 1F 00 04 */	lwz r0, 4(r31)
/* 80A0312C  90 7E 0F B8 */	stw r3, 0xfb8(r30)
/* 80A03130  90 1E 0F BC */	stw r0, 0xfbc(r30)
/* 80A03134  80 1F 00 08 */	lwz r0, 8(r31)
/* 80A03138  90 1E 0F C0 */	stw r0, 0xfc0(r30)
/* 80A0313C  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 80A03140  4B 95 EE D9 */	bl __ptmf_test
/* 80A03144  2C 03 00 00 */	cmpwi r3, 0
/* 80A03148  41 82 00 18 */	beq lbl_80A03160
/* 80A0314C  7F C3 F3 78 */	mr r3, r30
/* 80A03150  38 80 00 00 */	li r4, 0
/* 80A03154  39 9E 0F B8 */	addi r12, r30, 0xfb8
/* 80A03158  4B 95 EF 2D */	bl __ptmf_scall
/* 80A0315C  60 00 00 00 */	nop 
lbl_80A03160:
/* 80A03160  38 60 00 01 */	li r3, 1
/* 80A03164  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A03168  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A0316C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A03170  7C 08 03 A6 */	mtlr r0
/* 80A03174  38 21 00 10 */	addi r1, r1, 0x10
/* 80A03178  4E 80 00 20 */	blr 
