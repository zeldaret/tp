lbl_806C8068:
/* 806C8068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C806C  7C 08 02 A6 */	mflr r0
/* 806C8070  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C8074  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C8078  7C 7F 1B 78 */	mr r31, r3
/* 806C807C  4B 95 0C 64 */	b fopAc_IsActor__FPv
/* 806C8080  2C 03 00 00 */	cmpwi r3, 0
/* 806C8084  41 82 00 5C */	beq lbl_806C80E0
/* 806C8088  28 1F 00 00 */	cmplwi r31, 0
/* 806C808C  41 82 00 0C */	beq lbl_806C8098
/* 806C8090  80 7F 00 04 */	lwz r3, 4(r31)
/* 806C8094  48 00 00 08 */	b lbl_806C809C
lbl_806C8098:
/* 806C8098  38 60 FF FF */	li r3, -1
lbl_806C809C:
/* 806C809C  4B 95 A0 9C */	b fpcM_IsCreating__FUi
/* 806C80A0  2C 03 00 00 */	cmpwi r3, 0
/* 806C80A4  40 82 00 3C */	bne lbl_806C80E0
/* 806C80A8  A8 1F 00 08 */	lha r0, 8(r31)
/* 806C80AC  2C 00 01 F2 */	cmpwi r0, 0x1f2
/* 806C80B0  40 82 00 30 */	bne lbl_806C80E0
/* 806C80B4  7F E3 FB 78 */	mr r3, r31
/* 806C80B8  48 00 02 BD */	bl checkOtherAttacker__8daE_GE_cFv
/* 806C80BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806C80C0  41 82 00 20 */	beq lbl_806C80E0
/* 806C80C4  3C 60 80 6D */	lis r3, target_count@ha
/* 806C80C8  38 83 D3 9C */	addi r4, r3, target_count@l
/* 806C80CC  80 64 00 00 */	lwz r3, 0(r4)
/* 806C80D0  38 03 00 01 */	addi r0, r3, 1
/* 806C80D4  90 04 00 00 */	stw r0, 0(r4)
/* 806C80D8  38 60 00 00 */	li r3, 0
/* 806C80DC  48 00 00 08 */	b lbl_806C80E4
lbl_806C80E0:
/* 806C80E0  38 60 00 00 */	li r3, 0
lbl_806C80E4:
/* 806C80E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C80E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C80EC  7C 08 03 A6 */	mtlr r0
/* 806C80F0  38 21 00 10 */	addi r1, r1, 0x10
/* 806C80F4  4E 80 00 20 */	blr 
