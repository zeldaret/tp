lbl_80BCF9E4:
/* 80BCF9E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCF9E8  7C 08 02 A6 */	mflr r0
/* 80BCF9EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCF9F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCF9F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BCF9F8  7C 7F 1B 78 */	mr r31, r3
/* 80BCF9FC  3C 60 80 BD */	lis r3, l_arcName@ha
/* 80BCFA00  38 63 02 60 */	addi r3, r3, l_arcName@l
/* 80BCFA04  80 63 00 00 */	lwz r3, 0(r3)
/* 80BCFA08  3C 80 80 BD */	lis r4, stringBase0@ha
/* 80BCFA0C  38 84 02 0C */	addi r4, r4, stringBase0@l
/* 80BCFA10  38 84 00 18 */	addi r4, r4, 0x18
/* 80BCFA14  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BCFA18  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BCFA1C  3F C5 00 02 */	addis r30, r5, 2
/* 80BCFA20  3B DE C2 F8 */	addi r30, r30, -15624
/* 80BCFA24  7F C5 F3 78 */	mr r5, r30
/* 80BCFA28  38 C0 00 80 */	li r6, 0x80
/* 80BCFA2C  4B 46 C9 50 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BCFA30  3C 80 00 08 */	lis r4, 8
/* 80BCFA34  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BCFA38  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BCFA3C  4B 44 52 18 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BCFA40  90 7F 06 5C */	stw r3, 0x65c(r31)
/* 80BCFA44  80 1F 06 5C */	lwz r0, 0x65c(r31)
/* 80BCFA48  28 00 00 00 */	cmplwi r0, 0
/* 80BCFA4C  40 82 00 0C */	bne lbl_80BCFA58
/* 80BCFA50  38 60 00 00 */	li r3, 0
/* 80BCFA54  48 00 00 78 */	b lbl_80BCFACC
lbl_80BCFA58:
/* 80BCFA58  3C 60 80 BD */	lis r3, l_arcName@ha
/* 80BCFA5C  38 63 02 60 */	addi r3, r3, l_arcName@l
/* 80BCFA60  80 63 00 00 */	lwz r3, 0(r3)
/* 80BCFA64  3C 80 80 BD */	lis r4, stringBase0@ha
/* 80BCFA68  38 84 02 0C */	addi r4, r4, stringBase0@l
/* 80BCFA6C  38 84 00 29 */	addi r4, r4, 0x29
/* 80BCFA70  7F C5 F3 78 */	mr r5, r30
/* 80BCFA74  38 C0 00 80 */	li r6, 0x80
/* 80BCFA78  4B 46 C9 04 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BCFA7C  7C 7E 1B 78 */	mr r30, r3
/* 80BCFA80  3C 80 00 08 */	lis r4, 8
/* 80BCFA84  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BCFA88  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BCFA8C  4B 44 51 C8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BCFA90  90 7F 06 60 */	stw r3, 0x660(r31)
/* 80BCFA94  80 1F 06 60 */	lwz r0, 0x660(r31)
/* 80BCFA98  28 00 00 00 */	cmplwi r0, 0
/* 80BCFA9C  40 82 00 0C */	bne lbl_80BCFAA8
/* 80BCFAA0  38 60 00 00 */	li r3, 0
/* 80BCFAA4  48 00 00 28 */	b lbl_80BCFACC
lbl_80BCFAA8:
/* 80BCFAA8  7F C3 F3 78 */	mr r3, r30
/* 80BCFAAC  3C 80 00 08 */	lis r4, 8
/* 80BCFAB0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BCFAB4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BCFAB8  4B 44 51 9C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BCFABC  90 7F 06 64 */	stw r3, 0x664(r31)
/* 80BCFAC0  80 7F 06 64 */	lwz r3, 0x664(r31)
/* 80BCFAC4  30 03 FF FF */	addic r0, r3, -1
/* 80BCFAC8  7C 60 19 10 */	subfe r3, r0, r3
lbl_80BCFACC:
/* 80BCFACC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCFAD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BCFAD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCFAD8  7C 08 03 A6 */	mtlr r0
/* 80BCFADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCFAE0  4E 80 00 20 */	blr 
