lbl_80BCC410:
/* 80BCC410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCC414  7C 08 02 A6 */	mflr r0
/* 80BCC418  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCC41C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCC420  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BCC424  41 82 00 1C */	beq lbl_80BCC440
/* 80BCC428  3C A0 80 BD */	lis r5, __vt__8cM3dGAab@ha
/* 80BCC42C  38 05 C6 E4 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80BCC430  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BCC434  7C 80 07 35 */	extsh. r0, r4
/* 80BCC438  40 81 00 08 */	ble lbl_80BCC440
/* 80BCC43C  4B 70 29 00 */	b __dl__FPv
lbl_80BCC440:
/* 80BCC440  7F E3 FB 78 */	mr r3, r31
/* 80BCC444  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCC448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCC44C  7C 08 03 A6 */	mtlr r0
/* 80BCC450  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCC454  4E 80 00 20 */	blr 
