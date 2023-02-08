lbl_80A6BFA4:
/* 80A6BFA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A6BFA8  7C 08 02 A6 */	mflr r0
/* 80A6BFAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A6BFB0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A6BFB4  7C 7F 1B 78 */	mr r31, r3
/* 80A6BFB8  3C 80 80 A7 */	lis r4, lit_4698@ha /* 0x80A708A0@ha */
/* 80A6BFBC  38 A4 08 A0 */	addi r5, r4, lit_4698@l /* 0x80A708A0@l */
/* 80A6BFC0  80 85 00 00 */	lwz r4, 0(r5)
/* 80A6BFC4  80 05 00 04 */	lwz r0, 4(r5)
/* 80A6BFC8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A6BFCC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A6BFD0  80 05 00 08 */	lwz r0, 8(r5)
/* 80A6BFD4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A6BFD8  38 81 00 14 */	addi r4, r1, 0x14
/* 80A6BFDC  48 00 0E 19 */	bl chkAction__11daNpc_Lud_cFM11daNpc_Lud_cFPCvPvPv_i
/* 80A6BFE0  2C 03 00 00 */	cmpwi r3, 0
/* 80A6BFE4  41 82 00 1C */	beq lbl_80A6C000
/* 80A6BFE8  7F E3 FB 78 */	mr r3, r31
/* 80A6BFEC  38 80 00 00 */	li r4, 0
/* 80A6BFF0  39 9F 0F B4 */	addi r12, r31, 0xfb4
/* 80A6BFF4  4B 8F 60 91 */	bl __ptmf_scall
/* 80A6BFF8  60 00 00 00 */	nop 
/* 80A6BFFC  48 00 00 30 */	b lbl_80A6C02C
lbl_80A6C000:
/* 80A6C000  3C 60 80 A7 */	lis r3, lit_4703@ha /* 0x80A708AC@ha */
/* 80A6C004  38 83 08 AC */	addi r4, r3, lit_4703@l /* 0x80A708AC@l */
/* 80A6C008  80 64 00 00 */	lwz r3, 0(r4)
/* 80A6C00C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A6C010  90 61 00 08 */	stw r3, 8(r1)
/* 80A6C014  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A6C018  80 04 00 08 */	lwz r0, 8(r4)
/* 80A6C01C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A6C020  7F E3 FB 78 */	mr r3, r31
/* 80A6C024  38 81 00 08 */	addi r4, r1, 8
/* 80A6C028  48 00 0D F9 */	bl setAction__11daNpc_Lud_cFM11daNpc_Lud_cFPCvPvPv_i
lbl_80A6C02C:
/* 80A6C02C  38 60 00 01 */	li r3, 1
/* 80A6C030  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A6C034  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A6C038  7C 08 03 A6 */	mtlr r0
/* 80A6C03C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A6C040  4E 80 00 20 */	blr 
