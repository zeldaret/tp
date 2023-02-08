lbl_802A8944:
/* 802A8944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8948  7C 08 02 A6 */	mflr r0
/* 802A894C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8950  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8954  7C 68 1B 78 */	mr r8, r3
/* 802A8958  7C 87 23 78 */	mr r7, r4
/* 802A895C  7C A6 2B 78 */	mr r6, r5
/* 802A8960  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 802A8964  28 00 FF 00 */	cmplwi r0, 0xff00
/* 802A8968  41 80 00 14 */	blt lbl_802A897C
/* 802A896C  7C C3 33 78 */	mr r3, r6
/* 802A8970  4B FF FF BD */	bl process_setMessageIndex_reserved___Q28JMessage18TSequenceProcessorFUs
/* 802A8974  38 60 00 00 */	li r3, 0
/* 802A8978  48 00 00 2C */	b lbl_802A89A4
lbl_802A897C:
/* 802A897C  83 E8 00 38 */	lwz r31, 0x38(r8)
/* 802A8980  7F E3 FB 78 */	mr r3, r31
/* 802A8984  7D 04 43 78 */	mr r4, r8
/* 802A8988  7C E5 3B 78 */	mr r5, r7
/* 802A898C  4B FF F0 95 */	bl setMessageCode_inSequence___Q28JMessage8TControlFPCQ28JMessage10TProcessorUsUs
/* 802A8990  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A8994  41 82 00 0C */	beq lbl_802A89A0
/* 802A8998  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 802A899C  48 00 00 08 */	b lbl_802A89A4
lbl_802A89A0:
/* 802A89A0  38 60 00 00 */	li r3, 0
lbl_802A89A4:
/* 802A89A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A89A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A89AC  7C 08 03 A6 */	mtlr r0
/* 802A89B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A89B4  4E 80 00 20 */	blr 
