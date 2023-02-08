lbl_80BDE2F8:
/* 80BDE2F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDE2FC  7C 08 02 A6 */	mflr r0
/* 80BDE300  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDE304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDE308  93 C1 00 08 */	stw r30, 8(r1)
/* 80BDE30C  7C 7F 1B 78 */	mr r31, r3
/* 80BDE310  3C 60 80 BE */	lis r3, l_el_arcName@ha /* 0x80BDF964@ha */
/* 80BDE314  38 63 F9 64 */	addi r3, r3, l_el_arcName@l /* 0x80BDF964@l */
/* 80BDE318  80 63 00 00 */	lwz r3, 0(r3)
/* 80BDE31C  38 80 00 05 */	li r4, 5
/* 80BDE320  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDE324  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDE328  3F C5 00 02 */	addis r30, r5, 2
/* 80BDE32C  3B DE C2 F8 */	addi r30, r30, -15624
/* 80BDE330  7F C5 F3 78 */	mr r5, r30
/* 80BDE334  38 C0 00 80 */	li r6, 0x80
/* 80BDE338  4B 45 DF B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BDE33C  3C 80 00 08 */	lis r4, 8
/* 80BDE340  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BDE344  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BDE348  4B 43 69 0D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BDE34C  90 7F 05 B0 */	stw r3, 0x5b0(r31)
/* 80BDE350  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 80BDE354  28 00 00 00 */	cmplwi r0, 0
/* 80BDE358  40 82 00 0C */	bne lbl_80BDE364
/* 80BDE35C  38 60 00 00 */	li r3, 0
/* 80BDE360  48 00 00 D0 */	b lbl_80BDE430
lbl_80BDE364:
/* 80BDE364  3C 60 80 BE */	lis r3, l_sw_arcName@ha /* 0x80BDF968@ha */
/* 80BDE368  38 63 F9 68 */	addi r3, r3, l_sw_arcName@l /* 0x80BDF968@l */
/* 80BDE36C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BDE370  38 80 00 04 */	li r4, 4
/* 80BDE374  7F C5 F3 78 */	mr r5, r30
/* 80BDE378  38 C0 00 80 */	li r6, 0x80
/* 80BDE37C  4B 45 DF 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BDE380  3C 80 00 08 */	lis r4, 8
/* 80BDE384  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BDE388  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BDE38C  4B 43 68 C9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BDE390  90 7F 05 B4 */	stw r3, 0x5b4(r31)
/* 80BDE394  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80BDE398  28 00 00 00 */	cmplwi r0, 0
/* 80BDE39C  40 82 00 0C */	bne lbl_80BDE3A8
/* 80BDE3A0  38 60 00 00 */	li r3, 0
/* 80BDE3A4  48 00 00 8C */	b lbl_80BDE430
lbl_80BDE3A8:
/* 80BDE3A8  38 60 00 C0 */	li r3, 0xc0
/* 80BDE3AC  4B 6F 08 A1 */	bl __nw__FUl
/* 80BDE3B0  7C 60 1B 79 */	or. r0, r3, r3
/* 80BDE3B4  41 82 00 0C */	beq lbl_80BDE3C0
/* 80BDE3B8  4B 49 D5 B9 */	bl __ct__4dBgWFv
/* 80BDE3BC  7C 60 1B 78 */	mr r0, r3
lbl_80BDE3C0:
/* 80BDE3C0  90 1F 05 E8 */	stw r0, 0x5e8(r31)
/* 80BDE3C4  80 1F 05 E8 */	lwz r0, 0x5e8(r31)
/* 80BDE3C8  28 00 00 00 */	cmplwi r0, 0
/* 80BDE3CC  41 82 00 50 */	beq lbl_80BDE41C
/* 80BDE3D0  3C 60 80 BE */	lis r3, l_sw_arcName@ha /* 0x80BDF968@ha */
/* 80BDE3D4  38 63 F9 68 */	addi r3, r3, l_sw_arcName@l /* 0x80BDF968@l */
/* 80BDE3D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BDE3DC  38 80 00 08 */	li r4, 8
/* 80BDE3E0  7F C5 F3 78 */	mr r5, r30
/* 80BDE3E4  38 C0 00 80 */	li r6, 0x80
/* 80BDE3E8  4B 45 DF 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BDE3EC  7C 64 1B 78 */	mr r4, r3
/* 80BDE3F0  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BDE3F4  38 A0 00 01 */	li r5, 1
/* 80BDE3F8  38 DF 05 EC */	addi r6, r31, 0x5ec
/* 80BDE3FC  4B 49 BB 3D */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80BDE400  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BDE404  40 82 00 18 */	bne lbl_80BDE41C
/* 80BDE408  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80BDE40C  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80BDE410  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BDE414  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80BDE418  48 00 00 14 */	b lbl_80BDE42C
lbl_80BDE41C:
/* 80BDE41C  38 00 00 00 */	li r0, 0
/* 80BDE420  90 1F 05 E8 */	stw r0, 0x5e8(r31)
/* 80BDE424  38 60 00 00 */	li r3, 0
/* 80BDE428  48 00 00 08 */	b lbl_80BDE430
lbl_80BDE42C:
/* 80BDE42C  38 60 00 01 */	li r3, 1
lbl_80BDE430:
/* 80BDE430  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDE434  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BDE438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDE43C  7C 08 03 A6 */	mtlr r0
/* 80BDE440  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDE444  4E 80 00 20 */	blr 
