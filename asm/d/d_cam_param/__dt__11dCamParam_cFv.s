lbl_8008858C:
/* 8008858C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80088590  7C 08 02 A6 */	mflr r0
/* 80088594  90 01 00 14 */	stw r0, 0x14(r1)
/* 80088598  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8008859C  7C 7F 1B 79 */	or. r31, r3, r3
/* 800885A0  41 82 00 1C */	beq lbl_800885BC
/* 800885A4  3C A0 80 3B */	lis r5, __vt__11dCamParam_c@ha
/* 800885A8  38 05 C5 0C */	addi r0, r5, __vt__11dCamParam_c@l
/* 800885AC  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 800885B0  7C 80 07 35 */	extsh. r0, r4
/* 800885B4  40 81 00 08 */	ble lbl_800885BC
/* 800885B8  48 24 67 85 */	bl __dl__FPv
lbl_800885BC:
/* 800885BC  7F E3 FB 78 */	mr r3, r31
/* 800885C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800885C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800885C8  7C 08 03 A6 */	mtlr r0
/* 800885CC  38 21 00 10 */	addi r1, r1, 0x10
/* 800885D0  4E 80 00 20 */	blr 
