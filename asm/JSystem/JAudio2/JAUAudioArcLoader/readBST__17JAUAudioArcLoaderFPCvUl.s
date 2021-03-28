lbl_802A4858:
/* 802A4858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A485C  7C 08 02 A6 */	mflr r0
/* 802A4860  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4864  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802A4868  38 C0 00 01 */	li r6, 1
/* 802A486C  48 00 09 79 */	bl newSoundTable__10JAUSectionFPCvUlb
/* 802A4870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4874  7C 08 03 A6 */	mtlr r0
/* 802A4878  38 21 00 10 */	addi r1, r1, 0x10
/* 802A487C  4E 80 00 20 */	blr 
