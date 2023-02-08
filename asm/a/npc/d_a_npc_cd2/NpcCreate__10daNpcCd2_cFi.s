lbl_80157D00:
/* 80157D00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80157D04  7C 08 02 A6 */	mflr r0
/* 80157D08  90 01 00 44 */	stw r0, 0x44(r1)
/* 80157D0C  39 61 00 40 */	addi r11, r1, 0x40
/* 80157D10  48 20 A4 C5 */	bl _savegpr_27
/* 80157D14  7C 7C 1B 78 */	mr r28, r3
/* 80157D18  7C 9D 23 78 */	mr r29, r4
/* 80157D1C  48 00 1B CD */	bl getNpcMdlDataP__10daNpcCd2_cFi
/* 80157D20  7C 7F 1B 78 */	mr r31, r3
/* 80157D24  7F 83 E3 78 */	mr r3, r28
/* 80157D28  7F A4 EB 78 */	mr r4, r29
/* 80157D2C  48 00 1C 99 */	bl getTexAnmP__10daNpcCd2_cFi
/* 80157D30  7C 7E 1B 79 */	or. r30, r3, r3
/* 80157D34  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80157D38  3B 63 00 84 */	addi r27, r3, 0x0084 /* 0x11000084@l */
/* 80157D3C  41 82 00 0C */	beq lbl_80157D48
/* 80157D40  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020084@ha */
/* 80157D44  3B 63 00 84 */	addi r27, r3, 0x0084 /* 0x11020084@l */
lbl_80157D48:
/* 80157D48  38 60 00 58 */	li r3, 0x58
/* 80157D4C  48 17 6F 01 */	bl __nw__FUl
/* 80157D50  7C 60 1B 79 */	or. r0, r3, r3
/* 80157D54  41 82 00 40 */	beq lbl_80157D94
/* 80157D58  38 1C 05 94 */	addi r0, r28, 0x594
/* 80157D5C  90 01 00 08 */	stw r0, 8(r1)
/* 80157D60  3C 00 00 08 */	lis r0, 8
/* 80157D64  90 01 00 0C */	stw r0, 0xc(r1)
/* 80157D68  93 61 00 10 */	stw r27, 0x10(r1)
/* 80157D6C  7F E4 FB 78 */	mr r4, r31
/* 80157D70  38 A0 00 00 */	li r5, 0
/* 80157D74  38 C0 00 00 */	li r6, 0
/* 80157D78  38 E0 00 00 */	li r7, 0
/* 80157D7C  39 00 FF FF */	li r8, -1
/* 80157D80  C0 22 9A E0 */	lfs f1, lit_4050(r2)
/* 80157D84  39 20 00 00 */	li r9, 0
/* 80157D88  39 40 FF FF */	li r10, -1
/* 80157D8C  4B EB 8A 45 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80157D90  7C 60 1B 78 */	mr r0, r3
lbl_80157D94:
/* 80157D94  90 1C 05 8C */	stw r0, 0x58c(r28)
/* 80157D98  80 7C 05 8C */	lwz r3, 0x58c(r28)
/* 80157D9C  28 03 00 00 */	cmplwi r3, 0
/* 80157DA0  41 82 00 1C */	beq lbl_80157DBC
/* 80157DA4  80 03 00 04 */	lwz r0, 4(r3)
/* 80157DA8  28 00 00 00 */	cmplwi r0, 0
/* 80157DAC  40 82 00 10 */	bne lbl_80157DBC
/* 80157DB0  4B EB 95 61 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80157DB4  38 00 00 00 */	li r0, 0
/* 80157DB8  90 1C 05 8C */	stw r0, 0x58c(r28)
lbl_80157DBC:
/* 80157DBC  80 1C 05 8C */	lwz r0, 0x58c(r28)
/* 80157DC0  28 00 00 00 */	cmplwi r0, 0
/* 80157DC4  40 82 00 0C */	bne lbl_80157DD0
/* 80157DC8  38 60 00 00 */	li r3, 0
/* 80157DCC  48 00 01 44 */	b lbl_80157F10
lbl_80157DD0:
/* 80157DD0  38 7C 05 94 */	addi r3, r28, 0x594
/* 80157DD4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80157DD8  38 BC 05 38 */	addi r5, r28, 0x538
/* 80157DDC  38 C0 00 03 */	li r6, 3
/* 80157DE0  38 E0 00 01 */	li r7, 1
/* 80157DE4  48 16 8F 01 */	bl init__17Z2CreatureCitizenFP3VecP3VecUcUc
/* 80157DE8  38 7C 05 94 */	addi r3, r28, 0x594
/* 80157DEC  7F A4 07 74 */	extsb r4, r29
/* 80157DF0  38 A0 00 00 */	li r5, 0
/* 80157DF4  88 DC 0A C6 */	lbz r6, 0xac6(r28)
/* 80157DF8  30 06 FF FF */	addic r0, r6, -1
/* 80157DFC  7C 00 31 10 */	subfe r0, r0, r6
/* 80157E00  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 80157E04  48 16 8F 45 */	bl setMdlType__17Z2CreatureCitizenFScbb
/* 80157E08  28 1E 00 00 */	cmplwi r30, 0
/* 80157E0C  41 82 00 7C */	beq lbl_80157E88
/* 80157E10  38 60 00 18 */	li r3, 0x18
/* 80157E14  48 17 6E 39 */	bl __nw__FUl
/* 80157E18  7C 7B 1B 79 */	or. r27, r3, r3
/* 80157E1C  41 82 00 20 */	beq lbl_80157E3C
/* 80157E20  3C 80 80 3A */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 80157E24  38 04 33 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 80157E28  90 1B 00 00 */	stw r0, 0(r27)
/* 80157E2C  38 80 00 00 */	li r4, 0
/* 80157E30  48 1D 05 CD */	bl init__12J3DFrameCtrlFs
/* 80157E34  38 00 00 00 */	li r0, 0
/* 80157E38  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_80157E3C:
/* 80157E3C  93 7C 05 90 */	stw r27, 0x590(r28)
/* 80157E40  80 7C 05 90 */	lwz r3, 0x590(r28)
/* 80157E44  28 03 00 00 */	cmplwi r3, 0
/* 80157E48  41 82 00 2C */	beq lbl_80157E74
/* 80157E4C  38 9F 00 58 */	addi r4, r31, 0x58
/* 80157E50  7F C5 F3 78 */	mr r5, r30
/* 80157E54  38 C0 00 01 */	li r6, 1
/* 80157E58  38 E0 00 02 */	li r7, 2
/* 80157E5C  C0 22 9A E0 */	lfs f1, lit_4050(r2)
/* 80157E60  39 00 00 00 */	li r8, 0
/* 80157E64  39 20 FF FF */	li r9, -1
/* 80157E68  4B EB 56 E5 */	bl init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 80157E6C  2C 03 00 00 */	cmpwi r3, 0
/* 80157E70  40 82 00 0C */	bne lbl_80157E7C
lbl_80157E74:
/* 80157E74  38 60 00 00 */	li r3, 0
/* 80157E78  48 00 00 98 */	b lbl_80157F10
lbl_80157E7C:
/* 80157E7C  38 00 00 00 */	li r0, 0
/* 80157E80  B0 1C 0A C4 */	sth r0, 0xac4(r28)
/* 80157E84  90 1C 0A A4 */	stw r0, 0xaa4(r28)
lbl_80157E88:
/* 80157E88  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 80157E8C  3C 60 80 39 */	lis r3, a_transScaleTbl@ha /* 0x80393994@ha */
/* 80157E90  38 63 39 94 */	addi r3, r3, a_transScaleTbl@l /* 0x80393994@l */
/* 80157E94  7C 43 04 2E */	lfsx f2, r3, r0
/* 80157E98  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80157E9C  7C 63 02 14 */	add r3, r3, r0
/* 80157EA0  C0 23 00 04 */	lfs f1, 4(r3)
/* 80157EA4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80157EA8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80157EAC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80157EB0  38 00 00 01 */	li r0, 1
/* 80157EB4  80 7C 05 8C */	lwz r3, 0x58c(r28)
/* 80157EB8  98 03 00 54 */	stb r0, 0x54(r3)
/* 80157EBC  80 7C 05 8C */	lwz r3, 0x58c(r28)
/* 80157EC0  D0 43 00 40 */	stfs f2, 0x40(r3)
/* 80157EC4  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 80157EC8  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 80157ECC  38 A0 00 00 */	li r5, 0
/* 80157ED0  3C 60 80 15 */	lis r3, jntNodeCallBack__FP8J3DJointi@ha /* 0x80157CB4@ha */
/* 80157ED4  38 83 7C B4 */	addi r4, r3, jntNodeCallBack__FP8J3DJointi@l /* 0x80157CB4@l */
/* 80157ED8  48 00 00 18 */	b lbl_80157EF0
lbl_80157EDC:
/* 80157EDC  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80157EE0  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80157EE4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80157EE8  90 83 00 04 */	stw r4, 4(r3)
/* 80157EEC  38 A5 00 01 */	addi r5, r5, 1
lbl_80157EF0:
/* 80157EF0  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 80157EF4  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 80157EF8  7C 03 00 40 */	cmplw r3, r0
/* 80157EFC  41 80 FF E0 */	blt lbl_80157EDC
/* 80157F00  80 7C 05 8C */	lwz r3, 0x58c(r28)
/* 80157F04  80 63 00 04 */	lwz r3, 4(r3)
/* 80157F08  93 83 00 14 */	stw r28, 0x14(r3)
/* 80157F0C  38 60 00 01 */	li r3, 1
lbl_80157F10:
/* 80157F10  39 61 00 40 */	addi r11, r1, 0x40
/* 80157F14  48 20 A3 0D */	bl _restgpr_27
/* 80157F18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80157F1C  7C 08 03 A6 */	mtlr r0
/* 80157F20  38 21 00 40 */	addi r1, r1, 0x40
/* 80157F24  4E 80 00 20 */	blr 
