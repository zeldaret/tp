lbl_807A7C50:
/* 807A7C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A7C54  7C 08 02 A6 */	mflr r0
/* 807A7C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A7C5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A7C60  93 C1 00 08 */	stw r30, 8(r1)
/* 807A7C64  7C 7E 1B 78 */	mr r30, r3
/* 807A7C68  3C 60 80 7B */	lis r3, lit_1109@ha
/* 807A7C6C  3B E3 01 B8 */	addi r31, r3, lit_1109@l
/* 807A7C70  38 00 00 00 */	li r0, 0
/* 807A7C74  90 1F 00 40 */	stw r0, 0x40(r31)
/* 807A7C78  38 7F 00 58 */	addi r3, r31, 0x58
/* 807A7C7C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807A7C80  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 807A7C84  3C 60 80 7A */	lis r3, s_b_sub__FPvPv@ha
/* 807A7C88  38 63 7B 9C */	addi r3, r3, s_b_sub__FPvPv@l
/* 807A7C8C  7F C4 F3 78 */	mr r4, r30
/* 807A7C90  4B 87 96 A8 */	b fpcEx_Search__FPFPvPv_PvPv
/* 807A7C94  38 00 FF FF */	li r0, -1
/* 807A7C98  90 1E 06 88 */	stw r0, 0x688(r30)
/* 807A7C9C  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 807A7CA0  28 03 00 00 */	cmplwi r3, 0
/* 807A7CA4  41 82 00 10 */	beq lbl_807A7CB4
/* 807A7CA8  41 82 00 08 */	beq lbl_807A7CB0
/* 807A7CAC  80 03 00 04 */	lwz r0, 4(r3)
lbl_807A7CB0:
/* 807A7CB0  90 1E 06 88 */	stw r0, 0x688(r30)
lbl_807A7CB4:
/* 807A7CB4  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 807A7CB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A7CBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 807A7CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A7CC4  7C 08 03 A6 */	mtlr r0
/* 807A7CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 807A7CCC  4E 80 00 20 */	blr 
