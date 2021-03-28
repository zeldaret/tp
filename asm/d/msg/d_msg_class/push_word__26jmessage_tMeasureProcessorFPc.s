lbl_8022B4E0:
/* 8022B4E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022B4E4  7C 08 02 A6 */	mflr r0
/* 8022B4E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022B4EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8022B4F0  48 13 6C ED */	bl _savegpr_29
/* 8022B4F4  7C 7D 1B 78 */	mr r29, r3
/* 8022B4F8  7C 9E 23 78 */	mr r30, r4
/* 8022B4FC  83 E3 00 04 */	lwz r31, 4(r3)
/* 8022B500  7F E3 FB 78 */	mr r3, r31
/* 8022B504  88 9D 00 4B */	lbz r4, 0x4b(r29)
/* 8022B508  7C 84 07 74 */	extsb r4, r4
/* 8022B50C  4B FF E2 25 */	bl getWord__19jmessage_tReferenceFi
/* 8022B510  7F C4 F3 78 */	mr r4, r30
/* 8022B514  48 13 D6 19 */	bl strcpy
/* 8022B518  7F E3 FB 78 */	mr r3, r31
/* 8022B51C  88 9D 00 4B */	lbz r4, 0x4b(r29)
/* 8022B520  7C 84 07 74 */	extsb r4, r4
/* 8022B524  4B FF E2 0D */	bl getWord__19jmessage_tReferenceFi
/* 8022B528  7C 64 1B 78 */	mr r4, r3
/* 8022B52C  7F A3 EB 78 */	mr r3, r29
/* 8022B530  48 07 C6 C9 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 8022B534  88 7D 00 4B */	lbz r3, 0x4b(r29)
/* 8022B538  38 03 00 01 */	addi r0, r3, 1
/* 8022B53C  98 1D 00 4B */	stb r0, 0x4b(r29)
/* 8022B540  39 61 00 20 */	addi r11, r1, 0x20
/* 8022B544  48 13 6C E5 */	bl _restgpr_29
/* 8022B548  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022B54C  7C 08 03 A6 */	mtlr r0
/* 8022B550  38 21 00 20 */	addi r1, r1, 0x20
/* 8022B554  4E 80 00 20 */	blr 
