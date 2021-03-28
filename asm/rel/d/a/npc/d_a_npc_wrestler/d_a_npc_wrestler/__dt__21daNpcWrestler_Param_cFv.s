lbl_80B41670:
/* 80B41670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B41674  7C 08 02 A6 */	mflr r0
/* 80B41678  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4167C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B41680  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B41684  41 82 00 1C */	beq lbl_80B416A0
/* 80B41688  3C A0 80 B4 */	lis r5, __vt__21daNpcWrestler_Param_c@ha
/* 80B4168C  38 05 2E 00 */	addi r0, r5, __vt__21daNpcWrestler_Param_c@l
/* 80B41690  90 1F 00 00 */	stw r0, 0(r31)
/* 80B41694  7C 80 07 35 */	extsh. r0, r4
/* 80B41698  40 81 00 08 */	ble lbl_80B416A0
/* 80B4169C  4B 78 D6 A0 */	b __dl__FPv
lbl_80B416A0:
/* 80B416A0  7F E3 FB 78 */	mr r3, r31
/* 80B416A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B416A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B416AC  7C 08 03 A6 */	mtlr r0
/* 80B416B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B416B4  4E 80 00 20 */	blr 
