lbl_80D37AF4:
/* 80D37AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D37AF8  7C 08 02 A6 */	mflr r0
/* 80D37AFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D37B00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D37B04  93 C1 00 08 */	stw r30, 8(r1)
/* 80D37B08  7C 7F 1B 78 */	mr r31, r3
/* 80D37B0C  3C 60 80 D4 */	lis r3, l_arcName@ha
/* 80D37B10  38 63 86 34 */	addi r3, r3, l_arcName@l
/* 80D37B14  80 63 00 00 */	lwz r3, 0(r3)
/* 80D37B18  38 80 00 04 */	li r4, 4
/* 80D37B1C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D37B20  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D37B24  3F C5 00 02 */	addis r30, r5, 2
/* 80D37B28  3B DE C2 F8 */	addi r30, r30, -15624
/* 80D37B2C  7F C5 F3 78 */	mr r5, r30
/* 80D37B30  38 C0 00 80 */	li r6, 0x80
/* 80D37B34  4B 30 47 B8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D37B38  3C 80 00 08 */	lis r4, 8
/* 80D37B3C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D37B40  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D37B44  4B 2D D1 10 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D37B48  90 7F 05 84 */	stw r3, 0x584(r31)
/* 80D37B4C  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 80D37B50  28 00 00 00 */	cmplwi r0, 0
/* 80D37B54  40 82 00 0C */	bne lbl_80D37B60
/* 80D37B58  38 60 00 00 */	li r3, 0
/* 80D37B5C  48 00 00 AC */	b lbl_80D37C08
lbl_80D37B60:
/* 80D37B60  38 60 00 C0 */	li r3, 0xc0
/* 80D37B64  4B 59 70 E8 */	b __nw__FUl
/* 80D37B68  7C 60 1B 79 */	or. r0, r3, r3
/* 80D37B6C  41 82 00 0C */	beq lbl_80D37B78
/* 80D37B70  4B 34 3E 00 */	b __ct__4dBgWFv
/* 80D37B74  7C 60 1B 78 */	mr r0, r3
lbl_80D37B78:
/* 80D37B78  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80D37B7C  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 80D37B80  28 00 00 00 */	cmplwi r0, 0
/* 80D37B84  40 82 00 0C */	bne lbl_80D37B90
/* 80D37B88  38 60 00 00 */	li r3, 0
/* 80D37B8C  48 00 00 7C */	b lbl_80D37C08
lbl_80D37B90:
/* 80D37B90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D37B94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D37B98  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D37B9C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D37BA0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D37BA4  4B 60 ED 44 */	b PSMTXTrans
/* 80D37BA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D37BAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D37BB0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D37BB4  4B 2D 48 80 */	b mDoMtx_YrotM__FPA4_fs
/* 80D37BB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D37BBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D37BC0  38 9F 05 8C */	addi r4, r31, 0x58c
/* 80D37BC4  4B 60 E8 EC */	b PSMTXCopy
/* 80D37BC8  3C 60 80 D4 */	lis r3, l_arcName@ha
/* 80D37BCC  38 63 86 34 */	addi r3, r3, l_arcName@l
/* 80D37BD0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D37BD4  38 80 00 07 */	li r4, 7
/* 80D37BD8  7F C5 F3 78 */	mr r5, r30
/* 80D37BDC  38 C0 00 80 */	li r6, 0x80
/* 80D37BE0  4B 30 47 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D37BE4  7C 64 1B 78 */	mr r4, r3
/* 80D37BE8  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80D37BEC  38 A0 00 01 */	li r5, 1
/* 80D37BF0  38 DF 05 8C */	addi r6, r31, 0x58c
/* 80D37BF4  4B 34 23 44 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D37BF8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D37BFC  20 60 00 01 */	subfic r3, r0, 1
/* 80D37C00  30 03 FF FF */	addic r0, r3, -1
/* 80D37C04  7C 60 19 10 */	subfe r3, r0, r3
lbl_80D37C08:
/* 80D37C08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D37C0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D37C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D37C14  7C 08 03 A6 */	mtlr r0
/* 80D37C18  38 21 00 10 */	addi r1, r1, 0x10
/* 80D37C1C  4E 80 00 20 */	blr 
