lbl_8059388C:
/* 8059388C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593890  7C 08 02 A6 */	mflr r0
/* 80593894  90 01 00 14 */	stw r0, 0x14(r1)
/* 80593898  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059389C  93 C1 00 08 */	stw r30, 8(r1)
/* 805938A0  7C 7E 1B 78 */	mr r30, r3
/* 805938A4  3C 60 80 59 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80593F68@ha */
/* 805938A8  3B E3 3F 68 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80593F68@l */
/* 805938AC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805938B0  54 00 FF 3E */	rlwinm r0, r0, 0x1f, 0x1c, 0x1f
/* 805938B4  98 1E 05 B9 */	stb r0, 0x5b9(r30)
/* 805938B8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805938BC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 805938C0  98 1E 05 B8 */	stb r0, 0x5b8(r30)
/* 805938C4  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 805938C8  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 805938CC  4B A9 95 F1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805938D0  2C 03 00 04 */	cmpwi r3, 4
/* 805938D4  41 82 00 08 */	beq lbl_805938DC
/* 805938D8  48 00 00 98 */	b lbl_80593970
lbl_805938DC:
/* 805938DC  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 805938E0  88 1E 05 B9 */	lbz r0, 0x5b9(r30)
/* 805938E4  54 00 10 3A */	slwi r0, r0, 2
/* 805938E8  38 9F 00 20 */	addi r4, r31, 0x20
/* 805938EC  7C 84 00 2E */	lwzx r4, r4, r0
/* 805938F0  4B A9 95 CD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805938F4  7C 60 1B 78 */	mr r0, r3
/* 805938F8  2C 00 00 04 */	cmpwi r0, 4
/* 805938FC  40 82 00 70 */	bne lbl_8059396C
/* 80593900  88 1E 05 B9 */	lbz r0, 0x5b9(r30)
/* 80593904  54 00 10 3A */	slwi r0, r0, 2
/* 80593908  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059390C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80593910  3C 63 00 02 */	addis r3, r3, 2
/* 80593914  38 9F 00 20 */	addi r4, r31, 0x20
/* 80593918  7C 84 00 2E */	lwzx r4, r4, r0
/* 8059391C  38 BF 00 30 */	addi r5, r31, 0x30
/* 80593920  7C A5 00 2E */	lwzx r5, r5, r0
/* 80593924  38 63 C2 F8 */	addi r3, r3, -15624
/* 80593928  4B AA 8D 91 */	bl getObjectResName2Index__14dRes_control_cFPCcPCc
/* 8059392C  7C 65 1B 78 */	mr r5, r3
/* 80593930  7F C3 F3 78 */	mr r3, r30
/* 80593934  88 1E 05 B9 */	lbz r0, 0x5b9(r30)
/* 80593938  54 00 10 3A */	slwi r0, r0, 2
/* 8059393C  38 9F 00 20 */	addi r4, r31, 0x20
/* 80593940  7C 84 00 2E */	lwzx r4, r4, r0
/* 80593944  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80593948  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 8059394C  3C E0 80 00 */	lis r7, 0x8000 /* 0x80004000@ha */
/* 80593950  38 E7 40 00 */	addi r7, r7, 0x4000 /* 0x80004000@l */
/* 80593954  39 00 00 00 */	li r8, 0
/* 80593958  4B AE 4E 65 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 8059395C  7C 60 1B 78 */	mr r0, r3
/* 80593960  2C 00 00 05 */	cmpwi r0, 5
/* 80593964  40 82 00 08 */	bne lbl_8059396C
/* 80593968  48 00 00 08 */	b lbl_80593970
lbl_8059396C:
/* 8059396C  7C 03 03 78 */	mr r3, r0
lbl_80593970:
/* 80593970  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80593974  83 C1 00 08 */	lwz r30, 8(r1)
/* 80593978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059397C  7C 08 03 A6 */	mtlr r0
/* 80593980  38 21 00 10 */	addi r1, r1, 0x10
/* 80593984  4E 80 00 20 */	blr 
