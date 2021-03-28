lbl_80D61974:
/* 80D61974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61978  7C 08 02 A6 */	mflr r0
/* 80D6197C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D61984  7C 7F 1B 78 */	mr r31, r3
/* 80D61988  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D6198C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D61990  40 82 00 1C */	bne lbl_80D619AC
/* 80D61994  28 1F 00 00 */	cmplwi r31, 0
/* 80D61998  41 82 00 08 */	beq lbl_80D619A0
/* 80D6199C  4B 2B 71 C8 */	b __ct__10fopAc_ac_cFv
lbl_80D619A0:
/* 80D619A0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D619A4  60 00 00 08 */	ori r0, r0, 8
/* 80D619A8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D619AC:
/* 80D619AC  7F E3 FB 78 */	mr r3, r31
/* 80D619B0  3C 80 80 D6 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha
/* 80D619B4  38 84 16 F8 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l
/* 80D619B8  38 A0 00 00 */	li r5, 0
/* 80D619BC  4B 2B 8A F4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D619C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D619C4  40 82 00 0C */	bne lbl_80D619D0
/* 80D619C8  38 60 00 05 */	li r3, 5
/* 80D619CC  48 00 00 20 */	b lbl_80D619EC
lbl_80D619D0:
/* 80D619D0  7F E3 FB 78 */	mr r3, r31
/* 80D619D4  4B FF FF 49 */	bl Create__14daTagSpinner_cFv
/* 80D619D8  2C 03 00 00 */	cmpwi r3, 0
/* 80D619DC  40 82 00 0C */	bne lbl_80D619E8
/* 80D619E0  38 60 00 05 */	li r3, 5
/* 80D619E4  48 00 00 08 */	b lbl_80D619EC
lbl_80D619E8:
/* 80D619E8  38 60 00 04 */	li r3, 4
lbl_80D619EC:
/* 80D619EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D619F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D619F4  7C 08 03 A6 */	mtlr r0
/* 80D619F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D619FC  4E 80 00 20 */	blr 
