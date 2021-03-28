lbl_800226C4:
/* 800226C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800226C8  7C 08 02 A6 */	mflr r0
/* 800226CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800226D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800226D4  7C 7F 1B 78 */	mr r31, r3
/* 800226D8  38 7F 00 BC */	addi r3, r31, 0xbc
/* 800226DC  4B FF EF 89 */	bl fpcLy_IsDeletingMesg__FP11layer_class
/* 800226E0  2C 03 00 00 */	cmpwi r3, 0
/* 800226E4  40 82 00 2C */	bne lbl_80022710
/* 800226E8  80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 800226EC  7F E4 FB 78 */	mr r4, r31
/* 800226F0  4B FF FD B9 */	bl fpcMtd_Delete__FP20process_method_classPv
/* 800226F4  2C 03 00 01 */	cmpwi r3, 1
/* 800226F8  40 82 00 18 */	bne lbl_80022710
/* 800226FC  38 00 00 00 */	li r0, 0
/* 80022700  90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 80022704  38 7F 00 BC */	addi r3, r31, 0xbc
/* 80022708  4B FF F0 E1 */	bl fpcLy_Delete__FP11layer_class
/* 8002270C  48 00 00 08 */	b lbl_80022714
lbl_80022710:
/* 80022710  38 60 00 00 */	li r3, 0
lbl_80022714:
/* 80022714  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80022718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002271C  7C 08 03 A6 */	mtlr r0
/* 80022720  38 21 00 10 */	addi r1, r1, 0x10
/* 80022724  4E 80 00 20 */	blr 
