lbl_80AECF58:
/* 80AECF58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AECF5C  7C 08 02 A6 */	mflr r0
/* 80AECF60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AECF64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AECF68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AECF6C  7C 7E 1B 78 */	mr r30, r3
/* 80AECF70  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80AECF74  28 00 00 01 */	cmplwi r0, 1
/* 80AECF78  38 00 00 00 */	li r0, 0
/* 80AECF7C  54 05 18 38 */	slwi r5, r0, 3
/* 80AECF80  3C 60 80 AF */	lis r3, l_bmdData@ha /* 0x80AEF214@ha */
/* 80AECF84  38 83 F2 14 */	addi r4, r3, l_bmdData@l /* 0x80AEF214@l */
/* 80AECF88  7C 64 2A 14 */	add r3, r4, r5
/* 80AECF8C  80 03 00 04 */	lwz r0, 4(r3)
/* 80AECF90  54 00 10 3A */	slwi r0, r0, 2
/* 80AECF94  3C 60 80 AF */	lis r3, l_resNameList@ha /* 0x80AEF22C@ha */
/* 80AECF98  38 63 F2 2C */	addi r3, r3, l_resNameList@l /* 0x80AEF22C@l */
/* 80AECF9C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AECFA0  7C 84 28 2E */	lwzx r4, r4, r5
/* 80AECFA4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AECFA8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AECFAC  3C A5 00 02 */	addis r5, r5, 2
/* 80AECFB0  38 C0 00 80 */	li r6, 0x80
/* 80AECFB4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80AECFB8  4B 54 F3 35 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AECFBC  7C 7F 1B 78 */	mr r31, r3
/* 80AECFC0  38 60 00 58 */	li r3, 0x58
/* 80AECFC4  4B 7E 1C 89 */	bl __nw__FUl
/* 80AECFC8  7C 60 1B 79 */	or. r0, r3, r3
/* 80AECFCC  41 82 00 4C */	beq lbl_80AED018
/* 80AECFD0  38 1E 05 80 */	addi r0, r30, 0x580
/* 80AECFD4  90 01 00 08 */	stw r0, 8(r1)
/* 80AECFD8  3C 00 00 08 */	lis r0, 8
/* 80AECFDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AECFE0  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80AECFE4  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80AECFE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AECFEC  7F E4 FB 78 */	mr r4, r31
/* 80AECFF0  38 A0 00 00 */	li r5, 0
/* 80AECFF4  38 C0 00 00 */	li r6, 0
/* 80AECFF8  38 E0 00 00 */	li r7, 0
/* 80AECFFC  39 00 FF FF */	li r8, -1
/* 80AED000  3D 20 80 AF */	lis r9, lit_4436@ha /* 0x80AEF1A8@ha */
/* 80AED004  C0 29 F1 A8 */	lfs f1, lit_4436@l(r9)  /* 0x80AEF1A8@l */
/* 80AED008  39 20 00 00 */	li r9, 0
/* 80AED00C  39 40 FF FF */	li r10, -1
/* 80AED010  4B 52 37 C1 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AED014  7C 60 1B 78 */	mr r0, r3
lbl_80AED018:
/* 80AED018  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80AED01C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AED020  28 03 00 00 */	cmplwi r3, 0
/* 80AED024  41 82 00 1C */	beq lbl_80AED040
/* 80AED028  80 03 00 04 */	lwz r0, 4(r3)
/* 80AED02C  28 00 00 00 */	cmplwi r0, 0
/* 80AED030  40 82 00 10 */	bne lbl_80AED040
/* 80AED034  4B 52 42 DD */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80AED038  38 00 00 00 */	li r0, 0
/* 80AED03C  90 1E 05 78 */	stw r0, 0x578(r30)
lbl_80AED040:
/* 80AED040  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AED044  28 03 00 00 */	cmplwi r3, 0
/* 80AED048  40 82 00 0C */	bne lbl_80AED054
/* 80AED04C  38 60 00 00 */	li r3, 0
/* 80AED050  48 00 00 90 */	b lbl_80AED0E0
lbl_80AED054:
/* 80AED054  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AED058  38 C0 00 00 */	li r6, 0
/* 80AED05C  3C 60 80 AF */	lis r3, ctrlJointCallBack__12daNpc_solA_cFP8J3DJointi@ha /* 0x80AED208@ha */
/* 80AED060  38 83 D2 08 */	addi r4, r3, ctrlJointCallBack__12daNpc_solA_cFP8J3DJointi@l /* 0x80AED208@l */
/* 80AED064  48 00 00 18 */	b lbl_80AED07C
lbl_80AED068:
/* 80AED068  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80AED06C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80AED070  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AED074  90 83 00 04 */	stw r4, 4(r3)
/* 80AED078  38 C6 00 01 */	addi r6, r6, 1
lbl_80AED07C:
/* 80AED07C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80AED080  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 80AED084  7C 03 00 40 */	cmplw r3, r0
/* 80AED088  41 80 FF E0 */	blt lbl_80AED068
/* 80AED08C  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80AED090  7F C3 F3 78 */	mr r3, r30
/* 80AED094  38 80 00 00 */	li r4, 0
/* 80AED098  38 A0 00 00 */	li r5, 0
/* 80AED09C  4B 65 D2 ED */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80AED0A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AED0A4  41 82 00 38 */	beq lbl_80AED0DC
/* 80AED0A8  7F C3 F3 78 */	mr r3, r30
/* 80AED0AC  38 80 00 00 */	li r4, 0
/* 80AED0B0  3C A0 80 AF */	lis r5, lit_4295@ha /* 0x80AEF19C@ha */
/* 80AED0B4  C0 25 F1 9C */	lfs f1, lit_4295@l(r5)  /* 0x80AEF19C@l */
/* 80AED0B8  38 A0 00 00 */	li r5, 0
/* 80AED0BC  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AED0C0  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80AED0C4  7D 89 03 A6 */	mtctr r12
/* 80AED0C8  4E 80 04 21 */	bctrl 
/* 80AED0CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AED0D0  41 82 00 0C */	beq lbl_80AED0DC
/* 80AED0D4  38 60 00 01 */	li r3, 1
/* 80AED0D8  48 00 00 08 */	b lbl_80AED0E0
lbl_80AED0DC:
/* 80AED0DC  38 60 00 00 */	li r3, 0
lbl_80AED0E0:
/* 80AED0E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AED0E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AED0E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AED0EC  7C 08 03 A6 */	mtlr r0
/* 80AED0F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80AED0F4  4E 80 00 20 */	blr 
