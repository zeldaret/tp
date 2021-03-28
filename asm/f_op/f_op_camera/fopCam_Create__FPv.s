lbl_8001E270:
/* 8001E270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E274  7C 08 02 A6 */	mflr r0
/* 8001E278  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E27C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001E280  93 C1 00 08 */	stw r30, 8(r1)
/* 8001E284  7C 7F 1B 78 */	mr r31, r3
/* 8001E288  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8001E28C  7C 00 07 75 */	extsb. r0, r0
/* 8001E290  40 82 00 30 */	bne lbl_8001E2C0
/* 8001E294  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8001E298  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 8001E29C  90 1F 02 24 */	stw r0, 0x224(r31)
/* 8001E2A0  38 7F 02 10 */	addi r3, r31, 0x210
/* 8001E2A4  7F E4 FB 78 */	mr r4, r31
/* 8001E2A8  48 00 22 4D */	bl fopDwTg_Init__FP16create_tag_classPv
/* 8001E2AC  80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8001E2B0  28 03 00 00 */	cmplwi r3, 0
/* 8001E2B4  41 82 00 0C */	beq lbl_8001E2C0
/* 8001E2B8  80 03 00 00 */	lwz r0, 0(r3)
/* 8001E2BC  90 1F 00 B0 */	stw r0, 0xb0(r31)
lbl_8001E2C0:
/* 8001E2C0  80 7F 02 24 */	lwz r3, 0x224(r31)
/* 8001E2C4  7F E4 FB 78 */	mr r4, r31
/* 8001E2C8  48 00 42 05 */	bl fpcMtd_Create__FP20process_method_classPv
/* 8001E2CC  7C 7E 1B 78 */	mr r30, r3
/* 8001E2D0  2C 1E 00 04 */	cmpwi r30, 4
/* 8001E2D4  40 82 00 18 */	bne lbl_8001E2EC
/* 8001E2D8  7F E3 FB 78 */	mr r3, r31
/* 8001E2DC  48 00 37 25 */	bl fpcLf_GetPriority__FPC14leafdraw_class
/* 8001E2E0  7C 64 07 34 */	extsh r4, r3
/* 8001E2E4  38 7F 02 10 */	addi r3, r31, 0x210
/* 8001E2E8  48 00 21 C5 */	bl fopDwTg_ToDrawQ__FP16create_tag_classi
lbl_8001E2EC:
/* 8001E2EC  7F C3 F3 78 */	mr r3, r30
/* 8001E2F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001E2F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001E2F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E2FC  7C 08 03 A6 */	mtlr r0
/* 8001E300  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E304  4E 80 00 20 */	blr 
