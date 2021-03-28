lbl_8025AF4C:
/* 8025AF4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8025AF50  7C 08 02 A6 */	mflr r0
/* 8025AF54  90 01 00 34 */	stw r0, 0x34(r1)
/* 8025AF58  39 61 00 30 */	addi r11, r1, 0x30
/* 8025AF5C  48 10 72 79 */	bl _savegpr_27
/* 8025AF60  38 81 00 08 */	addi r4, r1, 8
/* 8025AF64  4B FF FE C1 */	bl getResetArchiveBank__FiPPCUc
/* 8025AF68  7C 7C 1B 78 */	mr r28, r3
/* 8025AF6C  80 01 00 08 */	lwz r0, 8(r1)
/* 8025AF70  28 00 00 00 */	cmplwi r0, 0
/* 8025AF74  40 82 00 0C */	bne lbl_8025AF80
/* 8025AF78  38 60 00 01 */	li r3, 1
/* 8025AF7C  48 00 01 5C */	b lbl_8025B0D8
lbl_8025AF80:
/* 8025AF80  83 CD 87 EC */	lwz r30, mArcBankName__20dStage_roomControl_c(r13)
/* 8025AF84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025AF88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025AF8C  3F A3 00 02 */	addis r29, r3, 2
/* 8025AF90  3C 60 80 3A */	lis r3, d_s_d_s_room__stringBase0@ha
/* 8025AF94  3B E3 A3 88 */	addi r31, r3, d_s_d_s_room__stringBase0@l
/* 8025AF98  3B BD C2 F8 */	addi r29, r29, -15624
/* 8025AF9C  48 00 01 30 */	b lbl_8025B0CC
lbl_8025AFA0:
/* 8025AFA0  7F FB FB 78 */	mr r27, r31
/* 8025AFA4  80 61 00 08 */	lwz r3, 8(r1)
/* 8025AFA8  7C 03 E0 AE */	lbzx r0, r3, r28
/* 8025AFAC  2C 00 00 FF */	cmpwi r0, 0xff
/* 8025AFB0  41 82 00 10 */	beq lbl_8025AFC0
/* 8025AFB4  1C 60 00 0A */	mulli r3, r0, 0xa
/* 8025AFB8  3B 63 00 01 */	addi r27, r3, 1
/* 8025AFBC  7F 7E DA 14 */	add r27, r30, r27
lbl_8025AFC0:
/* 8025AFC0  7F 63 DB 78 */	mr r3, r27
/* 8025AFC4  7F E4 FB 78 */	mr r4, r31
/* 8025AFC8  48 10 D9 CD */	bl strcmp
/* 8025AFCC  2C 03 00 00 */	cmpwi r3, 0
/* 8025AFD0  41 82 00 EC */	beq lbl_8025B0BC
/* 8025AFD4  7F 63 DB 78 */	mr r3, r27
/* 8025AFD8  3C 80 80 3A */	lis r4, d_s_d_s_room__stringBase0@ha
/* 8025AFDC  38 84 A3 88 */	addi r4, r4, d_s_d_s_room__stringBase0@l
/* 8025AFE0  38 84 00 01 */	addi r4, r4, 1
/* 8025AFE4  38 A0 00 04 */	li r5, 4
/* 8025AFE8  48 11 1A 8D */	bl strnicmp
/* 8025AFEC  2C 03 00 00 */	cmpwi r3, 0
/* 8025AFF0  40 82 00 80 */	bne lbl_8025B070
/* 8025AFF4  7F 63 DB 78 */	mr r3, r27
/* 8025AFF8  7F A4 EB 78 */	mr r4, r29
/* 8025AFFC  38 A0 00 80 */	li r5, 0x80
/* 8025B000  4B DE 11 61 */	bl syncRes__14dRes_control_cFPCcP11dRes_info_ci
/* 8025B004  2C 03 00 00 */	cmpwi r3, 0
/* 8025B008  40 80 00 5C */	bge lbl_8025B064
/* 8025B00C  4B DB 3D E1 */	bl mDoExt_getArchiveHeap__Fv
/* 8025B010  7C 68 1B 78 */	mr r8, r3
/* 8025B014  7F 63 DB 78 */	mr r3, r27
/* 8025B018  7F A4 EB 78 */	mr r4, r29
/* 8025B01C  38 A0 00 80 */	li r5, 0x80
/* 8025B020  3C C0 80 3A */	lis r6, d_s_d_s_room__stringBase0@ha
/* 8025B024  38 C6 A3 88 */	addi r6, r6, d_s_d_s_room__stringBase0@l
/* 8025B028  38 C6 00 06 */	addi r6, r6, 6
/* 8025B02C  38 E0 00 00 */	li r7, 0
/* 8025B030  4B DE 10 49 */	bl setRes__14dRes_control_cFPCcP11dRes_info_ciPCcUcP7JKRHeap
/* 8025B034  2C 03 00 00 */	cmpwi r3, 0
/* 8025B038  40 82 00 24 */	bne lbl_8025B05C
/* 8025B03C  3C 60 80 3A */	lis r3, d_s_d_s_room__stringBase0@ha
/* 8025B040  38 63 A3 88 */	addi r3, r3, d_s_d_s_room__stringBase0@l
/* 8025B044  38 63 00 13 */	addi r3, r3, 0x13
/* 8025B048  7F 84 E3 78 */	mr r4, r28
/* 8025B04C  7F 65 DB 78 */	mr r5, r27
/* 8025B050  4C C6 31 82 */	crclr 6
/* 8025B054  4B DA BB B9 */	bl OSReport_Error
/* 8025B058  48 00 00 64 */	b lbl_8025B0BC
lbl_8025B05C:
/* 8025B05C  38 60 00 00 */	li r3, 0
/* 8025B060  48 00 00 78 */	b lbl_8025B0D8
lbl_8025B064:
/* 8025B064  41 82 00 58 */	beq lbl_8025B0BC
/* 8025B068  38 60 00 00 */	li r3, 0
/* 8025B06C  48 00 00 6C */	b lbl_8025B0D8
lbl_8025B070:
/* 8025B070  4B DB 3D 7D */	bl mDoExt_getArchiveHeap__Fv
/* 8025B074  7C 68 1B 78 */	mr r8, r3
/* 8025B078  7F 63 DB 78 */	mr r3, r27
/* 8025B07C  7F A4 EB 78 */	mr r4, r29
/* 8025B080  38 A0 00 80 */	li r5, 0x80
/* 8025B084  3C C0 80 3A */	lis r6, d_s_d_s_room__stringBase0@ha
/* 8025B088  38 C6 A3 88 */	addi r6, r6, d_s_d_s_room__stringBase0@l
/* 8025B08C  38 C6 00 06 */	addi r6, r6, 6
/* 8025B090  38 E0 00 00 */	li r7, 0
/* 8025B094  4B DE 0F E5 */	bl setRes__14dRes_control_cFPCcP11dRes_info_ciPCcUcP7JKRHeap
/* 8025B098  2C 03 00 00 */	cmpwi r3, 0
/* 8025B09C  40 82 00 20 */	bne lbl_8025B0BC
/* 8025B0A0  3C 60 80 3A */	lis r3, d_s_d_s_room__stringBase0@ha
/* 8025B0A4  38 63 A3 88 */	addi r3, r3, d_s_d_s_room__stringBase0@l
/* 8025B0A8  38 63 00 13 */	addi r3, r3, 0x13
/* 8025B0AC  7F 84 E3 78 */	mr r4, r28
/* 8025B0B0  7F 65 DB 78 */	mr r5, r27
/* 8025B0B4  4C C6 31 82 */	crclr 6
/* 8025B0B8  4B DA BB 55 */	bl OSReport_Error
lbl_8025B0BC:
/* 8025B0BC  7F 83 E3 78 */	mr r3, r28
/* 8025B0C0  7F 64 DB 78 */	mr r4, r27
/* 8025B0C4  4B DC 98 49 */	bl setArcBank__20dStage_roomControl_cFiPCc
/* 8025B0C8  3B 9C 00 01 */	addi r28, r28, 1
lbl_8025B0CC:
/* 8025B0CC  2C 1C 00 20 */	cmpwi r28, 0x20
/* 8025B0D0  41 80 FE D0 */	blt lbl_8025AFA0
/* 8025B0D4  38 60 00 01 */	li r3, 1
lbl_8025B0D8:
/* 8025B0D8  39 61 00 30 */	addi r11, r1, 0x30
/* 8025B0DC  48 10 71 45 */	bl _restgpr_27
/* 8025B0E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8025B0E4  7C 08 03 A6 */	mtlr r0
/* 8025B0E8  38 21 00 30 */	addi r1, r1, 0x30
/* 8025B0EC  4E 80 00 20 */	blr 
