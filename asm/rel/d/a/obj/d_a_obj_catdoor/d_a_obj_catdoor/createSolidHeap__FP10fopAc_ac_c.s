lbl_80BC42C4:
/* 80BC42C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BC42C8  7C 08 02 A6 */	mflr r0
/* 80BC42CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BC42D0  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC42D4  4B 79 DF 09 */	bl _savegpr_29
/* 80BC42D8  7C 7F 1B 78 */	mr r31, r3
/* 80BC42DC  3C 60 80 BC */	lis r3, l_arcName@ha /* 0x80BC49E0@ha */
/* 80BC42E0  38 63 49 E0 */	addi r3, r3, l_arcName@l /* 0x80BC49E0@l */
/* 80BC42E4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC42E8  38 80 00 04 */	li r4, 4
/* 80BC42EC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC42F0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC42F4  3F A5 00 02 */	addis r29, r5, 2
/* 80BC42F8  3B BD C2 F8 */	addi r29, r29, -15624
/* 80BC42FC  7F A5 EB 78 */	mr r5, r29
/* 80BC4300  38 C0 00 80 */	li r6, 0x80
/* 80BC4304  4B 47 7F E9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC4308  7C 7E 1B 78 */	mr r30, r3
/* 80BC430C  3C 80 00 08 */	lis r4, 8
/* 80BC4310  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BC4314  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BC4318  4B 45 09 3D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BC431C  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80BC4320  7F C3 F3 78 */	mr r3, r30
/* 80BC4324  3C 80 00 08 */	lis r4, 8
/* 80BC4328  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BC432C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BC4330  4B 45 09 25 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BC4334  90 7F 06 68 */	stw r3, 0x668(r31)
/* 80BC4338  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80BC433C  28 00 00 00 */	cmplwi r0, 0
/* 80BC4340  41 82 00 10 */	beq lbl_80BC4350
/* 80BC4344  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 80BC4348  28 00 00 00 */	cmplwi r0, 0
/* 80BC434C  40 82 00 0C */	bne lbl_80BC4358
lbl_80BC4350:
/* 80BC4350  38 60 00 00 */	li r3, 0
/* 80BC4354  48 00 00 88 */	b lbl_80BC43DC
lbl_80BC4358:
/* 80BC4358  3C 60 80 BC */	lis r3, l_arcName@ha /* 0x80BC49E0@ha */
/* 80BC435C  38 63 49 E0 */	addi r3, r3, l_arcName@l /* 0x80BC49E0@l */
/* 80BC4360  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC4364  38 80 00 07 */	li r4, 7
/* 80BC4368  7F A5 EB 78 */	mr r5, r29
/* 80BC436C  38 C0 00 80 */	li r6, 0x80
/* 80BC4370  4B 47 7F 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC4374  7C 64 1B 78 */	mr r4, r3
/* 80BC4378  38 7F 05 74 */	addi r3, r31, 0x574
/* 80BC437C  38 A0 00 01 */	li r5, 1
/* 80BC4380  38 DF 06 34 */	addi r6, r31, 0x634
/* 80BC4384  4B 4B 5B B5 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80BC4388  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BC438C  41 82 00 0C */	beq lbl_80BC4398
/* 80BC4390  38 60 00 00 */	li r3, 0
/* 80BC4394  48 00 00 48 */	b lbl_80BC43DC
lbl_80BC4398:
/* 80BC4398  3C 60 80 BC */	lis r3, l_arcName@ha /* 0x80BC49E0@ha */
/* 80BC439C  38 63 49 E0 */	addi r3, r3, l_arcName@l /* 0x80BC49E0@l */
/* 80BC43A0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC43A4  38 80 00 07 */	li r4, 7
/* 80BC43A8  7F A5 EB 78 */	mr r5, r29
/* 80BC43AC  38 C0 00 80 */	li r6, 0x80
/* 80BC43B0  4B 47 7F 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC43B4  7C 64 1B 78 */	mr r4, r3
/* 80BC43B8  38 7F 06 6C */	addi r3, r31, 0x66c
/* 80BC43BC  38 A0 00 01 */	li r5, 1
/* 80BC43C0  38 DF 07 2C */	addi r6, r31, 0x72c
/* 80BC43C4  4B 4B 5B 75 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80BC43C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BC43CC  41 82 00 0C */	beq lbl_80BC43D8
/* 80BC43D0  38 60 00 00 */	li r3, 0
/* 80BC43D4  48 00 00 08 */	b lbl_80BC43DC
lbl_80BC43D8:
/* 80BC43D8  38 60 00 01 */	li r3, 1
lbl_80BC43DC:
/* 80BC43DC  39 61 00 20 */	addi r11, r1, 0x20
/* 80BC43E0  4B 79 DE 49 */	bl _restgpr_29
/* 80BC43E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BC43E8  7C 08 03 A6 */	mtlr r0
/* 80BC43EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80BC43F0  4E 80 00 20 */	blr 
