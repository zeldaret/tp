lbl_800ED90C:
/* 800ED90C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800ED910  7C 08 02 A6 */	mflr r0
/* 800ED914  90 01 00 24 */	stw r0, 0x24(r1)
/* 800ED918  39 61 00 20 */	addi r11, r1, 0x20
/* 800ED91C  48 27 48 C1 */	bl _savegpr_29
/* 800ED920  7C 7E 1B 78 */	mr r30, r3
/* 800ED924  83 E3 28 18 */	lwz r31, 0x2818(r3)
/* 800ED928  28 1F 00 00 */	cmplwi r31, 0
/* 800ED92C  41 82 00 14 */	beq lbl_800ED940
/* 800ED930  7F E3 FB 78 */	mr r3, r31
/* 800ED934  4B F4 A4 35 */	bl checkDownDamage__10e_wb_classFv
/* 800ED938  2C 03 00 00 */	cmpwi r3, 0
/* 800ED93C  41 82 00 14 */	beq lbl_800ED950
lbl_800ED940:
/* 800ED940  7F C3 F3 78 */	mr r3, r30
/* 800ED944  48 00 1A 19 */	bl boarForceGetOff__9daAlink_cFv
/* 800ED948  38 60 00 00 */	li r3, 0
/* 800ED94C  48 00 00 C0 */	b lbl_800EDA0C
lbl_800ED950:
/* 800ED950  7F E3 FB 78 */	mr r3, r31
/* 800ED954  4B F4 A4 41 */	bl checkNormalRideMode__10e_wb_classCFv
/* 800ED958  2C 03 00 00 */	cmpwi r3, 0
/* 800ED95C  41 82 00 14 */	beq lbl_800ED970
/* 800ED960  7F C3 F3 78 */	mr r3, r30
/* 800ED964  48 00 30 1D */	bl procHorseWaitInit__9daAlink_cFv
/* 800ED968  38 60 00 00 */	li r3, 0
/* 800ED96C  48 00 00 A0 */	b lbl_800EDA0C
lbl_800ED970:
/* 800ED970  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 800ED974  80 63 00 04 */	lwz r3, 4(r3)
/* 800ED978  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800ED97C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800ED980  3B A3 02 D0 */	addi r29, r3, 0x2d0
/* 800ED984  38 00 00 60 */	li r0, 0x60
/* 800ED988  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800ED98C  7F A3 EB 78 */	mr r3, r29
/* 800ED990  3C 80 80 39 */	lis r4, localOffset_18237@ha
/* 800ED994  38 84 19 6C */	addi r4, r4, localOffset_18237@l
/* 800ED998  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 800ED99C  48 25 93 D1 */	bl PSMTXMultVec
/* 800ED9A0  7F A3 EB 78 */	mr r3, r29
/* 800ED9A4  38 81 00 08 */	addi r4, r1, 8
/* 800ED9A8  4B F1 F2 59 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 800ED9AC  A8 01 00 0C */	lha r0, 0xc(r1)
/* 800ED9B0  7C 00 00 D0 */	neg r0, r0
/* 800ED9B4  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 800ED9B8  A8 61 00 0A */	lha r3, 0xa(r1)
/* 800ED9BC  38 03 40 00 */	addi r0, r3, 0x4000
/* 800ED9C0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 800ED9C4  A8 01 00 08 */	lha r0, 8(r1)
/* 800ED9C8  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 800ED9CC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800ED9D0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800ED9D4  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800ED9D8  28 00 00 53 */	cmplwi r0, 0x53
/* 800ED9DC  40 82 00 2C */	bne lbl_800EDA08
/* 800ED9E0  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800ED9E4  2C 00 00 00 */	cmpwi r0, 0
/* 800ED9E8  41 82 00 20 */	beq lbl_800EDA08
/* 800ED9EC  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 800ED9F0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800ED9F4  D0 1E 1F E0 */	stfs f0, 0x1fe0(r30)
/* 800ED9F8  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 800ED9FC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800EDA00  80 7E 1F 2C */	lwz r3, 0x1f2c(r30)
/* 800EDA04  D0 03 00 08 */	stfs f0, 8(r3)
lbl_800EDA08:
/* 800EDA08  38 60 00 01 */	li r3, 1
lbl_800EDA0C:
/* 800EDA0C  39 61 00 20 */	addi r11, r1, 0x20
/* 800EDA10  48 27 48 19 */	bl _restgpr_29
/* 800EDA14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EDA18  7C 08 03 A6 */	mtlr r0
/* 800EDA1C  38 21 00 20 */	addi r1, r1, 0x20
/* 800EDA20  4E 80 00 20 */	blr 
