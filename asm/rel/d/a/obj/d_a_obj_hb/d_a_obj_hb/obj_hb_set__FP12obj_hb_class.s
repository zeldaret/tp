lbl_80C19AD8:
/* 80C19AD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C19ADC  7C 08 02 A6 */	mflr r0
/* 80C19AE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C19AE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C19AE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C19AEC  7C 7E 1B 78 */	mr r30, r3
/* 80C19AF0  3C 60 80 C2 */	lis r3, lit_3665@ha
/* 80C19AF4  3B E3 B6 00 */	addi r31, r3, lit_3665@l
/* 80C19AF8  A8 1E 06 54 */	lha r0, 0x654(r30)
/* 80C19AFC  2C 00 00 01 */	cmpwi r0, 1
/* 80C19B00  41 82 00 38 */	beq lbl_80C19B38
/* 80C19B04  40 80 00 D0 */	bge lbl_80C19BD4
/* 80C19B08  2C 00 00 00 */	cmpwi r0, 0
/* 80C19B0C  40 80 00 08 */	bge lbl_80C19B14
/* 80C19B10  48 00 00 C4 */	b lbl_80C19BD4
lbl_80C19B14:
/* 80C19B14  38 00 00 1E */	li r0, 0x1e
/* 80C19B18  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 80C19B1C  38 00 00 5A */	li r0, 0x5a
/* 80C19B20  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 80C19B24  38 00 00 01 */	li r0, 1
/* 80C19B28  B0 1E 06 54 */	sth r0, 0x654(r30)
/* 80C19B2C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C19B30  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 80C19B34  48 00 00 A0 */	b lbl_80C19BD4
lbl_80C19B38:
/* 80C19B38  A8 1E 06 70 */	lha r0, 0x670(r30)
/* 80C19B3C  2C 00 00 00 */	cmpwi r0, 0
/* 80C19B40  40 82 00 94 */	bne lbl_80C19BD4
/* 80C19B44  38 7E 06 AC */	addi r3, r30, 0x6ac
/* 80C19B48  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C19B4C  FC 40 08 90 */	fmr f2, f1
/* 80C19B50  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80C19B54  4B 65 5E E8 */	b cLib_addCalc2__FPffff
/* 80C19B58  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 80C19B5C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80C19B60  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80C19B64  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80C19B68  4B 65 5E D4 */	b cLib_addCalc2__FPffff
/* 80C19B6C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C19B70  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 80C19B74  A8 1E 06 72 */	lha r0, 0x672(r30)
/* 80C19B78  2C 00 00 00 */	cmpwi r0, 0
/* 80C19B7C  40 82 00 58 */	bne lbl_80C19BD4
/* 80C19B80  38 00 00 0F */	li r0, 0xf
/* 80C19B84  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 80C19B88  38 00 00 01 */	li r0, 1
/* 80C19B8C  B0 1E 06 52 */	sth r0, 0x652(r30)
/* 80C19B90  38 00 00 00 */	li r0, 0
/* 80C19B94  B0 1E 06 54 */	sth r0, 0x654(r30)
/* 80C19B98  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C19B9C  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 80C19BA0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C19BA4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C19BA8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700DA@ha */
/* 80C19BAC  38 03 00 DA */	addi r0, r3, 0x00DA /* 0x000700DA@l */
/* 80C19BB0  90 01 00 08 */	stw r0, 8(r1)
/* 80C19BB4  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80C19BB8  38 81 00 08 */	addi r4, r1, 8
/* 80C19BBC  38 A0 00 00 */	li r5, 0
/* 80C19BC0  38 C0 FF FF */	li r6, -1
/* 80C19BC4  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 80C19BC8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C19BCC  7D 89 03 A6 */	mtctr r12
/* 80C19BD0  4E 80 04 21 */	bctrl 
lbl_80C19BD4:
/* 80C19BD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C19BD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C19BDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C19BE0  7C 08 03 A6 */	mtlr r0
/* 80C19BE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C19BE8  4E 80 00 20 */	blr 
