lbl_8010D034:
/* 8010D034  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010D038  7C 08 02 A6 */	mflr r0
/* 8010D03C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010D040  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8010D044  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010D048  7C 7E 1B 78 */	mr r30, r3
/* 8010D04C  4B FF E9 21 */	bl commonHookshotRoofWait__9daAlink_cFv
/* 8010D050  2C 03 00 00 */	cmpwi r3, 0
/* 8010D054  41 82 00 0C */	beq lbl_8010D060
/* 8010D058  38 60 00 01 */	li r3, 1
/* 8010D05C  48 00 01 00 */	b lbl_8010D15C
lbl_8010D060:
/* 8010D060  7F C3 F3 78 */	mr r3, r30
/* 8010D064  4B FF B8 3D */	bl checkHookshotRoofLv7Boss__9daAlink_cFv
/* 8010D068  2C 03 00 00 */	cmpwi r3, 0
/* 8010D06C  41 82 00 20 */	beq lbl_8010D08C
/* 8010D070  7F C3 F3 78 */	mr r3, r30
/* 8010D074  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8010D078  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 8010D07C  7D 89 03 A6 */	mtctr r12
/* 8010D080  4E 80 04 21 */	bctrl 
/* 8010D084  2C 03 00 00 */	cmpwi r3, 0
/* 8010D088  40 82 00 30 */	bne lbl_8010D0B8
lbl_8010D08C:
/* 8010D08C  7F C3 F3 78 */	mr r3, r30
/* 8010D090  38 80 00 01 */	li r4, 1
/* 8010D094  4B FA 61 D5 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 8010D098  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 8010D09C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8010D0A0  41 82 00 18 */	beq lbl_8010D0B8
/* 8010D0A4  7F C3 F3 78 */	mr r3, r30
/* 8010D0A8  38 80 00 01 */	li r4, 1
/* 8010D0AC  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 8010D0B0  4B FB 99 99 */	bl procFallInit__9daAlink_cFif
/* 8010D0B4  48 00 00 A8 */	b lbl_8010D15C
lbl_8010D0B8:
/* 8010D0B8  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8010D0BC  7F E3 FB 78 */	mr r3, r31
/* 8010D0C0  48 05 14 0D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8010D0C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010D0C8  41 82 00 1C */	beq lbl_8010D0E4
/* 8010D0CC  7F C3 F3 78 */	mr r3, r30
/* 8010D0D0  38 80 00 00 */	li r4, 0
/* 8010D0D4  80 BE 28 58 */	lwz r5, 0x2858(r30)
/* 8010D0D8  38 C0 00 00 */	li r6, 0
/* 8010D0DC  4B FF F7 55 */	bl procHookshotRoofWaitInit__9daAlink_cFiP10fopAc_ac_ci
/* 8010D0E0  48 00 00 7C */	b lbl_8010D15C
lbl_8010D0E4:
/* 8010D0E4  7F E3 FB 78 */	mr r3, r31
/* 8010D0E8  C0 22 93 24 */	lfs f1, lit_7450(r2)
/* 8010D0EC  48 21 B3 41 */	bl checkPass__12J3DFrameCtrlFf
/* 8010D0F0  2C 03 00 00 */	cmpwi r3, 0
/* 8010D0F4  41 82 00 14 */	beq lbl_8010D108
/* 8010D0F8  7F C3 F3 78 */	mr r3, r30
/* 8010D0FC  38 80 00 01 */	li r4, 1
/* 8010D100  4B FD 54 81 */	bl setHeavyBoots__9daAlink_cFi
/* 8010D104  48 00 00 54 */	b lbl_8010D158
lbl_8010D108:
/* 8010D108  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 8010D10C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8010D110  41 82 00 48 */	beq lbl_8010D158
/* 8010D114  7F E3 FB 78 */	mr r3, r31
/* 8010D118  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 8010D11C  48 21 B3 11 */	bl checkPass__12J3DFrameCtrlFf
/* 8010D120  2C 03 00 00 */	cmpwi r3, 0
/* 8010D124  41 82 00 34 */	beq lbl_8010D158
/* 8010D128  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010D12C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8010D130  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010D134  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8010D138  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8010D13C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010D140  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010D144  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8010D148  38 80 00 03 */	li r4, 3
/* 8010D14C  38 A0 00 01 */	li r5, 1
/* 8010D150  38 C1 00 08 */	addi r6, r1, 8
/* 8010D154  4B F6 28 D1 */	bl StartShock__12dVibration_cFii4cXyz
lbl_8010D158:
/* 8010D158  38 60 00 01 */	li r3, 1
lbl_8010D15C:
/* 8010D15C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8010D160  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010D164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010D168  7C 08 03 A6 */	mtlr r0
/* 8010D16C  38 21 00 20 */	addi r1, r1, 0x20
/* 8010D170  4E 80 00 20 */	blr 
