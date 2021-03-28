lbl_80B1169C:
/* 80B1169C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B116A0  7C 08 02 A6 */	mflr r0
/* 80B116A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B116A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B116AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B116B0  41 82 00 1C */	beq lbl_80B116CC
/* 80B116B4  3C A0 80 B1 */	lis r5, __vt__8cM3dGPla@ha
/* 80B116B8  38 05 44 DC */	addi r0, r5, __vt__8cM3dGPla@l
/* 80B116BC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80B116C0  7C 80 07 35 */	extsh. r0, r4
/* 80B116C4  40 81 00 08 */	ble lbl_80B116CC
/* 80B116C8  4B 7B D6 74 */	b __dl__FPv
lbl_80B116CC:
/* 80B116CC  7F E3 FB 78 */	mr r3, r31
/* 80B116D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B116D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B116D8  7C 08 03 A6 */	mtlr r0
/* 80B116DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B116E0  4E 80 00 20 */	blr 
