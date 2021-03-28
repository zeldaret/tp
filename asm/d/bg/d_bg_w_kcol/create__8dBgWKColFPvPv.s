lbl_8007E804:
/* 8007E804  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007E808  7C 08 02 A6 */	mflr r0
/* 8007E80C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007E810  39 61 00 20 */	addi r11, r1, 0x20
/* 8007E814  48 2E 39 C9 */	bl _savegpr_29
/* 8007E818  7C 7D 1B 78 */	mr r29, r3
/* 8007E81C  7C 9E 23 78 */	mr r30, r4
/* 8007E820  7C BF 2B 78 */	mr r31, r5
/* 8007E824  4B FF FE 79 */	bl ClrDBgWBase__9dBgW_BaseFv
/* 8007E828  93 DD 00 18 */	stw r30, 0x18(r29)
/* 8007E82C  38 7D 00 1C */	addi r3, r29, 0x1c
/* 8007E830  7F E4 FB 78 */	mr r4, r31
/* 8007E834  4B FF 58 89 */	bl setBase__6dBgPlcFPv
/* 8007E838  39 61 00 20 */	addi r11, r1, 0x20
/* 8007E83C  48 2E 39 ED */	bl _restgpr_29
/* 8007E840  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007E844  7C 08 03 A6 */	mtlr r0
/* 8007E848  38 21 00 20 */	addi r1, r1, 0x20
/* 8007E84C  4E 80 00 20 */	blr 
