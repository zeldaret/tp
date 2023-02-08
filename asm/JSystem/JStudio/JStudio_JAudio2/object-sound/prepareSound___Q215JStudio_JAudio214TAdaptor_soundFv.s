lbl_8028DF04:
/* 8028DF04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028DF08  7C 08 02 A6 */	mflr r0
/* 8028DF0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028DF10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8028DF14  7C 7F 1B 78 */	mr r31, r3
/* 8028DF18  80 63 01 18 */	lwz r3, 0x118(r3)
/* 8028DF1C  28 03 00 00 */	cmplwi r3, 0
/* 8028DF20  41 82 00 08 */	beq lbl_8028DF28
/* 8028DF24  48 01 46 75 */	bl stop__8JAISoundFv
lbl_8028DF28:
/* 8028DF28  80 7F 01 14 */	lwz r3, 0x114(r31)
/* 8028DF2C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8028DF30  88 1F 01 1D */	lbz r0, 0x11d(r31)
/* 8028DF34  28 00 00 00 */	cmplwi r0, 0
/* 8028DF38  40 82 00 2C */	bne lbl_8028DF64
/* 8028DF3C  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8028DF40  90 01 00 0C */	stw r0, 0xc(r1)
/* 8028DF44  38 81 00 0C */	addi r4, r1, 0xc
/* 8028DF48  38 BF 01 18 */	addi r5, r31, 0x118
/* 8028DF4C  80 DF 01 2C */	lwz r6, 0x12c(r31)
/* 8028DF50  81 83 00 00 */	lwz r12, 0(r3)
/* 8028DF54  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8028DF58  7D 89 03 A6 */	mtctr r12
/* 8028DF5C  4E 80 04 21 */	bctrl 
/* 8028DF60  48 00 00 1C */	b lbl_8028DF7C
lbl_8028DF64:
/* 8028DF64  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8028DF68  90 01 00 08 */	stw r0, 8(r1)
/* 8028DF6C  38 81 00 08 */	addi r4, r1, 8
/* 8028DF70  38 BF 01 18 */	addi r5, r31, 0x118
/* 8028DF74  80 DF 01 2C */	lwz r6, 0x12c(r31)
/* 8028DF78  48 01 50 75 */	bl func_802A2FEC
lbl_8028DF7C:
/* 8028DF7C  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 8028DF80  28 03 00 00 */	cmplwi r3, 0
/* 8028DF84  41 82 00 0C */	beq lbl_8028DF90
/* 8028DF88  38 63 00 1C */	addi r3, r3, 0x1c
/* 8028DF8C  48 01 42 95 */	bl lockWhenPrepared__15JAISoundStatus_Fv
lbl_8028DF90:
/* 8028DF90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028DF94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028DF98  7C 08 03 A6 */	mtlr r0
/* 8028DF9C  38 21 00 20 */	addi r1, r1, 0x20
/* 8028DFA0  4E 80 00 20 */	blr 
