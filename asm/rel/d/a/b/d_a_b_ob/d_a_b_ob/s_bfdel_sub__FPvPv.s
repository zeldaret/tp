lbl_80611C78:
/* 80611C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80611C7C  7C 08 02 A6 */	mflr r0
/* 80611C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80611C84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80611C88  7C 7F 1B 78 */	mr r31, r3
/* 80611C8C  4B A0 70 54 */	b fopAc_IsActor__FPv
/* 80611C90  2C 03 00 00 */	cmpwi r3, 0
/* 80611C94  41 82 00 18 */	beq lbl_80611CAC
/* 80611C98  A8 1F 00 08 */	lha r0, 8(r31)
/* 80611C9C  2C 00 02 02 */	cmpwi r0, 0x202
/* 80611CA0  40 82 00 0C */	bne lbl_80611CAC
/* 80611CA4  7F E3 FB 78 */	mr r3, r31
/* 80611CA8  4B A0 7F D4 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80611CAC:
/* 80611CAC  38 60 00 00 */	li r3, 0
/* 80611CB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80611CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80611CB8  7C 08 03 A6 */	mtlr r0
/* 80611CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80611CC0  4E 80 00 20 */	blr 
