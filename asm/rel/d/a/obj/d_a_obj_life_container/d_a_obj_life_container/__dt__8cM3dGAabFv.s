lbl_804CD2A4:
/* 804CD2A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CD2A8  7C 08 02 A6 */	mflr r0
/* 804CD2AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CD2B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CD2B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 804CD2B8  41 82 00 1C */	beq lbl_804CD2D4
/* 804CD2BC  3C A0 80 4D */	lis r5, __vt__8cM3dGAab@ha
/* 804CD2C0  38 05 E6 20 */	addi r0, r5, __vt__8cM3dGAab@l
/* 804CD2C4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 804CD2C8  7C 80 07 35 */	extsh. r0, r4
/* 804CD2CC  40 81 00 08 */	ble lbl_804CD2D4
/* 804CD2D0  4B E0 1A 6C */	b __dl__FPv
lbl_804CD2D4:
/* 804CD2D4  7F E3 FB 78 */	mr r3, r31
/* 804CD2D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CD2DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CD2E0  7C 08 03 A6 */	mtlr r0
/* 804CD2E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804CD2E8  4E 80 00 20 */	blr 
