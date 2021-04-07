lbl_80C76BCC:
/* 80C76BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C76BD0  7C 08 02 A6 */	mflr r0
/* 80C76BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C76BD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C76BDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C76BE0  7C 7F 1B 78 */	mr r31, r3
/* 80C76BE4  3C 60 80 C7 */	lis r3, d_a_obj_lv6Tenbin__stringBase0@ha /* 0x80C779FC@ha */
/* 80C76BE8  38 63 79 FC */	addi r3, r3, d_a_obj_lv6Tenbin__stringBase0@l /* 0x80C779FC@l */
/* 80C76BEC  38 80 00 05 */	li r4, 5
/* 80C76BF0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C76BF4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C76BF8  3F C5 00 02 */	addis r30, r5, 2
/* 80C76BFC  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C76C00  7F C5 F3 78 */	mr r5, r30
/* 80C76C04  38 C0 00 80 */	li r6, 0x80
/* 80C76C08  4B 3C 56 E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C76C0C  38 80 00 00 */	li r4, 0
/* 80C76C10  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C76C14  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C76C18  4B 39 E0 3D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C76C1C  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C76C20  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 80C76C24  28 00 00 00 */	cmplwi r0, 0
/* 80C76C28  40 82 00 0C */	bne lbl_80C76C34
/* 80C76C2C  38 60 00 00 */	li r3, 0
/* 80C76C30  48 00 00 C8 */	b lbl_80C76CF8
lbl_80C76C34:
/* 80C76C34  3C 60 80 C7 */	lis r3, d_a_obj_lv6Tenbin__stringBase0@ha /* 0x80C779FC@ha */
/* 80C76C38  38 63 79 FC */	addi r3, r3, d_a_obj_lv6Tenbin__stringBase0@l /* 0x80C779FC@l */
/* 80C76C3C  38 80 00 04 */	li r4, 4
/* 80C76C40  7F C5 F3 78 */	mr r5, r30
/* 80C76C44  38 C0 00 80 */	li r6, 0x80
/* 80C76C48  4B 3C 56 A5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C76C4C  38 80 00 00 */	li r4, 0
/* 80C76C50  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C76C54  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C76C58  4B 39 DF FD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C76C5C  90 7F 05 AC */	stw r3, 0x5ac(r31)
/* 80C76C60  80 1F 05 AC */	lwz r0, 0x5ac(r31)
/* 80C76C64  28 00 00 00 */	cmplwi r0, 0
/* 80C76C68  40 82 00 0C */	bne lbl_80C76C74
/* 80C76C6C  38 60 00 00 */	li r3, 0
/* 80C76C70  48 00 00 88 */	b lbl_80C76CF8
lbl_80C76C74:
/* 80C76C74  38 60 00 C0 */	li r3, 0xc0
/* 80C76C78  4B 65 7F D5 */	bl __nw__FUl
/* 80C76C7C  7C 60 1B 79 */	or. r0, r3, r3
/* 80C76C80  41 82 00 0C */	beq lbl_80C76C8C
/* 80C76C84  4B 40 4C ED */	bl __ct__4dBgWFv
/* 80C76C88  7C 60 1B 78 */	mr r0, r3
lbl_80C76C8C:
/* 80C76C8C  90 1F 06 1C */	stw r0, 0x61c(r31)
/* 80C76C90  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 80C76C94  28 00 00 00 */	cmplwi r0, 0
/* 80C76C98  41 82 00 4C */	beq lbl_80C76CE4
/* 80C76C9C  3C 60 80 C7 */	lis r3, d_a_obj_lv6Tenbin__stringBase0@ha /* 0x80C779FC@ha */
/* 80C76CA0  38 63 79 FC */	addi r3, r3, d_a_obj_lv6Tenbin__stringBase0@l /* 0x80C779FC@l */
/* 80C76CA4  38 80 00 08 */	li r4, 8
/* 80C76CA8  7F C5 F3 78 */	mr r5, r30
/* 80C76CAC  38 C0 00 80 */	li r6, 0x80
/* 80C76CB0  4B 3C 56 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C76CB4  7C 64 1B 78 */	mr r4, r3
/* 80C76CB8  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 80C76CBC  38 A0 00 01 */	li r5, 1
/* 80C76CC0  38 DF 06 20 */	addi r6, r31, 0x620
/* 80C76CC4  4B 40 32 75 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C76CC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C76CCC  40 82 00 18 */	bne lbl_80C76CE4
/* 80C76CD0  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80C76CD4  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80C76CD8  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 80C76CDC  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80C76CE0  48 00 00 14 */	b lbl_80C76CF4
lbl_80C76CE4:
/* 80C76CE4  38 00 00 00 */	li r0, 0
/* 80C76CE8  90 1F 06 1C */	stw r0, 0x61c(r31)
/* 80C76CEC  38 60 00 00 */	li r3, 0
/* 80C76CF0  48 00 00 08 */	b lbl_80C76CF8
lbl_80C76CF4:
/* 80C76CF4  38 60 00 01 */	li r3, 1
lbl_80C76CF8:
/* 80C76CF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C76CFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C76D00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C76D04  7C 08 03 A6 */	mtlr r0
/* 80C76D08  38 21 00 10 */	addi r1, r1, 0x10
/* 80C76D0C  4E 80 00 20 */	blr 
