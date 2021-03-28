lbl_80584F64:
/* 80584F64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80584F68  7C 08 02 A6 */	mflr r0
/* 80584F6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80584F70  39 61 00 20 */	addi r11, r1, 0x20
/* 80584F74  4B DD D2 5C */	b _savegpr_26
/* 80584F78  7C 7C 1B 78 */	mr r28, r3
/* 80584F7C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80584F80  54 1E 03 BE */	clrlwi r30, r0, 0xe
/* 80584F84  3C 1E FF FD */	addis r0, r30, 0xfffd
/* 80584F88  28 00 FF FF */	cmplwi r0, 0xffff
/* 80584F8C  40 82 00 5C */	bne lbl_80584FE8
/* 80584F90  3C 60 80 58 */	lis r3, struct_80585710+0x0@ha
/* 80584F94  38 63 57 10 */	addi r3, r3, struct_80585710+0x0@l
/* 80584F98  38 63 01 53 */	addi r3, r3, 0x153
/* 80584F9C  3C 80 80 58 */	lis r4, data_8058586C@ha
/* 80584FA0  38 84 58 6C */	addi r4, r4, data_8058586C@l
/* 80584FA4  80 84 00 00 */	lwz r4, 0(r4)
/* 80584FA8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80584FAC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80584FB0  3C A5 00 02 */	addis r5, r5, 2
/* 80584FB4  38 C0 00 80 */	li r6, 0x80
/* 80584FB8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80584FBC  4B AB 73 C0 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80584FC0  3C 80 00 08 */	lis r4, 8
/* 80584FC4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80584FC8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80584FCC  4B A8 FC 88 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80584FD0  90 7C 05 70 */	stw r3, 0x570(r28)
/* 80584FD4  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 80584FD8  28 00 00 00 */	cmplwi r0, 0
/* 80584FDC  40 82 00 0C */	bne lbl_80584FE8
/* 80584FE0  38 60 00 00 */	li r3, 0
/* 80584FE4  48 00 00 CC */	b lbl_805850B0
lbl_80584FE8:
/* 80584FE8  3B A0 00 00 */	li r29, 0
/* 80584FEC  3B 60 00 00 */	li r27, 0
/* 80584FF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80584FF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80584FF8  3F E3 00 02 */	addis r31, r3, 2
/* 80584FFC  3B FF C2 F8 */	addi r31, r31, -15624
lbl_80585000:
/* 80585000  38 00 00 01 */	li r0, 1
/* 80585004  7C 00 E8 30 */	slw r0, r0, r29
/* 80585008  7F C0 00 39 */	and. r0, r30, r0
/* 8058500C  41 82 00 90 */	beq lbl_8058509C
/* 80585010  3C 60 80 58 */	lis r3, struct_80585710+0x0@ha
/* 80585014  38 63 57 10 */	addi r3, r3, struct_80585710+0x0@l
/* 80585018  38 63 01 53 */	addi r3, r3, 0x153
/* 8058501C  3C 80 80 58 */	lis r4, data_8058586C@ha
/* 80585020  38 04 58 6C */	addi r0, r4, data_8058586C@l
/* 80585024  7C 80 DA 14 */	add r4, r0, r27
/* 80585028  80 84 00 04 */	lwz r4, 4(r4)
/* 8058502C  7F E5 FB 78 */	mr r5, r31
/* 80585030  38 C0 00 80 */	li r6, 0x80
/* 80585034  4B AB 73 48 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80585038  7C 7A 1B 78 */	mr r26, r3
/* 8058503C  3C 60 80 58 */	lis r3, struct_80585710+0x0@ha
/* 80585040  38 63 57 10 */	addi r3, r3, struct_80585710+0x0@l
/* 80585044  38 63 01 53 */	addi r3, r3, 0x153
/* 80585048  3C 80 80 58 */	lis r4, data_8058586C@ha
/* 8058504C  38 84 58 6C */	addi r4, r4, data_8058586C@l
/* 80585050  80 84 00 00 */	lwz r4, 0(r4)
/* 80585054  7F E5 FB 78 */	mr r5, r31
/* 80585058  38 C0 00 80 */	li r6, 0x80
/* 8058505C  4B AB 73 20 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80585060  7C 64 1B 78 */	mr r4, r3
/* 80585064  7F 43 D3 78 */	mr r3, r26
/* 80585068  4B A8 97 CC */	b mDoExt_setupShareTexture__FP12J3DModelDataP12J3DModelData
/* 8058506C  7F 43 D3 78 */	mr r3, r26
/* 80585070  3C 80 00 08 */	lis r4, 8
/* 80585074  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80585078  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8058507C  4B A8 FB D8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80585080  38 1B 05 74 */	addi r0, r27, 0x574
/* 80585084  7C 7C 01 2E */	stwx r3, r28, r0
/* 80585088  7C 1C 00 2E */	lwzx r0, r28, r0
/* 8058508C  28 00 00 00 */	cmplwi r0, 0
/* 80585090  40 82 00 0C */	bne lbl_8058509C
/* 80585094  38 60 00 00 */	li r3, 0
/* 80585098  48 00 00 18 */	b lbl_805850B0
lbl_8058509C:
/* 8058509C  3B BD 00 01 */	addi r29, r29, 1
/* 805850A0  2C 1D 00 12 */	cmpwi r29, 0x12
/* 805850A4  3B 7B 00 04 */	addi r27, r27, 4
/* 805850A8  41 80 FF 58 */	blt lbl_80585000
/* 805850AC  38 60 00 01 */	li r3, 1
lbl_805850B0:
/* 805850B0  39 61 00 20 */	addi r11, r1, 0x20
/* 805850B4  4B DD D1 68 */	b _restgpr_26
/* 805850B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805850BC  7C 08 03 A6 */	mtlr r0
/* 805850C0  38 21 00 20 */	addi r1, r1, 0x20
/* 805850C4  4E 80 00 20 */	blr 
