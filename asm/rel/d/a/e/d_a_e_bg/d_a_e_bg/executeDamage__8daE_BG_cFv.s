lbl_80687B38:
/* 80687B38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80687B3C  7C 08 02 A6 */	mflr r0
/* 80687B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80687B44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80687B48  93 C1 00 08 */	stw r30, 8(r1)
/* 80687B4C  7C 7E 1B 78 */	mr r30, r3
/* 80687B50  3C 80 80 69 */	lis r4, lit_3768@ha /* 0x8068A244@ha */
/* 80687B54  3B E4 A2 44 */	addi r31, r4, lit_3768@l /* 0x8068A244@l */
/* 80687B58  38 00 00 A0 */	li r0, 0xa0
/* 80687B5C  90 03 06 94 */	stw r0, 0x694(r3)
/* 80687B60  80 03 06 74 */	lwz r0, 0x674(r3)
/* 80687B64  2C 00 00 01 */	cmpwi r0, 1
/* 80687B68  41 82 00 80 */	beq lbl_80687BE8
/* 80687B6C  40 80 01 54 */	bge lbl_80687CC0
/* 80687B70  2C 00 00 00 */	cmpwi r0, 0
/* 80687B74  40 80 00 08 */	bge lbl_80687B7C
/* 80687B78  48 00 01 48 */	b lbl_80687CC0
lbl_80687B7C:
/* 80687B7C  38 80 00 00 */	li r4, 0
/* 80687B80  B0 9E 06 A2 */	sth r4, 0x6a2(r30)
/* 80687B84  B0 9E 06 AC */	sth r4, 0x6ac(r30)
/* 80687B88  80 1E 09 20 */	lwz r0, 0x920(r30)
/* 80687B8C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80687B90  90 1E 09 20 */	stw r0, 0x920(r30)
/* 80687B94  80 1E 0A 40 */	lwz r0, 0xa40(r30)
/* 80687B98  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80687B9C  90 1E 0A 40 */	stw r0, 0xa40(r30)
/* 80687BA0  90 9E 05 5C */	stw r4, 0x55c(r30)
/* 80687BA4  38 80 00 06 */	li r4, 6
/* 80687BA8  38 A0 00 00 */	li r5, 0
/* 80687BAC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80687BB0  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80687BB4  4B FF DF BD */	bl setBck__8daE_BG_cFiUcff
/* 80687BB8  38 00 00 01 */	li r0, 1
/* 80687BBC  90 1E 06 74 */	stw r0, 0x674(r30)
/* 80687BC0  A8 7E 0B 86 */	lha r3, 0xb86(r30)
/* 80687BC4  3C 63 00 01 */	addis r3, r3, 1
/* 80687BC8  38 03 80 00 */	addi r0, r3, -32768
/* 80687BCC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80687BD0  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80687BD4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80687BD8  38 00 10 00 */	li r0, 0x1000
/* 80687BDC  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 80687BE0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80687BE4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80687BE8:
/* 80687BE8  38 7E 06 88 */	addi r3, r30, 0x688
/* 80687BEC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80687BF0  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80687BF4  4B BE 8B 4D */	bl cLib_chaseF__FPfff
/* 80687BF8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80687BFC  A8 1E 06 9A */	lha r0, 0x69a(r30)
/* 80687C00  7C 03 02 14 */	add r0, r3, r0
/* 80687C04  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80687C08  A8 7E 04 E4 */	lha r3, 0x4e4(r30)
/* 80687C0C  A8 1E 06 9A */	lha r0, 0x69a(r30)
/* 80687C10  7C 03 02 14 */	add r0, r3, r0
/* 80687C14  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80687C18  80 1E 07 20 */	lwz r0, 0x720(r30)
/* 80687C1C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80687C20  41 82 00 18 */	beq lbl_80687C38
/* 80687C24  38 7E 06 9A */	addi r3, r30, 0x69a
/* 80687C28  38 80 00 00 */	li r4, 0
/* 80687C2C  38 A0 00 80 */	li r5, 0x80
/* 80687C30  4B BE 8F 61 */	bl cLib_chaseAngleS__FPsss
/* 80687C34  48 00 00 14 */	b lbl_80687C48
lbl_80687C38:
/* 80687C38  38 7E 06 9A */	addi r3, r30, 0x69a
/* 80687C3C  38 80 01 00 */	li r4, 0x100
/* 80687C40  38 A0 00 60 */	li r5, 0x60
/* 80687C44  4B BE 8F 4D */	bl cLib_chaseAngleS__FPsss
lbl_80687C48:
/* 80687C48  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80687C4C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80687C50  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80687C54  4B BE 8A ED */	bl cLib_chaseF__FPfff
/* 80687C58  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80687C5C  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80687C60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80687C64  40 80 00 14 */	bge lbl_80687C78
/* 80687C68  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80687C6C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80687C70  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80687C74  D0 1E 05 34 */	stfs f0, 0x534(r30)
lbl_80687C78:
/* 80687C78  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80687C7C  38 80 00 01 */	li r4, 1
/* 80687C80  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80687C84  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80687C88  40 82 00 18 */	bne lbl_80687CA0
/* 80687C8C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80687C90  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80687C94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80687C98  41 82 00 08 */	beq lbl_80687CA0
/* 80687C9C  38 80 00 00 */	li r4, 0
lbl_80687CA0:
/* 80687CA0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80687CA4  41 82 00 14 */	beq lbl_80687CB8
/* 80687CA8  7F C3 F3 78 */	mr r3, r30
/* 80687CAC  38 80 00 04 */	li r4, 4
/* 80687CB0  38 A0 00 00 */	li r5, 0
/* 80687CB4  4B FF DF 61 */	bl setActionMode__8daE_BG_cFii
lbl_80687CB8:
/* 80687CB8  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80687CBC  4B 98 57 6D */	bl play__14mDoExt_baseAnmFv
lbl_80687CC0:
/* 80687CC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80687CC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80687CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80687CCC  7C 08 03 A6 */	mtlr r0
/* 80687CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80687CD4  4E 80 00 20 */	blr 
