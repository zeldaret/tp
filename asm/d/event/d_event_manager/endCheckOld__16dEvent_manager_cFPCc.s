lbl_80047ADC:
/* 80047ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80047AE0  7C 08 02 A6 */	mflr r0
/* 80047AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80047AE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80047AEC  7C 7F 1B 78 */	mr r31, r3
/* 80047AF0  38 A0 00 FF */	li r5, 0xff
/* 80047AF4  38 C0 FF FF */	li r6, -1
/* 80047AF8  4B FF FA 1D */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 80047AFC  7C 64 1B 78 */	mr r4, r3
/* 80047B00  7F E3 FB 78 */	mr r3, r31
/* 80047B04  4B FF FF 75 */	bl endCheck__16dEvent_manager_cFs
/* 80047B08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80047B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80047B10  7C 08 03 A6 */	mtlr r0
/* 80047B14  38 21 00 10 */	addi r1, r1, 0x10
/* 80047B18  4E 80 00 20 */	blr 
