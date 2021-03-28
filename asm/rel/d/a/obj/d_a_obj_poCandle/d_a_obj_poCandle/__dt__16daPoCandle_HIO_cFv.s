lbl_80CB2508:
/* 80CB2508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB250C  7C 08 02 A6 */	mflr r0
/* 80CB2510  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB2514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB2518  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB251C  41 82 00 30 */	beq lbl_80CB254C
/* 80CB2520  3C 60 80 CB */	lis r3, __vt__16daPoCandle_HIO_c@ha
/* 80CB2524  38 03 28 20 */	addi r0, r3, __vt__16daPoCandle_HIO_c@l
/* 80CB2528  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB252C  41 82 00 10 */	beq lbl_80CB253C
/* 80CB2530  3C 60 80 CB */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80CB2534  38 03 28 2C */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80CB2538  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CB253C:
/* 80CB253C  7C 80 07 35 */	extsh. r0, r4
/* 80CB2540  40 81 00 0C */	ble lbl_80CB254C
/* 80CB2544  7F E3 FB 78 */	mr r3, r31
/* 80CB2548  4B 61 C7 F4 */	b __dl__FPv
lbl_80CB254C:
/* 80CB254C  7F E3 FB 78 */	mr r3, r31
/* 80CB2550  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB2554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB2558  7C 08 03 A6 */	mtlr r0
/* 80CB255C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB2560  4E 80 00 20 */	blr 
