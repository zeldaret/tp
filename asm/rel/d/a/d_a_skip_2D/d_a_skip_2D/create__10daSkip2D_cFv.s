lbl_80D4D4F4:
/* 80D4D4F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D4F8  7C 08 02 A6 */	mflr r0
/* 80D4D4FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D500  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4D504  93 C1 00 08 */	stw r30, 8(r1)
/* 80D4D508  7C 7F 1B 78 */	mr r31, r3
/* 80D4D50C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D4D510  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D4D514  40 82 00 34 */	bne lbl_80D4D548
/* 80D4D518  7F E0 FB 79 */	or. r0, r31, r31
/* 80D4D51C  41 82 00 20 */	beq lbl_80D4D53C
/* 80D4D520  7C 1E 03 78 */	mr r30, r0
/* 80D4D524  4B 2C B6 40 */	b __ct__10fopAc_ac_cFv
/* 80D4D528  3C 60 80 D5 */	lis r3, __vt__10daSkip2D_c@ha
/* 80D4D52C  38 03 D7 2C */	addi r0, r3, __vt__10daSkip2D_c@l
/* 80D4D530  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D4D534  7F C3 F3 78 */	mr r3, r30
/* 80D4D538  48 00 00 A1 */	bl initiate__10daSkip2D_cFv
lbl_80D4D53C:
/* 80D4D53C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D4D540  60 00 00 08 */	ori r0, r0, 8
/* 80D4D544  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D4D548:
/* 80D4D548  7F E3 FB 78 */	mr r3, r31
/* 80D4D54C  3C 80 80 D5 */	lis r4, daSkip2D_createHeap__FP10fopAc_ac_c@ha
/* 80D4D550  38 84 D4 78 */	addi r4, r4, daSkip2D_createHeap__FP10fopAc_ac_c@l
/* 80D4D554  38 A0 00 00 */	li r5, 0
/* 80D4D558  4B 2C CF 58 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D4D55C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D4D560  40 82 00 0C */	bne lbl_80D4D56C
/* 80D4D564  38 60 00 05 */	li r3, 5
/* 80D4D568  48 00 00 08 */	b lbl_80D4D570
lbl_80D4D56C:
/* 80D4D56C  38 60 00 04 */	li r3, 4
lbl_80D4D570:
/* 80D4D570  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4D574  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4D578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D57C  7C 08 03 A6 */	mtlr r0
/* 80D4D580  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D584  4E 80 00 20 */	blr 
