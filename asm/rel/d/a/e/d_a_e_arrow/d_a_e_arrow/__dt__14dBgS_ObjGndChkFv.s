lbl_8067DA70:
/* 8067DA70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067DA74  7C 08 02 A6 */	mflr r0
/* 8067DA78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067DA7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067DA80  93 C1 00 08 */	stw r30, 8(r1)
/* 8067DA84  7C 7E 1B 79 */	or. r30, r3, r3
/* 8067DA88  7C 9F 23 78 */	mr r31, r4
/* 8067DA8C  41 82 00 40 */	beq lbl_8067DACC
/* 8067DA90  3C 80 80 68 */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x8067EAE0@ha */
/* 8067DA94  38 84 EA E0 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x8067EAE0@l */
/* 8067DA98  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8067DA9C  38 04 00 0C */	addi r0, r4, 0xc
/* 8067DAA0  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8067DAA4  38 04 00 18 */	addi r0, r4, 0x18
/* 8067DAA8  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8067DAAC  38 04 00 24 */	addi r0, r4, 0x24
/* 8067DAB0  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8067DAB4  38 80 00 00 */	li r4, 0
/* 8067DAB8  4B 9F 9B 39 */	bl __dt__11dBgS_GndChkFv
/* 8067DABC  7F E0 07 35 */	extsh. r0, r31
/* 8067DAC0  40 81 00 0C */	ble lbl_8067DACC
/* 8067DAC4  7F C3 F3 78 */	mr r3, r30
/* 8067DAC8  4B C5 12 75 */	bl __dl__FPv
lbl_8067DACC:
/* 8067DACC  7F C3 F3 78 */	mr r3, r30
/* 8067DAD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067DAD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8067DAD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067DADC  7C 08 03 A6 */	mtlr r0
/* 8067DAE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8067DAE4  4E 80 00 20 */	blr 
