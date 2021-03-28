lbl_80AC28A4:
/* 80AC28A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC28A8  7C 08 02 A6 */	mflr r0
/* 80AC28AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC28B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC28B4  4B 89 F9 28 */	b _savegpr_29
/* 80AC28B8  7C 7F 1B 78 */	mr r31, r3
/* 80AC28BC  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AC28C0  2C 00 00 02 */	cmpwi r0, 2
/* 80AC28C4  41 82 03 00 */	beq lbl_80AC2BC4
/* 80AC28C8  40 80 06 F4 */	bge lbl_80AC2FBC
/* 80AC28CC  2C 00 00 00 */	cmpwi r0, 0
/* 80AC28D0  40 80 00 0C */	bge lbl_80AC28DC
/* 80AC28D4  48 00 06 E8 */	b lbl_80AC2FBC
/* 80AC28D8  48 00 06 E4 */	b lbl_80AC2FBC
lbl_80AC28DC:
/* 80AC28DC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AC28E0  2C 00 00 00 */	cmpwi r0, 0
/* 80AC28E4  40 82 02 E0 */	bne lbl_80AC2BC4
/* 80AC28E8  88 1F 0F 88 */	lbz r0, 0xf88(r31)
/* 80AC28EC  2C 00 00 01 */	cmpwi r0, 1
/* 80AC28F0  41 82 02 6C */	beq lbl_80AC2B5C
/* 80AC28F4  40 80 00 10 */	bge lbl_80AC2904
/* 80AC28F8  2C 00 00 00 */	cmpwi r0, 0
/* 80AC28FC  40 80 00 14 */	bge lbl_80AC2910
/* 80AC2900  48 00 02 5C */	b lbl_80AC2B5C
lbl_80AC2904:
/* 80AC2904  2C 00 00 03 */	cmpwi r0, 3
/* 80AC2908  40 80 02 54 */	bge lbl_80AC2B5C
/* 80AC290C  48 00 00 D8 */	b lbl_80AC29E4
lbl_80AC2910:
/* 80AC2910  88 1F 0F D9 */	lbz r0, 0xfd9(r31)
/* 80AC2914  28 00 00 00 */	cmplwi r0, 0
/* 80AC2918  41 82 00 68 */	beq lbl_80AC2980
/* 80AC291C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AC2920  2C 00 00 00 */	cmpwi r0, 0
/* 80AC2924  41 82 00 28 */	beq lbl_80AC294C
/* 80AC2928  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AC292C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC2930  4B 68 2F 68 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2934  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AC2938  38 00 00 00 */	li r0, 0
/* 80AC293C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AC2940  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC2944  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC2948  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AC294C:
/* 80AC294C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC2950  2C 00 00 00 */	cmpwi r0, 0
/* 80AC2954  41 82 02 68 */	beq lbl_80AC2BBC
/* 80AC2958  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AC295C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC2960  4B 68 2F 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2964  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AC2968  38 00 00 00 */	li r0, 0
/* 80AC296C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC2970  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC2974  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC2978  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AC297C  48 00 02 40 */	b lbl_80AC2BBC
lbl_80AC2980:
/* 80AC2980  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AC2984  2C 00 00 00 */	cmpwi r0, 0
/* 80AC2988  41 82 00 28 */	beq lbl_80AC29B0
/* 80AC298C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AC2990  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC2994  4B 68 2F 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2998  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AC299C  38 00 00 00 */	li r0, 0
/* 80AC29A0  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AC29A4  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC29A8  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC29AC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AC29B0:
/* 80AC29B0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC29B4  2C 00 00 04 */	cmpwi r0, 4
/* 80AC29B8  41 82 02 04 */	beq lbl_80AC2BBC
/* 80AC29BC  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AC29C0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC29C4  4B 68 2E D4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC29C8  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AC29CC  38 00 00 04 */	li r0, 4
/* 80AC29D0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC29D4  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC29D8  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC29DC  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AC29E0  48 00 01 DC */	b lbl_80AC2BBC
lbl_80AC29E4:
/* 80AC29E4  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80AC29E8  4B 68 2D 20 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80AC29EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AC29F0  41 82 01 08 */	beq lbl_80AC2AF8
/* 80AC29F4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AC29F8  2C 00 00 00 */	cmpwi r0, 0
/* 80AC29FC  41 82 00 28 */	beq lbl_80AC2A24
/* 80AC2A00  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80AC2A04  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC2A08  4B 68 2E 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2A0C  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80AC2A10  38 00 00 00 */	li r0, 0
/* 80AC2A14  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AC2A18  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC2A1C  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC2A20  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AC2A24:
/* 80AC2A24  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC2A28  2C 00 00 08 */	cmpwi r0, 8
/* 80AC2A2C  41 82 00 28 */	beq lbl_80AC2A54
/* 80AC2A30  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80AC2A34  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC2A38  4B 68 2E 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2A3C  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80AC2A40  38 00 00 08 */	li r0, 8
/* 80AC2A44  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC2A48  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC2A4C  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC2A50  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AC2A54:
/* 80AC2A54  38 60 00 00 */	li r3, 0
/* 80AC2A58  38 00 00 08 */	li r0, 8
/* 80AC2A5C  7C 09 03 A6 */	mtctr r0
lbl_80AC2A60:
/* 80AC2A60  38 03 1A 98 */	addi r0, r3, 0x1a98
/* 80AC2A64  7C 1E 00 AE */	lbzx r0, r30, r0
/* 80AC2A68  7C 00 07 74 */	extsb r0, r0
/* 80AC2A6C  2C 00 00 02 */	cmpwi r0, 2
/* 80AC2A70  40 82 00 0C */	bne lbl_80AC2A7C
/* 80AC2A74  38 00 00 01 */	li r0, 1
/* 80AC2A78  48 00 00 10 */	b lbl_80AC2A88
lbl_80AC2A7C:
/* 80AC2A7C  38 63 00 01 */	addi r3, r3, 1
/* 80AC2A80  42 00 FF E0 */	bdnz lbl_80AC2A60
/* 80AC2A84  38 00 00 00 */	li r0, 0
lbl_80AC2A88:
/* 80AC2A88  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80AC2A8C  28 00 00 01 */	cmplwi r0, 1
/* 80AC2A90  40 82 01 2C */	bne lbl_80AC2BBC
/* 80AC2A94  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AC2A98  2C 00 00 00 */	cmpwi r0, 0
/* 80AC2A9C  41 82 00 28 */	beq lbl_80AC2AC4
/* 80AC2AA0  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80AC2AA4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC2AA8  4B 68 2D F0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2AAC  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80AC2AB0  38 00 00 00 */	li r0, 0
/* 80AC2AB4  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AC2AB8  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC2ABC  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC2AC0  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AC2AC4:
/* 80AC2AC4  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC2AC8  2C 00 00 09 */	cmpwi r0, 9
/* 80AC2ACC  41 82 00 F0 */	beq lbl_80AC2BBC
/* 80AC2AD0  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80AC2AD4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC2AD8  4B 68 2D C0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2ADC  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80AC2AE0  38 00 00 09 */	li r0, 9
/* 80AC2AE4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC2AE8  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC2AEC  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC2AF0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AC2AF4  48 00 00 C8 */	b lbl_80AC2BBC
lbl_80AC2AF8:
/* 80AC2AF8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AC2AFC  2C 00 00 00 */	cmpwi r0, 0
/* 80AC2B00  41 82 00 28 */	beq lbl_80AC2B28
/* 80AC2B04  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80AC2B08  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC2B0C  4B 68 2D 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2B10  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80AC2B14  38 00 00 00 */	li r0, 0
/* 80AC2B18  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AC2B1C  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC2B20  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC2B24  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AC2B28:
/* 80AC2B28  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC2B2C  2C 00 00 00 */	cmpwi r0, 0
/* 80AC2B30  41 82 00 8C */	beq lbl_80AC2BBC
/* 80AC2B34  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80AC2B38  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC2B3C  4B 68 2D 5C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2B40  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80AC2B44  38 00 00 00 */	li r0, 0
/* 80AC2B48  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC2B4C  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC2B50  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC2B54  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AC2B58  48 00 00 64 */	b lbl_80AC2BBC
lbl_80AC2B5C:
/* 80AC2B5C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AC2B60  2C 00 00 00 */	cmpwi r0, 0
/* 80AC2B64  41 82 00 28 */	beq lbl_80AC2B8C
/* 80AC2B68  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80AC2B6C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC2B70  4B 68 2D 28 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2B74  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80AC2B78  38 00 00 00 */	li r0, 0
/* 80AC2B7C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AC2B80  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC2B84  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC2B88  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AC2B8C:
/* 80AC2B8C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC2B90  2C 00 00 00 */	cmpwi r0, 0
/* 80AC2B94  41 82 00 28 */	beq lbl_80AC2BBC
/* 80AC2B98  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80AC2B9C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC2BA0  4B 68 2C F8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2BA4  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80AC2BA8  38 00 00 00 */	li r0, 0
/* 80AC2BAC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC2BB0  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC2BB4  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC2BB8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AC2BBC:
/* 80AC2BBC  38 00 00 02 */	li r0, 2
/* 80AC2BC0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AC2BC4:
/* 80AC2BC4  88 1F 0F 88 */	lbz r0, 0xf88(r31)
/* 80AC2BC8  28 00 00 01 */	cmplwi r0, 1
/* 80AC2BCC  40 82 00 24 */	bne lbl_80AC2BF0
/* 80AC2BD0  38 60 02 5C */	li r3, 0x25c
/* 80AC2BD4  4B 68 9E D8 */	b daNpcT_chkEvtBit__FUl
/* 80AC2BD8  2C 03 00 00 */	cmpwi r3, 0
/* 80AC2BDC  41 82 00 14 */	beq lbl_80AC2BF0
/* 80AC2BE0  7F E3 FB 78 */	mr r3, r31
/* 80AC2BE4  4B 55 70 98 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80AC2BE8  38 60 00 01 */	li r3, 1
/* 80AC2BEC  48 00 03 D4 */	b lbl_80AC2FC0
lbl_80AC2BF0:
/* 80AC2BF0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AC2BF4  2C 00 00 00 */	cmpwi r0, 0
/* 80AC2BF8  40 82 03 24 */	bne lbl_80AC2F1C
/* 80AC2BFC  88 1F 0F 88 */	lbz r0, 0xf88(r31)
/* 80AC2C00  28 00 00 02 */	cmplwi r0, 2
/* 80AC2C04  40 82 00 C0 */	bne lbl_80AC2CC4
/* 80AC2C08  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC2C0C  2C 00 00 08 */	cmpwi r0, 8
/* 80AC2C10  40 82 00 B4 */	bne lbl_80AC2CC4
/* 80AC2C14  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80AC2C18  4B 68 2A F0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80AC2C1C  28 03 00 00 */	cmplwi r3, 0
/* 80AC2C20  41 82 00 A4 */	beq lbl_80AC2CC4
/* 80AC2C24  38 80 00 00 */	li r4, 0
/* 80AC2C28  38 00 00 08 */	li r0, 8
/* 80AC2C2C  7C 09 03 A6 */	mtctr r0
lbl_80AC2C30:
/* 80AC2C30  38 04 1A 98 */	addi r0, r4, 0x1a98
/* 80AC2C34  7C 03 00 AE */	lbzx r0, r3, r0
/* 80AC2C38  7C 00 07 74 */	extsb r0, r0
/* 80AC2C3C  2C 00 00 02 */	cmpwi r0, 2
/* 80AC2C40  40 82 00 0C */	bne lbl_80AC2C4C
/* 80AC2C44  38 00 00 01 */	li r0, 1
/* 80AC2C48  48 00 00 10 */	b lbl_80AC2C58
lbl_80AC2C4C:
/* 80AC2C4C  38 84 00 01 */	addi r4, r4, 1
/* 80AC2C50  42 00 FF E0 */	bdnz lbl_80AC2C30
/* 80AC2C54  38 00 00 00 */	li r0, 0
lbl_80AC2C58:
/* 80AC2C58  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80AC2C5C  28 00 00 01 */	cmplwi r0, 1
/* 80AC2C60  40 82 00 64 */	bne lbl_80AC2CC4
/* 80AC2C64  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AC2C68  2C 00 00 00 */	cmpwi r0, 0
/* 80AC2C6C  41 82 00 28 */	beq lbl_80AC2C94
/* 80AC2C70  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80AC2C74  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC2C78  4B 68 2C 20 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2C7C  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80AC2C80  38 00 00 00 */	li r0, 0
/* 80AC2C84  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AC2C88  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC2C8C  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC2C90  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AC2C94:
/* 80AC2C94  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC2C98  2C 00 00 09 */	cmpwi r0, 9
/* 80AC2C9C  41 82 00 28 */	beq lbl_80AC2CC4
/* 80AC2CA0  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80AC2CA4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC2CA8  4B 68 2B F0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2CAC  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80AC2CB0  38 00 00 09 */	li r0, 9
/* 80AC2CB4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC2CB8  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC2CBC  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC2CC0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AC2CC4:
/* 80AC2CC4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AC2CC8  4B 68 2A 40 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80AC2CCC  28 03 00 00 */	cmplwi r3, 0
/* 80AC2CD0  41 82 00 D4 */	beq lbl_80AC2DA4
/* 80AC2CD4  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AC2CD8  28 00 00 00 */	cmplwi r0, 0
/* 80AC2CDC  40 82 00 C8 */	bne lbl_80AC2DA4
/* 80AC2CE0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AC2CE4  2C 00 00 01 */	cmpwi r0, 1
/* 80AC2CE8  41 82 00 2C */	beq lbl_80AC2D14
/* 80AC2CEC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AC2CF0  4B 68 2A 0C */	b remove__18daNpcT_ActorMngr_cFv
/* 80AC2CF4  38 00 00 00 */	li r0, 0
/* 80AC2CF8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AC2CFC  3C 60 80 AC */	lis r3, lit_4231@ha
/* 80AC2D00  C0 03 45 AC */	lfs f0, lit_4231@l(r3)
/* 80AC2D04  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AC2D08  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AC2D0C  38 00 00 01 */	li r0, 1
/* 80AC2D10  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AC2D14:
/* 80AC2D14  38 00 00 00 */	li r0, 0
/* 80AC2D18  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AC2D1C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AC2D20  4B 68 29 E8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80AC2D24  7C 64 1B 78 */	mr r4, r3
/* 80AC2D28  7F E3 FB 78 */	mr r3, r31
/* 80AC2D2C  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80AC2D30  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80AC2D34  4B 68 7E 9C */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80AC2D38  2C 03 00 00 */	cmpwi r3, 0
/* 80AC2D3C  40 82 00 3C */	bne lbl_80AC2D78
/* 80AC2D40  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AC2D44  2C 00 00 00 */	cmpwi r0, 0
/* 80AC2D48  41 82 00 28 */	beq lbl_80AC2D70
/* 80AC2D4C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AC2D50  4B 68 29 AC */	b remove__18daNpcT_ActorMngr_cFv
/* 80AC2D54  38 00 00 00 */	li r0, 0
/* 80AC2D58  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AC2D5C  3C 60 80 AC */	lis r3, lit_4231@ha
/* 80AC2D60  C0 03 45 AC */	lfs f0, lit_4231@l(r3)
/* 80AC2D64  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AC2D68  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AC2D6C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AC2D70:
/* 80AC2D70  38 00 00 00 */	li r0, 0
/* 80AC2D74  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80AC2D78:
/* 80AC2D78  7F E3 FB 78 */	mr r3, r31
/* 80AC2D7C  4B 68 85 BC */	b srchPlayerActor__8daNpcT_cFv
/* 80AC2D80  2C 03 00 00 */	cmpwi r3, 0
/* 80AC2D84  40 82 01 98 */	bne lbl_80AC2F1C
/* 80AC2D88  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80AC2D8C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AC2D90  7C 03 00 00 */	cmpw r3, r0
/* 80AC2D94  40 82 01 88 */	bne lbl_80AC2F1C
/* 80AC2D98  38 00 00 01 */	li r0, 1
/* 80AC2D9C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80AC2DA0  48 00 01 7C */	b lbl_80AC2F1C
lbl_80AC2DA4:
/* 80AC2DA4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AC2DA8  2C 00 00 00 */	cmpwi r0, 0
/* 80AC2DAC  41 82 00 28 */	beq lbl_80AC2DD4
/* 80AC2DB0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AC2DB4  4B 68 29 48 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AC2DB8  38 00 00 00 */	li r0, 0
/* 80AC2DBC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AC2DC0  3C 60 80 AC */	lis r3, lit_4231@ha
/* 80AC2DC4  C0 03 45 AC */	lfs f0, lit_4231@l(r3)
/* 80AC2DC8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AC2DCC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AC2DD0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AC2DD4:
/* 80AC2DD4  38 00 00 00 */	li r0, 0
/* 80AC2DD8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AC2DDC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AC2DE0  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AC2DE4  7C 04 00 00 */	cmpw r4, r0
/* 80AC2DE8  41 82 00 58 */	beq lbl_80AC2E40
/* 80AC2DEC  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80AC2DF0  28 00 00 00 */	cmplwi r0, 0
/* 80AC2DF4  41 82 00 30 */	beq lbl_80AC2E24
/* 80AC2DF8  7F E3 FB 78 */	mr r3, r31
/* 80AC2DFC  38 A0 FF FF */	li r5, -1
/* 80AC2E00  38 C0 FF FF */	li r6, -1
/* 80AC2E04  38 E0 00 0F */	li r7, 0xf
/* 80AC2E08  39 00 00 00 */	li r8, 0
/* 80AC2E0C  4B 68 88 3C */	b step__8daNpcT_cFsiiii
/* 80AC2E10  2C 03 00 00 */	cmpwi r3, 0
/* 80AC2E14  41 82 00 20 */	beq lbl_80AC2E34
/* 80AC2E18  38 00 00 01 */	li r0, 1
/* 80AC2E1C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80AC2E20  48 00 00 14 */	b lbl_80AC2E34
lbl_80AC2E24:
/* 80AC2E24  7F E3 FB 78 */	mr r3, r31
/* 80AC2E28  4B 68 7B F0 */	b setAngle__8daNpcT_cFs
/* 80AC2E2C  38 00 00 01 */	li r0, 1
/* 80AC2E30  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AC2E34:
/* 80AC2E34  38 00 00 00 */	li r0, 0
/* 80AC2E38  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80AC2E3C  48 00 00 E0 */	b lbl_80AC2F1C
lbl_80AC2E40:
/* 80AC2E40  88 1F 0F 88 */	lbz r0, 0xf88(r31)
/* 80AC2E44  28 00 00 00 */	cmplwi r0, 0
/* 80AC2E48  40 82 00 C0 */	bne lbl_80AC2F08
/* 80AC2E4C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC2E50  2C 00 00 05 */	cmpwi r0, 5
/* 80AC2E54  40 82 00 20 */	bne lbl_80AC2E74
/* 80AC2E58  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC2E5C  4B 68 2B C8 */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80AC2E60  2C 03 00 00 */	cmpwi r3, 0
/* 80AC2E64  41 82 00 A4 */	beq lbl_80AC2F08
/* 80AC2E68  38 00 00 01 */	li r0, 1
/* 80AC2E6C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80AC2E70  48 00 00 98 */	b lbl_80AC2F08
lbl_80AC2E74:
/* 80AC2E74  80 1F 0F D4 */	lwz r0, 0xfd4(r31)
/* 80AC2E78  2C 00 00 00 */	cmpwi r0, 0
/* 80AC2E7C  41 82 00 8C */	beq lbl_80AC2F08
/* 80AC2E80  38 7F 0F D4 */	addi r3, r31, 0xfd4
/* 80AC2E84  48 00 14 41 */	bl func_80AC42C4
/* 80AC2E88  2C 03 00 00 */	cmpwi r3, 0
/* 80AC2E8C  40 82 00 7C */	bne lbl_80AC2F08
/* 80AC2E90  88 1F 0F 88 */	lbz r0, 0xf88(r31)
/* 80AC2E94  28 00 00 00 */	cmplwi r0, 0
/* 80AC2E98  40 82 00 70 */	bne lbl_80AC2F08
/* 80AC2E9C  88 1F 0F D9 */	lbz r0, 0xfd9(r31)
/* 80AC2EA0  28 00 00 00 */	cmplwi r0, 0
/* 80AC2EA4  40 82 00 64 */	bne lbl_80AC2F08
/* 80AC2EA8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AC2EAC  2C 00 00 00 */	cmpwi r0, 0
/* 80AC2EB0  41 82 00 28 */	beq lbl_80AC2ED8
/* 80AC2EB4  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80AC2EB8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC2EBC  4B 68 29 DC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2EC0  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80AC2EC4  38 00 00 00 */	li r0, 0
/* 80AC2EC8  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AC2ECC  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC2ED0  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC2ED4  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AC2ED8:
/* 80AC2ED8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC2EDC  2C 00 00 05 */	cmpwi r0, 5
/* 80AC2EE0  41 82 00 28 */	beq lbl_80AC2F08
/* 80AC2EE4  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80AC2EE8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC2EEC  4B 68 29 AC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2EF0  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80AC2EF4  38 00 00 05 */	li r0, 5
/* 80AC2EF8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC2EFC  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC2F00  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC2F04  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AC2F08:
/* 80AC2F08  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AC2F0C  28 00 00 00 */	cmplwi r0, 0
/* 80AC2F10  40 82 00 0C */	bne lbl_80AC2F1C
/* 80AC2F14  7F E3 FB 78 */	mr r3, r31
/* 80AC2F18  4B 68 84 20 */	b srchPlayerActor__8daNpcT_cFv
lbl_80AC2F1C:
/* 80AC2F1C  88 1F 0F 88 */	lbz r0, 0xf88(r31)
/* 80AC2F20  28 00 00 00 */	cmplwi r0, 0
/* 80AC2F24  40 82 00 98 */	bne lbl_80AC2FBC
/* 80AC2F28  88 1F 0F D9 */	lbz r0, 0xfd9(r31)
/* 80AC2F2C  28 00 00 00 */	cmplwi r0, 0
/* 80AC2F30  40 82 00 84 */	bne lbl_80AC2FB4
/* 80AC2F34  38 00 00 00 */	li r0, 0
/* 80AC2F38  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80AC2F3C  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)
/* 80AC2F40  3C 60 80 AC */	lis r3, srchYm__12daNpc_Saru_cFPvPv@ha
/* 80AC2F44  38 63 0B 64 */	addi r3, r3, srchYm__12daNpc_Saru_cFPvPv@l
/* 80AC2F48  7F E4 FB 78 */	mr r4, r31
/* 80AC2F4C  4B 55 68 AC */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80AC2F50  38 E0 00 00 */	li r7, 0
/* 80AC2F54  38 60 00 00 */	li r3, 0
/* 80AC2F58  3C 80 80 45 */	lis r4, mFindCount__8daNpcT_c@ha
/* 80AC2F5C  80 C4 0F DC */	lwz r6, mFindCount__8daNpcT_c@l(r4)
/* 80AC2F60  3C 80 80 42 */	lis r4, mFindActorPtrs__8daNpcT_c@ha
/* 80AC2F64  38 A4 57 08 */	addi r5, r4, mFindActorPtrs__8daNpcT_c@l
/* 80AC2F68  7C C9 03 A6 */	mtctr r6
/* 80AC2F6C  2C 06 00 00 */	cmpwi r6, 0
/* 80AC2F70  40 81 00 20 */	ble lbl_80AC2F90
lbl_80AC2F74:
/* 80AC2F74  7C 85 18 2E */	lwzx r4, r5, r3
/* 80AC2F78  A8 04 05 62 */	lha r0, 0x562(r4)
/* 80AC2F7C  2C 00 00 00 */	cmpwi r0, 0
/* 80AC2F80  40 81 00 08 */	ble lbl_80AC2F88
/* 80AC2F84  38 E7 00 01 */	addi r7, r7, 1
lbl_80AC2F88:
/* 80AC2F88  38 63 00 04 */	addi r3, r3, 4
/* 80AC2F8C  42 00 FF E8 */	bdnz lbl_80AC2F74
lbl_80AC2F90:
/* 80AC2F90  2C 06 00 00 */	cmpwi r6, 0
/* 80AC2F94  41 82 00 28 */	beq lbl_80AC2FBC
/* 80AC2F98  2C 07 00 00 */	cmpwi r7, 0
/* 80AC2F9C  40 82 00 20 */	bne lbl_80AC2FBC
/* 80AC2FA0  38 00 00 02 */	li r0, 2
/* 80AC2FA4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AC2FA8  38 00 00 01 */	li r0, 1
/* 80AC2FAC  98 1F 0F D8 */	stb r0, 0xfd8(r31)
/* 80AC2FB0  48 00 00 0C */	b lbl_80AC2FBC
lbl_80AC2FB4:
/* 80AC2FB4  38 00 00 00 */	li r0, 0
/* 80AC2FB8  98 1F 0F D8 */	stb r0, 0xfd8(r31)
lbl_80AC2FBC:
/* 80AC2FBC  38 60 00 01 */	li r3, 1
lbl_80AC2FC0:
/* 80AC2FC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC2FC4  4B 89 F2 64 */	b _restgpr_29
/* 80AC2FC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC2FCC  7C 08 03 A6 */	mtlr r0
/* 80AC2FD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC2FD4  4E 80 00 20 */	blr 
