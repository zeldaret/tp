lbl_806E2B80:
/* 806E2B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E2B84  7C 08 02 A6 */	mflr r0
/* 806E2B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E2B8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E2B90  93 C1 00 08 */	stw r30, 8(r1)
/* 806E2B94  7C 7E 1B 78 */	mr r30, r3
/* 806E2B98  3C 60 80 6E */	lis r3, lit_3791@ha /* 0x806E5920@ha */
/* 806E2B9C  3B E3 59 20 */	addi r31, r3, lit_3791@l /* 0x806E5920@l */
/* 806E2BA0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806E2BA4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E2BA8  C0 5F 01 08 */	lfs f2, 0x108(r31)
/* 806E2BAC  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 806E2BB0  4B B8 CE 8D */	bl cLib_addCalc2__FPffff
/* 806E2BB4  7F C3 F3 78 */	mr r3, r30
/* 806E2BB8  4B FF FA 31 */	bl WallCheck__8daE_HM_cFv
/* 806E2BBC  2C 03 00 00 */	cmpwi r3, 0
/* 806E2BC0  40 82 00 24 */	bne lbl_806E2BE4
/* 806E2BC4  A8 1E 05 D2 */	lha r0, 0x5d2(r30)
/* 806E2BC8  2C 00 00 02 */	cmpwi r0, 2
/* 806E2BCC  40 82 00 10 */	bne lbl_806E2BDC
/* 806E2BD0  7F C3 F3 78 */	mr r3, r30
/* 806E2BD4  4B FF E9 89 */	bl W_MoveCheckWall__8daE_HM_cFv
/* 806E2BD8  48 00 00 0C */	b lbl_806E2BE4
lbl_806E2BDC:
/* 806E2BDC  7F C3 F3 78 */	mr r3, r30
/* 806E2BE0  4B FF FA B5 */	bl MoveCheck__8daE_HM_cFv
lbl_806E2BE4:
/* 806E2BE4  80 7E 06 18 */	lwz r3, 0x618(r30)
/* 806E2BE8  38 80 00 01 */	li r4, 1
/* 806E2BEC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806E2BF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806E2BF4  40 82 00 18 */	bne lbl_806E2C0C
/* 806E2BF8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E2BFC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806E2C00  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806E2C04  41 82 00 08 */	beq lbl_806E2C0C
/* 806E2C08  38 80 00 00 */	li r4, 0
lbl_806E2C0C:
/* 806E2C0C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806E2C10  41 82 00 28 */	beq lbl_806E2C38
/* 806E2C14  7F C3 F3 78 */	mr r3, r30
/* 806E2C18  48 00 0B DD */	bl MemberClear__8daE_HM_cFv
/* 806E2C1C  38 00 00 04 */	li r0, 4
/* 806E2C20  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 806E2C24  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806E2C28  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806E2C2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E2C30  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806E2C34  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_806E2C38:
/* 806E2C38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E2C3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806E2C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E2C44  7C 08 03 A6 */	mtlr r0
/* 806E2C48  38 21 00 10 */	addi r1, r1, 0x10
/* 806E2C4C  4E 80 00 20 */	blr 
