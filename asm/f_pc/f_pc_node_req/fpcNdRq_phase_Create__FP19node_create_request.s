lbl_800228A8:
/* 800228A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800228AC  7C 08 02 A6 */	mflr r0
/* 800228B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800228B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800228B8  7C 7F 1B 78 */	mr r31, r3
/* 800228BC  80 63 00 50 */	lwz r3, 0x50(r3)
/* 800228C0  A8 9F 00 58 */	lha r4, 0x58(r31)
/* 800228C4  80 BF 00 3C */	lwz r5, 0x3c(r31)
/* 800228C8  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 800228CC  7F E6 FB 78 */	mr r6, r31
/* 800228D0  80 FF 00 5C */	lwz r7, 0x5c(r31)
/* 800228D4  48 00 14 C1 */	bl fpcSCtRq_Request__FP11layer_classsPFPvPv_iPvPv
/* 800228D8  90 7F 00 54 */	stw r3, 0x54(r31)
/* 800228DC  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 800228E0  20 00 FF FF */	subfic r0, r0, -1
/* 800228E4  7C 00 00 34 */	cntlzw r0, r0
/* 800228E8  54 03 D9 7E */	srwi r3, r0, 5
/* 800228EC  38 63 00 02 */	addi r3, r3, 2
/* 800228F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800228F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800228F8  7C 08 03 A6 */	mtlr r0
/* 800228FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80022900  4E 80 00 20 */	blr 
