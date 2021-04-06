lbl_805C55B0:
/* 805C55B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C55B4  7C 08 02 A6 */	mflr r0
/* 805C55B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C55BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C55C0  7C 7F 1B 78 */	mr r31, r3
/* 805C55C4  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 805C55C8  3C 80 80 5C */	lis r4, d_a_b_dr__stringBase0@ha /* 0x805C7240@ha */
/* 805C55CC  38 84 72 40 */	addi r4, r4, d_a_b_dr__stringBase0@l /* 0x805C7240@l */
/* 805C55D0  4B A6 7A 39 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 805C55D4  88 1F 07 EA */	lbz r0, 0x7ea(r31)
/* 805C55D8  28 00 00 0A */	cmplwi r0, 0xa
/* 805C55DC  40 82 00 0C */	bne lbl_805C55E8
/* 805C55E0  38 60 00 01 */	li r3, 1
/* 805C55E4  48 00 00 8C */	b lbl_805C5670
lbl_805C55E8:
/* 805C55E8  28 00 00 14 */	cmplwi r0, 0x14
/* 805C55EC  41 82 00 0C */	beq lbl_805C55F8
/* 805C55F0  28 00 00 15 */	cmplwi r0, 0x15
/* 805C55F4  40 82 00 2C */	bne lbl_805C5620
lbl_805C55F8:
/* 805C55F8  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 805C55FC  28 00 00 00 */	cmplwi r0, 0
/* 805C5600  41 82 00 20 */	beq lbl_805C5620
/* 805C5604  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805C5608  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 805C560C  81 8C 00 08 */	lwz r12, 8(r12)
/* 805C5610  7D 89 03 A6 */	mtctr r12
/* 805C5614  4E 80 04 21 */	bctrl 
/* 805C5618  38 60 00 01 */	li r3, 1
/* 805C561C  48 00 00 54 */	b lbl_805C5670
lbl_805C5620:
/* 805C5620  88 1F 28 10 */	lbz r0, 0x2810(r31)
/* 805C5624  28 00 00 00 */	cmplwi r0, 0
/* 805C5628  41 82 00 10 */	beq lbl_805C5638
/* 805C562C  38 00 00 00 */	li r0, 0
/* 805C5630  3C 60 80 5C */	lis r3, struct_805C78FC+0x1@ha /* 0x805C78FD@ha */
/* 805C5634  98 03 78 FD */	stb r0, struct_805C78FC+0x1@l(r3)  /* 0x805C78FD@l */
lbl_805C5638:
/* 805C5638  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 805C563C  28 00 00 00 */	cmplwi r0, 0
/* 805C5640  41 82 00 2C */	beq lbl_805C566C
/* 805C5644  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 805C5648  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 805C564C  81 8C 00 08 */	lwz r12, 8(r12)
/* 805C5650  7D 89 03 A6 */	mtctr r12
/* 805C5654  4E 80 04 21 */	bctrl 
/* 805C5658  38 7F 06 64 */	addi r3, r31, 0x664
/* 805C565C  81 9F 06 64 */	lwz r12, 0x664(r31)
/* 805C5660  81 8C 00 08 */	lwz r12, 8(r12)
/* 805C5664  7D 89 03 A6 */	mtctr r12
/* 805C5668  4E 80 04 21 */	bctrl 
lbl_805C566C:
/* 805C566C  38 60 00 01 */	li r3, 1
lbl_805C5670:
/* 805C5670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C5674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C5678  7C 08 03 A6 */	mtlr r0
/* 805C567C  38 21 00 10 */	addi r1, r1, 0x10
/* 805C5680  4E 80 00 20 */	blr 
