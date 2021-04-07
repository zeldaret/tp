lbl_80CCBE8C:
/* 80CCBE8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCBE90  7C 08 02 A6 */	mflr r0
/* 80CCBE94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCBE98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCBE9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CCBEA0  7C 7E 1B 78 */	mr r30, r3
/* 80CCBEA4  2C 04 00 00 */	cmpwi r4, 0
/* 80CCBEA8  41 80 00 40 */	blt lbl_80CCBEE8
/* 80CCBEAC  2C 04 00 06 */	cmpwi r4, 6
/* 80CCBEB0  41 80 00 08 */	blt lbl_80CCBEB8
/* 80CCBEB4  48 00 00 34 */	b lbl_80CCBEE8
lbl_80CCBEB8:
/* 80CCBEB8  1C 84 00 18 */	mulli r4, r4, 0x18
/* 80CCBEBC  3C 60 80 CD */	lis r3, s_demoExeProc__17daObjSCannonTen_c@ha /* 0x80CCCDEC@ha */
/* 80CCBEC0  38 03 CD EC */	addi r0, r3, s_demoExeProc__17daObjSCannonTen_c@l /* 0x80CCCDEC@l */
/* 80CCBEC4  7F E0 22 14 */	add r31, r0, r4
/* 80CCBEC8  7F E3 FB 78 */	mr r3, r31
/* 80CCBECC  4B 69 61 4D */	bl __ptmf_test
/* 80CCBED0  2C 03 00 00 */	cmpwi r3, 0
/* 80CCBED4  41 82 00 14 */	beq lbl_80CCBEE8
/* 80CCBED8  7F C3 F3 78 */	mr r3, r30
/* 80CCBEDC  7F EC FB 78 */	mr r12, r31
/* 80CCBEE0  4B 69 61 A5 */	bl __ptmf_scall
/* 80CCBEE4  60 00 00 00 */	nop 
lbl_80CCBEE8:
/* 80CCBEE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCBEEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CCBEF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCBEF4  7C 08 03 A6 */	mtlr r0
/* 80CCBEF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCBEFC  4E 80 00 20 */	blr 
