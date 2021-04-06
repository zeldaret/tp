lbl_8050A908:
/* 8050A908  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050A90C  7C 08 02 A6 */	mflr r0
/* 8050A910  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050A914  39 61 00 30 */	addi r11, r1, 0x30
/* 8050A918  4B E5 78 BD */	bl _savegpr_27
/* 8050A91C  7C 7E 1B 78 */	mr r30, r3
/* 8050A920  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 8050A924  3B E3 85 84 */	addi r31, r3, lit_4208@l /* 0x80518584@l */
/* 8050A928  80 1E 09 8C */	lwz r0, 0x98c(r30)
/* 8050A92C  90 01 00 08 */	stw r0, 8(r1)
/* 8050A930  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8050A934  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8050A938  38 81 00 08 */	addi r4, r1, 8
/* 8050A93C  4B B0 EE BD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8050A940  7C 7D 1B 79 */	or. r29, r3, r3
/* 8050A944  41 82 01 C0 */	beq lbl_8050AB04
/* 8050A948  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050A94C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050A950  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8050A954  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8050A958  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8050A95C  7D 89 03 A6 */	mtctr r12
/* 8050A960  4E 80 04 21 */	bctrl 
/* 8050A964  28 03 00 00 */	cmplwi r3, 0
/* 8050A968  41 82 00 58 */	beq lbl_8050A9C0
/* 8050A96C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050A970  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050A974  3B 83 56 B8 */	addi r28, r3, 0x56b8
/* 8050A978  3B 60 00 01 */	li r27, 1
/* 8050A97C  7F 83 E3 78 */	mr r3, r28
/* 8050A980  4B B6 8E 65 */	bl LockonTruth__12dAttention_cFv
/* 8050A984  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8050A988  40 82 00 14 */	bne lbl_8050A99C
/* 8050A98C  80 1C 03 34 */	lwz r0, 0x334(r28)
/* 8050A990  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 8050A994  40 82 00 08 */	bne lbl_8050A99C
/* 8050A998  3B 60 00 00 */	li r27, 0
lbl_8050A99C:
/* 8050A99C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8050A9A0  41 82 00 20 */	beq lbl_8050A9C0
/* 8050A9A4  7F 83 E3 78 */	mr r3, r28
/* 8050A9A8  38 80 00 00 */	li r4, 0
/* 8050A9AC  4B B6 8B 91 */	bl LockonTarget__12dAttention_cFl
/* 8050A9B0  7C 1E 18 40 */	cmplw r30, r3
/* 8050A9B4  40 82 00 0C */	bne lbl_8050A9C0
/* 8050A9B8  38 00 00 01 */	li r0, 1
/* 8050A9BC  98 1D 06 C0 */	stb r0, 0x6c0(r29)
lbl_8050A9C0:
/* 8050A9C0  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8050A9C4  2C 00 00 02 */	cmpwi r0, 2
/* 8050A9C8  41 82 00 CC */	beq lbl_8050AA94
/* 8050A9CC  40 80 00 14 */	bge lbl_8050A9E0
/* 8050A9D0  2C 00 00 00 */	cmpwi r0, 0
/* 8050A9D4  41 82 00 18 */	beq lbl_8050A9EC
/* 8050A9D8  40 80 00 68 */	bge lbl_8050AA40
/* 8050A9DC  48 00 01 28 */	b lbl_8050AB04
lbl_8050A9E0:
/* 8050A9E0  2C 00 00 04 */	cmpwi r0, 4
/* 8050A9E4  40 80 01 20 */	bge lbl_8050AB04
/* 8050A9E8  48 00 00 DC */	b lbl_8050AAC4
lbl_8050A9EC:
/* 8050A9EC  38 00 00 00 */	li r0, 0
/* 8050A9F0  90 1E 06 80 */	stw r0, 0x680(r30)
/* 8050A9F4  7F C3 F3 78 */	mr r3, r30
/* 8050A9F8  38 80 00 31 */	li r4, 0x31
/* 8050A9FC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8050AA00  38 A0 00 00 */	li r5, 0
/* 8050AA04  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050AA08  4B FF A1 CD */	bl anm_init__FP10e_rd_classifUcf
/* 8050AA0C  38 00 00 01 */	li r0, 1
/* 8050AA10  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050AA14  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F8@ha */
/* 8050AA18  38 03 00 F8 */	addi r0, r3, 0x00F8 /* 0x000700F8@l */
/* 8050AA1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8050AA20  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8050AA24  38 81 00 0C */	addi r4, r1, 0xc
/* 8050AA28  38 A0 FF FF */	li r5, -1
/* 8050AA2C  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 8050AA30  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050AA34  7D 89 03 A6 */	mtctr r12
/* 8050AA38  4E 80 04 21 */	bctrl 
/* 8050AA3C  48 00 00 C8 */	b lbl_8050AB04
lbl_8050AA40:
/* 8050AA40  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8050AA44  38 80 00 01 */	li r4, 1
/* 8050AA48  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050AA4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050AA50  40 82 00 18 */	bne lbl_8050AA68
/* 8050AA54  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050AA58  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050AA5C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050AA60  41 82 00 08 */	beq lbl_8050AA68
/* 8050AA64  38 80 00 00 */	li r4, 0
lbl_8050AA68:
/* 8050AA68  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050AA6C  41 82 00 98 */	beq lbl_8050AB04
/* 8050AA70  38 00 00 02 */	li r0, 2
/* 8050AA74  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050AA78  7F C3 F3 78 */	mr r3, r30
/* 8050AA7C  38 80 00 32 */	li r4, 0x32
/* 8050AA80  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8050AA84  38 A0 00 00 */	li r5, 0
/* 8050AA88  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050AA8C  4B FF A1 49 */	bl anm_init__FP10e_rd_classifUcf
/* 8050AA90  48 00 00 74 */	b lbl_8050AB04
lbl_8050AA94:
/* 8050AA94  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 8050AA98  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8050AA9C  41 82 00 68 */	beq lbl_8050AB04
/* 8050AAA0  7F C3 F3 78 */	mr r3, r30
/* 8050AAA4  38 80 00 33 */	li r4, 0x33
/* 8050AAA8  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8050AAAC  38 A0 00 00 */	li r5, 0
/* 8050AAB0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050AAB4  4B FF A1 21 */	bl anm_init__FP10e_rd_classifUcf
/* 8050AAB8  38 00 00 03 */	li r0, 3
/* 8050AABC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050AAC0  48 00 00 44 */	b lbl_8050AB04
lbl_8050AAC4:
/* 8050AAC4  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8050AAC8  38 80 00 01 */	li r4, 1
/* 8050AACC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050AAD0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050AAD4  40 82 00 18 */	bne lbl_8050AAEC
/* 8050AAD8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050AADC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050AAE0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050AAE4  41 82 00 08 */	beq lbl_8050AAEC
/* 8050AAE8  38 80 00 00 */	li r4, 0
lbl_8050AAEC:
/* 8050AAEC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050AAF0  41 82 00 14 */	beq lbl_8050AB04
/* 8050AAF4  38 00 00 0D */	li r0, 0xd
/* 8050AAF8  B0 1E 09 72 */	sth r0, 0x972(r30)
/* 8050AAFC  38 00 00 00 */	li r0, 0
/* 8050AB00  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8050AB04:
/* 8050AB04  39 61 00 30 */	addi r11, r1, 0x30
/* 8050AB08  4B E5 77 19 */	bl _restgpr_27
/* 8050AB0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050AB10  7C 08 03 A6 */	mtlr r0
/* 8050AB14  38 21 00 30 */	addi r1, r1, 0x30
/* 8050AB18  4E 80 00 20 */	blr 
