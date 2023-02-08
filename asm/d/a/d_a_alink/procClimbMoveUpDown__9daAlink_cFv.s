lbl_800FFC58:
/* 800FFC58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FFC5C  7C 08 02 A6 */	mflr r0
/* 800FFC60  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FFC64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FFC68  93 C1 00 08 */	stw r30, 8(r1)
/* 800FFC6C  7C 7E 1B 78 */	mr r30, r3
/* 800FFC70  4B FF EB F9 */	bl setMoveBGClimbCorrect__9daAlink_cFv
/* 800FFC74  2C 03 00 00 */	cmpwi r3, 0
/* 800FFC78  41 82 00 0C */	beq lbl_800FFC84
/* 800FFC7C  38 60 00 01 */	li r3, 1
/* 800FFC80  48 00 01 18 */	b lbl_800FFD98
lbl_800FFC84:
/* 800FFC84  38 00 00 02 */	li r0, 2
/* 800FFC88  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800FFC8C  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800FFC90  7F C3 F3 78 */	mr r3, r30
/* 800FFC94  4B FF D9 51 */	bl checkLadderFall__9daAlink_cFv
/* 800FFC98  2C 03 00 00 */	cmpwi r3, 0
/* 800FFC9C  40 82 00 F8 */	bne lbl_800FFD94
/* 800FFCA0  7F E3 FB 78 */	mr r3, r31
/* 800FFCA4  48 05 E8 29 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FFCA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FFCAC  41 82 00 60 */	beq lbl_800FFD0C
/* 800FFCB0  80 1E 32 CC */	lwz r0, 0x32cc(r30)
/* 800FFCB4  28 00 00 00 */	cmplwi r0, 0
/* 800FFCB8  41 82 00 44 */	beq lbl_800FFCFC
/* 800FFCBC  7F C3 F3 78 */	mr r3, r30
/* 800FFCC0  4B FF E3 51 */	bl getClimbMoveUpDownAnmSpeed__9daAlink_cFv
/* 800FFCC4  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 800FFCC8  28 00 00 01 */	cmplwi r0, 1
/* 800FFCCC  40 82 00 0C */	bne lbl_800FFCD8
/* 800FFCD0  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800FFCD4  EC 21 00 32 */	fmuls f1, f1, f0
lbl_800FFCD8:
/* 800FFCD8  7F C3 F3 78 */	mr r3, r30
/* 800FFCDC  80 9E 32 CC */	lwz r4, 0x32cc(r30)
/* 800FFCE0  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 800FFCE4  4B FA D2 FD */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800FFCE8  38 00 00 0A */	li r0, 0xa
/* 800FFCEC  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800FFCF0  38 00 00 00 */	li r0, 0
/* 800FFCF4  90 1E 32 CC */	stw r0, 0x32cc(r30)
/* 800FFCF8  48 00 00 9C */	b lbl_800FFD94
lbl_800FFCFC:
/* 800FFCFC  7F C3 F3 78 */	mr r3, r30
/* 800FFD00  80 9E 31 98 */	lwz r4, 0x3198(r30)
/* 800FFD04  4B FF E7 35 */	bl changeClimbMoveProc__9daAlink_cFi
/* 800FFD08  48 00 00 8C */	b lbl_800FFD94
lbl_800FFD0C:
/* 800FFD0C  7F C3 F3 78 */	mr r3, r30
/* 800FFD10  88 9E 2F 98 */	lbz r4, 0x2f98(r30)
/* 800FFD14  4B FF E8 8D */	bl checkClimbMoveUpDownProc__9daAlink_cFi
/* 800FFD18  2C 03 00 00 */	cmpwi r3, 0
/* 800FFD1C  40 82 00 18 */	bne lbl_800FFD34
/* 800FFD20  7F C3 F3 78 */	mr r3, r30
/* 800FFD24  38 80 00 01 */	li r4, 1
/* 800FFD28  38 A0 00 01 */	li r5, 1
/* 800FFD2C  48 00 03 CD */	bl procClimbWaitInit__9daAlink_cFii
/* 800FFD30  48 00 00 64 */	b lbl_800FFD94
lbl_800FFD34:
/* 800FFD34  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 800FFD38  FC 00 02 10 */	fabs f0, f0
/* 800FFD3C  FC 20 00 18 */	frsp f1, f0
/* 800FFD40  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800FFD44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FFD48  40 81 00 4C */	ble lbl_800FFD94
/* 800FFD4C  7F C3 F3 78 */	mr r3, r30
/* 800FFD50  4B FF E2 C1 */	bl getClimbMoveUpDownAnmSpeed__9daAlink_cFv
/* 800FFD54  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 800FFD58  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FFD5C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800FFD60  40 80 00 0C */	bge lbl_800FFD6C
/* 800FFD64  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800FFD68  EC 21 00 32 */	fmuls f1, f1, f0
lbl_800FFD6C:
/* 800FFD6C  7F C3 F3 78 */	mr r3, r30
/* 800FFD70  7F E4 FB 78 */	mr r4, r31
/* 800FFD74  48 00 1F 81 */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
/* 800FFD78  7F C3 F3 78 */	mr r3, r30
/* 800FFD7C  38 80 00 04 */	li r4, 4
/* 800FFD80  4B FF F1 41 */	bl checkBgClimbMove__9daAlink_cFi
/* 800FFD84  2C 03 00 00 */	cmpwi r3, 0
/* 800FFD88  40 82 00 0C */	bne lbl_800FFD94
/* 800FFD8C  7F C3 F3 78 */	mr r3, r30
/* 800FFD90  4B FF E3 E5 */	bl setClimbShapeOffset__9daAlink_cFv
lbl_800FFD94:
/* 800FFD94  38 60 00 01 */	li r3, 1
lbl_800FFD98:
/* 800FFD98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FFD9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FFDA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FFDA4  7C 08 03 A6 */	mtlr r0
/* 800FFDA8  38 21 00 10 */	addi r1, r1, 0x10
/* 800FFDAC  4E 80 00 20 */	blr 
