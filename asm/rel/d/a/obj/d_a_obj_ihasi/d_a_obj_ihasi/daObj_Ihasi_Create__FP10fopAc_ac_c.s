lbl_80C26540:
/* 80C26540  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C26544  7C 08 02 A6 */	mflr r0
/* 80C26548  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C2654C  39 61 00 40 */	addi r11, r1, 0x40
/* 80C26550  4B 73 BC 89 */	bl _savegpr_28
/* 80C26554  7C 7E 1B 78 */	mr r30, r3
/* 80C26558  3C 80 80 C2 */	lis r4, lit_3841@ha /* 0x80C26888@ha */
/* 80C2655C  3B E4 68 88 */	addi r31, r4, lit_3841@l /* 0x80C26888@l */
/* 80C26560  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C26564  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C26568  40 82 00 1C */	bne lbl_80C26584
/* 80C2656C  28 1E 00 00 */	cmplwi r30, 0
/* 80C26570  41 82 00 08 */	beq lbl_80C26578
/* 80C26574  4B 3F 25 F1 */	bl __ct__10fopAc_ac_cFv
lbl_80C26578:
/* 80C26578  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C2657C  60 00 00 08 */	ori r0, r0, 8
/* 80C26580  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C26584:
/* 80C26584  38 7E 05 68 */	addi r3, r30, 0x568
/* 80C26588  3C 80 80 C2 */	lis r4, d_a_obj_ihasi__stringBase0@ha /* 0x80C268C4@ha */
/* 80C2658C  38 84 68 C4 */	addi r4, r4, d_a_obj_ihasi__stringBase0@l /* 0x80C268C4@l */
/* 80C26590  4B 40 69 2D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C26594  7C 7D 1B 78 */	mr r29, r3
/* 80C26598  2C 1D 00 04 */	cmpwi r29, 4
/* 80C2659C  40 82 02 C8 */	bne lbl_80C26864
/* 80C265A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C265A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C265A8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C265AC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C265B0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C265B4  A0 84 00 A6 */	lhz r4, 0xa6(r4)
/* 80C265B8  4B 40 E4 05 */	bl isEventBit__11dSv_event_cCFUs
/* 80C265BC  2C 03 00 00 */	cmpwi r3, 0
/* 80C265C0  41 82 00 FC */	beq lbl_80C266BC
/* 80C265C4  38 60 00 00 */	li r3, 0
/* 80C265C8  B0 61 00 08 */	sth r3, 8(r1)
/* 80C265CC  38 00 80 00 */	li r0, -32768
/* 80C265D0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80C265D4  B0 61 00 0C */	sth r3, 0xc(r1)
/* 80C265D8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80C265DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C265E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C265E4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C265E8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C265EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C265F0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C265F4  54 00 00 0E */	rlwinm r0, r0, 0, 0, 7
/* 80C265F8  64 1C 00 FF */	oris r28, r0, 0xff
/* 80C265FC  63 9C FE 00 */	ori r28, r28, 0xfe00
/* 80C26600  38 60 01 B4 */	li r3, 0x1b4
/* 80C26604  7F 84 E3 78 */	mr r4, r28
/* 80C26608  38 A1 00 10 */	addi r5, r1, 0x10
/* 80C2660C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C26610  7C 06 07 74 */	extsb r6, r0
/* 80C26614  38 E1 00 08 */	addi r7, r1, 8
/* 80C26618  39 00 00 00 */	li r8, 0
/* 80C2661C  39 20 FF FF */	li r9, -1
/* 80C26620  4B 3F 37 79 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80C26624  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C26628  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C2662C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C26630  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C26634  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C26638  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C2663C  A8 61 00 0A */	lha r3, 0xa(r1)
/* 80C26640  38 03 55 55 */	addi r0, r3, 0x5555
/* 80C26644  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80C26648  38 60 01 B4 */	li r3, 0x1b4
/* 80C2664C  7F 84 E3 78 */	mr r4, r28
/* 80C26650  38 A1 00 10 */	addi r5, r1, 0x10
/* 80C26654  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C26658  7C 06 07 74 */	extsb r6, r0
/* 80C2665C  38 E1 00 08 */	addi r7, r1, 8
/* 80C26660  39 00 00 00 */	li r8, 0
/* 80C26664  39 20 FF FF */	li r9, -1
/* 80C26668  4B 3F 37 31 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80C2666C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C26670  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C26674  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C26678  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C2667C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C26680  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C26684  A8 61 00 0A */	lha r3, 0xa(r1)
/* 80C26688  38 03 55 55 */	addi r0, r3, 0x5555
/* 80C2668C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80C26690  38 60 01 B4 */	li r3, 0x1b4
/* 80C26694  7F 84 E3 78 */	mr r4, r28
/* 80C26698  38 A1 00 10 */	addi r5, r1, 0x10
/* 80C2669C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C266A0  7C 06 07 74 */	extsb r6, r0
/* 80C266A4  38 E1 00 08 */	addi r7, r1, 8
/* 80C266A8  39 00 00 00 */	li r8, 0
/* 80C266AC  39 20 FF FF */	li r9, -1
/* 80C266B0  4B 3F 36 E9 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80C266B4  38 60 00 05 */	li r3, 5
/* 80C266B8  48 00 01 B0 */	b lbl_80C26868
lbl_80C266BC:
/* 80C266BC  7F C3 F3 78 */	mr r3, r30
/* 80C266C0  3C 80 80 C2 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80C26324@ha */
/* 80C266C4  38 84 63 24 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80C26324@l */
/* 80C266C8  38 A0 43 B0 */	li r5, 0x43b0
/* 80C266CC  4B 3F 3D E5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C266D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C266D4  40 82 00 0C */	bne lbl_80C266E0
/* 80C266D8  38 60 00 05 */	li r3, 5
/* 80C266DC  48 00 01 8C */	b lbl_80C26868
lbl_80C266E0:
/* 80C266E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C266E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C266E8  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80C266EC  7F 83 E3 78 */	mr r3, r28
/* 80C266F0  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 80C266F4  7F C5 F3 78 */	mr r5, r30
/* 80C266F8  4B 44 E3 11 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C266FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C26700  41 82 00 0C */	beq lbl_80C2670C
/* 80C26704  38 60 00 05 */	li r3, 5
/* 80C26708  48 00 01 60 */	b lbl_80C26868
lbl_80C2670C:
/* 80C2670C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80C26710  4B 64 12 45 */	bl cM_rndF__Ff
/* 80C26714  FC 00 08 1E */	fctiwz f0, f1
/* 80C26718  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C2671C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C26720  B0 1E 05 7C */	sth r0, 0x57c(r30)
/* 80C26724  38 7C 3E C8 */	addi r3, r28, 0x3ec8
/* 80C26728  3C 80 80 C2 */	lis r4, d_a_obj_ihasi__stringBase0@ha /* 0x80C268C4@ha */
/* 80C2672C  38 84 68 C4 */	addi r4, r4, d_a_obj_ihasi__stringBase0@l /* 0x80C268C4@l */
/* 80C26730  38 84 00 0A */	addi r4, r4, 0xa
/* 80C26734  4B 74 22 61 */	bl strcmp
/* 80C26738  2C 03 00 00 */	cmpwi r3, 0
/* 80C2673C  40 82 01 20 */	bne lbl_80C2685C
/* 80C26740  88 DE 04 E2 */	lbz r6, 0x4e2(r30)
/* 80C26744  7C C0 07 75 */	extsb. r0, r6
/* 80C26748  40 82 01 14 */	bne lbl_80C2685C
/* 80C2674C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C26750  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C26754  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C26758  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C2675C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C26760  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C26764  38 60 02 17 */	li r3, 0x217
/* 80C26768  38 80 FF 35 */	li r4, -203
/* 80C2676C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80C26770  7C C6 07 74 */	extsb r6, r6
/* 80C26774  38 E0 00 00 */	li r7, 0
/* 80C26778  39 00 00 00 */	li r8, 0
/* 80C2677C  39 20 FF FF */	li r9, -1
/* 80C26780  4B 3F 36 19 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80C26784  38 60 00 00 */	li r3, 0
/* 80C26788  B0 61 00 08 */	sth r3, 8(r1)
/* 80C2678C  38 00 80 00 */	li r0, -32768
/* 80C26790  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80C26794  B0 61 00 0C */	sth r3, 0xc(r1)
/* 80C26798  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C2679C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C267A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C267A4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C267A8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C267AC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C267B0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C267B4  54 00 00 0E */	rlwinm r0, r0, 0, 0, 7
/* 80C267B8  64 1C 00 FF */	oris r28, r0, 0xff
/* 80C267BC  63 9C FE 00 */	ori r28, r28, 0xfe00
/* 80C267C0  38 60 01 B4 */	li r3, 0x1b4
/* 80C267C4  7F 84 E3 78 */	mr r4, r28
/* 80C267C8  38 A1 00 10 */	addi r5, r1, 0x10
/* 80C267CC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C267D0  7C 06 07 74 */	extsb r6, r0
/* 80C267D4  38 E1 00 08 */	addi r7, r1, 8
/* 80C267D8  39 00 00 00 */	li r8, 0
/* 80C267DC  39 20 FF FF */	li r9, -1
/* 80C267E0  4B 3F 35 B9 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80C267E4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80C267E8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C267EC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C267F0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C267F4  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80C267F8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C267FC  38 60 01 B4 */	li r3, 0x1b4
/* 80C26800  7F 84 E3 78 */	mr r4, r28
/* 80C26804  38 A1 00 10 */	addi r5, r1, 0x10
/* 80C26808  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C2680C  7C 06 07 74 */	extsb r6, r0
/* 80C26810  38 E1 00 08 */	addi r7, r1, 8
/* 80C26814  39 00 00 00 */	li r8, 0
/* 80C26818  39 20 FF FF */	li r9, -1
/* 80C2681C  4B 3F 35 7D */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80C26820  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80C26824  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C26828  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C2682C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C26830  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80C26834  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C26838  38 60 01 B4 */	li r3, 0x1b4
/* 80C2683C  7F 84 E3 78 */	mr r4, r28
/* 80C26840  38 A1 00 10 */	addi r5, r1, 0x10
/* 80C26844  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C26848  7C 06 07 74 */	extsb r6, r0
/* 80C2684C  38 E1 00 08 */	addi r7, r1, 8
/* 80C26850  39 00 00 00 */	li r8, 0
/* 80C26854  39 20 FF FF */	li r9, -1
/* 80C26858  4B 3F 35 41 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_80C2685C:
/* 80C2685C  7F C3 F3 78 */	mr r3, r30
/* 80C26860  4B FF F9 A5 */	bl daObj_Ihasi_Execute__FP15obj_ihasi_class
lbl_80C26864:
/* 80C26864  7F A3 EB 78 */	mr r3, r29
lbl_80C26868:
/* 80C26868  39 61 00 40 */	addi r11, r1, 0x40
/* 80C2686C  4B 73 B9 B9 */	bl _restgpr_28
/* 80C26870  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C26874  7C 08 03 A6 */	mtlr r0
/* 80C26878  38 21 00 40 */	addi r1, r1, 0x40
/* 80C2687C  4E 80 00 20 */	blr 
