lbl_80A030A8:
/* 80A030A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A030AC  7C 08 02 A6 */	mflr r0
/* 80A030B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A030B4  38 63 0F B8 */	addi r3, r3, 0xfb8
/* 80A030B8  4B 95 EF 90 */	b __ptmf_cmpr
/* 80A030BC  7C 60 00 34 */	cntlzw r0, r3
/* 80A030C0  54 03 D9 7E */	srwi r3, r0, 5
/* 80A030C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A030C8  7C 08 03 A6 */	mtlr r0
/* 80A030CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A030D0  4E 80 00 20 */	blr 
