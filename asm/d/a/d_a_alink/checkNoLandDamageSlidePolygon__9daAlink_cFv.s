lbl_800D6F2C:
/* 800D6F2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800D6F30  7C 08 02 A6 */	mflr r0
/* 800D6F34  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D6F38  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800D6F3C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800D6F40  7C 7E 1B 78 */	mr r30, r3
/* 800D6F44  88 03 2F BB */	lbz r0, 0x2fbb(r3)
/* 800D6F48  28 00 00 03 */	cmplwi r0, 3
/* 800D6F4C  40 82 00 0C */	bne lbl_800D6F58
/* 800D6F50  38 60 00 01 */	li r3, 1
/* 800D6F54  48 00 00 74 */	b lbl_800D6FC8
lbl_800D6F58:
/* 800D6F58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D6F5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D6F60  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 800D6F64  7F E3 FB 78 */	mr r3, r31
/* 800D6F68  38 9E 1A 60 */	addi r4, r30, 0x1a60
/* 800D6F6C  4B F9 D6 F5 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800D6F70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D6F74  41 82 00 50 */	beq lbl_800D6FC4
/* 800D6F78  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800D6F7C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800D6F80  90 01 00 18 */	stw r0, 0x18(r1)
/* 800D6F84  7F E3 FB 78 */	mr r3, r31
/* 800D6F88  38 9E 1A 60 */	addi r4, r30, 0x1a60
/* 800D6F8C  38 A1 00 08 */	addi r5, r1, 8
/* 800D6F90  4B F9 D7 B5 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800D6F94  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 800D6F98  C0 1E 34 70 */	lfs f0, 0x3470(r30)
/* 800D6F9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D6FA0  40 80 00 18 */	bge lbl_800D6FB8
/* 800D6FA4  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800D6FA8  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800D6FAC  90 01 00 18 */	stw r0, 0x18(r1)
/* 800D6FB0  38 60 00 01 */	li r3, 1
/* 800D6FB4  48 00 00 14 */	b lbl_800D6FC8
lbl_800D6FB8:
/* 800D6FB8  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800D6FBC  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800D6FC0  90 01 00 18 */	stw r0, 0x18(r1)
lbl_800D6FC4:
/* 800D6FC4  38 60 00 00 */	li r3, 0
lbl_800D6FC8:
/* 800D6FC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800D6FCC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800D6FD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800D6FD4  7C 08 03 A6 */	mtlr r0
/* 800D6FD8  38 21 00 30 */	addi r1, r1, 0x30
/* 800D6FDC  4E 80 00 20 */	blr 
