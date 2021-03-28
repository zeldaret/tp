lbl_8062799C:
/* 8062799C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806279A0  7C 08 02 A6 */	mflr r0
/* 806279A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 806279A8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806279AC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806279B0  7C 7E 1B 78 */	mr r30, r3
/* 806279B4  3C A0 80 63 */	lis r5, lit_3920@ha
/* 806279B8  3B E5 E6 34 */	addi r31, r5, lit_3920@l
/* 806279BC  90 83 06 F4 */	stw r4, 0x6f4(r3)
/* 806279C0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806279C4  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 806279C8  80 03 06 F4 */	lwz r0, 0x6f4(r3)
/* 806279CC  28 00 00 11 */	cmplwi r0, 0x11
/* 806279D0  41 81 02 D4 */	bgt lbl_80627CA4
/* 806279D4  3C 80 80 63 */	lis r4, lit_8051@ha
/* 806279D8  38 84 EE 34 */	addi r4, r4, lit_8051@l
/* 806279DC  54 00 10 3A */	slwi r0, r0, 2
/* 806279E0  7C 04 00 2E */	lwzx r0, r4, r0
/* 806279E4  7C 09 03 A6 */	mtctr r0
/* 806279E8  4E 80 04 20 */	bctr 
lbl_806279EC:
/* 806279EC  38 80 00 2A */	li r4, 0x2a
/* 806279F0  38 A0 00 02 */	li r5, 2
/* 806279F4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806279F8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806279FC  4B FF 8E CD */	bl setBck__8daB_TN_cFiUcff
/* 80627A00  38 00 00 1E */	li r0, 0x1e
/* 80627A04  90 1E 0A 6C */	stw r0, 0xa6c(r30)
/* 80627A08  48 00 02 9C */	b lbl_80627CA4
lbl_80627A0C:
/* 80627A0C  38 80 00 2D */	li r4, 0x2d
/* 80627A10  38 A0 00 02 */	li r5, 2
/* 80627A14  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80627A18  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80627A1C  4B FF 8E AD */	bl setBck__8daB_TN_cFiUcff
/* 80627A20  C0 1F 01 FC */	lfs f0, 0x1fc(r31)
/* 80627A24  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80627A28  48 00 02 7C */	b lbl_80627CA4
lbl_80627A2C:
/* 80627A2C  38 80 00 2B */	li r4, 0x2b
/* 80627A30  4B FF 8F 3D */	bl checkBck__8daB_TN_cFi
/* 80627A34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80627A38  40 82 00 1C */	bne lbl_80627A54
/* 80627A3C  7F C3 F3 78 */	mr r3, r30
/* 80627A40  38 80 00 2B */	li r4, 0x2b
/* 80627A44  38 A0 00 02 */	li r5, 2
/* 80627A48  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80627A4C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80627A50  4B FF 8E 79 */	bl setBck__8daB_TN_cFiUcff
lbl_80627A54:
/* 80627A54  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80627A58  38 03 40 00 */	addi r0, r3, 0x4000
/* 80627A5C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80627A60  C0 3F 01 4C */	lfs f1, 0x14c(r31)
/* 80627A64  4B C3 FF 28 */	b cM_rndFX__Ff
/* 80627A68  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80627A6C  EC 00 08 2A */	fadds f0, f0, f1
/* 80627A70  FC 00 00 1E */	fctiwz f0, f0
/* 80627A74  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80627A78  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80627A7C  90 1E 0A 6C */	stw r0, 0xa6c(r30)
/* 80627A80  C0 1F 02 00 */	lfs f0, 0x200(r31)
/* 80627A84  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80627A88  38 00 00 01 */	li r0, 1
/* 80627A8C  90 1E 0A 8C */	stw r0, 0xa8c(r30)
/* 80627A90  48 00 02 14 */	b lbl_80627CA4
lbl_80627A94:
/* 80627A94  38 80 00 2C */	li r4, 0x2c
/* 80627A98  4B FF 8E D5 */	bl checkBck__8daB_TN_cFi
/* 80627A9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80627AA0  40 82 00 1C */	bne lbl_80627ABC
/* 80627AA4  7F C3 F3 78 */	mr r3, r30
/* 80627AA8  38 80 00 2C */	li r4, 0x2c
/* 80627AAC  38 A0 00 02 */	li r5, 2
/* 80627AB0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80627AB4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80627AB8  4B FF 8E 11 */	bl setBck__8daB_TN_cFiUcff
lbl_80627ABC:
/* 80627ABC  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80627AC0  38 03 C0 00 */	addi r0, r3, -16384
/* 80627AC4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80627AC8  C0 3F 01 4C */	lfs f1, 0x14c(r31)
/* 80627ACC  4B C3 FE C0 */	b cM_rndFX__Ff
/* 80627AD0  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80627AD4  EC 00 08 2A */	fadds f0, f0, f1
/* 80627AD8  FC 00 00 1E */	fctiwz f0, f0
/* 80627ADC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80627AE0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80627AE4  90 1E 0A 6C */	stw r0, 0xa6c(r30)
/* 80627AE8  C0 1F 02 00 */	lfs f0, 0x200(r31)
/* 80627AEC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80627AF0  38 00 00 01 */	li r0, 1
/* 80627AF4  90 1E 0A 8C */	stw r0, 0xa8c(r30)
/* 80627AF8  48 00 01 AC */	b lbl_80627CA4
lbl_80627AFC:
/* 80627AFC  38 80 00 1E */	li r4, 0x1e
/* 80627B00  38 A0 00 00 */	li r5, 0
/* 80627B04  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 80627B08  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80627B0C  4B FF 8D BD */	bl setBck__8daB_TN_cFiUcff
/* 80627B10  48 00 01 94 */	b lbl_80627CA4
lbl_80627B14:
/* 80627B14  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80627B18  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80627B1C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80627B20  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 80627B24  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 80627B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80627B2C  38 7E 06 4C */	addi r3, r30, 0x64c
/* 80627B30  38 81 00 14 */	addi r4, r1, 0x14
/* 80627B34  38 A0 00 00 */	li r5, 0
/* 80627B38  38 C0 FF FF */	li r6, -1
/* 80627B3C  81 9E 06 4C */	lwz r12, 0x64c(r30)
/* 80627B40  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80627B44  7D 89 03 A6 */	mtctr r12
/* 80627B48  4E 80 04 21 */	bctrl 
/* 80627B4C  48 00 01 58 */	b lbl_80627CA4
lbl_80627B50:
/* 80627B50  7F C3 F3 78 */	mr r3, r30
/* 80627B54  38 80 00 20 */	li r4, 0x20
/* 80627B58  38 A0 00 00 */	li r5, 0
/* 80627B5C  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 80627B60  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80627B64  4B FF 8D 65 */	bl setBck__8daB_TN_cFiUcff
/* 80627B68  48 00 01 3C */	b lbl_80627CA4
lbl_80627B6C:
/* 80627B6C  38 80 00 21 */	li r4, 0x21
/* 80627B70  38 A0 00 00 */	li r5, 0
/* 80627B74  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80627B78  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80627B7C  4B FF 8D 4D */	bl setBck__8daB_TN_cFiUcff
/* 80627B80  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 80627B84  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 80627B88  90 01 00 10 */	stw r0, 0x10(r1)
/* 80627B8C  38 7E 06 4C */	addi r3, r30, 0x64c
/* 80627B90  38 81 00 10 */	addi r4, r1, 0x10
/* 80627B94  38 A0 00 00 */	li r5, 0
/* 80627B98  38 C0 FF FF */	li r6, -1
/* 80627B9C  81 9E 06 4C */	lwz r12, 0x64c(r30)
/* 80627BA0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80627BA4  7D 89 03 A6 */	mtctr r12
/* 80627BA8  4E 80 04 21 */	bctrl 
/* 80627BAC  48 00 00 F8 */	b lbl_80627CA4
lbl_80627BB0:
/* 80627BB0  7F C3 F3 78 */	mr r3, r30
/* 80627BB4  38 80 00 24 */	li r4, 0x24
/* 80627BB8  38 A0 00 00 */	li r5, 0
/* 80627BBC  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 80627BC0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80627BC4  4B FF 8D 05 */	bl setBck__8daB_TN_cFiUcff
/* 80627BC8  48 00 00 DC */	b lbl_80627CA4
lbl_80627BCC:
/* 80627BCC  38 80 00 25 */	li r4, 0x25
/* 80627BD0  38 A0 00 00 */	li r5, 0
/* 80627BD4  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 80627BD8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80627BDC  4B FF 8C ED */	bl setBck__8daB_TN_cFiUcff
/* 80627BE0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 80627BE4  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 80627BE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80627BEC  38 7E 06 4C */	addi r3, r30, 0x64c
/* 80627BF0  38 81 00 0C */	addi r4, r1, 0xc
/* 80627BF4  38 A0 00 00 */	li r5, 0
/* 80627BF8  38 C0 FF FF */	li r6, -1
/* 80627BFC  81 9E 06 4C */	lwz r12, 0x64c(r30)
/* 80627C00  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80627C04  7D 89 03 A6 */	mtctr r12
/* 80627C08  4E 80 04 21 */	bctrl 
/* 80627C0C  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 80627C10  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80627C14  48 00 00 90 */	b lbl_80627CA4
lbl_80627C18:
/* 80627C18  7F C3 F3 78 */	mr r3, r30
/* 80627C1C  38 80 00 22 */	li r4, 0x22
/* 80627C20  38 A0 00 00 */	li r5, 0
/* 80627C24  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 80627C28  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80627C2C  4B FF 8C 9D */	bl setBck__8daB_TN_cFiUcff
/* 80627C30  48 00 00 74 */	b lbl_80627CA4
lbl_80627C34:
/* 80627C34  38 80 00 23 */	li r4, 0x23
/* 80627C38  38 A0 00 00 */	li r5, 0
/* 80627C3C  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 80627C40  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80627C44  4B FF 8C 85 */	bl setBck__8daB_TN_cFiUcff
/* 80627C48  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 80627C4C  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 80627C50  90 01 00 08 */	stw r0, 8(r1)
/* 80627C54  38 7E 06 4C */	addi r3, r30, 0x64c
/* 80627C58  38 81 00 08 */	addi r4, r1, 8
/* 80627C5C  38 A0 00 00 */	li r5, 0
/* 80627C60  38 C0 FF FF */	li r6, -1
/* 80627C64  81 9E 06 4C */	lwz r12, 0x64c(r30)
/* 80627C68  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80627C6C  7D 89 03 A6 */	mtctr r12
/* 80627C70  4E 80 04 21 */	bctrl 
/* 80627C74  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 80627C78  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80627C7C  48 00 00 28 */	b lbl_80627CA4
lbl_80627C80:
/* 80627C80  38 80 00 2D */	li r4, 0x2d
/* 80627C84  38 A0 00 02 */	li r5, 2
/* 80627C88  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80627C8C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80627C90  4B FF 8C 39 */	bl setBck__8daB_TN_cFiUcff
/* 80627C94  C0 1F 01 FC */	lfs f0, 0x1fc(r31)
/* 80627C98  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80627C9C  38 00 00 1E */	li r0, 0x1e
/* 80627CA0  90 1E 0A 6C */	stw r0, 0xa6c(r30)
lbl_80627CA4:
/* 80627CA4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80627CA8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80627CAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80627CB0  7C 08 03 A6 */	mtlr r0
/* 80627CB4  38 21 00 30 */	addi r1, r1, 0x30
/* 80627CB8  4E 80 00 20 */	blr 
