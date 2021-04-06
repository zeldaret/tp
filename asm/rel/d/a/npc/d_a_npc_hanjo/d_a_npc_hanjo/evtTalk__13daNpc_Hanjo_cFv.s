lbl_809FA55C:
/* 809FA55C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809FA560  7C 08 02 A6 */	mflr r0
/* 809FA564  90 01 00 34 */	stw r0, 0x34(r1)
/* 809FA568  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 809FA56C  7C 7F 1B 78 */	mr r31, r3
/* 809FA570  3C 80 80 A0 */	lis r4, lit_4891@ha /* 0x80A01060@ha */
/* 809FA574  38 A4 10 60 */	addi r5, r4, lit_4891@l /* 0x80A01060@l */
/* 809FA578  80 85 00 00 */	lwz r4, 0(r5)
/* 809FA57C  80 05 00 04 */	lwz r0, 4(r5)
/* 809FA580  90 81 00 14 */	stw r4, 0x14(r1)
/* 809FA584  90 01 00 18 */	stw r0, 0x18(r1)
/* 809FA588  80 05 00 08 */	lwz r0, 8(r5)
/* 809FA58C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809FA590  38 81 00 14 */	addi r4, r1, 0x14
/* 809FA594  48 00 11 39 */	bl chkAction__13daNpc_Hanjo_cFM13daNpc_Hanjo_cFPCvPvPv_i
/* 809FA598  2C 03 00 00 */	cmpwi r3, 0
/* 809FA59C  41 82 00 1C */	beq lbl_809FA5B8
/* 809FA5A0  7F E3 FB 78 */	mr r3, r31
/* 809FA5A4  38 80 00 00 */	li r4, 0
/* 809FA5A8  39 9F 16 EC */	addi r12, r31, 0x16ec
/* 809FA5AC  4B 96 7A D9 */	bl __ptmf_scall
/* 809FA5B0  60 00 00 00 */	nop 
/* 809FA5B4  48 00 00 30 */	b lbl_809FA5E4
lbl_809FA5B8:
/* 809FA5B8  3C 60 80 A0 */	lis r3, lit_4896@ha /* 0x80A0106C@ha */
/* 809FA5BC  38 83 10 6C */	addi r4, r3, lit_4896@l /* 0x80A0106C@l */
/* 809FA5C0  80 64 00 00 */	lwz r3, 0(r4)
/* 809FA5C4  80 04 00 04 */	lwz r0, 4(r4)
/* 809FA5C8  90 61 00 08 */	stw r3, 8(r1)
/* 809FA5CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 809FA5D0  80 04 00 08 */	lwz r0, 8(r4)
/* 809FA5D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 809FA5D8  7F E3 FB 78 */	mr r3, r31
/* 809FA5DC  38 81 00 08 */	addi r4, r1, 8
/* 809FA5E0  48 00 11 19 */	bl setAction__13daNpc_Hanjo_cFM13daNpc_Hanjo_cFPCvPvPv_i
lbl_809FA5E4:
/* 809FA5E4  38 60 00 01 */	li r3, 1
/* 809FA5E8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 809FA5EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809FA5F0  7C 08 03 A6 */	mtlr r0
/* 809FA5F4  38 21 00 30 */	addi r1, r1, 0x30
/* 809FA5F8  4E 80 00 20 */	blr 
