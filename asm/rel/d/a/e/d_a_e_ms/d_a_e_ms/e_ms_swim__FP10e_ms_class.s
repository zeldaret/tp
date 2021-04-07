lbl_80726F58:
/* 80726F58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80726F5C  7C 08 02 A6 */	mflr r0
/* 80726F60  90 01 00 34 */	stw r0, 0x34(r1)
/* 80726F64  39 61 00 30 */	addi r11, r1, 0x30
/* 80726F68  4B C3 B2 75 */	bl _savegpr_29
/* 80726F6C  7C 7F 1B 78 */	mr r31, r3
/* 80726F70  3C 80 80 73 */	lis r4, lit_3800@ha /* 0x80729504@ha */
/* 80726F74  3B C4 95 04 */	addi r30, r4, lit_3800@l /* 0x80729504@l */
/* 80726F78  3B A0 00 00 */	li r29, 0
/* 80726F7C  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 80726F80  2C 00 00 01 */	cmpwi r0, 1
/* 80726F84  41 82 00 4C */	beq lbl_80726FD0
/* 80726F88  40 80 00 A4 */	bge lbl_8072702C
/* 80726F8C  2C 00 00 00 */	cmpwi r0, 0
/* 80726F90  40 80 00 08 */	bge lbl_80726F98
/* 80726F94  48 00 00 98 */	b lbl_8072702C
lbl_80726F98:
/* 80726F98  38 80 00 0F */	li r4, 0xf
/* 80726F9C  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 80726FA0  38 A0 00 02 */	li r5, 2
/* 80726FA4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80726FA8  4B FF EC 2D */	bl anm_init__FP10e_ms_classifUcf
/* 80726FAC  A8 7F 05 B4 */	lha r3, 0x5b4(r31)
/* 80726FB0  38 03 00 01 */	addi r0, r3, 1
/* 80726FB4  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80726FB8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80726FBC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80726FC0  7F E3 FB 78 */	mr r3, r31
/* 80726FC4  4B FF FA AD */	bl search_ground_1__FP10e_ms_class
/* 80726FC8  38 00 00 32 */	li r0, 0x32
/* 80726FCC  B0 1F 06 88 */	sth r0, 0x688(r31)
lbl_80726FD0:
/* 80726FD0  3B A0 03 00 */	li r29, 0x300
/* 80726FD4  A8 1F 06 7C */	lha r0, 0x67c(r31)
/* 80726FD8  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 80726FDC  40 82 00 20 */	bne lbl_80726FFC
/* 80726FE0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80726FE4  4B B4 09 71 */	bl cM_rndF__Ff
/* 80726FE8  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80726FEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80726FF0  40 80 00 0C */	bge lbl_80726FFC
/* 80726FF4  7F E3 FB 78 */	mr r3, r31
/* 80726FF8  4B FF FA 79 */	bl search_ground_1__FP10e_ms_class
lbl_80726FFC:
/* 80726FFC  38 61 00 08 */	addi r3, r1, 8
/* 80727000  38 9F 05 BC */	addi r4, r31, 0x5bc
/* 80727004  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80727008  4B B3 FB 2D */	bl __mi__4cXyzCFRC3Vec
/* 8072700C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80727010  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80727014  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80727018  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8072701C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80727020  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80727024  4B B4 06 51 */	bl cM_atan2s__Fff
/* 80727028  B0 7F 05 C8 */	sth r3, 0x5c8(r31)
lbl_8072702C:
/* 8072702C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80727030  3C 80 80 73 */	lis r4, l_HIO@ha /* 0x8072980C@ha */
/* 80727034  38 84 98 0C */	addi r4, r4, l_HIO@l /* 0x8072980C@l */
/* 80727038  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 8072703C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80727040  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 80727044  4B B4 89 F9 */	bl cLib_addCalc2__FPffff
/* 80727048  38 7F 04 DE */	addi r3, r31, 0x4de
/* 8072704C  A8 9F 05 C8 */	lha r4, 0x5c8(r31)
/* 80727050  38 A0 00 20 */	li r5, 0x20
/* 80727054  7F A6 EB 78 */	mr r6, r29
/* 80727058  4B B4 95 B1 */	bl cLib_addCalcAngleS2__FPssss
/* 8072705C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80727060  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80727064  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80727068  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 8072706C  C0 3F 06 90 */	lfs f1, 0x690(r31)
/* 80727070  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80727074  EC 21 00 28 */	fsubs f1, f1, f0
/* 80727078  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8072707C  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80727080  4B B4 89 BD */	bl cLib_addCalc2__FPffff
/* 80727084  A8 1F 06 88 */	lha r0, 0x688(r31)
/* 80727088  2C 00 00 00 */	cmpwi r0, 0
/* 8072708C  40 82 00 5C */	bne lbl_807270E8
/* 80727090  80 1F 07 04 */	lwz r0, 0x704(r31)
/* 80727094  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80727098  41 82 00 50 */	beq lbl_807270E8
/* 8072709C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 807270A0  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 807270A4  EC 01 00 2A */	fadds f0, f1, f0
/* 807270A8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807270AC  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 807270B0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 807270B4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 807270B8  38 00 00 00 */	li r0, 0
/* 807270BC  B0 1F 06 7E */	sth r0, 0x67e(r31)
/* 807270C0  7F E3 FB 78 */	mr r3, r31
/* 807270C4  38 80 00 0E */	li r4, 0xe
/* 807270C8  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 807270CC  38 A0 00 02 */	li r5, 2
/* 807270D0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807270D4  4B FF EB 01 */	bl anm_init__FP10e_ms_classifUcf
/* 807270D8  38 00 00 02 */	li r0, 2
/* 807270DC  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807270E0  38 00 00 14 */	li r0, 0x14
/* 807270E4  B0 1F 06 86 */	sth r0, 0x686(r31)
lbl_807270E8:
/* 807270E8  39 61 00 30 */	addi r11, r1, 0x30
/* 807270EC  4B C3 B1 3D */	bl _restgpr_29
/* 807270F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807270F4  7C 08 03 A6 */	mtlr r0
/* 807270F8  38 21 00 30 */	addi r1, r1, 0x30
/* 807270FC  4E 80 00 20 */	blr 
