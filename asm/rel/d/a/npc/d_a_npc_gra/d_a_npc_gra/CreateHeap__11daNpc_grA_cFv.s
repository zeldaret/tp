lbl_809BF0A8:
/* 809BF0A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809BF0AC  7C 08 02 A6 */	mflr r0
/* 809BF0B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809BF0B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809BF0B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809BF0BC  7C 7E 1B 78 */	mr r30, r3
/* 809BF0C0  3B E0 00 00 */	li r31, 0
/* 809BF0C4  88 03 09 F4 */	lbz r0, 0x9f4(r3)
/* 809BF0C8  28 00 00 00 */	cmplwi r0, 0
/* 809BF0CC  41 82 00 4C */	beq lbl_809BF118
/* 809BF0D0  3C 60 80 9D */	lis r3, l_bmdGetParamList@ha
/* 809BF0D4  38 63 A6 34 */	addi r3, r3, l_bmdGetParamList@l
/* 809BF0D8  80 83 00 08 */	lwz r4, 8(r3)
/* 809BF0DC  2C 04 00 00 */	cmpwi r4, 0
/* 809BF0E0  41 80 00 78 */	blt lbl_809BF158
/* 809BF0E4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 809BF0E8  54 00 10 3A */	slwi r0, r0, 2
/* 809BF0EC  3C 60 80 9D */	lis r3, l_resNames@ha
/* 809BF0F0  38 63 AA D4 */	addi r3, r3, l_resNames@l
/* 809BF0F4  7C 63 00 2E */	lwzx r3, r3, r0
/* 809BF0F8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809BF0FC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809BF100  3C A5 00 02 */	addis r5, r5, 2
/* 809BF104  38 C0 00 80 */	li r6, 0x80
/* 809BF108  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809BF10C  4B 67 D1 E0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809BF110  7C 7F 1B 78 */	mr r31, r3
/* 809BF114  48 00 00 44 */	b lbl_809BF158
lbl_809BF118:
/* 809BF118  3C 60 80 9D */	lis r3, l_bmdGetParamList@ha
/* 809BF11C  84 83 A6 34 */	lwzu r4, l_bmdGetParamList@l(r3)
/* 809BF120  2C 04 00 00 */	cmpwi r4, 0
/* 809BF124  41 80 00 34 */	blt lbl_809BF158
/* 809BF128  80 03 00 04 */	lwz r0, 4(r3)
/* 809BF12C  54 00 10 3A */	slwi r0, r0, 2
/* 809BF130  3C 60 80 9D */	lis r3, l_resNames@ha
/* 809BF134  38 63 AA D4 */	addi r3, r3, l_resNames@l
/* 809BF138  7C 63 00 2E */	lwzx r3, r3, r0
/* 809BF13C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809BF140  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809BF144  3C A5 00 02 */	addis r5, r5, 2
/* 809BF148  38 C0 00 80 */	li r6, 0x80
/* 809BF14C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809BF150  4B 67 D1 9C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809BF154  7C 7F 1B 78 */	mr r31, r3
lbl_809BF158:
/* 809BF158  38 60 00 58 */	li r3, 0x58
/* 809BF15C  4B 90 FA F0 */	b __nw__FUl
/* 809BF160  7C 60 1B 79 */	or. r0, r3, r3
/* 809BF164  41 82 00 4C */	beq lbl_809BF1B0
/* 809BF168  38 1E 0B 48 */	addi r0, r30, 0xb48
/* 809BF16C  90 01 00 08 */	stw r0, 8(r1)
/* 809BF170  3C 00 00 08 */	lis r0, 8
/* 809BF174  90 01 00 0C */	stw r0, 0xc(r1)
/* 809BF178  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 809BF17C  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 809BF180  90 01 00 10 */	stw r0, 0x10(r1)
/* 809BF184  7F E4 FB 78 */	mr r4, r31
/* 809BF188  38 A0 00 00 */	li r5, 0
/* 809BF18C  38 C0 00 00 */	li r6, 0
/* 809BF190  38 E0 00 00 */	li r7, 0
/* 809BF194  39 00 FF FF */	li r8, -1
/* 809BF198  3D 20 80 9D */	lis r9, lit_4610@ha
/* 809BF19C  C0 29 9E 30 */	lfs f1, lit_4610@l(r9)
/* 809BF1A0  39 20 00 00 */	li r9, 0
/* 809BF1A4  39 40 FF FF */	li r10, -1
/* 809BF1A8  4B 65 16 28 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809BF1AC  7C 60 1B 78 */	mr r0, r3
lbl_809BF1B0:
/* 809BF1B0  90 1E 05 68 */	stw r0, 0x568(r30)
/* 809BF1B4  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809BF1B8  28 03 00 00 */	cmplwi r3, 0
/* 809BF1BC  41 82 00 1C */	beq lbl_809BF1D8
/* 809BF1C0  80 03 00 04 */	lwz r0, 4(r3)
/* 809BF1C4  28 00 00 00 */	cmplwi r0, 0
/* 809BF1C8  40 82 00 10 */	bne lbl_809BF1D8
/* 809BF1CC  4B 65 21 44 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 809BF1D0  38 00 00 00 */	li r0, 0
/* 809BF1D4  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_809BF1D8:
/* 809BF1D8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809BF1DC  28 03 00 00 */	cmplwi r3, 0
/* 809BF1E0  40 82 00 0C */	bne lbl_809BF1EC
/* 809BF1E4  38 60 00 00 */	li r3, 0
/* 809BF1E8  48 00 02 18 */	b lbl_809BF400
lbl_809BF1EC:
/* 809BF1EC  80 A3 00 04 */	lwz r5, 4(r3)
/* 809BF1F0  38 C0 00 00 */	li r6, 0
/* 809BF1F4  3C 60 80 9C */	lis r3, ctrlJointCallBack__11daNpc_grA_cFP8J3DJointi@ha
/* 809BF1F8  38 83 F7 58 */	addi r4, r3, ctrlJointCallBack__11daNpc_grA_cFP8J3DJointi@l
/* 809BF1FC  48 00 00 18 */	b lbl_809BF214
lbl_809BF200:
/* 809BF200  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 809BF204  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809BF208  7C 63 00 2E */	lwzx r3, r3, r0
/* 809BF20C  90 83 00 04 */	stw r4, 4(r3)
/* 809BF210  38 C6 00 01 */	addi r6, r6, 1
lbl_809BF214:
/* 809BF214  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809BF218  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 809BF21C  7C 03 00 40 */	cmplw r3, r0
/* 809BF220  41 80 FF E0 */	blt lbl_809BF200
/* 809BF224  93 C5 00 14 */	stw r30, 0x14(r5)
/* 809BF228  38 60 FF FF */	li r3, -1
/* 809BF22C  3F E0 00 08 */	lis r31, 8
/* 809BF230  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 809BF234  2C 00 00 0A */	cmpwi r0, 0xa
/* 809BF238  41 82 00 28 */	beq lbl_809BF260
/* 809BF23C  40 80 00 2C */	bge lbl_809BF268
/* 809BF240  2C 00 00 07 */	cmpwi r0, 7
/* 809BF244  41 82 00 0C */	beq lbl_809BF250
/* 809BF248  40 80 00 10 */	bge lbl_809BF258
/* 809BF24C  48 00 00 1C */	b lbl_809BF268
lbl_809BF250:
/* 809BF250  38 60 00 02 */	li r3, 2
/* 809BF254  48 00 00 14 */	b lbl_809BF268
lbl_809BF258:
/* 809BF258  38 60 00 04 */	li r3, 4
/* 809BF25C  48 00 00 0C */	b lbl_809BF268
lbl_809BF260:
/* 809BF260  38 60 00 03 */	li r3, 3
/* 809BF264  3B E0 00 00 */	li r31, 0
lbl_809BF268:
/* 809BF268  2C 03 00 00 */	cmpwi r3, 0
/* 809BF26C  40 81 00 7C */	ble lbl_809BF2E8
/* 809BF270  54 65 18 38 */	slwi r5, r3, 3
/* 809BF274  3C 60 80 9D */	lis r3, l_bmdGetParamList@ha
/* 809BF278  38 83 A6 34 */	addi r4, r3, l_bmdGetParamList@l
/* 809BF27C  7C 64 2A 14 */	add r3, r4, r5
/* 809BF280  80 03 00 04 */	lwz r0, 4(r3)
/* 809BF284  54 00 10 3A */	slwi r0, r0, 2
/* 809BF288  3C 60 80 9D */	lis r3, l_resNames@ha
/* 809BF28C  38 63 AA D4 */	addi r3, r3, l_resNames@l
/* 809BF290  7C 63 00 2E */	lwzx r3, r3, r0
/* 809BF294  7C 84 28 2E */	lwzx r4, r4, r5
/* 809BF298  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809BF29C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809BF2A0  3C A5 00 02 */	addis r5, r5, 2
/* 809BF2A4  38 C0 00 80 */	li r6, 0x80
/* 809BF2A8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809BF2AC  4B 67 D0 40 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809BF2B0  28 03 00 00 */	cmplwi r3, 0
/* 809BF2B4  41 82 00 2C */	beq lbl_809BF2E0
/* 809BF2B8  7F E4 FB 78 */	mr r4, r31
/* 809BF2BC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 809BF2C0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 809BF2C4  4B 65 59 90 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 809BF2C8  90 7E 0B D8 */	stw r3, 0xbd8(r30)
/* 809BF2CC  80 1E 0B D8 */	lwz r0, 0xbd8(r30)
/* 809BF2D0  28 00 00 00 */	cmplwi r0, 0
/* 809BF2D4  40 82 00 1C */	bne lbl_809BF2F0
/* 809BF2D8  38 60 00 00 */	li r3, 0
/* 809BF2DC  48 00 01 24 */	b lbl_809BF400
lbl_809BF2E0:
/* 809BF2E0  38 60 00 00 */	li r3, 0
/* 809BF2E4  48 00 01 1C */	b lbl_809BF400
lbl_809BF2E8:
/* 809BF2E8  38 00 00 00 */	li r0, 0
/* 809BF2EC  90 1E 0B D8 */	stw r0, 0xbd8(r30)
lbl_809BF2F0:
/* 809BF2F0  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 809BF2F4  28 00 00 02 */	cmplwi r0, 2
/* 809BF2F8  40 82 00 B8 */	bne lbl_809BF3B0
/* 809BF2FC  7F C3 F3 78 */	mr r3, r30
/* 809BF300  48 00 1E 55 */	bl getMode__11daNpc_grA_cFv
/* 809BF304  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 809BF308  28 00 00 01 */	cmplwi r0, 1
/* 809BF30C  40 82 00 54 */	bne lbl_809BF360
/* 809BF310  7F C3 F3 78 */	mr r3, r30
/* 809BF314  38 80 00 0A */	li r4, 0xa
/* 809BF318  38 A0 00 00 */	li r5, 0
/* 809BF31C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809BF320  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 809BF324  7D 89 03 A6 */	mtctr r12
/* 809BF328  4E 80 04 21 */	bctrl 
/* 809BF32C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809BF330  40 82 00 0C */	bne lbl_809BF33C
/* 809BF334  38 60 00 00 */	li r3, 0
/* 809BF338  48 00 00 C8 */	b lbl_809BF400
lbl_809BF33C:
/* 809BF33C  7F C3 F3 78 */	mr r3, r30
/* 809BF340  38 80 00 24 */	li r4, 0x24
/* 809BF344  3C A0 80 9D */	lis r5, lit_4611@ha
/* 809BF348  C0 25 9E 34 */	lfs f1, lit_4611@l(r5)
/* 809BF34C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809BF350  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 809BF354  7D 89 03 A6 */	mtctr r12
/* 809BF358  4E 80 04 21 */	bctrl 
/* 809BF35C  48 00 00 A0 */	b lbl_809BF3FC
lbl_809BF360:
/* 809BF360  7F C3 F3 78 */	mr r3, r30
/* 809BF364  38 80 00 08 */	li r4, 8
/* 809BF368  38 A0 00 00 */	li r5, 0
/* 809BF36C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809BF370  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 809BF374  7D 89 03 A6 */	mtctr r12
/* 809BF378  4E 80 04 21 */	bctrl 
/* 809BF37C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809BF380  40 82 00 0C */	bne lbl_809BF38C
/* 809BF384  38 60 00 00 */	li r3, 0
/* 809BF388  48 00 00 78 */	b lbl_809BF400
lbl_809BF38C:
/* 809BF38C  7F C3 F3 78 */	mr r3, r30
/* 809BF390  38 80 00 22 */	li r4, 0x22
/* 809BF394  3C A0 80 9D */	lis r5, lit_4611@ha
/* 809BF398  C0 25 9E 34 */	lfs f1, lit_4611@l(r5)
/* 809BF39C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809BF3A0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 809BF3A4  7D 89 03 A6 */	mtctr r12
/* 809BF3A8  4E 80 04 21 */	bctrl 
/* 809BF3AC  48 00 00 50 */	b lbl_809BF3FC
lbl_809BF3B0:
/* 809BF3B0  7F C3 F3 78 */	mr r3, r30
/* 809BF3B4  38 80 00 00 */	li r4, 0
/* 809BF3B8  38 A0 00 00 */	li r5, 0
/* 809BF3BC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809BF3C0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 809BF3C4  7D 89 03 A6 */	mtctr r12
/* 809BF3C8  4E 80 04 21 */	bctrl 
/* 809BF3CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809BF3D0  40 82 00 0C */	bne lbl_809BF3DC
/* 809BF3D4  38 60 00 00 */	li r3, 0
/* 809BF3D8  48 00 00 28 */	b lbl_809BF400
lbl_809BF3DC:
/* 809BF3DC  7F C3 F3 78 */	mr r3, r30
/* 809BF3E0  38 80 00 16 */	li r4, 0x16
/* 809BF3E4  3C A0 80 9D */	lis r5, lit_4611@ha
/* 809BF3E8  C0 25 9E 34 */	lfs f1, lit_4611@l(r5)
/* 809BF3EC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809BF3F0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 809BF3F4  7D 89 03 A6 */	mtctr r12
/* 809BF3F8  4E 80 04 21 */	bctrl 
lbl_809BF3FC:
/* 809BF3FC  38 60 00 01 */	li r3, 1
lbl_809BF400:
/* 809BF400  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809BF404  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809BF408  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809BF40C  7C 08 03 A6 */	mtlr r0
/* 809BF410  38 21 00 20 */	addi r1, r1, 0x20
/* 809BF414  4E 80 00 20 */	blr 
