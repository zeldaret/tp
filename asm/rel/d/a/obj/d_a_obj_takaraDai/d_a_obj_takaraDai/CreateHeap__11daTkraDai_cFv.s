lbl_80D06FFC:
/* 80D06FFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D07000  7C 08 02 A6 */	mflr r0
/* 80D07004  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D07008  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0700C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D07010  7C 7F 1B 78 */	mr r31, r3
/* 80D07014  3C 60 80 D0 */	lis r3, stringBase0@ha
/* 80D07018  38 63 78 54 */	addi r3, r3, stringBase0@l
/* 80D0701C  38 80 00 04 */	li r4, 4
/* 80D07020  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D07024  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D07028  3F C5 00 02 */	addis r30, r5, 2
/* 80D0702C  3B DE C2 F8 */	addi r30, r30, -15624
/* 80D07030  7F C5 F3 78 */	mr r5, r30
/* 80D07034  38 C0 00 80 */	li r6, 0x80
/* 80D07038  4B 33 52 B4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D0703C  3C 80 00 08 */	lis r4, 8
/* 80D07040  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D07044  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D07048  4B 30 DC 0C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D0704C  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80D07050  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 80D07054  28 00 00 00 */	cmplwi r0, 0
/* 80D07058  40 82 00 0C */	bne lbl_80D07064
/* 80D0705C  38 60 00 00 */	li r3, 0
/* 80D07060  48 00 00 C8 */	b lbl_80D07128
lbl_80D07064:
/* 80D07064  3C 60 80 D0 */	lis r3, stringBase0@ha
/* 80D07068  38 63 78 54 */	addi r3, r3, stringBase0@l
/* 80D0706C  38 80 00 05 */	li r4, 5
/* 80D07070  7F C5 F3 78 */	mr r5, r30
/* 80D07074  38 C0 00 80 */	li r6, 0x80
/* 80D07078  4B 33 52 74 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D0707C  3C 80 00 08 */	lis r4, 8
/* 80D07080  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D07084  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D07088  4B 30 DB CC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D0708C  90 7F 05 AC */	stw r3, 0x5ac(r31)
/* 80D07090  80 1F 05 AC */	lwz r0, 0x5ac(r31)
/* 80D07094  28 00 00 00 */	cmplwi r0, 0
/* 80D07098  40 82 00 0C */	bne lbl_80D070A4
/* 80D0709C  38 60 00 00 */	li r3, 0
/* 80D070A0  48 00 00 88 */	b lbl_80D07128
lbl_80D070A4:
/* 80D070A4  38 60 00 C0 */	li r3, 0xc0
/* 80D070A8  4B 5C 7B A4 */	b __nw__FUl
/* 80D070AC  7C 60 1B 79 */	or. r0, r3, r3
/* 80D070B0  41 82 00 0C */	beq lbl_80D070BC
/* 80D070B4  4B 37 48 BC */	b __ct__4dBgWFv
/* 80D070B8  7C 60 1B 78 */	mr r0, r3
lbl_80D070BC:
/* 80D070BC  90 1F 06 28 */	stw r0, 0x628(r31)
/* 80D070C0  80 1F 06 28 */	lwz r0, 0x628(r31)
/* 80D070C4  28 00 00 00 */	cmplwi r0, 0
/* 80D070C8  41 82 00 4C */	beq lbl_80D07114
/* 80D070CC  3C 60 80 D0 */	lis r3, stringBase0@ha
/* 80D070D0  38 63 78 54 */	addi r3, r3, stringBase0@l
/* 80D070D4  38 80 00 09 */	li r4, 9
/* 80D070D8  7F C5 F3 78 */	mr r5, r30
/* 80D070DC  38 C0 00 80 */	li r6, 0x80
/* 80D070E0  4B 33 52 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D070E4  7C 64 1B 78 */	mr r4, r3
/* 80D070E8  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80D070EC  38 A0 00 01 */	li r5, 1
/* 80D070F0  38 DF 06 2C */	addi r6, r31, 0x62c
/* 80D070F4  4B 37 2E 44 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D070F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D070FC  40 82 00 18 */	bne lbl_80D07114
/* 80D07100  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80D07104  38 03 5A D8 */	addi r0, r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80D07108  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80D0710C  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80D07110  48 00 00 14 */	b lbl_80D07124
lbl_80D07114:
/* 80D07114  38 00 00 00 */	li r0, 0
/* 80D07118  90 1F 06 28 */	stw r0, 0x628(r31)
/* 80D0711C  38 60 00 00 */	li r3, 0
/* 80D07120  48 00 00 08 */	b lbl_80D07128
lbl_80D07124:
/* 80D07124  38 60 00 01 */	li r3, 1
lbl_80D07128:
/* 80D07128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0712C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D07130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D07134  7C 08 03 A6 */	mtlr r0
/* 80D07138  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0713C  4E 80 00 20 */	blr 
