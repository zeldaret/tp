lbl_80A23AB4:
/* 80A23AB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A23AB8  7C 08 02 A6 */	mflr r0
/* 80A23ABC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A23AC0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A23AC4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80A23AC8  7C 7F 1B 78 */	mr r31, r3
/* 80A23ACC  3C 80 80 A2 */	lis r4, m__20daNpcKasiKyu_Param_c@ha /* 0x80A258B8@ha */
/* 80A23AD0  3B C4 58 B8 */	addi r30, r4, m__20daNpcKasiKyu_Param_c@l /* 0x80A258B8@l */
/* 80A23AD4  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A23AD8  2C 00 00 02 */	cmpwi r0, 2
/* 80A23ADC  41 82 01 98 */	beq lbl_80A23C74
/* 80A23AE0  40 80 00 14 */	bge lbl_80A23AF4
/* 80A23AE4  2C 00 00 00 */	cmpwi r0, 0
/* 80A23AE8  41 82 00 1C */	beq lbl_80A23B04
/* 80A23AEC  40 80 00 60 */	bge lbl_80A23B4C
/* 80A23AF0  48 00 01 84 */	b lbl_80A23C74
lbl_80A23AF4:
/* 80A23AF4  2C 00 00 04 */	cmpwi r0, 4
/* 80A23AF8  41 82 01 1C */	beq lbl_80A23C14
/* 80A23AFC  40 80 01 78 */	bge lbl_80A23C74
/* 80A23B00  48 00 00 88 */	b lbl_80A23B88
lbl_80A23B04:
/* 80A23B04  48 00 01 8D */	bl srchWolfTag__14daNpcKasiKyu_cFv
/* 80A23B08  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A23B0C  41 82 01 68 */	beq lbl_80A23C74
/* 80A23B10  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A23B14  4B 72 CD ED */	bl initialize__13daNpcF_Path_cFv
/* 80A23B18  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A23B1C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A23B20  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80A23B24  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A23B28  7C 05 07 74 */	extsb r5, r0
/* 80A23B2C  38 C0 00 00 */	li r6, 0
/* 80A23B30  4B 72 CE 2D */	bl setPathInfo__13daNpcF_Path_cFUcScUc
/* 80A23B34  7F E3 FB 78 */	mr r3, r31
/* 80A23B38  48 00 02 91 */	bl getWolfPathNearIdx__14daNpcKasiKyu_cFv
/* 80A23B3C  B0 7F 0C 94 */	sth r3, 0xc94(r31)
/* 80A23B40  38 00 00 01 */	li r0, 1
/* 80A23B44  B0 1F 14 04 */	sth r0, 0x1404(r31)
/* 80A23B48  48 00 01 2C */	b lbl_80A23C74
lbl_80A23B4C:
/* 80A23B4C  38 80 10 00 */	li r4, 0x1000
/* 80A23B50  48 00 11 75 */	bl _turn_to_link__14daNpcKasiKyu_cFs
/* 80A23B54  2C 03 00 00 */	cmpwi r3, 0
/* 80A23B58  41 82 01 1C */	beq lbl_80A23C74
/* 80A23B5C  7F E3 FB 78 */	mr r3, r31
/* 80A23B60  38 80 00 0A */	li r4, 0xa
/* 80A23B64  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80A23B68  38 A0 00 00 */	li r5, 0
/* 80A23B6C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A23B70  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A23B74  7D 89 03 A6 */	mtctr r12
/* 80A23B78  4E 80 04 21 */	bctrl 
/* 80A23B7C  38 00 00 03 */	li r0, 3
/* 80A23B80  B0 1F 14 04 */	sth r0, 0x1404(r31)
/* 80A23B84  48 00 00 F0 */	b lbl_80A23C74
lbl_80A23B88:
/* 80A23B88  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A23B8C  38 80 00 01 */	li r4, 1
/* 80A23B90  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A23B94  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A23B98  40 82 00 18 */	bne lbl_80A23BB0
/* 80A23B9C  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80A23BA0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A23BA4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A23BA8  41 82 00 08 */	beq lbl_80A23BB0
/* 80A23BAC  38 80 00 00 */	li r4, 0
lbl_80A23BB0:
/* 80A23BB0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A23BB4  41 82 00 C0 */	beq lbl_80A23C74
/* 80A23BB8  7F E3 FB 78 */	mr r3, r31
/* 80A23BBC  38 80 00 08 */	li r4, 8
/* 80A23BC0  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80A23BC4  38 A0 00 00 */	li r5, 0
/* 80A23BC8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A23BCC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A23BD0  7D 89 03 A6 */	mtctr r12
/* 80A23BD4  4E 80 04 21 */	bctrl 
/* 80A23BD8  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501D2@ha */
/* 80A23BDC  38 03 01 D2 */	addi r0, r3, 0x01D2 /* 0x000501D2@l */
/* 80A23BE0  90 01 00 08 */	stw r0, 8(r1)
/* 80A23BE4  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A23BE8  38 81 00 08 */	addi r4, r1, 8
/* 80A23BEC  38 A0 FF FF */	li r5, -1
/* 80A23BF0  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 80A23BF4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A23BF8  7D 89 03 A6 */	mtctr r12
/* 80A23BFC  4E 80 04 21 */	bctrl 
/* 80A23C00  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A23C04  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A23C08  38 00 00 04 */	li r0, 4
/* 80A23C0C  B0 1F 14 04 */	sth r0, 0x1404(r31)
/* 80A23C10  48 00 00 64 */	b lbl_80A23C74
lbl_80A23C14:
/* 80A23C14  C0 1E 02 38 */	lfs f0, 0x238(r30)
/* 80A23C18  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A23C1C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A23C20  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A23C24  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A23C28  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A23C2C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A23C30  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A23C34  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A23C38  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80A23C3C  38 81 00 0C */	addi r4, r1, 0xc
/* 80A23C40  38 A1 00 18 */	addi r5, r1, 0x18
/* 80A23C44  4B 72 D1 9D */	bl getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 80A23C48  2C 03 00 00 */	cmpwi r3, 0
/* 80A23C4C  41 82 00 18 */	beq lbl_80A23C64
/* 80A23C50  38 00 00 01 */	li r0, 1
/* 80A23C54  98 1F 14 68 */	stb r0, 0x1468(r31)
/* 80A23C58  38 00 FF FF */	li r0, -1
/* 80A23C5C  B0 1F 14 04 */	sth r0, 0x1404(r31)
/* 80A23C60  48 00 00 14 */	b lbl_80A23C74
lbl_80A23C64:
/* 80A23C64  7F E3 FB 78 */	mr r3, r31
/* 80A23C68  38 81 00 18 */	addi r4, r1, 0x18
/* 80A23C6C  38 A0 03 20 */	li r5, 0x320
/* 80A23C70  48 00 10 A1 */	bl _turn_pos__14daNpcKasiKyu_cFRC4cXyzs
lbl_80A23C74:
/* 80A23C74  38 60 00 01 */	li r3, 1
/* 80A23C78  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A23C7C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80A23C80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A23C84  7C 08 03 A6 */	mtlr r0
/* 80A23C88  38 21 00 30 */	addi r1, r1, 0x30
/* 80A23C8C  4E 80 00 20 */	blr 
