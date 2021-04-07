lbl_805017FC:
/* 805017FC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80501800  7C 08 02 A6 */	mflr r0
/* 80501804  90 01 00 94 */	stw r0, 0x94(r1)
/* 80501808  39 61 00 90 */	addi r11, r1, 0x90
/* 8050180C  4B E6 09 D1 */	bl _savegpr_29
/* 80501810  7C 7D 1B 78 */	mr r29, r3
/* 80501814  3B FD 0B 1C */	addi r31, r29, 0xb1c
/* 80501818  38 61 00 08 */	addi r3, r1, 8
/* 8050181C  4B B7 64 4D */	bl __ct__11dBgS_LinChkFv
/* 80501820  3B C0 00 00 */	li r30, 0
lbl_80501824:
/* 80501824  88 7F 00 53 */	lbz r3, 0x53(r31)
/* 80501828  28 03 00 00 */	cmplwi r3, 0
/* 8050182C  41 82 00 BC */	beq lbl_805018E8
/* 80501830  88 1D 0B 18 */	lbz r0, 0xb18(r29)
/* 80501834  2C 00 00 03 */	cmpwi r0, 3
/* 80501838  40 82 00 18 */	bne lbl_80501850
/* 8050183C  28 03 00 01 */	cmplwi r3, 1
/* 80501840  40 82 00 10 */	bne lbl_80501850
/* 80501844  7F A3 EB 78 */	mr r3, r29
/* 80501848  7F E4 FB 78 */	mr r4, r31
/* 8050184C  4B FF F9 81 */	bl hahen_normal__FP12e_nest_classP12nest_hahen_s
lbl_80501850:
/* 80501850  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80501854  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80501858  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 8050185C  38 60 00 00 */	li r3, 0
/* 80501860  4B D6 F5 FD */	bl MtxTrans__FfffUc
/* 80501864  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80501868  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8050186C  80 63 00 00 */	lwz r3, 0(r3)
/* 80501870  A8 9F 00 3A */	lha r4, 0x3a(r31)
/* 80501874  4B B0 AB 29 */	bl mDoMtx_XrotM__FPA4_fs
/* 80501878  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8050187C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80501880  80 63 00 00 */	lwz r3, 0(r3)
/* 80501884  A8 9F 00 3C */	lha r4, 0x3c(r31)
/* 80501888  4B B0 AC 45 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8050188C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80501890  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80501894  80 63 00 00 */	lwz r3, 0(r3)
/* 80501898  A8 9F 00 36 */	lha r4, 0x36(r31)
/* 8050189C  38 04 40 00 */	addi r0, r4, 0x4000
/* 805018A0  7C 04 07 34 */	extsh r4, r0
/* 805018A4  4B B0 AB 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 805018A8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805018AC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805018B0  80 63 00 00 */	lwz r3, 0(r3)
/* 805018B4  A8 9F 00 34 */	lha r4, 0x34(r31)
/* 805018B8  4B B0 AC 15 */	bl mDoMtx_ZrotM__FPA4_fs
/* 805018BC  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805018C0  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 805018C4  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 805018C8  38 60 00 01 */	li r3, 1
/* 805018CC  4B D6 F5 D9 */	bl MtxScale__FfffUc
/* 805018D0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805018D4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805018D8  80 63 00 00 */	lwz r3, 0(r3)
/* 805018DC  80 9F 00 00 */	lwz r4, 0(r31)
/* 805018E0  38 84 00 24 */	addi r4, r4, 0x24
/* 805018E4  4B E4 4B CD */	bl PSMTXCopy
lbl_805018E8:
/* 805018E8  3B DE 00 01 */	addi r30, r30, 1
/* 805018EC  2C 1E 00 05 */	cmpwi r30, 5
/* 805018F0  3B FF 00 58 */	addi r31, r31, 0x58
/* 805018F4  41 80 FF 30 */	blt lbl_80501824
/* 805018F8  88 1D 0B 18 */	lbz r0, 0xb18(r29)
/* 805018FC  2C 00 00 02 */	cmpwi r0, 2
/* 80501900  40 82 00 0C */	bne lbl_8050190C
/* 80501904  38 00 00 03 */	li r0, 3
/* 80501908  98 1D 0B 18 */	stb r0, 0xb18(r29)
lbl_8050190C:
/* 8050190C  38 61 00 08 */	addi r3, r1, 8
/* 80501910  38 80 FF FF */	li r4, -1
/* 80501914  4B B7 63 C9 */	bl __dt__11dBgS_LinChkFv
/* 80501918  39 61 00 90 */	addi r11, r1, 0x90
/* 8050191C  4B E6 09 0D */	bl _restgpr_29
/* 80501920  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80501924  7C 08 03 A6 */	mtlr r0
/* 80501928  38 21 00 90 */	addi r1, r1, 0x90
/* 8050192C  4E 80 00 20 */	blr 
