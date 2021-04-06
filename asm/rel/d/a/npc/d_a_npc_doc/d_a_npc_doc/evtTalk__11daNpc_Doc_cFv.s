lbl_809A7C40:
/* 809A7C40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809A7C44  7C 08 02 A6 */	mflr r0
/* 809A7C48  90 01 00 34 */	stw r0, 0x34(r1)
/* 809A7C4C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 809A7C50  7C 7F 1B 78 */	mr r31, r3
/* 809A7C54  3C 80 80 9B */	lis r4, lit_4600@ha /* 0x809AA8C0@ha */
/* 809A7C58  38 A4 A8 C0 */	addi r5, r4, lit_4600@l /* 0x809AA8C0@l */
/* 809A7C5C  80 85 00 00 */	lwz r4, 0(r5)
/* 809A7C60  80 05 00 04 */	lwz r0, 4(r5)
/* 809A7C64  90 81 00 14 */	stw r4, 0x14(r1)
/* 809A7C68  90 01 00 18 */	stw r0, 0x18(r1)
/* 809A7C6C  80 05 00 08 */	lwz r0, 8(r5)
/* 809A7C70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809A7C74  38 81 00 14 */	addi r4, r1, 0x14
/* 809A7C78  48 00 09 A9 */	bl chkAction__11daNpc_Doc_cFM11daNpc_Doc_cFPCvPvPv_i
/* 809A7C7C  2C 03 00 00 */	cmpwi r3, 0
/* 809A7C80  41 82 00 1C */	beq lbl_809A7C9C
/* 809A7C84  7F E3 FB 78 */	mr r3, r31
/* 809A7C88  38 80 00 00 */	li r4, 0
/* 809A7C8C  39 9F 0F B8 */	addi r12, r31, 0xfb8
/* 809A7C90  4B 9B A3 F5 */	bl __ptmf_scall
/* 809A7C94  60 00 00 00 */	nop 
/* 809A7C98  48 00 00 30 */	b lbl_809A7CC8
lbl_809A7C9C:
/* 809A7C9C  3C 60 80 9B */	lis r3, lit_4605@ha /* 0x809AA8CC@ha */
/* 809A7CA0  38 83 A8 CC */	addi r4, r3, lit_4605@l /* 0x809AA8CC@l */
/* 809A7CA4  80 64 00 00 */	lwz r3, 0(r4)
/* 809A7CA8  80 04 00 04 */	lwz r0, 4(r4)
/* 809A7CAC  90 61 00 08 */	stw r3, 8(r1)
/* 809A7CB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 809A7CB4  80 04 00 08 */	lwz r0, 8(r4)
/* 809A7CB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 809A7CBC  7F E3 FB 78 */	mr r3, r31
/* 809A7CC0  38 81 00 08 */	addi r4, r1, 8
/* 809A7CC4  48 00 09 89 */	bl setAction__11daNpc_Doc_cFM11daNpc_Doc_cFPCvPvPv_i
lbl_809A7CC8:
/* 809A7CC8  38 60 00 01 */	li r3, 1
/* 809A7CCC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 809A7CD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809A7CD4  7C 08 03 A6 */	mtlr r0
/* 809A7CD8  38 21 00 30 */	addi r1, r1, 0x30
/* 809A7CDC  4E 80 00 20 */	blr 
