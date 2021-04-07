lbl_80B514F4:
/* 80B514F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B514F8  7C 08 02 A6 */	mflr r0
/* 80B514FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B51500  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B51504  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B51508  41 82 00 1C */	beq lbl_80B51524
/* 80B5150C  3C A0 80 B5 */	lis r5, __vt__8cM3dGAab@ha /* 0x80B532F4@ha */
/* 80B51510  38 05 32 F4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80B532F4@l */
/* 80B51514  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B51518  7C 80 07 35 */	extsh. r0, r4
/* 80B5151C  40 81 00 08 */	ble lbl_80B51524
/* 80B51520  4B 77 D8 1D */	bl __dl__FPv
lbl_80B51524:
/* 80B51524  7F E3 FB 78 */	mr r3, r31
/* 80B51528  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5152C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B51530  7C 08 03 A6 */	mtlr r0
/* 80B51534  38 21 00 10 */	addi r1, r1, 0x10
/* 80B51538  4E 80 00 20 */	blr 
