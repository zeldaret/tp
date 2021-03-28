lbl_80C9FD4C:
/* 80C9FD4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9FD50  7C 08 02 A6 */	mflr r0
/* 80C9FD54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9FD58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9FD5C  7C 7F 1B 78 */	mr r31, r3
/* 80C9FD60  38 60 00 C0 */	li r3, 0xc0
/* 80C9FD64  4B 62 EE E8 */	b __nw__FUl
/* 80C9FD68  7C 60 1B 79 */	or. r0, r3, r3
/* 80C9FD6C  41 82 00 0C */	beq lbl_80C9FD78
/* 80C9FD70  4B 3D BC 00 */	b __ct__4dBgWFv
/* 80C9FD74  7C 60 1B 78 */	mr r0, r3
lbl_80C9FD78:
/* 80C9FD78  90 1F 02 EC */	stw r0, 0x2ec(r31)
/* 80C9FD7C  80 1F 02 EC */	lwz r0, 0x2ec(r31)
/* 80C9FD80  28 00 00 00 */	cmplwi r0, 0
/* 80C9FD84  40 82 00 0C */	bne lbl_80C9FD90
/* 80C9FD88  38 60 00 00 */	li r3, 0
/* 80C9FD8C  48 00 00 88 */	b lbl_80C9FE14
lbl_80C9FD90:
/* 80C9FD90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9FD94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9FD98  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80C9FD9C  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80C9FDA0  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80C9FDA4  4B 6A 6B 44 */	b PSMTXTrans
/* 80C9FDA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9FDAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9FDB0  38 80 80 00 */	li r4, -32768
/* 80C9FDB4  4B 36 C6 80 */	b mDoMtx_YrotM__FPA4_fs
/* 80C9FDB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C9FDBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C9FDC0  38 9F 02 BC */	addi r4, r31, 0x2bc
/* 80C9FDC4  4B 6A 66 EC */	b PSMTXCopy
/* 80C9FDC8  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C9FDCC  38 63 04 08 */	addi r3, r3, l_arcName@l
/* 80C9FDD0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9FDD4  38 80 00 07 */	li r4, 7
/* 80C9FDD8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C9FDDC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C9FDE0  3C A5 00 02 */	addis r5, r5, 2
/* 80C9FDE4  38 C0 00 80 */	li r6, 0x80
/* 80C9FDE8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C9FDEC  4B 39 C5 00 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9FDF0  7C 64 1B 78 */	mr r4, r3
/* 80C9FDF4  80 7F 02 EC */	lwz r3, 0x2ec(r31)
/* 80C9FDF8  38 A0 00 01 */	li r5, 1
/* 80C9FDFC  38 DF 02 BC */	addi r6, r31, 0x2bc
/* 80C9FE00  4B 3D A1 38 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C9FE04  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80C9FE08  20 60 00 01 */	subfic r3, r0, 1
/* 80C9FE0C  30 03 FF FF */	addic r0, r3, -1
/* 80C9FE10  7C 60 19 10 */	subfe r3, r0, r3
lbl_80C9FE14:
/* 80C9FE14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9FE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9FE1C  7C 08 03 A6 */	mtlr r0
/* 80C9FE20  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9FE24  4E 80 00 20 */	blr 
