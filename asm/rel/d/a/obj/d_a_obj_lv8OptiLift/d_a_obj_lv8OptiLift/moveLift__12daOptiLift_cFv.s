lbl_80C8A848:
/* 80C8A848  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8A84C  7C 08 02 A6 */	mflr r0
/* 80C8A850  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8A854  39 61 00 20 */	addi r11, r1, 0x20
/* 80C8A858  4B 6D 79 85 */	bl _savegpr_29
/* 80C8A85C  7C 7E 1B 78 */	mr r30, r3
/* 80C8A860  3C 60 80 C9 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80C8BA44@ha */
/* 80C8A864  3B E3 BA 44 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80C8BA44@l */
/* 80C8A868  88 1E 05 C8 */	lbz r0, 0x5c8(r30)
/* 80C8A86C  28 00 00 FF */	cmplwi r0, 0xff
/* 80C8A870  41 82 02 3C */	beq lbl_80C8AAAC
/* 80C8A874  3C 60 80 C9 */	lis r3, data_80C8BC00@ha /* 0x80C8BC00@ha */
/* 80C8A878  8C 03 BC 00 */	lbzu r0, data_80C8BC00@l(r3)  /* 0x80C8BC00@l */
/* 80C8A87C  7C 00 07 75 */	extsb. r0, r0
/* 80C8A880  40 82 00 E8 */	bne lbl_80C8A968
/* 80C8A884  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80C8A888  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80C8A88C  90 9F 00 8C */	stw r4, 0x8c(r31)
/* 80C8A890  90 1F 00 90 */	stw r0, 0x90(r31)
/* 80C8A894  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80C8A898  90 1F 00 94 */	stw r0, 0x94(r31)
/* 80C8A89C  38 BF 00 8C */	addi r5, r31, 0x8c
/* 80C8A8A0  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 80C8A8A4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80C8A8A8  90 85 00 0C */	stw r4, 0xc(r5)
/* 80C8A8AC  90 05 00 10 */	stw r0, 0x10(r5)
/* 80C8A8B0  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80C8A8B4  90 05 00 14 */	stw r0, 0x14(r5)
/* 80C8A8B8  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 80C8A8BC  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80C8A8C0  90 85 00 18 */	stw r4, 0x18(r5)
/* 80C8A8C4  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80C8A8C8  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80C8A8CC  90 05 00 20 */	stw r0, 0x20(r5)
/* 80C8A8D0  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 80C8A8D4  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80C8A8D8  90 85 00 24 */	stw r4, 0x24(r5)
/* 80C8A8DC  90 05 00 28 */	stw r0, 0x28(r5)
/* 80C8A8E0  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80C8A8E4  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80C8A8E8  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 80C8A8EC  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 80C8A8F0  90 85 00 30 */	stw r4, 0x30(r5)
/* 80C8A8F4  90 05 00 34 */	stw r0, 0x34(r5)
/* 80C8A8F8  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 80C8A8FC  90 05 00 38 */	stw r0, 0x38(r5)
/* 80C8A900  80 9F 00 5C */	lwz r4, 0x5c(r31)
/* 80C8A904  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 80C8A908  90 85 00 3C */	stw r4, 0x3c(r5)
/* 80C8A90C  90 05 00 40 */	stw r0, 0x40(r5)
/* 80C8A910  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 80C8A914  90 05 00 44 */	stw r0, 0x44(r5)
/* 80C8A918  80 9F 00 68 */	lwz r4, 0x68(r31)
/* 80C8A91C  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80C8A920  90 85 00 48 */	stw r4, 0x48(r5)
/* 80C8A924  90 05 00 4C */	stw r0, 0x4c(r5)
/* 80C8A928  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 80C8A92C  90 05 00 50 */	stw r0, 0x50(r5)
/* 80C8A930  80 9F 00 74 */	lwz r4, 0x74(r31)
/* 80C8A934  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 80C8A938  90 85 00 54 */	stw r4, 0x54(r5)
/* 80C8A93C  90 05 00 58 */	stw r0, 0x58(r5)
/* 80C8A940  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 80C8A944  90 05 00 5C */	stw r0, 0x5c(r5)
/* 80C8A948  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 80C8A94C  80 1F 00 84 */	lwz r0, 0x84(r31)
/* 80C8A950  90 85 00 60 */	stw r4, 0x60(r5)
/* 80C8A954  90 05 00 64 */	stw r0, 0x64(r5)
/* 80C8A958  80 1F 00 88 */	lwz r0, 0x88(r31)
/* 80C8A95C  90 05 00 68 */	stw r0, 0x68(r5)
/* 80C8A960  38 00 00 01 */	li r0, 1
/* 80C8A964  98 03 00 00 */	stb r0, 0(r3)
lbl_80C8A968:
/* 80C8A968  88 7E 05 EB */	lbz r3, 0x5eb(r30)
/* 80C8A96C  88 1E 05 EC */	lbz r0, 0x5ec(r30)
/* 80C8A970  7C 03 00 40 */	cmplw r3, r0
/* 80C8A974  41 82 00 38 */	beq lbl_80C8A9AC
/* 80C8A978  88 1E 05 E9 */	lbz r0, 0x5e9(r30)
/* 80C8A97C  28 00 00 00 */	cmplwi r0, 0
/* 80C8A980  41 82 00 18 */	beq lbl_80C8A998
/* 80C8A984  28 03 00 00 */	cmplwi r3, 0
/* 80C8A988  40 82 00 10 */	bne lbl_80C8A998
/* 80C8A98C  88 7E 06 15 */	lbz r3, 0x615(r30)
/* 80C8A990  38 03 00 01 */	addi r0, r3, 1
/* 80C8A994  98 1E 06 15 */	stb r0, 0x615(r30)
lbl_80C8A998:
/* 80C8A998  88 1E 05 EB */	lbz r0, 0x5eb(r30)
/* 80C8A99C  28 00 00 01 */	cmplwi r0, 1
/* 80C8A9A0  40 82 00 0C */	bne lbl_80C8A9AC
/* 80C8A9A4  38 00 00 00 */	li r0, 0
/* 80C8A9A8  98 1E 06 15 */	stb r0, 0x615(r30)
lbl_80C8A9AC:
/* 80C8A9AC  88 7E 06 15 */	lbz r3, 0x615(r30)
/* 80C8A9B0  28 03 00 00 */	cmplwi r3, 0
/* 80C8A9B4  41 82 00 44 */	beq lbl_80C8A9F8
/* 80C8A9B8  88 1E 05 EB */	lbz r0, 0x5eb(r30)
/* 80C8A9BC  28 00 00 00 */	cmplwi r0, 0
/* 80C8A9C0  40 82 00 38 */	bne lbl_80C8A9F8
/* 80C8A9C4  38 03 00 01 */	addi r0, r3, 1
/* 80C8A9C8  98 1E 06 15 */	stb r0, 0x615(r30)
/* 80C8A9CC  88 1E 06 15 */	lbz r0, 0x615(r30)
/* 80C8A9D0  28 00 00 03 */	cmplwi r0, 3
/* 80C8A9D4  40 82 00 24 */	bne lbl_80C8A9F8
/* 80C8A9D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8A9DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8A9E0  88 9E 05 C4 */	lbz r4, 0x5c4(r30)
/* 80C8A9E4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C8A9E8  7C 05 07 74 */	extsb r5, r0
/* 80C8A9EC  4B 3A A8 C5 */	bl offSwitch__10dSv_info_cFii
/* 80C8A9F0  38 00 00 00 */	li r0, 0
/* 80C8A9F4  98 1E 06 15 */	stb r0, 0x615(r30)
lbl_80C8A9F8:
/* 80C8A9F8  88 1E 06 16 */	lbz r0, 0x616(r30)
/* 80C8A9FC  28 00 00 00 */	cmplwi r0, 0
/* 80C8AA00  40 82 00 88 */	bne lbl_80C8AA88
/* 80C8AA04  8B BE 05 E9 */	lbz r29, 0x5e9(r30)
/* 80C8AA08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8AA0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8AA10  88 9E 05 C4 */	lbz r4, 0x5c4(r30)
/* 80C8AA14  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C8AA18  7C 05 07 74 */	extsb r5, r0
/* 80C8AA1C  4B 3A A9 45 */	bl isSwitch__10dSv_info_cCFii
/* 80C8AA20  98 7E 05 E9 */	stb r3, 0x5e9(r30)
/* 80C8AA24  88 1E 05 E9 */	lbz r0, 0x5e9(r30)
/* 80C8AA28  7C 1D 00 40 */	cmplw r29, r0
/* 80C8AA2C  41 82 00 5C */	beq lbl_80C8AA88
/* 80C8AA30  28 00 00 00 */	cmplwi r0, 0
/* 80C8AA34  41 82 00 4C */	beq lbl_80C8AA80
/* 80C8AA38  38 00 00 00 */	li r0, 0
/* 80C8AA3C  98 1E 06 15 */	stb r0, 0x615(r30)
/* 80C8AA40  88 1E 05 E8 */	lbz r0, 0x5e8(r30)
/* 80C8AA44  28 00 00 06 */	cmplwi r0, 6
/* 80C8AA48  40 82 00 2C */	bne lbl_80C8AA74
/* 80C8AA4C  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80C8AA50  28 04 00 00 */	cmplwi r4, 0
/* 80C8AA54  41 82 00 14 */	beq lbl_80C8AA68
/* 80C8AA58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8AA5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8AA60  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C8AA64  4B 3E 97 ED */	bl Release__4cBgSFP9dBgW_Base
lbl_80C8AA68:
/* 80C8AA68  7F C3 F3 78 */	mr r3, r30
/* 80C8AA6C  48 00 0A 19 */	bl init_modeInitSet2__12daOptiLift_cFv
/* 80C8AA70  48 00 00 18 */	b lbl_80C8AA88
lbl_80C8AA74:
/* 80C8AA74  7F C3 F3 78 */	mr r3, r30
/* 80C8AA78  48 00 06 89 */	bl init_modeMoveInit__12daOptiLift_cFv
/* 80C8AA7C  48 00 00 0C */	b lbl_80C8AA88
lbl_80C8AA80:
/* 80C8AA80  7F C3 F3 78 */	mr r3, r30
/* 80C8AA84  48 00 08 15 */	bl init_modeStop__12daOptiLift_cFv
lbl_80C8AA88:
/* 80C8AA88  88 1E 05 EB */	lbz r0, 0x5eb(r30)
/* 80C8AA8C  98 1E 05 EC */	stb r0, 0x5ec(r30)
/* 80C8AA90  7F C3 F3 78 */	mr r3, r30
/* 80C8AA94  88 1E 05 E8 */	lbz r0, 0x5e8(r30)
/* 80C8AA98  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C8AA9C  39 9F 00 8C */	addi r12, r31, 0x8c
/* 80C8AAA0  7D 8C 02 14 */	add r12, r12, r0
/* 80C8AAA4  4B 6D 75 E1 */	bl __ptmf_scall
/* 80C8AAA8  60 00 00 00 */	nop 
lbl_80C8AAAC:
/* 80C8AAAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C8AAB0  4B 6D 77 79 */	bl _restgpr_29
/* 80C8AAB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8AAB8  7C 08 03 A6 */	mtlr r0
/* 80C8AABC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C8AAC0  4E 80 00 20 */	blr 
