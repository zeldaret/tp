lbl_801FC090:
/* 801FC090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC094  7C 08 02 A6 */	mflr r0
/* 801FC098  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC09C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC0A0  7C 7F 1B 78 */	mr r31, r3
/* 801FC0A4  80 63 01 14 */	lwz r3, 0x114(r3)
/* 801FC0A8  28 03 00 00 */	cmplwi r3, 0
/* 801FC0AC  41 82 00 30 */	beq lbl_801FC0DC
/* 801FC0B0  4B FB B9 95 */	bl _delete__15dMenu_Collect_cFv
/* 801FC0B4  80 7F 01 14 */	lwz r3, 0x114(r31)
/* 801FC0B8  28 03 00 00 */	cmplwi r3, 0
/* 801FC0BC  41 82 00 18 */	beq lbl_801FC0D4
/* 801FC0C0  38 80 00 01 */	li r4, 1
/* 801FC0C4  81 83 00 00 */	lwz r12, 0(r3)
/* 801FC0C8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801FC0CC  7D 89 03 A6 */	mtctr r12
/* 801FC0D0  4E 80 04 21 */	bctrl 
lbl_801FC0D4:
/* 801FC0D4  38 00 00 00 */	li r0, 0
/* 801FC0D8  90 1F 01 14 */	stw r0, 0x114(r31)
lbl_801FC0DC:
/* 801FC0DC  7F E3 FB 78 */	mr r3, r31
/* 801FC0E0  48 00 0F F5 */	bl checkMemSize__5dMw_cFv
/* 801FC0E4  38 60 00 01 */	li r3, 1
/* 801FC0E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FC0EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC0F0  7C 08 03 A6 */	mtlr r0
/* 801FC0F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC0F8  4E 80 00 20 */	blr 
