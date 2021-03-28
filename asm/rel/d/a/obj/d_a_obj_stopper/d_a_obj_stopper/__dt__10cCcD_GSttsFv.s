lbl_80CEEE7C:
/* 80CEEE7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEEE80  7C 08 02 A6 */	mflr r0
/* 80CEEE84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEEE88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEEE8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CEEE90  41 82 00 1C */	beq lbl_80CEEEAC
/* 80CEEE94  3C A0 80 CF */	lis r5, __vt__10cCcD_GStts@ha
/* 80CEEE98  38 05 F1 3C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80CEEE9C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CEEEA0  7C 80 07 35 */	extsh. r0, r4
/* 80CEEEA4  40 81 00 08 */	ble lbl_80CEEEAC
/* 80CEEEA8  4B 5D FE 94 */	b __dl__FPv
lbl_80CEEEAC:
/* 80CEEEAC  7F E3 FB 78 */	mr r3, r31
/* 80CEEEB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEEEB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEEEB8  7C 08 03 A6 */	mtlr r0
/* 80CEEEBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEEEC0  4E 80 00 20 */	blr 
