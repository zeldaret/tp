lbl_80BAEADC:
/* 80BAEADC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BAEAE0  7C 08 02 A6 */	mflr r0
/* 80BAEAE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BAEAE8  39 61 00 30 */	addi r11, r1, 0x30
/* 80BAEAEC  4B 7B 36 E9 */	bl _savegpr_27
/* 80BAEAF0  7C 7F 1B 78 */	mr r31, r3
/* 80BAEAF4  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BAEAF8  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BAEAFC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BAEB00  38 80 00 0D */	li r4, 0xd
/* 80BAEB04  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAEB08  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAEB0C  3F C5 00 02 */	addis r30, r5, 2
/* 80BAEB10  3B DE C2 F8 */	addi r30, r30, -15624
/* 80BAEB14  7F C5 F3 78 */	mr r5, r30
/* 80BAEB18  38 C0 00 80 */	li r6, 0x80
/* 80BAEB1C  4B 48 D7 D1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAEB20  7C 7D 1B 78 */	mr r29, r3
/* 80BAEB24  3C 80 00 08 */	lis r4, 8
/* 80BAEB28  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BAEB2C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BAEB30  4B 46 61 25 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BAEB34  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80BAEB38  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 80BAEB3C  28 00 00 00 */	cmplwi r0, 0
/* 80BAEB40  40 82 00 0C */	bne lbl_80BAEB4C
/* 80BAEB44  38 60 00 00 */	li r3, 0
/* 80BAEB48  48 00 04 30 */	b lbl_80BAEF78
lbl_80BAEB4C:
/* 80BAEB4C  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BAEB50  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BAEB54  80 63 00 00 */	lwz r3, 0(r3)
/* 80BAEB58  38 80 00 13 */	li r4, 0x13
/* 80BAEB5C  7F C5 F3 78 */	mr r5, r30
/* 80BAEB60  38 C0 00 80 */	li r6, 0x80
/* 80BAEB64  4B 48 D7 89 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAEB68  7C 7B 1B 78 */	mr r27, r3
/* 80BAEB6C  38 60 00 18 */	li r3, 0x18
/* 80BAEB70  4B 72 00 DD */	bl __nw__FUl
/* 80BAEB74  7C 7C 1B 79 */	or. r28, r3, r3
/* 80BAEB78  41 82 00 20 */	beq lbl_80BAEB98
/* 80BAEB7C  3C 80 80 BB */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80BB3E4C@ha */
/* 80BAEB80  38 04 3E 4C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80BB3E4C@l */
/* 80BAEB84  90 1C 00 00 */	stw r0, 0(r28)
/* 80BAEB88  38 80 00 00 */	li r4, 0
/* 80BAEB8C  4B 77 98 71 */	bl init__12J3DFrameCtrlFs
/* 80BAEB90  38 00 00 00 */	li r0, 0
/* 80BAEB94  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80BAEB98:
/* 80BAEB98  93 9F 05 AC */	stw r28, 0x5ac(r31)
/* 80BAEB9C  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80BAEBA0  28 03 00 00 */	cmplwi r3, 0
/* 80BAEBA4  41 82 00 30 */	beq lbl_80BAEBD4
/* 80BAEBA8  38 9D 00 58 */	addi r4, r29, 0x58
/* 80BAEBAC  7F 65 DB 78 */	mr r5, r27
/* 80BAEBB0  38 C0 00 01 */	li r6, 1
/* 80BAEBB4  38 E0 00 00 */	li r7, 0
/* 80BAEBB8  3D 00 80 BB */	lis r8, lit_3934@ha /* 0x80BB3824@ha */
/* 80BAEBBC  C0 28 38 24 */	lfs f1, lit_3934@l(r8)  /* 0x80BB3824@l */
/* 80BAEBC0  39 00 00 00 */	li r8, 0
/* 80BAEBC4  39 20 FF FF */	li r9, -1
/* 80BAEBC8  4B 45 EB 45 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80BAEBCC  2C 03 00 00 */	cmpwi r3, 0
/* 80BAEBD0  40 82 00 0C */	bne lbl_80BAEBDC
lbl_80BAEBD4:
/* 80BAEBD4  38 60 00 00 */	li r3, 0
/* 80BAEBD8  48 00 03 A0 */	b lbl_80BAEF78
lbl_80BAEBDC:
/* 80BAEBDC  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BAEBE0  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BAEBE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BAEBE8  38 80 00 07 */	li r4, 7
/* 80BAEBEC  7F C5 F3 78 */	mr r5, r30
/* 80BAEBF0  38 C0 00 80 */	li r6, 0x80
/* 80BAEBF4  4B 48 D6 F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAEBF8  7C 7B 1B 78 */	mr r27, r3
/* 80BAEBFC  38 60 00 1C */	li r3, 0x1c
/* 80BAEC00  4B 72 00 4D */	bl __nw__FUl
/* 80BAEC04  7C 7C 1B 79 */	or. r28, r3, r3
/* 80BAEC08  41 82 00 20 */	beq lbl_80BAEC28
/* 80BAEC0C  3C 80 80 BB */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80BB3E4C@ha */
/* 80BAEC10  38 04 3E 4C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80BB3E4C@l */
/* 80BAEC14  90 1C 00 00 */	stw r0, 0(r28)
/* 80BAEC18  38 80 00 00 */	li r4, 0
/* 80BAEC1C  4B 77 97 E1 */	bl init__12J3DFrameCtrlFs
/* 80BAEC20  38 00 00 00 */	li r0, 0
/* 80BAEC24  90 1C 00 18 */	stw r0, 0x18(r28)
lbl_80BAEC28:
/* 80BAEC28  93 9F 05 B0 */	stw r28, 0x5b0(r31)
/* 80BAEC2C  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80BAEC30  28 03 00 00 */	cmplwi r3, 0
/* 80BAEC34  41 82 00 30 */	beq lbl_80BAEC64
/* 80BAEC38  7F 64 DB 78 */	mr r4, r27
/* 80BAEC3C  38 A0 00 01 */	li r5, 1
/* 80BAEC40  38 C0 00 00 */	li r6, 0
/* 80BAEC44  3C E0 80 BB */	lis r7, lit_3934@ha /* 0x80BB3824@ha */
/* 80BAEC48  C0 27 38 24 */	lfs f1, lit_3934@l(r7)  /* 0x80BB3824@l */
/* 80BAEC4C  38 E0 00 00 */	li r7, 0
/* 80BAEC50  39 00 FF FF */	li r8, -1
/* 80BAEC54  39 20 00 00 */	li r9, 0
/* 80BAEC58  4B 45 EB 85 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80BAEC5C  2C 03 00 00 */	cmpwi r3, 0
/* 80BAEC60  40 82 00 0C */	bne lbl_80BAEC6C
lbl_80BAEC64:
/* 80BAEC64  38 60 00 00 */	li r3, 0
/* 80BAEC68  48 00 03 10 */	b lbl_80BAEF78
lbl_80BAEC6C:
/* 80BAEC6C  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BAEC70  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BAEC74  80 63 00 00 */	lwz r3, 0(r3)
/* 80BAEC78  38 80 00 0E */	li r4, 0xe
/* 80BAEC7C  7F C5 F3 78 */	mr r5, r30
/* 80BAEC80  38 C0 00 80 */	li r6, 0x80
/* 80BAEC84  4B 48 D6 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAEC88  7C 7D 1B 78 */	mr r29, r3
/* 80BAEC8C  3C 80 00 08 */	lis r4, 8
/* 80BAEC90  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80BAEC94  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80BAEC98  4B 46 5F BD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BAEC9C  90 7F 05 B4 */	stw r3, 0x5b4(r31)
/* 80BAECA0  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80BAECA4  28 00 00 00 */	cmplwi r0, 0
/* 80BAECA8  40 82 00 0C */	bne lbl_80BAECB4
/* 80BAECAC  38 60 00 00 */	li r3, 0
/* 80BAECB0  48 00 02 C8 */	b lbl_80BAEF78
lbl_80BAECB4:
/* 80BAECB4  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BAECB8  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BAECBC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BAECC0  38 80 00 1A */	li r4, 0x1a
/* 80BAECC4  7F C5 F3 78 */	mr r5, r30
/* 80BAECC8  38 C0 00 80 */	li r6, 0x80
/* 80BAECCC  4B 48 D6 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAECD0  7C 7B 1B 78 */	mr r27, r3
/* 80BAECD4  38 60 00 18 */	li r3, 0x18
/* 80BAECD8  4B 71 FF 75 */	bl __nw__FUl
/* 80BAECDC  7C 7C 1B 79 */	or. r28, r3, r3
/* 80BAECE0  41 82 00 20 */	beq lbl_80BAED00
/* 80BAECE4  3C 80 80 BB */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80BB3E4C@ha */
/* 80BAECE8  38 04 3E 4C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80BB3E4C@l */
/* 80BAECEC  90 1C 00 00 */	stw r0, 0(r28)
/* 80BAECF0  38 80 00 00 */	li r4, 0
/* 80BAECF4  4B 77 97 09 */	bl init__12J3DFrameCtrlFs
/* 80BAECF8  38 00 00 00 */	li r0, 0
/* 80BAECFC  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80BAED00:
/* 80BAED00  93 9F 05 B8 */	stw r28, 0x5b8(r31)
/* 80BAED04  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80BAED08  28 03 00 00 */	cmplwi r3, 0
/* 80BAED0C  41 82 00 30 */	beq lbl_80BAED3C
/* 80BAED10  38 9D 00 58 */	addi r4, r29, 0x58
/* 80BAED14  7F 65 DB 78 */	mr r5, r27
/* 80BAED18  38 C0 00 01 */	li r6, 1
/* 80BAED1C  38 E0 00 00 */	li r7, 0
/* 80BAED20  3D 00 80 BB */	lis r8, lit_3934@ha /* 0x80BB3824@ha */
/* 80BAED24  C0 28 38 24 */	lfs f1, lit_3934@l(r8)  /* 0x80BB3824@l */
/* 80BAED28  39 00 00 00 */	li r8, 0
/* 80BAED2C  39 20 FF FF */	li r9, -1
/* 80BAED30  4B 45 E9 0D */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BAED34  2C 03 00 00 */	cmpwi r3, 0
/* 80BAED38  40 82 00 0C */	bne lbl_80BAED44
lbl_80BAED3C:
/* 80BAED3C  38 60 00 00 */	li r3, 0
/* 80BAED40  48 00 02 38 */	b lbl_80BAEF78
lbl_80BAED44:
/* 80BAED44  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80BAED48  A8 04 00 08 */	lha r0, 8(r4)
/* 80BAED4C  3C 60 80 BB */	lis r3, lit_4106@ha /* 0x80BB3828@ha */
/* 80BAED50  C8 23 38 28 */	lfd f1, lit_4106@l(r3)  /* 0x80BB3828@l */
/* 80BAED54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BAED58  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BAED5C  3C 00 43 30 */	lis r0, 0x4330
/* 80BAED60  90 01 00 08 */	stw r0, 8(r1)
/* 80BAED64  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BAED68  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BAED6C  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80BAED70  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BAED74  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BAED78  80 63 00 00 */	lwz r3, 0(r3)
/* 80BAED7C  38 80 00 18 */	li r4, 0x18
/* 80BAED80  7F C5 F3 78 */	mr r5, r30
/* 80BAED84  38 C0 00 80 */	li r6, 0x80
/* 80BAED88  4B 48 D5 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAED8C  7C 7B 1B 78 */	mr r27, r3
/* 80BAED90  38 60 00 18 */	li r3, 0x18
/* 80BAED94  4B 71 FE B9 */	bl __nw__FUl
/* 80BAED98  7C 7C 1B 79 */	or. r28, r3, r3
/* 80BAED9C  41 82 00 20 */	beq lbl_80BAEDBC
/* 80BAEDA0  3C 80 80 BB */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80BB3E4C@ha */
/* 80BAEDA4  38 04 3E 4C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80BB3E4C@l */
/* 80BAEDA8  90 1C 00 00 */	stw r0, 0(r28)
/* 80BAEDAC  38 80 00 00 */	li r4, 0
/* 80BAEDB0  4B 77 96 4D */	bl init__12J3DFrameCtrlFs
/* 80BAEDB4  38 00 00 00 */	li r0, 0
/* 80BAEDB8  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80BAEDBC:
/* 80BAEDBC  93 9F 05 BC */	stw r28, 0x5bc(r31)
/* 80BAEDC0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80BAEDC4  28 03 00 00 */	cmplwi r3, 0
/* 80BAEDC8  41 82 00 30 */	beq lbl_80BAEDF8
/* 80BAEDCC  38 9D 00 58 */	addi r4, r29, 0x58
/* 80BAEDD0  7F 65 DB 78 */	mr r5, r27
/* 80BAEDD4  38 C0 00 01 */	li r6, 1
/* 80BAEDD8  38 E0 00 02 */	li r7, 2
/* 80BAEDDC  3D 00 80 BB */	lis r8, lit_3934@ha /* 0x80BB3824@ha */
/* 80BAEDE0  C0 28 38 24 */	lfs f1, lit_3934@l(r8)  /* 0x80BB3824@l */
/* 80BAEDE4  39 00 00 00 */	li r8, 0
/* 80BAEDE8  39 20 FF FF */	li r9, -1
/* 80BAEDEC  4B 45 E8 51 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BAEDF0  2C 03 00 00 */	cmpwi r3, 0
/* 80BAEDF4  40 82 00 0C */	bne lbl_80BAEE00
lbl_80BAEDF8:
/* 80BAEDF8  38 60 00 00 */	li r3, 0
/* 80BAEDFC  48 00 01 7C */	b lbl_80BAEF78
lbl_80BAEE00:
/* 80BAEE00  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BAEE04  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BAEE08  80 63 00 00 */	lwz r3, 0(r3)
/* 80BAEE0C  38 80 00 09 */	li r4, 9
/* 80BAEE10  7F C5 F3 78 */	mr r5, r30
/* 80BAEE14  38 C0 00 80 */	li r6, 0x80
/* 80BAEE18  4B 48 D4 D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAEE1C  7C 7B 1B 78 */	mr r27, r3
/* 80BAEE20  38 60 00 1C */	li r3, 0x1c
/* 80BAEE24  4B 71 FE 29 */	bl __nw__FUl
/* 80BAEE28  7C 7D 1B 79 */	or. r29, r3, r3
/* 80BAEE2C  41 82 00 20 */	beq lbl_80BAEE4C
/* 80BAEE30  3C 80 80 BB */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80BB3E4C@ha */
/* 80BAEE34  38 04 3E 4C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80BB3E4C@l */
/* 80BAEE38  90 1D 00 00 */	stw r0, 0(r29)
/* 80BAEE3C  38 80 00 00 */	li r4, 0
/* 80BAEE40  4B 77 95 BD */	bl init__12J3DFrameCtrlFs
/* 80BAEE44  38 00 00 00 */	li r0, 0
/* 80BAEE48  90 1D 00 18 */	stw r0, 0x18(r29)
lbl_80BAEE4C:
/* 80BAEE4C  93 BF 05 C0 */	stw r29, 0x5c0(r31)
/* 80BAEE50  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80BAEE54  28 03 00 00 */	cmplwi r3, 0
/* 80BAEE58  41 82 00 30 */	beq lbl_80BAEE88
/* 80BAEE5C  7F 64 DB 78 */	mr r4, r27
/* 80BAEE60  38 A0 00 01 */	li r5, 1
/* 80BAEE64  38 C0 00 02 */	li r6, 2
/* 80BAEE68  3C E0 80 BB */	lis r7, lit_3934@ha /* 0x80BB3824@ha */
/* 80BAEE6C  C0 27 38 24 */	lfs f1, lit_3934@l(r7)  /* 0x80BB3824@l */
/* 80BAEE70  38 E0 00 00 */	li r7, 0
/* 80BAEE74  39 00 FF FF */	li r8, -1
/* 80BAEE78  39 20 00 00 */	li r9, 0
/* 80BAEE7C  4B 45 E9 61 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80BAEE80  2C 03 00 00 */	cmpwi r3, 0
/* 80BAEE84  40 82 00 0C */	bne lbl_80BAEE90
lbl_80BAEE88:
/* 80BAEE88  38 60 00 00 */	li r3, 0
/* 80BAEE8C  48 00 00 EC */	b lbl_80BAEF78
lbl_80BAEE90:
/* 80BAEE90  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BAEE94  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BAEE98  80 63 00 00 */	lwz r3, 0(r3)
/* 80BAEE9C  38 80 00 0F */	li r4, 0xf
/* 80BAEEA0  7F C5 F3 78 */	mr r5, r30
/* 80BAEEA4  38 C0 00 80 */	li r6, 0x80
/* 80BAEEA8  4B 48 D4 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAEEAC  3C 80 00 08 */	lis r4, 8
/* 80BAEEB0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BAEEB4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BAEEB8  4B 46 5D 9D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BAEEBC  90 7F 05 C4 */	stw r3, 0x5c4(r31)
/* 80BAEEC0  80 1F 05 C4 */	lwz r0, 0x5c4(r31)
/* 80BAEEC4  28 00 00 00 */	cmplwi r0, 0
/* 80BAEEC8  40 82 00 0C */	bne lbl_80BAEED4
/* 80BAEECC  38 60 00 00 */	li r3, 0
/* 80BAEED0  48 00 00 A8 */	b lbl_80BAEF78
lbl_80BAEED4:
/* 80BAEED4  3C 60 80 BB */	lis r3, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BAEED8  38 63 3A 94 */	addi r3, r3, l_arcName@l /* 0x80BB3A94@l */
/* 80BAEEDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BAEEE0  38 80 00 08 */	li r4, 8
/* 80BAEEE4  7F C5 F3 78 */	mr r5, r30
/* 80BAEEE8  38 C0 00 80 */	li r6, 0x80
/* 80BAEEEC  4B 48 D4 01 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAEEF0  7C 7B 1B 78 */	mr r27, r3
/* 80BAEEF4  38 60 00 1C */	li r3, 0x1c
/* 80BAEEF8  4B 71 FD 55 */	bl __nw__FUl
/* 80BAEEFC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80BAEF00  41 82 00 20 */	beq lbl_80BAEF20
/* 80BAEF04  3C 80 80 BB */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80BB3E4C@ha */
/* 80BAEF08  38 04 3E 4C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80BB3E4C@l */
/* 80BAEF0C  90 1D 00 00 */	stw r0, 0(r29)
/* 80BAEF10  38 80 00 00 */	li r4, 0
/* 80BAEF14  4B 77 94 E9 */	bl init__12J3DFrameCtrlFs
/* 80BAEF18  38 00 00 00 */	li r0, 0
/* 80BAEF1C  90 1D 00 18 */	stw r0, 0x18(r29)
lbl_80BAEF20:
/* 80BAEF20  93 BF 05 C8 */	stw r29, 0x5c8(r31)
/* 80BAEF24  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 80BAEF28  28 03 00 00 */	cmplwi r3, 0
/* 80BAEF2C  41 82 00 30 */	beq lbl_80BAEF5C
/* 80BAEF30  7F 64 DB 78 */	mr r4, r27
/* 80BAEF34  38 A0 00 01 */	li r5, 1
/* 80BAEF38  38 C0 00 00 */	li r6, 0
/* 80BAEF3C  3C E0 80 BB */	lis r7, lit_3934@ha /* 0x80BB3824@ha */
/* 80BAEF40  C0 27 38 24 */	lfs f1, lit_3934@l(r7)  /* 0x80BB3824@l */
/* 80BAEF44  38 E0 00 00 */	li r7, 0
/* 80BAEF48  39 00 FF FF */	li r8, -1
/* 80BAEF4C  39 20 00 00 */	li r9, 0
/* 80BAEF50  4B 45 E8 8D */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80BAEF54  2C 03 00 00 */	cmpwi r3, 0
/* 80BAEF58  40 82 00 0C */	bne lbl_80BAEF64
lbl_80BAEF5C:
/* 80BAEF5C  38 60 00 00 */	li r3, 0
/* 80BAEF60  48 00 00 18 */	b lbl_80BAEF78
lbl_80BAEF64:
/* 80BAEF64  3C 60 80 BB */	lis r3, lit_4250@ha /* 0x80BB3830@ha */
/* 80BAEF68  C0 03 38 30 */	lfs f0, lit_4250@l(r3)  /* 0x80BB3830@l */
/* 80BAEF6C  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 80BAEF70  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80BAEF74  38 60 00 01 */	li r3, 1
lbl_80BAEF78:
/* 80BAEF78  39 61 00 30 */	addi r11, r1, 0x30
/* 80BAEF7C  4B 7B 32 A5 */	bl _restgpr_27
/* 80BAEF80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BAEF84  7C 08 03 A6 */	mtlr r0
/* 80BAEF88  38 21 00 30 */	addi r1, r1, 0x30
/* 80BAEF8C  4E 80 00 20 */	blr 
