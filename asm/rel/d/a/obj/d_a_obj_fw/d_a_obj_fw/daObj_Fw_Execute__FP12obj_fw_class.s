lbl_80BF2670:
/* 80BF2670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF2674  7C 08 02 A6 */	mflr r0
/* 80BF2678  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF267C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF2680  7C 7F 1B 78 */	mr r31, r3
/* 80BF2684  A8 63 05 78 */	lha r3, 0x578(r3)
/* 80BF2688  38 03 00 01 */	addi r0, r3, 1
/* 80BF268C  B0 1F 05 78 */	sth r0, 0x578(r31)
/* 80BF2690  38 60 00 00 */	li r3, 0
/* 80BF2694  38 00 00 02 */	li r0, 2
/* 80BF2698  7C 09 03 A6 */	mtctr r0
lbl_80BF269C:
/* 80BF269C  38 A3 05 7E */	addi r5, r3, 0x57e
/* 80BF26A0  7C 9F 2A AE */	lhax r4, r31, r5
/* 80BF26A4  2C 04 00 00 */	cmpwi r4, 0
/* 80BF26A8  41 82 00 0C */	beq lbl_80BF26B4
/* 80BF26AC  38 04 FF FF */	addi r0, r4, -1
/* 80BF26B0  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80BF26B4:
/* 80BF26B4  38 63 00 02 */	addi r3, r3, 2
/* 80BF26B8  42 00 FF E4 */	bdnz lbl_80BF269C
/* 80BF26BC  A8 7F 05 92 */	lha r3, 0x592(r31)
/* 80BF26C0  2C 03 00 00 */	cmpwi r3, 0
/* 80BF26C4  41 82 00 0C */	beq lbl_80BF26D0
/* 80BF26C8  38 03 FF FF */	addi r0, r3, -1
/* 80BF26CC  B0 1F 05 92 */	sth r0, 0x592(r31)
lbl_80BF26D0:
/* 80BF26D0  7F E3 FB 78 */	mr r3, r31
/* 80BF26D4  4B FF FD F1 */	bl action__FP12obj_fw_class
/* 80BF26D8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BF26DC  7C 03 07 74 */	extsb r3, r0
/* 80BF26E0  4B 43 A9 8D */	bl dComIfGp_getReverb__Fi
/* 80BF26E4  7C 65 1B 78 */	mr r5, r3
/* 80BF26E8  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80BF26EC  38 80 00 00 */	li r4, 0
/* 80BF26F0  81 9F 05 FC */	lwz r12, 0x5fc(r31)
/* 80BF26F4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BF26F8  7D 89 03 A6 */	mtctr r12
/* 80BF26FC  4E 80 04 21 */	bctrl 
/* 80BF2700  38 60 00 01 */	li r3, 1
/* 80BF2704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF2708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF270C  7C 08 03 A6 */	mtlr r0
/* 80BF2710  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF2714  4E 80 00 20 */	blr 
