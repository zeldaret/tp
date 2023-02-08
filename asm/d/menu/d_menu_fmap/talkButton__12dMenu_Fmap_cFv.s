lbl_801CB664:
/* 801CB664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CB668  7C 08 02 A6 */	mflr r0
/* 801CB66C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CB670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CB674  7C 7F 1B 78 */	mr r31, r3
/* 801CB678  48 06 CB B5 */	bl getStatus__12dMsgObject_cFv
/* 801CB67C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 801CB680  28 00 00 05 */	cmplwi r0, 5
/* 801CB684  41 82 00 14 */	beq lbl_801CB698
/* 801CB688  28 00 00 0F */	cmplwi r0, 0xf
/* 801CB68C  41 82 00 0C */	beq lbl_801CB698
/* 801CB690  28 00 00 10 */	cmplwi r0, 0x10
/* 801CB694  40 82 00 18 */	bne lbl_801CB6AC
lbl_801CB698:
/* 801CB698  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CB69C  38 80 04 08 */	li r4, 0x408
/* 801CB6A0  38 A0 00 FF */	li r5, 0xff
/* 801CB6A4  48 00 BC 31 */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801CB6A8  48 00 00 14 */	b lbl_801CB6BC
lbl_801CB6AC:
/* 801CB6AC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801CB6B0  38 80 00 00 */	li r4, 0
/* 801CB6B4  38 A0 00 FF */	li r5, 0xff
/* 801CB6B8  48 00 BC 1D */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
lbl_801CB6BC:
/* 801CB6BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CB6C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CB6C4  7C 08 03 A6 */	mtlr r0
/* 801CB6C8  38 21 00 10 */	addi r1, r1, 0x10
/* 801CB6CC  4E 80 00 20 */	blr 
