lbl_80CDA81C:
/* 80CDA81C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDA820  7C 08 02 A6 */	mflr r0
/* 80CDA824  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDA828  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDA82C  7C 7F 1B 78 */	mr r31, r3
/* 80CDA830  3C 60 80 CE */	lis r3, searchParentSub__FPvPv@ha /* 0x80CD97B8@ha */
/* 80CDA834  38 63 97 B8 */	addi r3, r3, searchParentSub__FPvPv@l /* 0x80CD97B8@l */
/* 80CDA838  7F E4 FB 78 */	mr r4, r31
/* 80CDA83C  4B 34 6A FD */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80CDA840  28 03 00 00 */	cmplwi r3, 0
/* 80CDA844  41 82 00 5C */	beq lbl_80CDA8A0
/* 80CDA848  41 82 00 0C */	beq lbl_80CDA854
/* 80CDA84C  80 03 00 04 */	lwz r0, 4(r3)
/* 80CDA850  48 00 00 08 */	b lbl_80CDA858
lbl_80CDA854:
/* 80CDA854  38 00 FF FF */	li r0, -1
lbl_80CDA858:
/* 80CDA858  90 1F 04 A4 */	stw r0, 0x4a4(r31)
/* 80CDA85C  A8 03 00 0E */	lha r0, 0xe(r3)
/* 80CDA860  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80CDA864  41 82 00 0C */	beq lbl_80CDA870
/* 80CDA868  2C 00 01 E3 */	cmpwi r0, 0x1e3
/* 80CDA86C  40 82 00 18 */	bne lbl_80CDA884
lbl_80CDA870:
/* 80CDA870  7F E3 FB 78 */	mr r3, r31
/* 80CDA874  4B 35 D1 F1 */	bl hide__12daItemBase_cFv
/* 80CDA878  7F E3 FB 78 */	mr r3, r31
/* 80CDA87C  48 00 00 4D */	bl actionParentWaitInit__7daKey_cFv
/* 80CDA880  48 00 00 30 */	b lbl_80CDA8B0
lbl_80CDA884:
/* 80CDA884  2C 00 01 C8 */	cmpwi r0, 0x1c8
/* 80CDA888  40 82 00 28 */	bne lbl_80CDA8B0
/* 80CDA88C  7F E3 FB 78 */	mr r3, r31
/* 80CDA890  4B 35 D1 E5 */	bl show__12daItemBase_cFv
/* 80CDA894  7F E3 FB 78 */	mr r3, r31
/* 80CDA898  48 00 0A D5 */	bl actionInitE_GB__7daKey_cFv
/* 80CDA89C  48 00 00 14 */	b lbl_80CDA8B0
lbl_80CDA8A0:
/* 80CDA8A0  7F E3 FB 78 */	mr r3, r31
/* 80CDA8A4  4B 35 D1 D1 */	bl show__12daItemBase_cFv
/* 80CDA8A8  7F E3 FB 78 */	mr r3, r31
/* 80CDA8AC  48 00 01 01 */	bl actionWaitInit__7daKey_cFv
lbl_80CDA8B0:
/* 80CDA8B0  38 60 00 01 */	li r3, 1
/* 80CDA8B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDA8B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDA8BC  7C 08 03 A6 */	mtlr r0
/* 80CDA8C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDA8C4  4E 80 00 20 */	blr 
