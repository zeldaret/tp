lbl_809CBBD4:
/* 809CBBD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809CBBD8  7C 08 02 A6 */	mflr r0
/* 809CBBDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809CBBE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809CBBE4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809CBBE8  7C 7E 1B 78 */	mr r30, r3
/* 809CBBEC  3B E0 00 00 */	li r31, 0
/* 809CBBF0  88 03 09 F4 */	lbz r0, 0x9f4(r3)
/* 809CBBF4  28 00 00 00 */	cmplwi r0, 0
/* 809CBBF8  41 82 00 4C */	beq lbl_809CBC44
/* 809CBBFC  3C 60 80 9D */	lis r3, l_bmdGetParamList@ha
/* 809CBC00  38 63 F8 3C */	addi r3, r3, l_bmdGetParamList@l
/* 809CBC04  80 83 00 08 */	lwz r4, 8(r3)
/* 809CBC08  2C 04 00 00 */	cmpwi r4, 0
/* 809CBC0C  41 80 00 78 */	blt lbl_809CBC84
/* 809CBC10  80 03 00 0C */	lwz r0, 0xc(r3)
/* 809CBC14  54 00 10 3A */	slwi r0, r0, 2
/* 809CBC18  3C 60 80 9D */	lis r3, l_resNames@ha
/* 809CBC1C  38 63 F9 64 */	addi r3, r3, l_resNames@l
/* 809CBC20  7C 63 00 2E */	lwzx r3, r3, r0
/* 809CBC24  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809CBC28  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809CBC2C  3C A5 00 02 */	addis r5, r5, 2
/* 809CBC30  38 C0 00 80 */	li r6, 0x80
/* 809CBC34  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809CBC38  4B 67 06 B4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809CBC3C  7C 7F 1B 78 */	mr r31, r3
/* 809CBC40  48 00 00 44 */	b lbl_809CBC84
lbl_809CBC44:
/* 809CBC44  3C 60 80 9D */	lis r3, l_bmdGetParamList@ha
/* 809CBC48  84 83 F8 3C */	lwzu r4, l_bmdGetParamList@l(r3)
/* 809CBC4C  2C 04 00 00 */	cmpwi r4, 0
/* 809CBC50  41 80 00 34 */	blt lbl_809CBC84
/* 809CBC54  80 03 00 04 */	lwz r0, 4(r3)
/* 809CBC58  54 00 10 3A */	slwi r0, r0, 2
/* 809CBC5C  3C 60 80 9D */	lis r3, l_resNames@ha
/* 809CBC60  38 63 F9 64 */	addi r3, r3, l_resNames@l
/* 809CBC64  7C 63 00 2E */	lwzx r3, r3, r0
/* 809CBC68  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809CBC6C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809CBC70  3C A5 00 02 */	addis r5, r5, 2
/* 809CBC74  38 C0 00 80 */	li r6, 0x80
/* 809CBC78  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809CBC7C  4B 67 06 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809CBC80  7C 7F 1B 78 */	mr r31, r3
lbl_809CBC84:
/* 809CBC84  38 60 00 58 */	li r3, 0x58
/* 809CBC88  4B 90 2F C4 */	b __nw__FUl
/* 809CBC8C  7C 60 1B 79 */	or. r0, r3, r3
/* 809CBC90  41 82 00 4C */	beq lbl_809CBCDC
/* 809CBC94  38 1E 0B 48 */	addi r0, r30, 0xb48
/* 809CBC98  90 01 00 08 */	stw r0, 8(r1)
/* 809CBC9C  3C 00 00 08 */	lis r0, 8
/* 809CBCA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 809CBCA4  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 809CBCA8  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 809CBCAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 809CBCB0  7F E4 FB 78 */	mr r4, r31
/* 809CBCB4  38 A0 00 00 */	li r5, 0
/* 809CBCB8  38 C0 00 00 */	li r6, 0
/* 809CBCBC  38 E0 00 00 */	li r7, 0
/* 809CBCC0  39 00 FF FF */	li r8, -1
/* 809CBCC4  3D 20 80 9D */	lis r9, lit_4454@ha
/* 809CBCC8  C0 29 F5 98 */	lfs f1, lit_4454@l(r9)
/* 809CBCCC  39 20 00 00 */	li r9, 0
/* 809CBCD0  39 40 FF FF */	li r10, -1
/* 809CBCD4  4B 64 4A FC */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809CBCD8  7C 60 1B 78 */	mr r0, r3
lbl_809CBCDC:
/* 809CBCDC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 809CBCE0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809CBCE4  28 03 00 00 */	cmplwi r3, 0
/* 809CBCE8  41 82 00 1C */	beq lbl_809CBD04
/* 809CBCEC  80 03 00 04 */	lwz r0, 4(r3)
/* 809CBCF0  28 00 00 00 */	cmplwi r0, 0
/* 809CBCF4  40 82 00 10 */	bne lbl_809CBD04
/* 809CBCF8  4B 64 56 18 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 809CBCFC  38 00 00 00 */	li r0, 0
/* 809CBD00  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_809CBD04:
/* 809CBD04  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809CBD08  28 03 00 00 */	cmplwi r3, 0
/* 809CBD0C  40 82 00 0C */	bne lbl_809CBD18
/* 809CBD10  38 60 00 00 */	li r3, 0
/* 809CBD14  48 00 00 98 */	b lbl_809CBDAC
lbl_809CBD18:
/* 809CBD18  80 A3 00 04 */	lwz r5, 4(r3)
/* 809CBD1C  38 C0 00 00 */	li r6, 0
/* 809CBD20  3C 60 80 9D */	lis r3, ctrlJointCallBack__11daNpc_grC_cFP8J3DJointi@ha
/* 809CBD24  38 83 C0 E0 */	addi r4, r3, ctrlJointCallBack__11daNpc_grC_cFP8J3DJointi@l
/* 809CBD28  48 00 00 18 */	b lbl_809CBD40
lbl_809CBD2C:
/* 809CBD2C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 809CBD30  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809CBD34  7C 63 00 2E */	lwzx r3, r3, r0
/* 809CBD38  90 83 00 04 */	stw r4, 4(r3)
/* 809CBD3C  38 C6 00 01 */	addi r6, r6, 1
lbl_809CBD40:
/* 809CBD40  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809CBD44  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 809CBD48  7C 03 00 40 */	cmplw r3, r0
/* 809CBD4C  41 80 FF E0 */	blt lbl_809CBD2C
/* 809CBD50  93 C5 00 14 */	stw r30, 0x14(r5)
/* 809CBD54  38 00 00 00 */	li r0, 0
/* 809CBD58  90 1E 0B D8 */	stw r0, 0xbd8(r30)
/* 809CBD5C  7F C3 F3 78 */	mr r3, r30
/* 809CBD60  38 80 00 05 */	li r4, 5
/* 809CBD64  38 A0 00 00 */	li r5, 0
/* 809CBD68  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809CBD6C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 809CBD70  7D 89 03 A6 */	mtctr r12
/* 809CBD74  4E 80 04 21 */	bctrl 
/* 809CBD78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809CBD7C  40 82 00 0C */	bne lbl_809CBD88
/* 809CBD80  38 60 00 00 */	li r3, 0
/* 809CBD84  48 00 00 28 */	b lbl_809CBDAC
lbl_809CBD88:
/* 809CBD88  7F C3 F3 78 */	mr r3, r30
/* 809CBD8C  38 80 00 0A */	li r4, 0xa
/* 809CBD90  3C A0 80 9D */	lis r5, lit_4455@ha
/* 809CBD94  C0 25 F5 9C */	lfs f1, lit_4455@l(r5)
/* 809CBD98  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809CBD9C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 809CBDA0  7D 89 03 A6 */	mtctr r12
/* 809CBDA4  4E 80 04 21 */	bctrl 
/* 809CBDA8  38 60 00 01 */	li r3, 1
lbl_809CBDAC:
/* 809CBDAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809CBDB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809CBDB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809CBDB8  7C 08 03 A6 */	mtlr r0
/* 809CBDBC  38 21 00 20 */	addi r1, r1, 0x20
/* 809CBDC0  4E 80 00 20 */	blr 
