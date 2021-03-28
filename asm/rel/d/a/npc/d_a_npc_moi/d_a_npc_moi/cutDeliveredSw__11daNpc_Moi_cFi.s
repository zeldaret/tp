lbl_80A77740:
/* 80A77740  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A77744  7C 08 02 A6 */	mflr r0
/* 80A77748  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A7774C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A77750  4B 8E AA 78 */	b _savegpr_24
/* 80A77754  7C 7A 1B 78 */	mr r26, r3
/* 80A77758  7C 98 23 78 */	mr r24, r4
/* 80A7775C  3C 60 80 A8 */	lis r3, m__17daNpc_Moi_Param_c@ha
/* 80A77760  3B E3 AE F0 */	addi r31, r3, m__17daNpc_Moi_Param_c@l
/* 80A77764  3B C0 00 00 */	li r30, 0
/* 80A77768  3B A0 FF FF */	li r29, -1
/* 80A7776C  3B 80 00 00 */	li r28, 0
/* 80A77770  3B 60 00 00 */	li r27, 0
/* 80A77774  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A77778  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A7777C  3B 23 4F F8 */	addi r25, r3, 0x4ff8
/* 80A77780  7F 23 CB 78 */	mr r3, r25
/* 80A77784  3C A0 80 A8 */	lis r5, struct_80A7B0D8+0x0@ha
/* 80A77788  38 A5 B0 D8 */	addi r5, r5, struct_80A7B0D8+0x0@l
/* 80A7778C  38 A5 00 73 */	addi r5, r5, 0x73
/* 80A77790  38 C0 00 03 */	li r6, 3
/* 80A77794  4B 5D 09 58 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A77798  28 03 00 00 */	cmplwi r3, 0
/* 80A7779C  41 82 00 08 */	beq lbl_80A777A4
/* 80A777A0  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A777A4:
/* 80A777A4  7F 23 CB 78 */	mr r3, r25
/* 80A777A8  7F 04 C3 78 */	mr r4, r24
/* 80A777AC  3C A0 80 A8 */	lis r5, struct_80A7B0D8+0x0@ha
/* 80A777B0  38 A5 B0 D8 */	addi r5, r5, struct_80A7B0D8+0x0@l
/* 80A777B4  38 A5 00 77 */	addi r5, r5, 0x77
/* 80A777B8  38 C0 00 03 */	li r6, 3
/* 80A777BC  4B 5D 09 30 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A777C0  28 03 00 00 */	cmplwi r3, 0
/* 80A777C4  41 82 00 08 */	beq lbl_80A777CC
/* 80A777C8  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A777CC:
/* 80A777CC  7F 23 CB 78 */	mr r3, r25
/* 80A777D0  7F 04 C3 78 */	mr r4, r24
/* 80A777D4  4B 5D 05 78 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A777D8  2C 03 00 00 */	cmpwi r3, 0
/* 80A777DC  41 82 01 B0 */	beq lbl_80A7798C
/* 80A777E0  2C 1D 00 02 */	cmpwi r29, 2
/* 80A777E4  41 82 00 DC */	beq lbl_80A778C0
/* 80A777E8  40 80 00 14 */	bge lbl_80A777FC
/* 80A777EC  2C 1D 00 00 */	cmpwi r29, 0
/* 80A777F0  41 82 00 1C */	beq lbl_80A7780C
/* 80A777F4  40 80 00 6C */	bge lbl_80A77860
/* 80A777F8  48 00 01 94 */	b lbl_80A7798C
lbl_80A777FC:
/* 80A777FC  2C 1D 00 04 */	cmpwi r29, 4
/* 80A77800  41 82 01 34 */	beq lbl_80A77934
/* 80A77804  40 80 01 88 */	bge lbl_80A7798C
/* 80A77808  48 00 01 18 */	b lbl_80A77920
lbl_80A7780C:
/* 80A7780C  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80A77810  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A77814  41 82 00 24 */	beq lbl_80A77838
/* 80A77818  83 3A 0B 5C */	lwz r25, 0xb5c(r26)
/* 80A7781C  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80A77820  4B 6C E0 78 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A77824  93 3A 0B 5C */	stw r25, 0xb5c(r26)
/* 80A77828  38 00 00 15 */	li r0, 0x15
/* 80A7782C  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80A77830  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A77834  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80A77838:
/* 80A77838  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 80A7783C  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80A77840  4B 6C E0 58 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A77844  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 80A77848  38 00 00 2D */	li r0, 0x2d
/* 80A7784C  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80A77850  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A77854  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
/* 80A77858  93 9A 0D C4 */	stw r28, 0xdc4(r26)
/* 80A7785C  48 00 01 30 */	b lbl_80A7798C
lbl_80A77860:
/* 80A77860  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80A77864  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A77868  41 82 00 24 */	beq lbl_80A7788C
/* 80A7786C  83 3A 0B 5C */	lwz r25, 0xb5c(r26)
/* 80A77870  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80A77874  4B 6C E0 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A77878  93 3A 0B 5C */	stw r25, 0xb5c(r26)
/* 80A7787C  38 00 00 15 */	li r0, 0x15
/* 80A77880  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80A77884  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A77888  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80A7788C:
/* 80A7788C  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 80A77890  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80A77894  41 82 00 24 */	beq lbl_80A778B8
/* 80A77898  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 80A7789C  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80A778A0  4B 6C DF F8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A778A4  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 80A778A8  38 00 00 2D */	li r0, 0x2d
/* 80A778AC  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80A778B0  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A778B4  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_80A778B8:
/* 80A778B8  93 9A 0D C4 */	stw r28, 0xdc4(r26)
/* 80A778BC  48 00 00 D0 */	b lbl_80A7798C
lbl_80A778C0:
/* 80A778C0  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80A778C4  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A778C8  41 82 00 24 */	beq lbl_80A778EC
/* 80A778CC  83 3A 0B 5C */	lwz r25, 0xb5c(r26)
/* 80A778D0  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80A778D4  4B 6C DF C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A778D8  93 3A 0B 5C */	stw r25, 0xb5c(r26)
/* 80A778DC  38 00 00 15 */	li r0, 0x15
/* 80A778E0  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80A778E4  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A778E8  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80A778EC:
/* 80A778EC  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 80A778F0  2C 00 00 00 */	cmpwi r0, 0
/* 80A778F4  41 82 00 24 */	beq lbl_80A77918
/* 80A778F8  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 80A778FC  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80A77900  4B 6C DF 98 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A77904  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 80A77908  38 00 00 00 */	li r0, 0
/* 80A7790C  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80A77910  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A77914  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_80A77918:
/* 80A77918  93 9A 0D C4 */	stw r28, 0xdc4(r26)
/* 80A7791C  48 00 00 70 */	b lbl_80A7798C
lbl_80A77920:
/* 80A77920  7F 43 D3 78 */	mr r3, r26
/* 80A77924  80 9A 0A 7C */	lwz r4, 0xa7c(r26)
/* 80A77928  38 A0 00 00 */	li r5, 0
/* 80A7792C  4B 6D 42 C4 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A77930  48 00 00 5C */	b lbl_80A7798C
lbl_80A77934:
/* 80A77934  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80A77938  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A7793C  41 82 00 24 */	beq lbl_80A77960
/* 80A77940  83 3A 0B 5C */	lwz r25, 0xb5c(r26)
/* 80A77944  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80A77948  4B 6C DF 50 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A7794C  93 3A 0B 5C */	stw r25, 0xb5c(r26)
/* 80A77950  38 00 00 15 */	li r0, 0x15
/* 80A77954  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80A77958  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A7795C  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80A77960:
/* 80A77960  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 80A77964  2C 00 00 00 */	cmpwi r0, 0
/* 80A77968  41 82 00 24 */	beq lbl_80A7798C
/* 80A7796C  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 80A77970  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80A77974  4B 6C DF 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A77978  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 80A7797C  38 00 00 00 */	li r0, 0
/* 80A77980  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80A77984  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A77988  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_80A7798C:
/* 80A7798C  2C 1D 00 03 */	cmpwi r29, 3
/* 80A77990  41 82 01 BC */	beq lbl_80A77B4C
/* 80A77994  40 80 00 18 */	bge lbl_80A779AC
/* 80A77998  2C 1D 00 02 */	cmpwi r29, 2
/* 80A7799C  40 80 01 60 */	bge lbl_80A77AFC
/* 80A779A0  2C 1D 00 00 */	cmpwi r29, 0
/* 80A779A4  40 80 00 14 */	bge lbl_80A779B8
/* 80A779A8  48 00 01 DC */	b lbl_80A77B84
lbl_80A779AC:
/* 80A779AC  2C 1D 00 05 */	cmpwi r29, 5
/* 80A779B0  40 80 01 D4 */	bge lbl_80A77B84
/* 80A779B4  48 00 01 CC */	b lbl_80A77B80
lbl_80A779B8:
/* 80A779B8  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80A779BC  2C 00 00 00 */	cmpwi r0, 0
/* 80A779C0  41 82 00 24 */	beq lbl_80A779E4
/* 80A779C4  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80A779C8  4B 6C DD 34 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A779CC  38 00 00 00 */	li r0, 0
/* 80A779D0  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80A779D4  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A779D8  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80A779DC  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80A779E0  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80A779E4:
/* 80A779E4  38 00 00 00 */	li r0, 0
/* 80A779E8  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80A779EC  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 80A779F0  48 00 31 75 */	bl func_80A7AB64
/* 80A779F4  2C 03 00 00 */	cmpwi r3, 0
/* 80A779F8  40 82 00 28 */	bne lbl_80A77A20
/* 80A779FC  2C 1D 00 01 */	cmpwi r29, 1
/* 80A77A00  40 82 00 1C */	bne lbl_80A77A1C
/* 80A77A04  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A77A08  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80A77A0C  D0 1A 04 F8 */	stfs f0, 0x4f8(r26)
/* 80A77A10  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80A77A14  D0 1A 05 00 */	stfs f0, 0x500(r26)
/* 80A77A18  3B C0 00 01 */	li r30, 1
lbl_80A77A1C:
/* 80A77A1C  3B 60 00 01 */	li r27, 1
lbl_80A77A20:
/* 80A77A20  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A77A24  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A77A28  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A77A2C  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 80A77A30  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A77A34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A77A38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A77A3C  A8 9A 0D 7A */	lha r4, 0xd7a(r26)
/* 80A77A40  4B 59 49 9C */	b mDoMtx_YrotS__FPA4_fs
/* 80A77A44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A77A48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A77A4C  38 81 00 14 */	addi r4, r1, 0x14
/* 80A77A50  7C 85 23 78 */	mr r5, r4
/* 80A77A54  4B 8C F3 18 */	b PSMTXMultVec
/* 80A77A58  38 61 00 08 */	addi r3, r1, 8
/* 80A77A5C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80A77A60  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A77A64  4B 7E F0 80 */	b __pl__4cXyzCFRC3Vec
/* 80A77A68  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A77A6C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A77A70  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A77A74  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A77A78  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A77A7C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A77A80  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80A77A84  38 81 00 14 */	addi r4, r1, 0x14
/* 80A77A88  4B 8C F9 14 */	b PSVECSquareDistance
/* 80A77A8C  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 80A77A90  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80A77A94  40 80 00 20 */	bge lbl_80A77AB4
/* 80A77A98  2C 1B 00 00 */	cmpwi r27, 0
/* 80A77A9C  40 82 00 18 */	bne lbl_80A77AB4
/* 80A77AA0  38 7A 05 2C */	addi r3, r26, 0x52c
/* 80A77AA4  C0 3F 01 98 */	lfs f1, 0x198(r31)
/* 80A77AA8  C0 5F 01 C8 */	lfs f2, 0x1c8(r31)
/* 80A77AAC  4B 7F 8C 94 */	b cLib_chaseF__FPfff
/* 80A77AB0  48 00 00 0C */	b lbl_80A77ABC
lbl_80A77AB4:
/* 80A77AB4  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A77AB8  D0 1A 05 2C */	stfs f0, 0x52c(r26)
lbl_80A77ABC:
/* 80A77ABC  2C 1B 00 00 */	cmpwi r27, 0
/* 80A77AC0  41 82 00 C4 */	beq lbl_80A77B84
/* 80A77AC4  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 80A77AC8  FC 00 02 10 */	fabs f0, f0
/* 80A77ACC  FC 20 00 18 */	frsp f1, f0
/* 80A77AD0  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80A77AD4  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80A77AD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A77ADC  40 80 00 A8 */	bge lbl_80A77B84
/* 80A77AE0  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A77AE4  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80A77AE8  D0 1A 04 F8 */	stfs f0, 0x4f8(r26)
/* 80A77AEC  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80A77AF0  D0 1A 05 00 */	stfs f0, 0x500(r26)
/* 80A77AF4  3B C0 00 01 */	li r30, 1
/* 80A77AF8  48 00 00 8C */	b lbl_80A77B84
lbl_80A77AFC:
/* 80A77AFC  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80A77B00  2C 00 00 01 */	cmpwi r0, 1
/* 80A77B04  41 82 00 28 */	beq lbl_80A77B2C
/* 80A77B08  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80A77B0C  4B 6C DB F0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A77B10  38 00 00 00 */	li r0, 0
/* 80A77B14  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80A77B18  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A77B1C  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80A77B20  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80A77B24  38 00 00 01 */	li r0, 1
/* 80A77B28  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80A77B2C:
/* 80A77B2C  38 00 00 00 */	li r0, 0
/* 80A77B30  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80A77B34  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 80A77B38  48 00 30 2D */	bl func_80A7AB64
/* 80A77B3C  2C 03 00 00 */	cmpwi r3, 0
/* 80A77B40  40 82 00 44 */	bne lbl_80A77B84
/* 80A77B44  3B C0 00 01 */	li r30, 1
/* 80A77B48  48 00 00 3C */	b lbl_80A77B84
lbl_80A77B4C:
/* 80A77B4C  7F 43 D3 78 */	mr r3, r26
/* 80A77B50  38 80 00 00 */	li r4, 0
/* 80A77B54  38 A0 00 00 */	li r5, 0
/* 80A77B58  38 C0 00 00 */	li r6, 0
/* 80A77B5C  38 E0 00 00 */	li r7, 0
/* 80A77B60  4B 6D 41 18 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A77B64  2C 03 00 00 */	cmpwi r3, 0
/* 80A77B68  41 82 00 1C */	beq lbl_80A77B84
/* 80A77B6C  88 1A 09 9A */	lbz r0, 0x99a(r26)
/* 80A77B70  28 00 00 01 */	cmplwi r0, 1
/* 80A77B74  40 82 00 10 */	bne lbl_80A77B84
/* 80A77B78  3B C0 00 01 */	li r30, 1
/* 80A77B7C  48 00 00 08 */	b lbl_80A77B84
lbl_80A77B80:
/* 80A77B80  3B C0 00 01 */	li r30, 1
lbl_80A77B84:
/* 80A77B84  7F C3 F3 78 */	mr r3, r30
/* 80A77B88  39 61 00 40 */	addi r11, r1, 0x40
/* 80A77B8C  4B 8E A6 88 */	b _restgpr_24
/* 80A77B90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A77B94  7C 08 03 A6 */	mtlr r0
/* 80A77B98  38 21 00 40 */	addi r1, r1, 0x40
/* 80A77B9C  4E 80 00 20 */	blr 
