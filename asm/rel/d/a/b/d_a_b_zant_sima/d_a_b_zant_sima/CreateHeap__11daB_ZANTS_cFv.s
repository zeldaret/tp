lbl_80652F38:
/* 80652F38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80652F3C  7C 08 02 A6 */	mflr r0
/* 80652F40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80652F44  39 61 00 20 */	addi r11, r1, 0x20
/* 80652F48  4B D0 F2 95 */	bl _savegpr_29
/* 80652F4C  7C 7E 1B 78 */	mr r30, r3
/* 80652F50  3C 60 80 65 */	lis r3, d_a_b_zant_sima__stringBase0@ha /* 0x80653364@ha */
/* 80652F54  38 63 33 64 */	addi r3, r3, d_a_b_zant_sima__stringBase0@l /* 0x80653364@l */
/* 80652F58  38 80 00 07 */	li r4, 7
/* 80652F5C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80652F60  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80652F64  3F E5 00 02 */	addis r31, r5, 2
/* 80652F68  3B FF C2 F8 */	addi r31, r31, -15624
/* 80652F6C  7F E5 FB 78 */	mr r5, r31
/* 80652F70  38 C0 00 80 */	li r6, 0x80
/* 80652F74  4B 9E 93 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80652F78  3C 80 00 08 */	lis r4, 8
/* 80652F7C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80652F80  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80652F84  4B 9C 1C D1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80652F88  90 7E 05 70 */	stw r3, 0x570(r30)
/* 80652F8C  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80652F90  28 00 00 00 */	cmplwi r0, 0
/* 80652F94  40 82 00 0C */	bne lbl_80652FA0
/* 80652F98  38 60 00 00 */	li r3, 0
/* 80652F9C  48 00 01 CC */	b lbl_80653168
lbl_80652FA0:
/* 80652FA0  38 60 00 18 */	li r3, 0x18
/* 80652FA4  4B C7 BC A9 */	bl __nw__FUl
/* 80652FA8  7C 7D 1B 79 */	or. r29, r3, r3
/* 80652FAC  41 82 00 20 */	beq lbl_80652FCC
/* 80652FB0  3C 80 80 65 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x806533C0@ha */
/* 80652FB4  38 04 33 C0 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x806533C0@l */
/* 80652FB8  90 1D 00 00 */	stw r0, 0(r29)
/* 80652FBC  38 80 00 00 */	li r4, 0
/* 80652FC0  4B CD 54 3D */	bl init__12J3DFrameCtrlFs
/* 80652FC4  38 00 00 00 */	li r0, 0
/* 80652FC8  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80652FCC:
/* 80652FCC  93 BE 05 78 */	stw r29, 0x578(r30)
/* 80652FD0  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80652FD4  28 00 00 00 */	cmplwi r0, 0
/* 80652FD8  40 82 00 0C */	bne lbl_80652FE4
/* 80652FDC  38 60 00 00 */	li r3, 0
/* 80652FE0  48 00 01 88 */	b lbl_80653168
lbl_80652FE4:
/* 80652FE4  3C 60 80 65 */	lis r3, d_a_b_zant_sima__stringBase0@ha /* 0x80653364@ha */
/* 80652FE8  38 63 33 64 */	addi r3, r3, d_a_b_zant_sima__stringBase0@l /* 0x80653364@l */
/* 80652FEC  38 80 00 0D */	li r4, 0xd
/* 80652FF0  7F E5 FB 78 */	mr r5, r31
/* 80652FF4  38 C0 00 80 */	li r6, 0x80
/* 80652FF8  4B 9E 92 F5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80652FFC  7C 65 1B 78 */	mr r5, r3
/* 80653000  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80653004  80 83 00 04 */	lwz r4, 4(r3)
/* 80653008  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8065300C  38 84 00 58 */	addi r4, r4, 0x58
/* 80653010  38 C0 00 01 */	li r6, 1
/* 80653014  38 E0 00 02 */	li r7, 2
/* 80653018  3D 00 80 65 */	lis r8, lit_3917@ha /* 0x80653350@ha */
/* 8065301C  C0 28 33 50 */	lfs f1, lit_3917@l(r8)  /* 0x80653350@l */
/* 80653020  39 00 00 00 */	li r8, 0
/* 80653024  39 20 FF FF */	li r9, -1
/* 80653028  4B 9B A6 15 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8065302C  2C 03 00 00 */	cmpwi r3, 0
/* 80653030  40 82 00 0C */	bne lbl_8065303C
/* 80653034  38 60 00 00 */	li r3, 0
/* 80653038  48 00 01 30 */	b lbl_80653168
lbl_8065303C:
/* 8065303C  38 60 00 18 */	li r3, 0x18
/* 80653040  4B C7 BC 0D */	bl __nw__FUl
/* 80653044  7C 7D 1B 79 */	or. r29, r3, r3
/* 80653048  41 82 00 20 */	beq lbl_80653068
/* 8065304C  3C 80 80 65 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x806533C0@ha */
/* 80653050  38 04 33 C0 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x806533C0@l */
/* 80653054  90 1D 00 00 */	stw r0, 0(r29)
/* 80653058  38 80 00 00 */	li r4, 0
/* 8065305C  4B CD 53 A1 */	bl init__12J3DFrameCtrlFs
/* 80653060  38 00 00 00 */	li r0, 0
/* 80653064  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80653068:
/* 80653068  93 BE 05 74 */	stw r29, 0x574(r30)
/* 8065306C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80653070  28 00 00 00 */	cmplwi r0, 0
/* 80653074  40 82 00 0C */	bne lbl_80653080
/* 80653078  38 60 00 00 */	li r3, 0
/* 8065307C  48 00 00 EC */	b lbl_80653168
lbl_80653080:
/* 80653080  3C 60 80 65 */	lis r3, d_a_b_zant_sima__stringBase0@ha /* 0x80653364@ha */
/* 80653084  38 63 33 64 */	addi r3, r3, d_a_b_zant_sima__stringBase0@l /* 0x80653364@l */
/* 80653088  38 80 00 0A */	li r4, 0xa
/* 8065308C  7F E5 FB 78 */	mr r5, r31
/* 80653090  38 C0 00 80 */	li r6, 0x80
/* 80653094  4B 9E 92 59 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80653098  7C 65 1B 78 */	mr r5, r3
/* 8065309C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 806530A0  80 83 00 04 */	lwz r4, 4(r3)
/* 806530A4  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 806530A8  38 84 00 58 */	addi r4, r4, 0x58
/* 806530AC  38 C0 00 01 */	li r6, 1
/* 806530B0  38 E0 00 02 */	li r7, 2
/* 806530B4  3D 00 80 65 */	lis r8, lit_3917@ha /* 0x80653350@ha */
/* 806530B8  C0 28 33 50 */	lfs f1, lit_3917@l(r8)  /* 0x80653350@l */
/* 806530BC  39 00 00 00 */	li r8, 0
/* 806530C0  39 20 FF FF */	li r9, -1
/* 806530C4  4B 9B A6 49 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 806530C8  2C 03 00 00 */	cmpwi r3, 0
/* 806530CC  40 82 00 0C */	bne lbl_806530D8
/* 806530D0  38 60 00 00 */	li r3, 0
/* 806530D4  48 00 00 94 */	b lbl_80653168
lbl_806530D8:
/* 806530D8  38 60 00 C0 */	li r3, 0xc0
/* 806530DC  4B C7 BB 71 */	bl __nw__FUl
/* 806530E0  7C 60 1B 79 */	or. r0, r3, r3
/* 806530E4  41 82 00 0C */	beq lbl_806530F0
/* 806530E8  4B A2 88 89 */	bl __ct__4dBgWFv
/* 806530EC  7C 60 1B 78 */	mr r0, r3
lbl_806530F0:
/* 806530F0  90 1E 05 C4 */	stw r0, 0x5c4(r30)
/* 806530F4  80 1E 05 C4 */	lwz r0, 0x5c4(r30)
/* 806530F8  28 00 00 00 */	cmplwi r0, 0
/* 806530FC  40 82 00 0C */	bne lbl_80653108
/* 80653100  38 60 00 00 */	li r3, 0
/* 80653104  48 00 00 64 */	b lbl_80653168
lbl_80653108:
/* 80653108  3C 60 80 65 */	lis r3, d_a_b_zant_sima__stringBase0@ha /* 0x80653364@ha */
/* 8065310C  38 63 33 64 */	addi r3, r3, d_a_b_zant_sima__stringBase0@l /* 0x80653364@l */
/* 80653110  38 80 00 10 */	li r4, 0x10
/* 80653114  7F E5 FB 78 */	mr r5, r31
/* 80653118  38 C0 00 80 */	li r6, 0x80
/* 8065311C  4B 9E 91 D1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80653120  7C 64 1B 78 */	mr r4, r3
/* 80653124  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 80653128  38 A0 00 01 */	li r5, 1
/* 8065312C  38 DE 05 94 */	addi r6, r30, 0x594
/* 80653130  4B A2 6E 09 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80653134  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80653138  41 82 00 0C */	beq lbl_80653144
/* 8065313C  38 60 00 00 */	li r3, 0
/* 80653140  48 00 00 28 */	b lbl_80653168
lbl_80653144:
/* 80653144  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80653148  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 8065314C  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 80653150  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80653154  3C 60 80 65 */	lis r3, zants_ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x80652ACC@ha */
/* 80653158  38 03 2A CC */	addi r0, r3, zants_ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x80652ACC@l */
/* 8065315C  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 80653160  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80653164  38 60 00 01 */	li r3, 1
lbl_80653168:
/* 80653168  39 61 00 20 */	addi r11, r1, 0x20
/* 8065316C  4B D0 F0 BD */	bl _restgpr_29
/* 80653170  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80653174  7C 08 03 A6 */	mtlr r0
/* 80653178  38 21 00 20 */	addi r1, r1, 0x20
/* 8065317C  4E 80 00 20 */	blr 
