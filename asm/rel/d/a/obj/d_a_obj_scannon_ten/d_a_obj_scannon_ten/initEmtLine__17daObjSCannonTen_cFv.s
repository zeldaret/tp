lbl_80CCC7D0:
/* 80CCC7D0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CCC7D4  7C 08 02 A6 */	mflr r0
/* 80CCC7D8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CCC7DC  39 61 00 50 */	addi r11, r1, 0x50
/* 80CCC7E0  4B 69 59 FD */	bl _savegpr_29
/* 80CCC7E4  7C 7D 1B 78 */	mr r29, r3
/* 80CCC7E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCC7EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCC7F0  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80CCC7F4  7C 00 07 74 */	extsb r0, r0
/* 80CCC7F8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80CCC7FC  7C 63 02 14 */	add r3, r3, r0
/* 80CCC800  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 80CCC804  28 1E 00 00 */	cmplwi r30, 0
/* 80CCC808  41 82 00 40 */	beq lbl_80CCC848
/* 80CCC80C  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80CCC810  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CCC814  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80CCC818  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CCC81C  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80CCC820  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CCC824  7F C3 F3 78 */	mr r3, r30
/* 80CCC828  4B 4B 4D A5 */	bl dCam_getAngleY__FP12camera_class
/* 80CCC82C  7C 7F 1B 78 */	mr r31, r3
/* 80CCC830  7F C3 F3 78 */	mr r3, r30
/* 80CCC834  4B 4B 4D BD */	bl dCam_getAngleX__FP12camera_class
/* 80CCC838  B0 61 00 20 */	sth r3, 0x20(r1)
/* 80CCC83C  B3 E1 00 22 */	sth r31, 0x22(r1)
/* 80CCC840  38 00 00 00 */	li r0, 0
/* 80CCC844  B0 01 00 24 */	sth r0, 0x24(r1)
lbl_80CCC848:
/* 80CCC848  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCC84C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCC850  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80CCC854  38 80 00 00 */	li r4, 0
/* 80CCC858  90 81 00 08 */	stw r4, 8(r1)
/* 80CCC85C  38 00 FF FF */	li r0, -1
/* 80CCC860  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CCC864  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CCC868  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CCC86C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CCC870  38 80 00 00 */	li r4, 0
/* 80CCC874  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000874E@ha */
/* 80CCC878  38 A5 87 4E */	addi r5, r5, 0x874E /* 0x0000874E@l */
/* 80CCC87C  38 C1 00 28 */	addi r6, r1, 0x28
/* 80CCC880  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80CCC884  39 01 00 20 */	addi r8, r1, 0x20
/* 80CCC888  39 20 00 00 */	li r9, 0
/* 80CCC88C  39 40 00 FF */	li r10, 0xff
/* 80CCC890  3D 60 80 CD */	lis r11, lit_3987@ha /* 0x80CCCC4C@ha */
/* 80CCC894  C0 2B CC 4C */	lfs f1, lit_3987@l(r11)  /* 0x80CCCC4C@l */
/* 80CCC898  4B 38 01 F9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CCC89C  90 7D 06 00 */	stw r3, 0x600(r29)
/* 80CCC8A0  39 61 00 50 */	addi r11, r1, 0x50
/* 80CCC8A4  4B 69 59 85 */	bl _restgpr_29
/* 80CCC8A8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CCC8AC  7C 08 03 A6 */	mtlr r0
/* 80CCC8B0  38 21 00 50 */	addi r1, r1, 0x50
/* 80CCC8B4  4E 80 00 20 */	blr 
