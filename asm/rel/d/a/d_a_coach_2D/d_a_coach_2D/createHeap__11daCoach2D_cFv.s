lbl_80656A38:
/* 80656A38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80656A3C  7C 08 02 A6 */	mflr r0
/* 80656A40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80656A44  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80656A48  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80656A4C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80656A50  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80656A54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80656A58  93 C1 00 08 */	stw r30, 8(r1)
/* 80656A5C  7C 7F 1B 78 */	mr r31, r3
/* 80656A60  38 60 01 18 */	li r3, 0x118
/* 80656A64  4B C7 81 E9 */	bl __nw__FUl
/* 80656A68  7C 60 1B 79 */	or. r0, r3, r3
/* 80656A6C  41 82 00 0C */	beq lbl_80656A78
/* 80656A70  4B CA 1A 29 */	bl __ct__9J2DScreenFv
/* 80656A74  7C 60 1B 78 */	mr r0, r3
lbl_80656A78:
/* 80656A78  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80656A7C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80656A80  28 00 00 00 */	cmplwi r0, 0
/* 80656A84  40 82 00 0C */	bne lbl_80656A90
/* 80656A88  38 60 00 00 */	li r3, 0
/* 80656A8C  48 00 02 64 */	b lbl_80656CF0
lbl_80656A90:
/* 80656A90  3C 60 80 65 */	lis r3, l_arcName@ha /* 0x806579F4@ha */
/* 80656A94  38 63 79 F4 */	addi r3, r3, l_arcName@l /* 0x806579F4@l */
/* 80656A98  80 63 00 00 */	lwz r3, 0(r3)
/* 80656A9C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80656AA0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80656AA4  3F C4 00 02 */	addis r30, r4, 2
/* 80656AA8  3B DE C2 F8 */	addi r30, r30, -15624
/* 80656AAC  7F C4 F3 78 */	mr r4, r30
/* 80656AB0  38 A0 00 80 */	li r5, 0x80
/* 80656AB4  4B 9E 57 31 */	bl getResInfo__14dRes_control_cFPCcP11dRes_info_ci
/* 80656AB8  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 80656ABC  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80656AC0  3C 80 80 65 */	lis r4, d_a_coach_2D__stringBase0@ha /* 0x80657954@ha */
/* 80656AC4  38 84 79 54 */	addi r4, r4, d_a_coach_2D__stringBase0@l /* 0x80657954@l */
/* 80656AC8  38 84 00 08 */	addi r4, r4, 8
/* 80656ACC  3C A0 00 02 */	lis r5, 2
/* 80656AD0  4B CA 1B 79 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 80656AD4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80656AD8  4B BF E6 11 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 80656ADC  3C 60 80 65 */	lis r3, l_arcName@ha /* 0x806579F4@ha */
/* 80656AE0  38 63 79 F4 */	addi r3, r3, l_arcName@l /* 0x806579F4@l */
/* 80656AE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80656AE8  3C 80 80 65 */	lis r4, d_a_coach_2D__stringBase0@ha /* 0x80657954@ha */
/* 80656AEC  38 84 79 54 */	addi r4, r4, d_a_coach_2D__stringBase0@l /* 0x80657954@l */
/* 80656AF0  38 84 00 27 */	addi r4, r4, 0x27
/* 80656AF4  7F C5 F3 78 */	mr r5, r30
/* 80656AF8  38 C0 00 80 */	li r6, 0x80
/* 80656AFC  4B 9E 58 81 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80656B00  4B CB 1F 6D */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 80656B04  90 7F 05 78 */	stw r3, 0x578(r31)
/* 80656B08  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80656B0C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80656B10  81 83 00 00 */	lwz r12, 0(r3)
/* 80656B14  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80656B18  7D 89 03 A6 */	mtctr r12
/* 80656B1C  4E 80 04 21 */	bctrl 
/* 80656B20  7F E3 FB 78 */	mr r3, r31
/* 80656B24  38 80 00 01 */	li r4, 1
/* 80656B28  48 00 09 69 */	bl setBrkAnime__11daCoach2D_cFb
/* 80656B2C  38 60 00 6C */	li r3, 0x6c
/* 80656B30  4B C7 81 1D */	bl __nw__FUl
/* 80656B34  7C 60 1B 79 */	or. r0, r3, r3
/* 80656B38  41 82 00 24 */	beq lbl_80656B5C
/* 80656B3C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80656B40  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 80656B44  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 80656B48  38 A0 00 6E */	li r5, 0x6e
/* 80656B4C  38 E0 00 02 */	li r7, 2
/* 80656B50  39 00 00 00 */	li r8, 0
/* 80656B54  4B BF CE 31 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80656B58  7C 60 1B 78 */	mr r0, r3
lbl_80656B5C:
/* 80656B5C  90 1F 05 80 */	stw r0, 0x580(r31)
/* 80656B60  38 60 00 6C */	li r3, 0x6c
/* 80656B64  4B C7 80 E9 */	bl __nw__FUl
/* 80656B68  7C 60 1B 79 */	or. r0, r3, r3
/* 80656B6C  41 82 00 28 */	beq lbl_80656B94
/* 80656B70  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80656B74  3C A0 68 61 */	lis r5, 0x6861 /* 0x68615F6E@ha */
/* 80656B78  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x68615F6E@l */
/* 80656B7C  3C A0 00 62 */	lis r5, 0x0062 /* 0x00626173@ha */
/* 80656B80  38 A5 61 73 */	addi r5, r5, 0x6173 /* 0x00626173@l */
/* 80656B84  38 E0 00 02 */	li r7, 2
/* 80656B88  39 00 00 00 */	li r8, 0
/* 80656B8C  4B BF CD F9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80656B90  7C 60 1B 78 */	mr r0, r3
lbl_80656B94:
/* 80656B94  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80656B98  38 60 00 6C */	li r3, 0x6c
/* 80656B9C  4B C7 80 B1 */	bl __nw__FUl
/* 80656BA0  7C 60 1B 79 */	or. r0, r3, r3
/* 80656BA4  41 82 00 24 */	beq lbl_80656BC8
/* 80656BA8  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80656BAC  3C A0 72 65 */	lis r5, 0x7265 /* 0x72655F6E@ha */
/* 80656BB0  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x72655F6E@l */
/* 80656BB4  38 A0 66 69 */	li r5, 0x6669
/* 80656BB8  38 E0 00 02 */	li r7, 2
/* 80656BBC  39 00 00 00 */	li r8, 0
/* 80656BC0  4B BF CD C5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80656BC4  7C 60 1B 78 */	mr r0, r3
lbl_80656BC8:
/* 80656BC8  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80656BCC  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80656BD0  80 63 00 04 */	lwz r3, 4(r3)
/* 80656BD4  4B CA 05 2D */	bl getBounds__7J2DPaneFv
/* 80656BD8  C3 E3 00 04 */	lfs f31, 4(r3)
/* 80656BDC  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80656BE0  80 63 00 04 */	lwz r3, 4(r3)
/* 80656BE4  4B CA 05 1D */	bl getBounds__7J2DPaneFv
/* 80656BE8  C3 C3 00 00 */	lfs f30, 0(r3)
/* 80656BEC  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80656BF0  3C 80 5F 62 */	lis r4, 0x5F62 /* 0x5F625F6E@ha */
/* 80656BF4  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F625F6E@l */
/* 80656BF8  3C 80 66 69 */	lis r4, 0x6669 /* 0x66697265@ha */
/* 80656BFC  38 A4 72 65 */	addi r5, r4, 0x7265 /* 0x66697265@l */
/* 80656C00  81 83 00 00 */	lwz r12, 0(r3)
/* 80656C04  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80656C08  7D 89 03 A6 */	mtctr r12
/* 80656C0C  4E 80 04 21 */	bctrl 
/* 80656C10  FC 20 F0 90 */	fmr f1, f30
/* 80656C14  FC 40 F8 90 */	fmr f2, f31
/* 80656C18  81 83 00 00 */	lwz r12, 0(r3)
/* 80656C1C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80656C20  7D 89 03 A6 */	mtctr r12
/* 80656C24  4E 80 04 21 */	bctrl 
/* 80656C28  38 60 00 6C */	li r3, 0x6c
/* 80656C2C  4B C7 80 21 */	bl __nw__FUl
/* 80656C30  7C 60 1B 79 */	or. r0, r3, r3
/* 80656C34  41 82 00 28 */	beq lbl_80656C5C
/* 80656C38  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80656C3C  3C A0 5F 62 */	lis r5, 0x5F62 /* 0x5F625F6E@ha */
/* 80656C40  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F625F6E@l */
/* 80656C44  3C A0 66 69 */	lis r5, 0x6669 /* 0x66697265@ha */
/* 80656C48  38 A5 72 65 */	addi r5, r5, 0x7265 /* 0x66697265@l */
/* 80656C4C  38 E0 00 02 */	li r7, 2
/* 80656C50  39 00 00 00 */	li r8, 0
/* 80656C54  4B BF CD 31 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80656C58  7C 60 1B 78 */	mr r0, r3
lbl_80656C5C:
/* 80656C5C  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 80656C60  38 60 00 24 */	li r3, 0x24
/* 80656C64  4B C7 7F E9 */	bl __nw__FUl
/* 80656C68  7C 60 1B 79 */	or. r0, r3, r3
/* 80656C6C  41 82 00 14 */	beq lbl_80656C80
/* 80656C70  38 80 00 06 */	li r4, 6
/* 80656C74  38 A0 00 FF */	li r5, 0xff
/* 80656C78  4B BE EC BD */	bl __ct__15dMsgScrnLight_cFUcUc
/* 80656C7C  7C 60 1B 78 */	mr r0, r3
lbl_80656C80:
/* 80656C80  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 80656C84  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 80656C88  28 00 00 00 */	cmplwi r0, 0
/* 80656C8C  41 82 00 34 */	beq lbl_80656CC0
/* 80656C90  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 80656C94  28 00 00 00 */	cmplwi r0, 0
/* 80656C98  41 82 00 28 */	beq lbl_80656CC0
/* 80656C9C  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 80656CA0  28 00 00 00 */	cmplwi r0, 0
/* 80656CA4  41 82 00 1C */	beq lbl_80656CC0
/* 80656CA8  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 80656CAC  28 00 00 00 */	cmplwi r0, 0
/* 80656CB0  41 82 00 10 */	beq lbl_80656CC0
/* 80656CB4  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 80656CB8  28 00 00 00 */	cmplwi r0, 0
/* 80656CBC  40 82 00 0C */	bne lbl_80656CC8
lbl_80656CC0:
/* 80656CC0  38 60 00 00 */	li r3, 0
/* 80656CC4  48 00 00 2C */	b lbl_80656CF0
lbl_80656CC8:
/* 80656CC8  93 FF 07 74 */	stw r31, 0x774(r31)
/* 80656CCC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80656CD0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80656CD4  41 82 00 10 */	beq lbl_80656CE4
/* 80656CD8  38 00 00 01 */	li r0, 1
/* 80656CDC  98 1F 07 82 */	stb r0, 0x782(r31)
/* 80656CE0  48 00 00 0C */	b lbl_80656CEC
lbl_80656CE4:
/* 80656CE4  38 00 00 00 */	li r0, 0
/* 80656CE8  98 1F 07 82 */	stb r0, 0x782(r31)
lbl_80656CEC:
/* 80656CEC  38 60 00 01 */	li r3, 1
lbl_80656CF0:
/* 80656CF0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80656CF4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80656CF8  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80656CFC  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80656D00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80656D04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80656D08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80656D0C  7C 08 03 A6 */	mtlr r0
/* 80656D10  38 21 00 30 */	addi r1, r1, 0x30
/* 80656D14  4E 80 00 20 */	blr 
