lbl_806AFF1C:
/* 806AFF1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AFF20  7C 08 02 A6 */	mflr r0
/* 806AFF24  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AFF28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AFF2C  7C 7F 1B 78 */	mr r31, r3
/* 806AFF30  4B 96 8D B0 */	b fopAc_IsActor__FPv
/* 806AFF34  2C 03 00 00 */	cmpwi r3, 0
/* 806AFF38  41 82 00 3C */	beq lbl_806AFF74
/* 806AFF3C  28 1F 00 00 */	cmplwi r31, 0
/* 806AFF40  41 82 00 0C */	beq lbl_806AFF4C
/* 806AFF44  80 7F 00 04 */	lwz r3, 4(r31)
/* 806AFF48  48 00 00 08 */	b lbl_806AFF50
lbl_806AFF4C:
/* 806AFF4C  38 60 FF FF */	li r3, -1
lbl_806AFF50:
/* 806AFF50  4B 97 21 E8 */	b fpcM_IsCreating__FUi
/* 806AFF54  2C 03 00 00 */	cmpwi r3, 0
/* 806AFF58  40 82 00 1C */	bne lbl_806AFF74
/* 806AFF5C  A8 1F 00 08 */	lha r0, 8(r31)
/* 806AFF60  2C 00 01 FF */	cmpwi r0, 0x1ff
/* 806AFF64  40 82 00 10 */	bne lbl_806AFF74
/* 806AFF68  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 806AFF6C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 806AFF70  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_806AFF74:
/* 806AFF74  38 60 00 00 */	li r3, 0
/* 806AFF78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AFF7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AFF80  7C 08 03 A6 */	mtlr r0
/* 806AFF84  38 21 00 10 */	addi r1, r1, 0x10
/* 806AFF88  4E 80 00 20 */	blr 
