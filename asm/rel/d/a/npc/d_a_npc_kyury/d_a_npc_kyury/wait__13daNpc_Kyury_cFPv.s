lbl_80A61ED0:
/* 80A61ED0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A61ED4  7C 08 02 A6 */	mflr r0
/* 80A61ED8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A61EDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A61EE0  4B 90 02 FD */	bl _savegpr_29
/* 80A61EE4  7C 7E 1B 78 */	mr r30, r3
/* 80A61EE8  3C 60 80 A6 */	lis r3, m__19daNpc_Kyury_Param_c@ha /* 0x80A638AC@ha */
/* 80A61EEC  3B E3 38 AC */	addi r31, r3, m__19daNpc_Kyury_Param_c@l /* 0x80A638AC@l */
/* 80A61EF0  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80A61EF4  2C 00 00 02 */	cmpwi r0, 2
/* 80A61EF8  41 82 01 C4 */	beq lbl_80A620BC
/* 80A61EFC  40 80 04 58 */	bge lbl_80A62354
/* 80A61F00  2C 00 00 00 */	cmpwi r0, 0
/* 80A61F04  40 80 00 0C */	bge lbl_80A61F10
/* 80A61F08  48 00 04 4C */	b lbl_80A62354
/* 80A61F0C  48 00 04 48 */	b lbl_80A62354
lbl_80A61F10:
/* 80A61F10  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80A61F14  2C 00 00 00 */	cmpwi r0, 0
/* 80A61F18  40 82 01 A4 */	bne lbl_80A620BC
/* 80A61F1C  88 1E 0F 88 */	lbz r0, 0xf88(r30)
/* 80A61F20  2C 00 00 01 */	cmpwi r0, 1
/* 80A61F24  41 82 00 DC */	beq lbl_80A62000
/* 80A61F28  40 80 01 34 */	bge lbl_80A6205C
/* 80A61F2C  2C 00 00 00 */	cmpwi r0, 0
/* 80A61F30  40 80 00 08 */	bge lbl_80A61F38
/* 80A61F34  48 00 01 28 */	b lbl_80A6205C
lbl_80A61F38:
/* 80A61F38  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A61F3C  4B 6E 37 CD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A61F40  28 03 00 00 */	cmplwi r3, 0
/* 80A61F44  41 82 00 60 */	beq lbl_80A61FA4
/* 80A61F48  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A61F4C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A61F50  41 82 00 24 */	beq lbl_80A61F74
/* 80A61F54  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A61F58  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A61F5C  4B 6E 39 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A61F60  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A61F64  38 00 00 0C */	li r0, 0xc
/* 80A61F68  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A61F6C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80A61F70  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A61F74:
/* 80A61F74  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A61F78  2C 00 00 05 */	cmpwi r0, 5
/* 80A61F7C  41 82 01 38 */	beq lbl_80A620B4
/* 80A61F80  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A61F84  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A61F88  4B 6E 39 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A61F8C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A61F90  38 00 00 05 */	li r0, 5
/* 80A61F94  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A61F98  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80A61F9C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A61FA0  48 00 01 14 */	b lbl_80A620B4
lbl_80A61FA4:
/* 80A61FA4  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A61FA8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A61FAC  41 82 00 24 */	beq lbl_80A61FD0
/* 80A61FB0  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A61FB4  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A61FB8  4B 6E 38 E1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A61FBC  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A61FC0  38 00 00 0A */	li r0, 0xa
/* 80A61FC4  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A61FC8  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80A61FCC  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A61FD0:
/* 80A61FD0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A61FD4  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A61FD8  41 82 00 DC */	beq lbl_80A620B4
/* 80A61FDC  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A61FE0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A61FE4  4B 6E 38 B5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A61FE8  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A61FEC  38 00 00 0C */	li r0, 0xc
/* 80A61FF0  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A61FF4  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80A61FF8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A61FFC  48 00 00 B8 */	b lbl_80A620B4
lbl_80A62000:
/* 80A62000  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A62004  2C 00 00 0D */	cmpwi r0, 0xd
/* 80A62008  41 82 00 24 */	beq lbl_80A6202C
/* 80A6200C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A62010  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A62014  4B 6E 38 85 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A62018  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A6201C  38 00 00 0D */	li r0, 0xd
/* 80A62020  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A62024  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80A62028  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A6202C:
/* 80A6202C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A62030  2C 00 00 08 */	cmpwi r0, 8
/* 80A62034  41 82 00 80 */	beq lbl_80A620B4
/* 80A62038  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A6203C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A62040  4B 6E 38 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A62044  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A62048  38 00 00 08 */	li r0, 8
/* 80A6204C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A62050  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80A62054  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A62058  48 00 00 5C */	b lbl_80A620B4
lbl_80A6205C:
/* 80A6205C  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A62060  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A62064  41 82 00 24 */	beq lbl_80A62088
/* 80A62068  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A6206C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A62070  4B 6E 38 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A62074  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A62078  38 00 00 0F */	li r0, 0xf
/* 80A6207C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A62080  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80A62084  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A62088:
/* 80A62088  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A6208C  2C 00 00 00 */	cmpwi r0, 0
/* 80A62090  41 82 00 24 */	beq lbl_80A620B4
/* 80A62094  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A62098  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A6209C  4B 6E 37 FD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A620A0  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A620A4  38 00 00 00 */	li r0, 0
/* 80A620A8  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A620AC  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80A620B0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A620B4:
/* 80A620B4  38 00 00 02 */	li r0, 2
/* 80A620B8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A620BC:
/* 80A620BC  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80A620C0  2C 00 00 00 */	cmpwi r0, 0
/* 80A620C4  40 82 02 90 */	bne lbl_80A62354
/* 80A620C8  88 1E 0F 88 */	lbz r0, 0xf88(r30)
/* 80A620CC  28 00 00 01 */	cmplwi r0, 1
/* 80A620D0  40 82 00 0C */	bne lbl_80A620DC
/* 80A620D4  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A620D8  4B 6E 36 25 */	bl remove__18daNpcT_ActorMngr_cFv
lbl_80A620DC:
/* 80A620DC  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A620E0  4B 6E 36 29 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A620E4  28 03 00 00 */	cmplwi r3, 0
/* 80A620E8  41 82 00 C0 */	beq lbl_80A621A8
/* 80A620EC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A620F0  2C 00 00 01 */	cmpwi r0, 1
/* 80A620F4  41 82 00 28 */	beq lbl_80A6211C
/* 80A620F8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A620FC  4B 6E 36 01 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A62100  38 00 00 00 */	li r0, 0
/* 80A62104  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A62108  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80A6210C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A62110  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A62114  38 00 00 01 */	li r0, 1
/* 80A62118  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A6211C:
/* 80A6211C  38 00 00 00 */	li r0, 0
/* 80A62120  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A62124  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A62128  4B 6E 35 E1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A6212C  7C 64 1B 78 */	mr r4, r3
/* 80A62130  7F C3 F3 78 */	mr r3, r30
/* 80A62134  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 80A62138  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80A6213C  4B 6E 8A 95 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80A62140  2C 03 00 00 */	cmpwi r3, 0
/* 80A62144  40 82 00 38 */	bne lbl_80A6217C
/* 80A62148  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A6214C  2C 00 00 00 */	cmpwi r0, 0
/* 80A62150  41 82 00 24 */	beq lbl_80A62174
/* 80A62154  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A62158  4B 6E 35 A5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A6215C  38 00 00 00 */	li r0, 0
/* 80A62160  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A62164  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80A62168  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A6216C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A62170  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A62174:
/* 80A62174  38 00 00 00 */	li r0, 0
/* 80A62178  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80A6217C:
/* 80A6217C  7F C3 F3 78 */	mr r3, r30
/* 80A62180  4B 6E 91 B9 */	bl srchPlayerActor__8daNpcT_cFv
/* 80A62184  2C 03 00 00 */	cmpwi r3, 0
/* 80A62188  40 82 01 CC */	bne lbl_80A62354
/* 80A6218C  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80A62190  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A62194  7C 03 00 00 */	cmpw r3, r0
/* 80A62198  40 82 01 BC */	bne lbl_80A62354
/* 80A6219C  38 00 00 01 */	li r0, 1
/* 80A621A0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A621A4  48 00 01 B0 */	b lbl_80A62354
lbl_80A621A8:
/* 80A621A8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A621AC  2C 00 00 00 */	cmpwi r0, 0
/* 80A621B0  41 82 00 24 */	beq lbl_80A621D4
/* 80A621B4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A621B8  4B 6E 35 45 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A621BC  38 00 00 00 */	li r0, 0
/* 80A621C0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A621C4  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80A621C8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A621CC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A621D0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A621D4:
/* 80A621D4  38 00 00 00 */	li r0, 0
/* 80A621D8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A621DC  88 1E 0F 88 */	lbz r0, 0xf88(r30)
/* 80A621E0  28 00 00 00 */	cmplwi r0, 0
/* 80A621E4  40 82 00 C0 */	bne lbl_80A622A4
/* 80A621E8  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80A621EC  D0 1E 0D 6C */	stfs f0, 0xd6c(r30)
/* 80A621F0  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80A621F4  D0 1E 0D 70 */	stfs f0, 0xd70(r30)
/* 80A621F8  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80A621FC  D0 1E 0D 74 */	stfs f0, 0xd74(r30)
/* 80A62200  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A62204  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A62208  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80A6220C  4B 5A A1 D1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A62210  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A62214  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A62218  38 9E 0D 6C */	addi r4, r30, 0xd6c
/* 80A6221C  7C 85 23 78 */	mr r5, r4
/* 80A62220  4B 8E 4B 4D */	bl PSMTXMultVec
/* 80A62224  38 7E 0D 6C */	addi r3, r30, 0xd6c
/* 80A62228  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A6222C  7C 65 1B 78 */	mr r5, r3
/* 80A62230  4B 8E 4E 61 */	bl PSVECAdd
/* 80A62234  80 7E 0B C8 */	lwz r3, 0xbc8(r30)
/* 80A62238  38 1E 0D 6C */	addi r0, r30, 0xd6c
/* 80A6223C  7C 63 00 50 */	subf r3, r3, r0
/* 80A62240  30 03 FF FF */	addic r0, r3, -1
/* 80A62244  7C 00 19 10 */	subfe r0, r0, r3
/* 80A62248  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A6224C  40 82 00 10 */	bne lbl_80A6225C
/* 80A62250  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A62254  2C 00 00 03 */	cmpwi r0, 3
/* 80A62258  41 82 00 30 */	beq lbl_80A62288
lbl_80A6225C:
/* 80A6225C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A62260  4B 6E 34 9D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A62264  38 00 00 00 */	li r0, 0
/* 80A62268  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A6226C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80A62270  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A62274  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A62278  38 00 00 03 */	li r0, 3
/* 80A6227C  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 80A62280  38 00 00 01 */	li r0, 1
/* 80A62284  48 00 00 08 */	b lbl_80A6228C
lbl_80A62288:
/* 80A62288  38 00 00 00 */	li r0, 0
lbl_80A6228C:
/* 80A6228C  2C 00 00 00 */	cmpwi r0, 0
/* 80A62290  41 82 00 0C */	beq lbl_80A6229C
/* 80A62294  38 1E 0D 6C */	addi r0, r30, 0xd6c
/* 80A62298  90 1E 0B C8 */	stw r0, 0xbc8(r30)
lbl_80A6229C:
/* 80A6229C  38 00 00 00 */	li r0, 0
/* 80A622A0  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80A622A4:
/* 80A622A4  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80A622A8  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A622AC  7C 04 00 00 */	cmpw r4, r0
/* 80A622B0  41 82 00 90 */	beq lbl_80A62340
/* 80A622B4  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 80A622B8  28 00 00 00 */	cmplwi r0, 0
/* 80A622BC  41 82 00 68 */	beq lbl_80A62324
/* 80A622C0  88 1E 0F 88 */	lbz r0, 0xf88(r30)
/* 80A622C4  28 00 00 00 */	cmplwi r0, 0
/* 80A622C8  40 82 00 30 */	bne lbl_80A622F8
/* 80A622CC  7F C3 F3 78 */	mr r3, r30
/* 80A622D0  38 A0 00 0B */	li r5, 0xb
/* 80A622D4  38 C0 00 0B */	li r6, 0xb
/* 80A622D8  38 E0 00 0F */	li r7, 0xf
/* 80A622DC  39 00 00 00 */	li r8, 0
/* 80A622E0  4B 6E 93 69 */	bl step__8daNpcT_cFsiiii
/* 80A622E4  2C 03 00 00 */	cmpwi r3, 0
/* 80A622E8  41 82 00 4C */	beq lbl_80A62334
/* 80A622EC  38 00 00 01 */	li r0, 1
/* 80A622F0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A622F4  48 00 00 40 */	b lbl_80A62334
lbl_80A622F8:
/* 80A622F8  7F C3 F3 78 */	mr r3, r30
/* 80A622FC  38 A0 FF FF */	li r5, -1
/* 80A62300  38 C0 FF FF */	li r6, -1
/* 80A62304  38 E0 00 0F */	li r7, 0xf
/* 80A62308  39 00 00 00 */	li r8, 0
/* 80A6230C  4B 6E 93 3D */	bl step__8daNpcT_cFsiiii
/* 80A62310  2C 03 00 00 */	cmpwi r3, 0
/* 80A62314  41 82 00 20 */	beq lbl_80A62334
/* 80A62318  38 00 00 01 */	li r0, 1
/* 80A6231C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A62320  48 00 00 14 */	b lbl_80A62334
lbl_80A62324:
/* 80A62324  7F C3 F3 78 */	mr r3, r30
/* 80A62328  4B 6E 86 F1 */	bl setAngle__8daNpcT_cFs
/* 80A6232C  38 00 00 01 */	li r0, 1
/* 80A62330  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A62334:
/* 80A62334  38 00 00 00 */	li r0, 0
/* 80A62338  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80A6233C  48 00 00 18 */	b lbl_80A62354
lbl_80A62340:
/* 80A62340  88 1E 0F 88 */	lbz r0, 0xf88(r30)
/* 80A62344  28 00 00 00 */	cmplwi r0, 0
/* 80A62348  41 82 00 0C */	beq lbl_80A62354
/* 80A6234C  7F C3 F3 78 */	mr r3, r30
/* 80A62350  4B 6E 8F E9 */	bl srchPlayerActor__8daNpcT_cFv
lbl_80A62354:
/* 80A62354  38 60 00 01 */	li r3, 1
/* 80A62358  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6235C  4B 8F FE CD */	bl _restgpr_29
/* 80A62360  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A62364  7C 08 03 A6 */	mtlr r0
/* 80A62368  38 21 00 20 */	addi r1, r1, 0x20
/* 80A6236C  4E 80 00 20 */	blr 
