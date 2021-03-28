lbl_80B61E74:
/* 80B61E74  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 80B61E78  7C 08 02 A6 */	mflr r0
/* 80B61E7C  90 01 01 84 */	stw r0, 0x184(r1)
/* 80B61E80  39 61 01 80 */	addi r11, r1, 0x180
/* 80B61E84  4B 80 03 3C */	b _savegpr_22
/* 80B61E88  7C 7F 1B 78 */	mr r31, r3
/* 80B61E8C  7C 9B 23 78 */	mr r27, r4
/* 80B61E90  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha
/* 80B61E94  3B A3 7C 38 */	addi r29, r3, m__17daNpc_ykW_Param_c@l
/* 80B61E98  3B 40 00 00 */	li r26, 0
/* 80B61E9C  3B C0 FF FF */	li r30, -1
/* 80B61EA0  3A E0 00 00 */	li r23, 0
/* 80B61EA4  3B 00 00 00 */	li r24, 0
/* 80B61EA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B61EAC  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 80B61EB0  3B 99 4F F8 */	addi r28, r25, 0x4ff8
/* 80B61EB4  7F 83 E3 78 */	mr r3, r28
/* 80B61EB8  3C A0 80 B6 */	lis r5, struct_80B67E68+0x0@ha
/* 80B61EBC  38 A5 7E 68 */	addi r5, r5, struct_80B67E68+0x0@l
/* 80B61EC0  38 A5 00 B4 */	addi r5, r5, 0xb4
/* 80B61EC4  38 C0 00 03 */	li r6, 3
/* 80B61EC8  4B 4E 62 24 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B61ECC  28 03 00 00 */	cmplwi r3, 0
/* 80B61ED0  41 82 00 08 */	beq lbl_80B61ED8
/* 80B61ED4  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80B61ED8:
/* 80B61ED8  7F 83 E3 78 */	mr r3, r28
/* 80B61EDC  7F 64 DB 78 */	mr r4, r27
/* 80B61EE0  3C A0 80 B6 */	lis r5, struct_80B67E68+0x0@ha
/* 80B61EE4  38 A5 7E 68 */	addi r5, r5, struct_80B67E68+0x0@l
/* 80B61EE8  38 A5 00 B8 */	addi r5, r5, 0xb8
/* 80B61EEC  38 C0 00 03 */	li r6, 3
/* 80B61EF0  4B 4E 61 FC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B61EF4  28 03 00 00 */	cmplwi r3, 0
/* 80B61EF8  41 82 00 08 */	beq lbl_80B61F00
/* 80B61EFC  82 E3 00 00 */	lwz r23, 0(r3)
lbl_80B61F00:
/* 80B61F00  7F 83 E3 78 */	mr r3, r28
/* 80B61F04  7F 64 DB 78 */	mr r4, r27
/* 80B61F08  3C A0 80 B6 */	lis r5, struct_80B67E68+0x0@ha
/* 80B61F0C  38 A5 7E 68 */	addi r5, r5, struct_80B67E68+0x0@l
/* 80B61F10  38 A5 00 C9 */	addi r5, r5, 0xc9
/* 80B61F14  38 C0 00 03 */	li r6, 3
/* 80B61F18  4B 4E 61 D4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B61F1C  28 03 00 00 */	cmplwi r3, 0
/* 80B61F20  41 82 00 08 */	beq lbl_80B61F28
/* 80B61F24  83 03 00 00 */	lwz r24, 0(r3)
lbl_80B61F28:
/* 80B61F28  7F 83 E3 78 */	mr r3, r28
/* 80B61F2C  7F 64 DB 78 */	mr r4, r27
/* 80B61F30  4B 4E 5E 1C */	b getIsAddvance__16dEvent_manager_cFi
/* 80B61F34  2C 03 00 00 */	cmpwi r3, 0
/* 80B61F38  41 82 04 CC */	beq lbl_80B62404
/* 80B61F3C  2C 1E 00 05 */	cmpwi r30, 5
/* 80B61F40  41 82 04 54 */	beq lbl_80B62394
/* 80B61F44  40 80 00 2C */	bge lbl_80B61F70
/* 80B61F48  2C 1E 00 02 */	cmpwi r30, 2
/* 80B61F4C  41 82 01 D8 */	beq lbl_80B62124
/* 80B61F50  40 80 00 14 */	bge lbl_80B61F64
/* 80B61F54  2C 1E 00 00 */	cmpwi r30, 0
/* 80B61F58  41 82 00 30 */	beq lbl_80B61F88
/* 80B61F5C  40 80 01 24 */	bge lbl_80B62080
/* 80B61F60  48 00 04 34 */	b lbl_80B62394
lbl_80B61F64:
/* 80B61F64  2C 1E 00 04 */	cmpwi r30, 4
/* 80B61F68  40 80 02 BC */	bge lbl_80B62224
/* 80B61F6C  48 00 04 28 */	b lbl_80B62394
lbl_80B61F70:
/* 80B61F70  2C 1E 00 63 */	cmpwi r30, 0x63
/* 80B61F74  41 82 03 88 */	beq lbl_80B622FC
/* 80B61F78  40 80 04 1C */	bge lbl_80B62394
/* 80B61F7C  2C 1E 00 0A */	cmpwi r30, 0xa
/* 80B61F80  41 82 00 A4 */	beq lbl_80B62024
/* 80B61F84  48 00 04 10 */	b lbl_80B62394
lbl_80B61F88:
/* 80B61F88  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80B61F8C  4B 5E 37 7C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B61F90  7C 77 1B 79 */	or. r23, r3, r3
/* 80B61F94  41 82 00 30 */	beq lbl_80B61FC4
/* 80B61F98  80 77 05 8C */	lwz r3, 0x58c(r23)
/* 80B61F9C  3C 03 00 01 */	addis r0, r3, 1
/* 80B61FA0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B61FA4  41 82 00 20 */	beq lbl_80B61FC4
/* 80B61FA8  4B 4C 01 90 */	b fpcM_IsCreating__FUi
/* 80B61FAC  2C 03 00 00 */	cmpwi r3, 0
/* 80B61FB0  40 82 00 14 */	bne lbl_80B61FC4
/* 80B61FB4  80 77 05 8C */	lwz r3, 0x58c(r23)
/* 80B61FB8  4B 4B 7D 00 */	b fopAcM_delete__FUi
/* 80B61FBC  38 00 FF FF */	li r0, -1
/* 80B61FC0  90 17 05 8C */	stw r0, 0x58c(r23)
lbl_80B61FC4:
/* 80B61FC4  80 7F 0F AC */	lwz r3, 0xfac(r31)
/* 80B61FC8  80 83 00 08 */	lwz r4, 8(r3)
/* 80B61FCC  A0 63 00 00 */	lhz r3, 0(r3)
/* 80B61FD0  38 03 FF FF */	addi r0, r3, -1
/* 80B61FD4  54 00 20 36 */	slwi r0, r0, 4
/* 80B61FD8  7C 84 02 14 */	add r4, r4, r0
/* 80B61FDC  80 64 00 04 */	lwz r3, 4(r4)
/* 80B61FE0  80 04 00 08 */	lwz r0, 8(r4)
/* 80B61FE4  90 61 00 C0 */	stw r3, 0xc0(r1)
/* 80B61FE8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80B61FEC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B61FF0  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 80B61FF4  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80B61FF8  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80B61FFC  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80B62000  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80B62004  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80B62008  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80B6200C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B62010  38 81 00 E4 */	addi r4, r1, 0xe4
/* 80B62014  4B 70 EB F0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B62018  7C 64 1B 78 */	mr r4, r3
/* 80B6201C  7F E3 FB 78 */	mr r3, r31
/* 80B62020  4B 5E 89 F8 */	b setAngle__8daNpcT_cFs
lbl_80B62024:
/* 80B62024  7F E3 FB 78 */	mr r3, r31
/* 80B62028  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80B6202C  38 A0 00 00 */	li r5, 0
/* 80B62030  4B 5E 9B C0 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B62034  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B62038  54 04 46 3E */	srwi r4, r0, 0x18
/* 80B6203C  28 04 00 FF */	cmplwi r4, 0xff
/* 80B62040  41 82 03 54 */	beq lbl_80B62394
/* 80B62044  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B62048  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B6204C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B62050  7C 05 07 74 */	extsb r5, r0
/* 80B62054  4B 4D 33 0C */	b isSwitch__10dSv_info_cCFii
/* 80B62058  2C 03 00 00 */	cmpwi r3, 0
/* 80B6205C  40 82 03 38 */	bne lbl_80B62394
/* 80B62060  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B62064  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B62068  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B6206C  54 04 46 3E */	srwi r4, r0, 0x18
/* 80B62070  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B62074  7C 05 07 74 */	extsb r5, r0
/* 80B62078  4B 4D 31 88 */	b onSwitch__10dSv_info_cFii
/* 80B6207C  48 00 03 18 */	b lbl_80B62394
lbl_80B62080:
/* 80B62080  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B62084  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B62088  41 82 00 24 */	beq lbl_80B620AC
/* 80B6208C  82 DF 0B 5C */	lwz r22, 0xb5c(r31)
/* 80B62090  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B62094  4B 5E 38 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B62098  92 DF 0B 5C */	stw r22, 0xb5c(r31)
/* 80B6209C  38 00 00 0D */	li r0, 0xd
/* 80B620A0  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B620A4  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80B620A8  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B620AC:
/* 80B620AC  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B620B0  2C 00 00 00 */	cmpwi r0, 0
/* 80B620B4  41 82 00 24 */	beq lbl_80B620D8
/* 80B620B8  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 80B620BC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B620C0  4B 5E 37 D8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B620C4  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 80B620C8  38 00 00 00 */	li r0, 0
/* 80B620CC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B620D0  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80B620D4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B620D8:
/* 80B620D8  38 60 00 00 */	li r3, 0
/* 80B620DC  90 7F 10 2C */	stw r3, 0x102c(r31)
/* 80B620E0  90 7F 10 28 */	stw r3, 0x1028(r31)
/* 80B620E4  92 FF 0D C4 */	stw r23, 0xdc4(r31)
/* 80B620E8  38 00 00 01 */	li r0, 1
/* 80B620EC  98 1F 10 63 */	stb r0, 0x1063(r31)
/* 80B620F0  98 7F 10 64 */	stb r3, 0x1064(r31)
/* 80B620F4  38 00 00 03 */	li r0, 3
/* 80B620F8  98 1F 10 66 */	stb r0, 0x1066(r31)
/* 80B620FC  80 7F 0F AC */	lwz r3, 0xfac(r31)
/* 80B62100  A0 63 00 00 */	lhz r3, 0(r3)
/* 80B62104  38 03 FF FE */	addi r0, r3, -2
/* 80B62108  B0 1F 0F C8 */	sth r0, 0xfc8(r31)
/* 80B6210C  7F E3 FB 78 */	mr r3, r31
/* 80B62110  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80B62114  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80B62118  7D 89 03 A6 */	mtctr r12
/* 80B6211C  4E 80 04 21 */	bctrl 
/* 80B62120  48 00 02 74 */	b lbl_80B62394
lbl_80B62124:
/* 80B62124  92 FF 0D C4 */	stw r23, 0xdc4(r31)
/* 80B62128  80 7F 0F AC */	lwz r3, 0xfac(r31)
/* 80B6212C  80 C3 00 08 */	lwz r6, 8(r3)
/* 80B62130  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80B62134  38 05 FF FE */	addi r0, r5, -2
/* 80B62138  54 00 20 36 */	slwi r0, r0, 4
/* 80B6213C  7C 86 02 14 */	add r4, r6, r0
/* 80B62140  80 64 00 04 */	lwz r3, 4(r4)
/* 80B62144  80 04 00 08 */	lwz r0, 8(r4)
/* 80B62148  90 61 00 B4 */	stw r3, 0xb4(r1)
/* 80B6214C  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 80B62150  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B62154  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80B62158  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80B6215C  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80B62160  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80B62164  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80B62168  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80B6216C  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80B62170  38 05 FF FF */	addi r0, r5, -1
/* 80B62174  54 00 20 36 */	slwi r0, r0, 4
/* 80B62178  7C 86 02 14 */	add r4, r6, r0
/* 80B6217C  80 64 00 04 */	lwz r3, 4(r4)
/* 80B62180  80 04 00 08 */	lwz r0, 8(r4)
/* 80B62184  90 61 00 A8 */	stw r3, 0xa8(r1)
/* 80B62188  90 01 00 AC */	stw r0, 0xac(r1)
/* 80B6218C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B62190  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80B62194  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80B62198  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80B6219C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80B621A0  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80B621A4  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80B621A8  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80B621AC  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80B621B0  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B621B4  4B 70 EA 50 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B621B8  7C 76 1B 78 */	mr r22, r3
/* 80B621BC  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B621C0  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80B621C4  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80B621C8  C0 1D 01 84 */	lfs f0, 0x184(r29)
/* 80B621CC  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80B621D0  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80B621D4  4B 4A AB 90 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B621D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B621DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B621E0  7E C4 B3 78 */	mr r4, r22
/* 80B621E4  4B 4A A2 50 */	b mDoMtx_YrotM__FPA4_fs
/* 80B621E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B621EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B621F0  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B621F4  7C 85 23 78 */	mr r5, r4
/* 80B621F8  4B 7E 4B 74 */	b PSMTXMultVec
/* 80B621FC  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80B62200  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80B62204  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80B62208  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80B6220C  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80B62210  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80B62214  7F E3 FB 78 */	mr r3, r31
/* 80B62218  38 81 00 9C */	addi r4, r1, 0x9c
/* 80B6221C  4B 5E 86 EC */	b setPos__8daNpcT_cF4cXyz
/* 80B62220  48 00 01 74 */	b lbl_80B62394
lbl_80B62224:
/* 80B62224  80 7F 0F AC */	lwz r3, 0xfac(r31)
/* 80B62228  A0 63 00 00 */	lhz r3, 0(r3)
/* 80B6222C  38 03 FF FC */	addi r0, r3, -4
/* 80B62230  B0 1F 0F C8 */	sth r0, 0xfc8(r31)
/* 80B62234  80 7F 0F AC */	lwz r3, 0xfac(r31)
/* 80B62238  80 C3 00 08 */	lwz r6, 8(r3)
/* 80B6223C  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80B62240  38 05 FF FB */	addi r0, r5, -5
/* 80B62244  54 00 20 36 */	slwi r0, r0, 4
/* 80B62248  7C 86 02 14 */	add r4, r6, r0
/* 80B6224C  80 64 00 04 */	lwz r3, 4(r4)
/* 80B62250  80 04 00 08 */	lwz r0, 8(r4)
/* 80B62254  90 61 00 90 */	stw r3, 0x90(r1)
/* 80B62258  90 01 00 94 */	stw r0, 0x94(r1)
/* 80B6225C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B62260  90 01 00 98 */	stw r0, 0x98(r1)
/* 80B62264  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80B62268  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80B6226C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 80B62270  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80B62274  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80B62278  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80B6227C  38 05 FF FC */	addi r0, r5, -4
/* 80B62280  54 00 20 36 */	slwi r0, r0, 4
/* 80B62284  7C 86 02 14 */	add r4, r6, r0
/* 80B62288  80 64 00 04 */	lwz r3, 4(r4)
/* 80B6228C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B62290  90 61 00 84 */	stw r3, 0x84(r1)
/* 80B62294  90 01 00 88 */	stw r0, 0x88(r1)
/* 80B62298  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B6229C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80B622A0  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80B622A4  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80B622A8  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80B622AC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80B622B0  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80B622B4  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80B622B8  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80B622BC  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B622C0  4B 70 E9 44 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B622C4  7C 76 1B 78 */	mr r22, r3
/* 80B622C8  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80B622CC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B622D0  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 80B622D4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B622D8  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 80B622DC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B622E0  7F E3 FB 78 */	mr r3, r31
/* 80B622E4  38 81 00 78 */	addi r4, r1, 0x78
/* 80B622E8  4B 5E 86 20 */	b setPos__8daNpcT_cF4cXyz
/* 80B622EC  7F E3 FB 78 */	mr r3, r31
/* 80B622F0  7E C4 B3 78 */	mr r4, r22
/* 80B622F4  4B 5E 87 24 */	b setAngle__8daNpcT_cFs
/* 80B622F8  48 00 00 9C */	b lbl_80B62394
lbl_80B622FC:
/* 80B622FC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B62300  54 04 46 3E */	srwi r4, r0, 0x18
/* 80B62304  28 04 00 FF */	cmplwi r4, 0xff
/* 80B62308  41 82 00 3C */	beq lbl_80B62344
/* 80B6230C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B62310  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B62314  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B62318  7C 05 07 74 */	extsb r5, r0
/* 80B6231C  4B 4D 30 44 */	b isSwitch__10dSv_info_cCFii
/* 80B62320  2C 03 00 00 */	cmpwi r3, 0
/* 80B62324  40 82 00 20 */	bne lbl_80B62344
/* 80B62328  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B6232C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B62330  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B62334  54 04 46 3E */	srwi r4, r0, 0x18
/* 80B62338  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B6233C  7C 05 07 74 */	extsb r5, r0
/* 80B62340  4B 4D 2E C0 */	b onSwitch__10dSv_info_cFii
lbl_80B62344:
/* 80B62344  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80B62348  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B6234C  28 04 00 FF */	cmplwi r4, 0xff
/* 80B62350  41 82 00 3C */	beq lbl_80B6238C
/* 80B62354  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B62358  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B6235C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B62360  7C 05 07 74 */	extsb r5, r0
/* 80B62364  4B 4D 2F FC */	b isSwitch__10dSv_info_cCFii
/* 80B62368  2C 03 00 00 */	cmpwi r3, 0
/* 80B6236C  40 82 00 20 */	bne lbl_80B6238C
/* 80B62370  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B62374  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B62378  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80B6237C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B62380  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B62384  7C 05 07 74 */	extsb r5, r0
/* 80B62388  4B 4D 2E 78 */	b onSwitch__10dSv_info_cFii
lbl_80B6238C:
/* 80B6238C  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B62390  4B 6E 81 34 */	b remove__10dMsgFlow_cFv
lbl_80B62394:
/* 80B62394  2C 18 00 00 */	cmpwi r24, 0
/* 80B62398  41 82 00 6C */	beq lbl_80B62404
/* 80B6239C  2C 1E 00 00 */	cmpwi r30, 0
/* 80B623A0  41 82 00 0C */	beq lbl_80B623AC
/* 80B623A4  2C 1E 00 04 */	cmpwi r30, 4
/* 80B623A8  40 82 00 5C */	bne lbl_80B62404
lbl_80B623AC:
/* 80B623AC  2C 1E 00 00 */	cmpwi r30, 0
/* 80B623B0  40 82 00 1C */	bne lbl_80B623CC
/* 80B623B4  38 61 00 F0 */	addi r3, r1, 0xf0
/* 80B623B8  3C 80 80 B6 */	lis r4, l_evtList@ha
/* 80B623BC  38 84 7F 68 */	addi r4, r4, l_evtList@l
/* 80B623C0  80 84 00 20 */	lwz r4, 0x20(r4)
/* 80B623C4  4B 80 67 68 */	b strcpy
/* 80B623C8  48 00 00 18 */	b lbl_80B623E0
lbl_80B623CC:
/* 80B623CC  38 61 00 F0 */	addi r3, r1, 0xf0
/* 80B623D0  3C 80 80 B6 */	lis r4, l_evtList@ha
/* 80B623D4  38 84 7F 68 */	addi r4, r4, l_evtList@l
/* 80B623D8  80 84 00 28 */	lwz r4, 0x28(r4)
/* 80B623DC  4B 80 67 50 */	b strcpy
lbl_80B623E0:
/* 80B623E0  38 61 00 F0 */	addi r3, r1, 0xf0
/* 80B623E4  3C 80 80 B6 */	lis r4, struct_80B67E68+0x0@ha
/* 80B623E8  38 84 7E 68 */	addi r4, r4, struct_80B67E68+0x0@l
/* 80B623EC  38 84 00 CE */	addi r4, r4, 0xce
/* 80B623F0  4B 80 66 CC */	b strcat
/* 80B623F4  38 79 4E C8 */	addi r3, r25, 0x4ec8
/* 80B623F8  7F E4 FB 78 */	mr r4, r31
/* 80B623FC  38 A1 00 F0 */	addi r5, r1, 0xf0
/* 80B62400  4B 4E 05 58 */	b setSkipZev__14dEvt_control_cFPvPc
lbl_80B62404:
/* 80B62404  2C 1E 00 05 */	cmpwi r30, 5
/* 80B62408  41 82 05 7C */	beq lbl_80B62984
/* 80B6240C  40 80 00 20 */	bge lbl_80B6242C
/* 80B62410  2C 1E 00 03 */	cmpwi r30, 3
/* 80B62414  41 82 05 70 */	beq lbl_80B62984
/* 80B62418  40 80 01 34 */	bge lbl_80B6254C
/* 80B6241C  2C 1E 00 00 */	cmpwi r30, 0
/* 80B62420  41 82 00 24 */	beq lbl_80B62444
/* 80B62424  40 80 01 28 */	bge lbl_80B6254C
/* 80B62428  48 00 06 B4 */	b lbl_80B62ADC
lbl_80B6242C:
/* 80B6242C  2C 1E 00 63 */	cmpwi r30, 0x63
/* 80B62430  41 82 05 E4 */	beq lbl_80B62A14
/* 80B62434  40 80 06 A8 */	bge lbl_80B62ADC
/* 80B62438  2C 1E 00 0A */	cmpwi r30, 0xa
/* 80B6243C  41 82 00 08 */	beq lbl_80B62444
/* 80B62440  48 00 06 9C */	b lbl_80B62ADC
lbl_80B62444:
/* 80B62444  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B62448  2C 00 00 01 */	cmpwi r0, 1
/* 80B6244C  41 82 00 28 */	beq lbl_80B62474
/* 80B62450  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B62454  4B 5E 32 A8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B62458  38 00 00 00 */	li r0, 0
/* 80B6245C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B62460  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B62464  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B62468  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6246C  38 00 00 01 */	li r0, 1
/* 80B62470  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B62474:
/* 80B62474  38 00 00 00 */	li r0, 0
/* 80B62478  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6247C  80 7F 0F AC */	lwz r3, 0xfac(r31)
/* 80B62480  80 83 00 08 */	lwz r4, 8(r3)
/* 80B62484  A0 63 00 00 */	lhz r3, 0(r3)
/* 80B62488  38 03 FF FF */	addi r0, r3, -1
/* 80B6248C  54 00 20 36 */	slwi r0, r0, 4
/* 80B62490  7C 84 02 14 */	add r4, r4, r0
/* 80B62494  80 64 00 04 */	lwz r3, 4(r4)
/* 80B62498  80 04 00 08 */	lwz r0, 8(r4)
/* 80B6249C  90 61 00 6C */	stw r3, 0x6c(r1)
/* 80B624A0  90 01 00 70 */	stw r0, 0x70(r1)
/* 80B624A4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B624A8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B624AC  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B624B0  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80B624B4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B624B8  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80B624BC  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80B624C0  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80B624C4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B624C8  38 81 00 E4 */	addi r4, r1, 0xe4
/* 80B624CC  4B 70 E7 38 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B624D0  7C 64 1B 78 */	mr r4, r3
/* 80B624D4  7C 83 07 34 */	extsh r3, r4
/* 80B624D8  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B624DC  7C 03 00 00 */	cmpw r3, r0
/* 80B624E0  41 82 00 24 */	beq lbl_80B62504
/* 80B624E4  7F E3 FB 78 */	mr r3, r31
/* 80B624E8  38 A0 00 0D */	li r5, 0xd
/* 80B624EC  38 C0 00 16 */	li r6, 0x16
/* 80B624F0  38 FD 00 00 */	addi r7, r29, 0
/* 80B624F4  A8 E7 00 B0 */	lha r7, 0xb0(r7)
/* 80B624F8  39 00 00 00 */	li r8, 0
/* 80B624FC  4B 5E 91 4C */	b step__8daNpcT_cFsiiii
/* 80B62500  48 00 05 DC */	b lbl_80B62ADC
lbl_80B62504:
/* 80B62504  7F E3 FB 78 */	mr r3, r31
/* 80B62508  38 80 00 00 */	li r4, 0
/* 80B6250C  38 A0 00 00 */	li r5, 0
/* 80B62510  38 C0 00 00 */	li r6, 0
/* 80B62514  38 E0 00 00 */	li r7, 0
/* 80B62518  4B 5E 97 60 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B6251C  2C 03 00 00 */	cmpwi r3, 0
/* 80B62520  41 82 05 BC */	beq lbl_80B62ADC
/* 80B62524  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80B62528  28 00 00 01 */	cmplwi r0, 1
/* 80B6252C  40 82 05 B0 */	bne lbl_80B62ADC
/* 80B62530  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80B62534  4B 5E 31 D4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B62538  7C 64 1B 78 */	mr r4, r3
/* 80B6253C  38 79 4E C8 */	addi r3, r25, 0x4ec8
/* 80B62540  4B 4E 11 1C */	b setPt2__14dEvt_control_cFPv
/* 80B62544  3B 40 00 01 */	li r26, 1
/* 80B62548  48 00 05 94 */	b lbl_80B62ADC
lbl_80B6254C:
/* 80B6254C  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80B62550  2C 00 00 00 */	cmpwi r0, 0
/* 80B62554  40 82 00 18 */	bne lbl_80B6256C
/* 80B62558  7F 83 E3 78 */	mr r3, r28
/* 80B6255C  7F 64 DB 78 */	mr r4, r27
/* 80B62560  4B 4E 57 EC */	b getIsAddvance__16dEvent_manager_cFi
/* 80B62564  2C 03 00 00 */	cmpwi r3, 0
/* 80B62568  41 82 04 10 */	beq lbl_80B62978
lbl_80B6256C:
/* 80B6256C  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80B62570  48 00 53 61 */	bl func_80B678D0
/* 80B62574  2C 03 00 00 */	cmpwi r3, 0
/* 80B62578  40 82 04 00 */	bne lbl_80B62978
/* 80B6257C  2C 1E 00 01 */	cmpwi r30, 1
/* 80B62580  40 82 03 C0 */	bne lbl_80B62940
/* 80B62584  80 7F 0F AC */	lwz r3, 0xfac(r31)
/* 80B62588  80 C3 00 08 */	lwz r6, 8(r3)
/* 80B6258C  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80B62590  38 05 FF FE */	addi r0, r5, -2
/* 80B62594  54 00 20 36 */	slwi r0, r0, 4
/* 80B62598  7C 86 02 14 */	add r4, r6, r0
/* 80B6259C  80 64 00 04 */	lwz r3, 4(r4)
/* 80B625A0  80 04 00 08 */	lwz r0, 8(r4)
/* 80B625A4  90 61 00 60 */	stw r3, 0x60(r1)
/* 80B625A8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B625AC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B625B0  90 01 00 68 */	stw r0, 0x68(r1)
/* 80B625B4  C0 61 00 60 */	lfs f3, 0x60(r1)
/* 80B625B8  D0 61 00 E4 */	stfs f3, 0xe4(r1)
/* 80B625BC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80B625C0  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80B625C4  C0 81 00 68 */	lfs f4, 0x68(r1)
/* 80B625C8  D0 81 00 EC */	stfs f4, 0xec(r1)
/* 80B625CC  38 05 FF FF */	addi r0, r5, -1
/* 80B625D0  54 00 20 36 */	slwi r0, r0, 4
/* 80B625D4  7C 86 02 14 */	add r4, r6, r0
/* 80B625D8  80 64 00 04 */	lwz r3, 4(r4)
/* 80B625DC  80 04 00 08 */	lwz r0, 8(r4)
/* 80B625E0  90 61 00 54 */	stw r3, 0x54(r1)
/* 80B625E4  90 01 00 58 */	stw r0, 0x58(r1)
/* 80B625E8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B625EC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80B625F0  C0 A1 00 54 */	lfs f5, 0x54(r1)
/* 80B625F4  D0 A1 00 D8 */	stfs f5, 0xd8(r1)
/* 80B625F8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80B625FC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80B62600  C0 C1 00 5C */	lfs f6, 0x5c(r1)
/* 80B62604  D0 C1 00 E0 */	stfs f6, 0xe0(r1)
/* 80B62608  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B6260C  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 80B62610  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 80B62614  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 80B62618  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80B6261C  38 61 00 14 */	addi r3, r1, 0x14
/* 80B62620  38 81 00 10 */	addi r4, r1, 0x10
/* 80B62624  38 A1 00 0C */	addi r5, r1, 0xc
/* 80B62628  4B 70 60 04 */	b cM3d_Len2dSqPntAndSegLine__FffffffPfPfPf
/* 80B6262C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B62630  41 82 01 F0 */	beq lbl_80B62820
/* 80B62634  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 80B62638  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B6263C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80B62640  40 81 00 58 */	ble lbl_80B62698
/* 80B62644  FC 00 20 34 */	frsqrte f0, f4
/* 80B62648  C8 7D 01 28 */	lfd f3, 0x128(r29)
/* 80B6264C  FC 23 00 32 */	fmul f1, f3, f0
/* 80B62650  C8 5D 01 30 */	lfd f2, 0x130(r29)
/* 80B62654  FC 00 00 32 */	fmul f0, f0, f0
/* 80B62658  FC 04 00 32 */	fmul f0, f4, f0
/* 80B6265C  FC 02 00 28 */	fsub f0, f2, f0
/* 80B62660  FC 01 00 32 */	fmul f0, f1, f0
/* 80B62664  FC 23 00 32 */	fmul f1, f3, f0
/* 80B62668  FC 00 00 32 */	fmul f0, f0, f0
/* 80B6266C  FC 04 00 32 */	fmul f0, f4, f0
/* 80B62670  FC 02 00 28 */	fsub f0, f2, f0
/* 80B62674  FC 01 00 32 */	fmul f0, f1, f0
/* 80B62678  FC 23 00 32 */	fmul f1, f3, f0
/* 80B6267C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B62680  FC 04 00 32 */	fmul f0, f4, f0
/* 80B62684  FC 02 00 28 */	fsub f0, f2, f0
/* 80B62688  FC 01 00 32 */	fmul f0, f1, f0
/* 80B6268C  FC 84 00 32 */	fmul f4, f4, f0
/* 80B62690  FC 80 20 18 */	frsp f4, f4
/* 80B62694  48 00 00 88 */	b lbl_80B6271C
lbl_80B62698:
/* 80B62698  C8 1D 01 38 */	lfd f0, 0x138(r29)
/* 80B6269C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80B626A0  40 80 00 10 */	bge lbl_80B626B0
/* 80B626A4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B626A8  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
/* 80B626AC  48 00 00 70 */	b lbl_80B6271C
lbl_80B626B0:
/* 80B626B0  D0 81 00 08 */	stfs f4, 8(r1)
/* 80B626B4  80 81 00 08 */	lwz r4, 8(r1)
/* 80B626B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B626BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B626C0  7C 03 00 00 */	cmpw r3, r0
/* 80B626C4  41 82 00 14 */	beq lbl_80B626D8
/* 80B626C8  40 80 00 40 */	bge lbl_80B62708
/* 80B626CC  2C 03 00 00 */	cmpwi r3, 0
/* 80B626D0  41 82 00 20 */	beq lbl_80B626F0
/* 80B626D4  48 00 00 34 */	b lbl_80B62708
lbl_80B626D8:
/* 80B626D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B626DC  41 82 00 0C */	beq lbl_80B626E8
/* 80B626E0  38 00 00 01 */	li r0, 1
/* 80B626E4  48 00 00 28 */	b lbl_80B6270C
lbl_80B626E8:
/* 80B626E8  38 00 00 02 */	li r0, 2
/* 80B626EC  48 00 00 20 */	b lbl_80B6270C
lbl_80B626F0:
/* 80B626F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B626F4  41 82 00 0C */	beq lbl_80B62700
/* 80B626F8  38 00 00 05 */	li r0, 5
/* 80B626FC  48 00 00 10 */	b lbl_80B6270C
lbl_80B62700:
/* 80B62700  38 00 00 03 */	li r0, 3
/* 80B62704  48 00 00 08 */	b lbl_80B6270C
lbl_80B62708:
/* 80B62708  38 00 00 04 */	li r0, 4
lbl_80B6270C:
/* 80B6270C  2C 00 00 01 */	cmpwi r0, 1
/* 80B62710  40 82 00 0C */	bne lbl_80B6271C
/* 80B62714  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B62718  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
lbl_80B6271C:
/* 80B6271C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80B62720  C0 3D 01 0C */	lfs f1, 0x10c(r29)
/* 80B62724  C0 1F 0D F0 */	lfs f0, 0xdf0(r31)
/* 80B62728  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B6272C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80B62730  40 80 00 F0 */	bge lbl_80B62820
/* 80B62734  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80B62738  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B6273C  4B 70 E4 C8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B62740  7C 77 1B 78 */	mr r23, r3
/* 80B62744  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B62748  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80B6274C  C0 3D 00 E0 */	lfs f1, 0xe0(r29)
/* 80B62750  D0 21 00 E8 */	stfs f1, 0xe8(r1)
/* 80B62754  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B62758  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80B6275C  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 80B62760  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80B62764  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B62768  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80B6276C  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 80B62770  D0 41 00 E0 */	stfs f2, 0xe0(r1)
/* 80B62774  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80B62778  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B6277C  4B 70 E4 88 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B62780  7E E4 07 34 */	extsh r4, r23
/* 80B62784  7C 04 18 50 */	subf r0, r4, r3
/* 80B62788  7C 00 07 35 */	extsh. r0, r0
/* 80B6278C  38 04 C0 00 */	addi r0, r4, -16384
/* 80B62790  7C 17 07 34 */	extsh r23, r0
/* 80B62794  40 81 00 0C */	ble lbl_80B627A0
/* 80B62798  38 04 40 00 */	addi r0, r4, 0x4000
/* 80B6279C  7C 17 07 34 */	extsh r23, r0
lbl_80B627A0:
/* 80B627A0  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80B627A4  4B 4A A5 C0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B627A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B627AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B627B0  7E E4 BB 78 */	mr r4, r23
/* 80B627B4  4B 4A 9C 80 */	b mDoMtx_YrotM__FPA4_fs
/* 80B627B8  C0 3D 01 0C */	lfs f1, 0x10c(r29)
/* 80B627BC  C0 1F 0D F0 */	lfs f0, 0xdf0(r31)
/* 80B627C0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B627C4  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B627C8  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80B627CC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80B627D0  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 80B627D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B627D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B627DC  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B627E0  7C 85 23 78 */	mr r5, r4
/* 80B627E4  4B 7E 45 88 */	b PSMTXMultVec
/* 80B627E8  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80B627EC  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80B627F0  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 80B627F4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B627F8  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80B627FC  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80B62800  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80B62804  38 81 00 E4 */	addi r4, r1, 0xe4
/* 80B62808  A8 A3 04 E6 */	lha r5, 0x4e6(r3)
/* 80B6280C  38 C0 00 00 */	li r6, 0
/* 80B62810  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B62814  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B62818  7D 89 03 A6 */	mtctr r12
/* 80B6281C  4E 80 04 21 */	bctrl 
lbl_80B62820:
/* 80B62820  80 7F 0F AC */	lwz r3, 0xfac(r31)
/* 80B62824  80 C3 00 08 */	lwz r6, 8(r3)
/* 80B62828  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80B6282C  38 05 FF FE */	addi r0, r5, -2
/* 80B62830  54 00 20 36 */	slwi r0, r0, 4
/* 80B62834  7C 86 02 14 */	add r4, r6, r0
/* 80B62838  80 64 00 04 */	lwz r3, 4(r4)
/* 80B6283C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B62840  90 61 00 48 */	stw r3, 0x48(r1)
/* 80B62844  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80B62848  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B6284C  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B62850  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B62854  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80B62858  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B6285C  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80B62860  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B62864  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80B62868  38 05 FF FF */	addi r0, r5, -1
/* 80B6286C  54 00 20 36 */	slwi r0, r0, 4
/* 80B62870  7C 86 02 14 */	add r4, r6, r0
/* 80B62874  80 64 00 04 */	lwz r3, 4(r4)
/* 80B62878  80 04 00 08 */	lwz r0, 8(r4)
/* 80B6287C  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80B62880  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B62884  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B62888  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B6288C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B62890  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80B62894  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80B62898  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80B6289C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B628A0  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80B628A4  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80B628A8  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B628AC  4B 70 E3 58 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B628B0  7C 76 1B 78 */	mr r22, r3
/* 80B628B4  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B628B8  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80B628BC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80B628C0  C0 1D 01 84 */	lfs f0, 0x184(r29)
/* 80B628C4  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80B628C8  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80B628CC  4B 4A A4 98 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B628D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B628D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B628D8  7E C4 B3 78 */	mr r4, r22
/* 80B628DC  4B 4A 9B 58 */	b mDoMtx_YrotM__FPA4_fs
/* 80B628E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B628E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B628E8  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B628EC  7C 85 23 78 */	mr r5, r4
/* 80B628F0  4B 7E 44 7C */	b PSMTXMultVec
/* 80B628F4  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 80B628F8  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80B628FC  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B62900  4B 70 E3 04 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B62904  7C 65 1B 78 */	mr r5, r3
/* 80B62908  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 80B6290C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B62910  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80B62914  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B62918  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80B6291C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B62920  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80B62924  38 81 00 E4 */	addi r4, r1, 0xe4
/* 80B62928  38 C0 00 00 */	li r6, 0
/* 80B6292C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B62930  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B62934  7D 89 03 A6 */	mtctr r12
/* 80B62938  4E 80 04 21 */	bctrl 
/* 80B6293C  48 00 00 3C */	b lbl_80B62978
lbl_80B62940:
/* 80B62940  2C 1E 00 02 */	cmpwi r30, 2
/* 80B62944  40 82 00 34 */	bne lbl_80B62978
/* 80B62948  38 61 00 30 */	addi r3, r1, 0x30
/* 80B6294C  7F E4 FB 78 */	mr r4, r31
/* 80B62950  4B FF EF AD */	bl getGoalPos__11daNpc_ykW_cFv
/* 80B62954  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B62958  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80B6295C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B62960  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80B62964  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80B62968  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80B6296C  7F 83 E3 78 */	mr r3, r28
/* 80B62970  38 81 00 CC */	addi r4, r1, 0xcc
/* 80B62974  4B 4E 5A 50 */	b setGoal__16dEvent_manager_cFP4cXyz
lbl_80B62978:
/* 80B62978  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80B6297C  7C 00 00 34 */	cntlzw r0, r0
/* 80B62980  54 1A DE 3E */	rlwinm r26, r0, 0x1b, 0x18, 0x1f
lbl_80B62984:
/* 80B62984  2C 1E 00 03 */	cmpwi r30, 3
/* 80B62988  40 82 00 34 */	bne lbl_80B629BC
/* 80B6298C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B62990  54 03 E7 3E */	rlwinm r3, r0, 0x1c, 0x1c, 0x1f
/* 80B62994  C0 3D 01 50 */	lfs f1, 0x150(r29)
/* 80B62998  38 80 00 00 */	li r4, 0
/* 80B6299C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B629A0  7C 05 07 74 */	extsb r5, r0
/* 80B629A4  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 80B629A8  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l
/* 80B629AC  80 C6 5D AC */	lwz r6, 0x5dac(r6)
/* 80B629B0  A8 C6 04 E6 */	lha r6, 0x4e6(r6)
/* 80B629B4  38 E0 FF FF */	li r7, -1
/* 80B629B8  4B 4C 47 B8 */	b dStage_changeScene__FifUlScsi
lbl_80B629BC:
/* 80B629BC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B629C0  4B 5E 2D 3C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B629C4  7F E3 FB 78 */	mr r3, r31
/* 80B629C8  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80B629CC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80B629D0  7D 89 03 A6 */	mtctr r12
/* 80B629D4  4E 80 04 21 */	bctrl 
/* 80B629D8  2C 1E 00 05 */	cmpwi r30, 5
/* 80B629DC  40 82 00 14 */	bne lbl_80B629F0
/* 80B629E0  88 1F 10 64 */	lbz r0, 0x1064(r31)
/* 80B629E4  28 00 00 00 */	cmplwi r0, 0
/* 80B629E8  41 82 00 08 */	beq lbl_80B629F0
/* 80B629EC  3B 40 00 01 */	li r26, 1
lbl_80B629F0:
/* 80B629F0  38 00 00 FF */	li r0, 0xff
/* 80B629F4  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80B629F8  2C 1E 00 04 */	cmpwi r30, 4
/* 80B629FC  41 82 00 E0 */	beq lbl_80B62ADC
/* 80B62A00  2C 1E 00 05 */	cmpwi r30, 5
/* 80B62A04  41 82 00 D8 */	beq lbl_80B62ADC
/* 80B62A08  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B62A0C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80B62A10  48 00 00 CC */	b lbl_80B62ADC
lbl_80B62A14:
/* 80B62A14  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80B62A18  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B62A1C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80B62A20  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B62A24  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80B62A28  80 7F 0F AC */	lwz r3, 0xfac(r31)
/* 80B62A2C  80 C3 00 08 */	lwz r6, 8(r3)
/* 80B62A30  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80B62A34  38 05 FF FE */	addi r0, r5, -2
/* 80B62A38  54 00 20 36 */	slwi r0, r0, 4
/* 80B62A3C  7C 86 02 14 */	add r4, r6, r0
/* 80B62A40  80 64 00 04 */	lwz r3, 4(r4)
/* 80B62A44  80 04 00 08 */	lwz r0, 8(r4)
/* 80B62A48  90 61 00 24 */	stw r3, 0x24(r1)
/* 80B62A4C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B62A50  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B62A54  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B62A58  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B62A5C  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80B62A60  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80B62A64  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80B62A68  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B62A6C  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80B62A70  38 05 FF FF */	addi r0, r5, -1
/* 80B62A74  54 00 20 36 */	slwi r0, r0, 4
/* 80B62A78  7C 86 02 14 */	add r4, r6, r0
/* 80B62A7C  80 64 00 04 */	lwz r3, 4(r4)
/* 80B62A80  80 04 00 08 */	lwz r0, 8(r4)
/* 80B62A84  90 61 00 18 */	stw r3, 0x18(r1)
/* 80B62A88  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B62A8C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B62A90  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B62A94  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B62A98  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80B62A9C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B62AA0  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80B62AA4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B62AA8  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80B62AAC  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80B62AB0  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80B62AB4  4B 70 E1 50 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B62AB8  7C 66 1B 78 */	mr r6, r3
/* 80B62ABC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B62AC0  54 03 E7 3E */	rlwinm r3, r0, 0x1c, 0x1c, 0x1f
/* 80B62AC4  C0 3D 01 50 */	lfs f1, 0x150(r29)
/* 80B62AC8  38 80 00 00 */	li r4, 0
/* 80B62ACC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B62AD0  7C 05 07 74 */	extsb r5, r0
/* 80B62AD4  38 E0 FF FF */	li r7, -1
/* 80B62AD8  4B 4C 46 98 */	b dStage_changeScene__FifUlScsi
lbl_80B62ADC:
/* 80B62ADC  7F 43 D3 78 */	mr r3, r26
/* 80B62AE0  39 61 01 80 */	addi r11, r1, 0x180
/* 80B62AE4  4B 7F F7 28 */	b _restgpr_22
/* 80B62AE8  80 01 01 84 */	lwz r0, 0x184(r1)
/* 80B62AEC  7C 08 03 A6 */	mtlr r0
/* 80B62AF0  38 21 01 80 */	addi r1, r1, 0x180
/* 80B62AF4  4E 80 00 20 */	blr 
