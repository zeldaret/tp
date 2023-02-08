lbl_80BE3A88:
/* 80BE3A88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BE3A8C  7C 08 02 A6 */	mflr r0
/* 80BE3A90  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BE3A94  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BE3A98  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BE3A9C  7C 7E 1B 78 */	mr r30, r3
/* 80BE3AA0  3C 60 80 BE */	lis r3, lit_3677@ha /* 0x80BE4AB0@ha */
/* 80BE3AA4  3B E3 4A B0 */	addi r31, r3, lit_3677@l /* 0x80BE4AB0@l */
/* 80BE3AA8  88 7E 05 D8 */	lbz r3, 0x5d8(r30)
/* 80BE3AAC  38 03 FF FF */	addi r0, r3, -1
/* 80BE3AB0  54 03 06 3F */	clrlwi. r3, r0, 0x18
/* 80BE3AB4  41 82 00 6C */	beq lbl_80BE3B20
/* 80BE3AB8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BE3ABC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BE3AC0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BE3AC4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BE3AC8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BE3ACC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BE3AD0  54 00 04 2E */	rlwinm r0, r0, 0, 0x10, 0x17
/* 80BE3AD4  7C 05 03 78 */	mr r5, r0
/* 80BE3AD8  50 65 06 3E */	rlwimi r5, r3, 0, 0x18, 0x1f
/* 80BE3ADC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BE3AE0  7C 07 07 74 */	extsb r7, r0
/* 80BE3AE4  38 00 00 00 */	li r0, 0
/* 80BE3AE8  90 01 00 08 */	stw r0, 8(r1)
/* 80BE3AEC  38 60 00 AA */	li r3, 0xaa
/* 80BE3AF0  28 1E 00 00 */	cmplwi r30, 0
/* 80BE3AF4  41 82 00 0C */	beq lbl_80BE3B00
/* 80BE3AF8  80 9E 00 04 */	lwz r4, 4(r30)
/* 80BE3AFC  48 00 00 08 */	b lbl_80BE3B04
lbl_80BE3B00:
/* 80BE3B00  38 80 FF FF */	li r4, -1
lbl_80BE3B04:
/* 80BE3B04  38 C1 00 10 */	addi r6, r1, 0x10
/* 80BE3B08  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80BE3B0C  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 80BE3B10  39 40 FF FF */	li r10, -1
/* 80BE3B14  4B 43 64 65 */	bl fopAcM_createChildFromOffset__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80BE3B18  90 7E 05 EC */	stw r3, 0x5ec(r30)
/* 80BE3B1C  48 00 00 0C */	b lbl_80BE3B28
lbl_80BE3B20:
/* 80BE3B20  38 00 FF FF */	li r0, -1
/* 80BE3B24  90 1E 05 EC */	stw r0, 0x5ec(r30)
lbl_80BE3B28:
/* 80BE3B28  7F C3 F3 78 */	mr r3, r30
/* 80BE3B2C  48 00 00 7D */	bl getFallTime__14daObjFallObj_cFv
/* 80BE3B30  B0 7E 05 DA */	sth r3, 0x5da(r30)
/* 80BE3B34  7F C3 F3 78 */	mr r3, r30
/* 80BE3B38  4B FF FE 81 */	bl initBaseMtx__14daObjFallObj_cFv
/* 80BE3B3C  38 1E 05 A8 */	addi r0, r30, 0x5a8
/* 80BE3B40  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80BE3B44  7F C3 F3 78 */	mr r3, r30
/* 80BE3B48  3C 80 80 BE */	lis r4, l_cull_box@ha /* 0x80BE4B24@ha */
/* 80BE3B4C  C4 24 4B 24 */	lfsu f1, l_cull_box@l(r4)  /* 0x80BE4B24@l */
/* 80BE3B50  C0 44 00 04 */	lfs f2, 4(r4)
/* 80BE3B54  C0 64 00 08 */	lfs f3, 8(r4)
/* 80BE3B58  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80BE3B5C  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80BE3B60  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80BE3B64  4B 43 69 E5 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BE3B68  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BE3B6C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80BE3B70  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 80BE3B74  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BE3B78  38 A0 00 01 */	li r5, 1
/* 80BE3B7C  81 9E 06 04 */	lwz r12, 0x604(r30)
/* 80BE3B80  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BE3B84  7D 89 03 A6 */	mtctr r12
/* 80BE3B88  4E 80 04 21 */	bctrl 
/* 80BE3B8C  38 60 00 01 */	li r3, 1
/* 80BE3B90  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BE3B94  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BE3B98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BE3B9C  7C 08 03 A6 */	mtlr r0
/* 80BE3BA0  38 21 00 30 */	addi r1, r1, 0x30
/* 80BE3BA4  4E 80 00 20 */	blr 
