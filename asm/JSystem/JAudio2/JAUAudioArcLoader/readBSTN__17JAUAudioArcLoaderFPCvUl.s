lbl_802A4880:
/* 802A4880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4884  7C 08 02 A6 */	mflr r0
/* 802A4888  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A488C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802A4890  38 C0 00 01 */	li r6, 1
/* 802A4894  48 00 0A 0D */	bl newSoundNameTable__10JAUSectionFPCvUlb
/* 802A4898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A489C  7C 08 03 A6 */	mtlr r0
/* 802A48A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A48A4  4E 80 00 20 */	blr 
