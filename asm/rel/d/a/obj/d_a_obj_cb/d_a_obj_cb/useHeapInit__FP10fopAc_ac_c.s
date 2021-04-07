lbl_80BC52CC:
/* 80BC52CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC52D0  7C 08 02 A6 */	mflr r0
/* 80BC52D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC52D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC52DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC52E0  7C 7F 1B 78 */	mr r31, r3
/* 80BC52E4  3C 60 80 BC */	lis r3, d_a_obj_cb__stringBase0@ha /* 0x80BC584C@ha */
/* 80BC52E8  38 63 58 4C */	addi r3, r3, d_a_obj_cb__stringBase0@l /* 0x80BC584C@l */
/* 80BC52EC  38 80 00 04 */	li r4, 4
/* 80BC52F0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC52F4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC52F8  3F C5 00 02 */	addis r30, r5, 2
/* 80BC52FC  3B DE C2 F8 */	addi r30, r30, -15624
/* 80BC5300  7F C5 F3 78 */	mr r5, r30
/* 80BC5304  38 C0 00 80 */	li r6, 0x80
/* 80BC5308  4B 47 6F E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC530C  3C 80 00 08 */	lis r4, 8
/* 80BC5310  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BC5314  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BC5318  4B 44 F9 3D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BC531C  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80BC5320  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80BC5324  28 00 00 00 */	cmplwi r0, 0
/* 80BC5328  40 82 00 0C */	bne lbl_80BC5334
/* 80BC532C  38 60 00 00 */	li r3, 0
/* 80BC5330  48 00 00 C0 */	b lbl_80BC53F0
lbl_80BC5334:
/* 80BC5334  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80BC5338  2C 00 00 00 */	cmpwi r0, 0
/* 80BC533C  40 82 00 94 */	bne lbl_80BC53D0
/* 80BC5340  38 60 00 C0 */	li r3, 0xc0
/* 80BC5344  4B 70 99 09 */	bl __nw__FUl
/* 80BC5348  7C 60 1B 79 */	or. r0, r3, r3
/* 80BC534C  41 82 00 0C */	beq lbl_80BC5358
/* 80BC5350  4B 4B 66 21 */	bl __ct__4dBgWFv
/* 80BC5354  7C 60 1B 78 */	mr r0, r3
lbl_80BC5358:
/* 80BC5358  90 1F 07 F8 */	stw r0, 0x7f8(r31)
/* 80BC535C  80 1F 07 F8 */	lwz r0, 0x7f8(r31)
/* 80BC5360  28 00 00 00 */	cmplwi r0, 0
/* 80BC5364  40 82 00 0C */	bne lbl_80BC5370
/* 80BC5368  38 60 00 00 */	li r3, 0
/* 80BC536C  48 00 00 84 */	b lbl_80BC53F0
lbl_80BC5370:
/* 80BC5370  3C 60 80 BC */	lis r3, d_a_obj_cb__stringBase0@ha /* 0x80BC584C@ha */
/* 80BC5374  38 63 58 4C */	addi r3, r3, d_a_obj_cb__stringBase0@l /* 0x80BC584C@l */
/* 80BC5378  38 80 00 07 */	li r4, 7
/* 80BC537C  7F C5 F3 78 */	mr r5, r30
/* 80BC5380  38 C0 00 80 */	li r6, 0x80
/* 80BC5384  4B 47 6F 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC5388  7C 64 1B 78 */	mr r4, r3
/* 80BC538C  80 7F 07 F8 */	lwz r3, 0x7f8(r31)
/* 80BC5390  38 A0 00 01 */	li r5, 1
/* 80BC5394  38 DF 07 C8 */	addi r6, r31, 0x7c8
/* 80BC5398  4B 4B 4B A1 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80BC539C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80BC53A0  28 00 00 01 */	cmplwi r0, 1
/* 80BC53A4  40 82 00 0C */	bne lbl_80BC53B0
/* 80BC53A8  38 60 00 00 */	li r3, 0
/* 80BC53AC  48 00 00 44 */	b lbl_80BC53F0
lbl_80BC53B0:
/* 80BC53B0  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80BC53B4  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80BC53B8  80 7F 07 F8 */	lwz r3, 0x7f8(r31)
/* 80BC53BC  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80BC53C0  3C 60 80 BC */	lis r3, ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x80BC4BA8@ha */
/* 80BC53C4  38 03 4B A8 */	addi r0, r3, ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x80BC4BA8@l */
/* 80BC53C8  80 7F 07 F8 */	lwz r3, 0x7f8(r31)
/* 80BC53CC  90 03 00 B4 */	stw r0, 0xb4(r3)
lbl_80BC53D0:
/* 80BC53D0  38 7F 05 74 */	addi r3, r31, 0x574
/* 80BC53D4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BC53D8  38 A0 00 01 */	li r5, 1
/* 80BC53DC  81 9F 05 84 */	lwz r12, 0x584(r31)
/* 80BC53E0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BC53E4  7D 89 03 A6 */	mtctr r12
/* 80BC53E8  4E 80 04 21 */	bctrl 
/* 80BC53EC  38 60 00 01 */	li r3, 1
lbl_80BC53F0:
/* 80BC53F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC53F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC53F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC53FC  7C 08 03 A6 */	mtlr r0
/* 80BC5400  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC5404  4E 80 00 20 */	blr 
