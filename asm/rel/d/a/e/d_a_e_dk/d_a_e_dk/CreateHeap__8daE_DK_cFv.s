lbl_806ACAA4:
/* 806ACAA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806ACAA8  7C 08 02 A6 */	mflr r0
/* 806ACAAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 806ACAB0  39 61 00 40 */	addi r11, r1, 0x40
/* 806ACAB4  4B CB 57 0D */	bl _savegpr_22
/* 806ACAB8  7C 7E 1B 78 */	mr r30, r3
/* 806ACABC  3C 60 80 6B */	lis r3, lit_3764@ha /* 0x806AD538@ha */
/* 806ACAC0  3B A3 D5 38 */	addi r29, r3, lit_3764@l /* 0x806AD538@l */
/* 806ACAC4  3C 60 80 6B */	lis r3, d_a_e_dk__stringBase0@ha /* 0x806AD628@ha */
/* 806ACAC8  38 63 D6 28 */	addi r3, r3, d_a_e_dk__stringBase0@l /* 0x806AD628@l */
/* 806ACACC  38 80 00 12 */	li r4, 0x12
/* 806ACAD0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806ACAD4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806ACAD8  3F E5 00 02 */	addis r31, r5, 2
/* 806ACADC  3B FF C2 F8 */	addi r31, r31, -15624
/* 806ACAE0  7F E5 FB 78 */	mr r5, r31
/* 806ACAE4  38 C0 00 80 */	li r6, 0x80
/* 806ACAE8  4B 98 F8 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806ACAEC  7C 77 1B 78 */	mr r23, r3
/* 806ACAF0  38 60 00 58 */	li r3, 0x58
/* 806ACAF4  4B C2 21 59 */	bl __nw__FUl
/* 806ACAF8  7C 76 1B 79 */	or. r22, r3, r3
/* 806ACAFC  41 82 00 64 */	beq lbl_806ACB60
/* 806ACB00  3C 60 80 6B */	lis r3, d_a_e_dk__stringBase0@ha /* 0x806AD628@ha */
/* 806ACB04  38 63 D6 28 */	addi r3, r3, d_a_e_dk__stringBase0@l /* 0x806AD628@l */
/* 806ACB08  38 80 00 0F */	li r4, 0xf
/* 806ACB0C  7F E5 FB 78 */	mr r5, r31
/* 806ACB10  38 C0 00 80 */	li r6, 0x80
/* 806ACB14  4B 98 F7 D9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806ACB18  7C 67 1B 78 */	mr r7, r3
/* 806ACB1C  38 1E 05 CC */	addi r0, r30, 0x5cc
/* 806ACB20  90 01 00 08 */	stw r0, 8(r1)
/* 806ACB24  3C 00 00 08 */	lis r0, 8
/* 806ACB28  90 01 00 0C */	stw r0, 0xc(r1)
/* 806ACB2C  3C 60 31 00 */	lis r3, 0x3100 /* 0x31000284@ha */
/* 806ACB30  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x31000284@l */
/* 806ACB34  90 01 00 10 */	stw r0, 0x10(r1)
/* 806ACB38  7E C3 B3 78 */	mr r3, r22
/* 806ACB3C  7E E4 BB 78 */	mr r4, r23
/* 806ACB40  38 A0 00 00 */	li r5, 0
/* 806ACB44  38 C0 00 00 */	li r6, 0
/* 806ACB48  39 00 00 00 */	li r8, 0
/* 806ACB4C  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 806ACB50  39 20 00 00 */	li r9, 0
/* 806ACB54  39 40 FF FF */	li r10, -1
/* 806ACB58  4B 96 3C 79 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806ACB5C  7C 76 1B 78 */	mr r22, r3
lbl_806ACB60:
/* 806ACB60  92 DE 05 B4 */	stw r22, 0x5b4(r30)
/* 806ACB64  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806ACB68  28 03 00 00 */	cmplwi r3, 0
/* 806ACB6C  41 82 00 10 */	beq lbl_806ACB7C
/* 806ACB70  80 03 00 04 */	lwz r0, 4(r3)
/* 806ACB74  28 00 00 00 */	cmplwi r0, 0
/* 806ACB78  40 82 00 0C */	bne lbl_806ACB84
lbl_806ACB7C:
/* 806ACB7C  38 60 00 00 */	li r3, 0
/* 806ACB80  48 00 02 14 */	b lbl_806ACD94
lbl_806ACB84:
/* 806ACB84  3B 20 00 00 */	li r25, 0
/* 806ACB88  3B 00 00 00 */	li r24, 0
/* 806ACB8C  3C 60 80 6B */	lis r3, d_a_e_dk__stringBase0@ha /* 0x806AD628@ha */
/* 806ACB90  3B 63 D6 28 */	addi r27, r3, d_a_e_dk__stringBase0@l /* 0x806AD628@l */
/* 806ACB94  3B 9D 00 0C */	addi r28, r29, 0xc
/* 806ACB98  3A FD 00 14 */	addi r23, r29, 0x14
lbl_806ACB9C:
/* 806ACB9C  38 60 00 18 */	li r3, 0x18
/* 806ACBA0  4B C2 20 AD */	bl __nw__FUl
/* 806ACBA4  7C 76 1B 79 */	or. r22, r3, r3
/* 806ACBA8  41 82 00 20 */	beq lbl_806ACBC8
/* 806ACBAC  3C 80 80 6B */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x806AD7D4@ha */
/* 806ACBB0  38 04 D7 D4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x806AD7D4@l */
/* 806ACBB4  90 16 00 00 */	stw r0, 0(r22)
/* 806ACBB8  38 80 00 00 */	li r4, 0
/* 806ACBBC  4B C7 B8 41 */	bl init__12J3DFrameCtrlFs
/* 806ACBC0  38 00 00 00 */	li r0, 0
/* 806ACBC4  90 16 00 14 */	stw r0, 0x14(r22)
lbl_806ACBC8:
/* 806ACBC8  7F 5E C2 14 */	add r26, r30, r24
/* 806ACBCC  92 DA 05 BC */	stw r22, 0x5bc(r26)
/* 806ACBD0  80 1A 05 BC */	lwz r0, 0x5bc(r26)
/* 806ACBD4  28 00 00 00 */	cmplwi r0, 0
/* 806ACBD8  40 82 00 0C */	bne lbl_806ACBE4
/* 806ACBDC  38 60 00 00 */	li r3, 0
/* 806ACBE0  48 00 01 B4 */	b lbl_806ACD94
lbl_806ACBE4:
/* 806ACBE4  7F 63 DB 78 */	mr r3, r27
/* 806ACBE8  7C 9C C0 2E */	lwzx r4, r28, r24
/* 806ACBEC  7F E5 FB 78 */	mr r5, r31
/* 806ACBF0  38 C0 00 80 */	li r6, 0x80
/* 806ACBF4  4B 98 F6 F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806ACBF8  7C 65 1B 78 */	mr r5, r3
/* 806ACBFC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806ACC00  80 63 00 04 */	lwz r3, 4(r3)
/* 806ACC04  80 83 00 04 */	lwz r4, 4(r3)
/* 806ACC08  80 7A 05 BC */	lwz r3, 0x5bc(r26)
/* 806ACC0C  38 84 00 58 */	addi r4, r4, 0x58
/* 806ACC10  38 C0 00 01 */	li r6, 1
/* 806ACC14  38 E0 00 02 */	li r7, 2
/* 806ACC18  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 806ACC1C  39 00 00 00 */	li r8, 0
/* 806ACC20  39 20 FF FF */	li r9, -1
/* 806ACC24  4B 96 0A E9 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 806ACC28  2C 03 00 00 */	cmpwi r3, 0
/* 806ACC2C  40 82 00 0C */	bne lbl_806ACC38
/* 806ACC30  38 60 00 00 */	li r3, 0
/* 806ACC34  48 00 01 60 */	b lbl_806ACD94
lbl_806ACC38:
/* 806ACC38  38 60 00 18 */	li r3, 0x18
/* 806ACC3C  4B C2 20 11 */	bl __nw__FUl
/* 806ACC40  7C 76 1B 79 */	or. r22, r3, r3
/* 806ACC44  41 82 00 20 */	beq lbl_806ACC64
/* 806ACC48  3C 80 80 6B */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x806AD7D4@ha */
/* 806ACC4C  38 04 D7 D4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x806AD7D4@l */
/* 806ACC50  90 16 00 00 */	stw r0, 0(r22)
/* 806ACC54  38 80 00 00 */	li r4, 0
/* 806ACC58  4B C7 B7 A5 */	bl init__12J3DFrameCtrlFs
/* 806ACC5C  38 00 00 00 */	li r0, 0
/* 806ACC60  90 16 00 14 */	stw r0, 0x14(r22)
lbl_806ACC64:
/* 806ACC64  92 DA 05 C4 */	stw r22, 0x5c4(r26)
/* 806ACC68  80 1A 05 C4 */	lwz r0, 0x5c4(r26)
/* 806ACC6C  28 00 00 00 */	cmplwi r0, 0
/* 806ACC70  40 82 00 0C */	bne lbl_806ACC7C
/* 806ACC74  38 60 00 00 */	li r3, 0
/* 806ACC78  48 00 01 1C */	b lbl_806ACD94
lbl_806ACC7C:
/* 806ACC7C  7F 63 DB 78 */	mr r3, r27
/* 806ACC80  7C 97 C0 2E */	lwzx r4, r23, r24
/* 806ACC84  7F E5 FB 78 */	mr r5, r31
/* 806ACC88  38 C0 00 80 */	li r6, 0x80
/* 806ACC8C  4B 98 F6 61 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806ACC90  7C 65 1B 78 */	mr r5, r3
/* 806ACC94  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806ACC98  80 63 00 04 */	lwz r3, 4(r3)
/* 806ACC9C  80 83 00 04 */	lwz r4, 4(r3)
/* 806ACCA0  80 7A 05 C4 */	lwz r3, 0x5c4(r26)
/* 806ACCA4  38 84 00 58 */	addi r4, r4, 0x58
/* 806ACCA8  38 C0 00 01 */	li r6, 1
/* 806ACCAC  38 E0 00 02 */	li r7, 2
/* 806ACCB0  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 806ACCB4  39 00 00 00 */	li r8, 0
/* 806ACCB8  39 20 FF FF */	li r9, -1
/* 806ACCBC  4B 96 09 81 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 806ACCC0  2C 03 00 00 */	cmpwi r3, 0
/* 806ACCC4  40 82 00 0C */	bne lbl_806ACCD0
/* 806ACCC8  38 60 00 00 */	li r3, 0
/* 806ACCCC  48 00 00 C8 */	b lbl_806ACD94
lbl_806ACCD0:
/* 806ACCD0  3B 39 00 01 */	addi r25, r25, 1
/* 806ACCD4  2C 19 00 02 */	cmpwi r25, 2
/* 806ACCD8  3B 18 00 04 */	addi r24, r24, 4
/* 806ACCDC  41 80 FE C0 */	blt lbl_806ACB9C
/* 806ACCE0  3C 60 80 6B */	lis r3, d_a_e_dk__stringBase0@ha /* 0x806AD628@ha */
/* 806ACCE4  38 63 D6 28 */	addi r3, r3, d_a_e_dk__stringBase0@l /* 0x806AD628@l */
/* 806ACCE8  38 80 00 13 */	li r4, 0x13
/* 806ACCEC  7F E5 FB 78 */	mr r5, r31
/* 806ACCF0  38 C0 00 80 */	li r6, 0x80
/* 806ACCF4  4B 98 F5 F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806ACCF8  7C 77 1B 78 */	mr r23, r3
/* 806ACCFC  38 60 00 58 */	li r3, 0x58
/* 806ACD00  4B C2 1F 4D */	bl __nw__FUl
/* 806ACD04  7C 76 1B 79 */	or. r22, r3, r3
/* 806ACD08  41 82 00 64 */	beq lbl_806ACD6C
/* 806ACD0C  3C 60 80 6B */	lis r3, d_a_e_dk__stringBase0@ha /* 0x806AD628@ha */
/* 806ACD10  38 63 D6 28 */	addi r3, r3, d_a_e_dk__stringBase0@l /* 0x806AD628@l */
/* 806ACD14  38 80 00 0C */	li r4, 0xc
/* 806ACD18  7F E5 FB 78 */	mr r5, r31
/* 806ACD1C  38 C0 00 80 */	li r6, 0x80
/* 806ACD20  4B 98 F5 CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806ACD24  7C 67 1B 78 */	mr r7, r3
/* 806ACD28  38 1E 05 CC */	addi r0, r30, 0x5cc
/* 806ACD2C  90 01 00 08 */	stw r0, 8(r1)
/* 806ACD30  3C 00 00 08 */	lis r0, 8
/* 806ACD34  90 01 00 0C */	stw r0, 0xc(r1)
/* 806ACD38  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806ACD3C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806ACD40  90 01 00 10 */	stw r0, 0x10(r1)
/* 806ACD44  7E C3 B3 78 */	mr r3, r22
/* 806ACD48  7E E4 BB 78 */	mr r4, r23
/* 806ACD4C  38 A0 00 00 */	li r5, 0
/* 806ACD50  38 C0 00 00 */	li r6, 0
/* 806ACD54  39 00 00 00 */	li r8, 0
/* 806ACD58  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 806ACD5C  39 20 00 00 */	li r9, 0
/* 806ACD60  39 40 FF FF */	li r10, -1
/* 806ACD64  4B 96 3A 6D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806ACD68  7C 76 1B 78 */	mr r22, r3
lbl_806ACD6C:
/* 806ACD6C  92 DE 05 B8 */	stw r22, 0x5b8(r30)
/* 806ACD70  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806ACD74  28 03 00 00 */	cmplwi r3, 0
/* 806ACD78  41 82 00 10 */	beq lbl_806ACD88
/* 806ACD7C  80 03 00 04 */	lwz r0, 4(r3)
/* 806ACD80  28 00 00 00 */	cmplwi r0, 0
/* 806ACD84  40 82 00 0C */	bne lbl_806ACD90
lbl_806ACD88:
/* 806ACD88  38 60 00 00 */	li r3, 0
/* 806ACD8C  48 00 00 08 */	b lbl_806ACD94
lbl_806ACD90:
/* 806ACD90  38 60 00 01 */	li r3, 1
lbl_806ACD94:
/* 806ACD94  39 61 00 40 */	addi r11, r1, 0x40
/* 806ACD98  4B CB 54 75 */	bl _restgpr_22
/* 806ACD9C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806ACDA0  7C 08 03 A6 */	mtlr r0
/* 806ACDA4  38 21 00 40 */	addi r1, r1, 0x40
/* 806ACDA8  4E 80 00 20 */	blr 
