lbl_8099F4BC:
/* 8099F4BC  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 8099F4C0  7C 08 02 A6 */	mflr r0
/* 8099F4C4  90 01 01 74 */	stw r0, 0x174(r1)
/* 8099F4C8  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 8099F4CC  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 8099F4D0  39 61 01 60 */	addi r11, r1, 0x160
/* 8099F4D4  4B 9C 2C D9 */	bl _savegpr_17
/* 8099F4D8  7C 78 1B 78 */	mr r24, r3
/* 8099F4DC  3C 80 80 9A */	lis r4, M_attr__12daNpcCoach_c@ha /* 0x809A4ED0@ha */
/* 8099F4E0  3B E4 4E D0 */	addi r31, r4, M_attr__12daNpcCoach_c@l /* 0x809A4ED0@l */
/* 8099F4E4  3B D8 0D 00 */	addi r30, r24, 0xd00
/* 8099F4E8  88 83 0E 6C */	lbz r4, 0xe6c(r3)
/* 8099F4EC  7C 80 07 74 */	extsb r0, r4
/* 8099F4F0  2C 00 00 01 */	cmpwi r0, 1
/* 8099F4F4  41 81 00 20 */	bgt lbl_8099F514
/* 8099F4F8  38 04 00 01 */	addi r0, r4, 1
/* 8099F4FC  98 1E 01 6C */	stb r0, 0x16c(r30)
/* 8099F500  7C 00 07 74 */	extsb r0, r0
/* 8099F504  2C 00 00 01 */	cmpwi r0, 1
/* 8099F508  40 81 04 60 */	ble lbl_8099F968
/* 8099F50C  48 00 04 7D */	bl reinsInit__12daNpcCoach_cFv
/* 8099F510  48 00 04 58 */	b lbl_8099F968
lbl_8099F514:
/* 8099F514  80 78 04 A4 */	lwz r3, 0x4a4(r24)
/* 8099F518  4B 68 1E 41 */	bl fpcEx_SearchByID__FUi
/* 8099F51C  7C 7D 1B 78 */	mr r29, r3
/* 8099F520  38 9F 00 00 */	addi r4, r31, 0
/* 8099F524  C0 04 00 4C */	lfs f0, 0x4c(r4)
/* 8099F528  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 8099F52C  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 8099F530  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 8099F534  C0 04 00 54 */	lfs f0, 0x54(r4)
/* 8099F538  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 8099F53C  80 78 05 68 */	lwz r3, 0x568(r24)
/* 8099F540  80 63 00 04 */	lwz r3, 4(r3)
/* 8099F544  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8099F548  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8099F54C  A8 04 00 60 */	lha r0, 0x60(r4)
/* 8099F550  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8099F554  7C 63 02 14 */	add r3, r3, r0
/* 8099F558  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099F55C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099F560  4B 9A 6F 51 */	bl PSMTXCopy
/* 8099F564  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099F568  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099F56C  38 81 00 EC */	addi r4, r1, 0xec
/* 8099F570  7C 85 23 78 */	mr r5, r4
/* 8099F574  4B 9A 77 F9 */	bl PSMTXMultVec
/* 8099F578  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 8099F57C  D0 1E 01 70 */	stfs f0, 0x170(r30)
/* 8099F580  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 8099F584  D0 1E 01 74 */	stfs f0, 0x174(r30)
/* 8099F588  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 8099F58C  D0 1E 01 78 */	stfs f0, 0x178(r30)
/* 8099F590  3A 9F 00 00 */	addi r20, r31, 0
/* 8099F594  C0 14 00 48 */	lfs f0, 0x48(r20)
/* 8099F598  D0 1E 01 68 */	stfs f0, 0x168(r30)
/* 8099F59C  3B 80 00 00 */	li r28, 0
/* 8099F5A0  3A E0 00 00 */	li r23, 0
/* 8099F5A4  3A C0 00 00 */	li r22, 0
/* 8099F5A8  C3 FF 00 A0 */	lfs f31, 0xa0(r31)
/* 8099F5AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099F5B0  3A A3 D4 70 */	addi r21, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_8099F5B4:
/* 8099F5B4  2C 1C 00 00 */	cmpwi r28, 0
/* 8099F5B8  40 82 00 20 */	bne lbl_8099F5D8
/* 8099F5BC  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 8099F5C0  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 8099F5C4  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 8099F5C8  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 8099F5CC  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 8099F5D0  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 8099F5D4  48 00 00 1C */	b lbl_8099F5F0
lbl_8099F5D8:
/* 8099F5D8  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 8099F5DC  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 8099F5E0  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 8099F5E4  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 8099F5E8  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 8099F5EC  D0 01 01 18 */	stfs f0, 0x118(r1)
lbl_8099F5F0:
/* 8099F5F0  80 78 05 68 */	lwz r3, 0x568(r24)
/* 8099F5F4  80 63 00 04 */	lwz r3, 4(r3)
/* 8099F5F8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8099F5FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8099F600  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 8099F604  7E A4 AB 78 */	mr r4, r21
/* 8099F608  4B 9A 6E A9 */	bl PSMTXCopy
/* 8099F60C  7E A3 AB 78 */	mr r3, r21
/* 8099F610  38 81 01 10 */	addi r4, r1, 0x110
/* 8099F614  7C 85 23 78 */	mr r5, r4
/* 8099F618  4B 9A 77 55 */	bl PSMTXMultVec
/* 8099F61C  28 1D 00 00 */	cmplwi r29, 0
/* 8099F620  41 82 00 2C */	beq lbl_8099F64C
/* 8099F624  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8099F628  7F A4 EB 78 */	mr r4, r29
/* 8099F62C  7F 85 E3 78 */	mr r5, r28
/* 8099F630  48 15 DF C1 */	bl getHandPos2__11daNpcTheB_cFi
/* 8099F634  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8099F638  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 8099F63C  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 8099F640  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 8099F644  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 8099F648  D0 01 01 0C */	stfs f0, 0x10c(r1)
lbl_8099F64C:
/* 8099F64C  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8099F650  7C 63 B0 2E */	lwzx r3, r3, r22
/* 8099F654  7E 7E BA 14 */	add r19, r30, r23
/* 8099F658  3A 53 00 78 */	addi r18, r19, 0x78
/* 8099F65C  3A 33 00 F0 */	addi r17, r19, 0xf0
/* 8099F660  7E 3A 8B 78 */	mr r26, r17
/* 8099F664  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 8099F668  D0 03 00 00 */	stfs f0, 0(r3)
/* 8099F66C  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 8099F670  D0 03 00 04 */	stfs f0, 4(r3)
/* 8099F674  C0 01 01 18 */	lfs f0, 0x118(r1)
/* 8099F678  D0 03 00 08 */	stfs f0, 8(r3)
/* 8099F67C  3B 20 00 01 */	li r25, 1
/* 8099F680  3B 63 00 0C */	addi r27, r3, 0xc
lbl_8099F684:
/* 8099F684  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8099F688  7F 64 DB 78 */	mr r4, r27
/* 8099F68C  38 A1 00 EC */	addi r5, r1, 0xec
/* 8099F690  4B 8C 74 A5 */	bl __mi__4cXyzCFRC3Vec
/* 8099F694  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 8099F698  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 8099F69C  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 8099F6A0  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8099F6A4  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 8099F6A8  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 8099F6AC  38 61 00 BC */	addi r3, r1, 0xbc
/* 8099F6B0  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8099F6B4  4B 8C 78 95 */	bl normalizeZP__4cXyzFv
/* 8099F6B8  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8099F6BC  7C 64 1B 78 */	mr r4, r3
/* 8099F6C0  C0 34 00 5C */	lfs f1, 0x5c(r20)
/* 8099F6C4  4B 9A 7A 15 */	bl PSVECScale
/* 8099F6C8  D3 E1 00 FC */	stfs f31, 0xfc(r1)
/* 8099F6CC  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8099F6D0  7F 64 DB 78 */	mr r4, r27
/* 8099F6D4  38 BB FF F4 */	addi r5, r27, -12
/* 8099F6D8  4B 8C 74 5D */	bl __mi__4cXyzCFRC3Vec
/* 8099F6DC  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8099F6E0  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 8099F6E4  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 8099F6E8  D0 21 00 E4 */	stfs f1, 0xe4(r1)
/* 8099F6EC  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8099F6F0  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 8099F6F4  C0 18 05 30 */	lfs f0, 0x530(r24)
/* 8099F6F8  EC 01 00 2A */	fadds f0, f1, f0
/* 8099F6FC  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 8099F700  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8099F704  7F 44 D3 78 */	mr r4, r26
/* 8099F708  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 8099F70C  4B 8C 73 D9 */	bl __pl__4cXyzCFRC3Vec
/* 8099F710  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8099F714  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8099F718  7C 65 1B 78 */	mr r5, r3
/* 8099F71C  4B 9A 79 75 */	bl PSVECAdd
/* 8099F720  38 61 00 98 */	addi r3, r1, 0x98
/* 8099F724  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8099F728  4B 8C 78 21 */	bl normalizeZP__4cXyzFv
/* 8099F72C  38 61 00 8C */	addi r3, r1, 0x8c
/* 8099F730  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8099F734  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 8099F738  4B 8C 74 4D */	bl __ml__4cXyzCFf
/* 8099F73C  38 61 00 80 */	addi r3, r1, 0x80
/* 8099F740  38 9B FF F4 */	addi r4, r27, -12
/* 8099F744  38 A1 00 8C */	addi r5, r1, 0x8c
/* 8099F748  4B 8C 73 9D */	bl __pl__4cXyzCFRC3Vec
/* 8099F74C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8099F750  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8099F754  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8099F758  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8099F75C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8099F760  D0 1B 00 08 */	stfs f0, 8(r27)
/* 8099F764  3B 39 00 01 */	addi r25, r25, 1
/* 8099F768  2C 19 00 06 */	cmpwi r25, 6
/* 8099F76C  3B 7B 00 0C */	addi r27, r27, 0xc
/* 8099F770  3B 5A 00 0C */	addi r26, r26, 0xc
/* 8099F774  41 80 FF 10 */	blt lbl_8099F684
/* 8099F778  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 8099F77C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8099F780  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 8099F784  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8099F788  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 8099F78C  D0 1B 00 08 */	stfs f0, 8(r27)
/* 8099F790  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8099F794  7C 63 B0 2E */	lwzx r3, r3, r22
/* 8099F798  3B 23 00 3C */	addi r25, r3, 0x3c
/* 8099F79C  3A 73 01 20 */	addi r19, r19, 0x120
/* 8099F7A0  3B 40 00 05 */	li r26, 5
lbl_8099F7A4:
/* 8099F7A4  38 61 00 74 */	addi r3, r1, 0x74
/* 8099F7A8  7F 24 CB 78 */	mr r4, r25
/* 8099F7AC  38 A1 00 EC */	addi r5, r1, 0xec
/* 8099F7B0  4B 8C 73 85 */	bl __mi__4cXyzCFRC3Vec
/* 8099F7B4  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8099F7B8  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 8099F7BC  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8099F7C0  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8099F7C4  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8099F7C8  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 8099F7CC  38 61 00 68 */	addi r3, r1, 0x68
/* 8099F7D0  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8099F7D4  4B 8C 77 75 */	bl normalizeZP__4cXyzFv
/* 8099F7D8  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8099F7DC  7C 64 1B 78 */	mr r4, r3
/* 8099F7E0  C0 34 00 5C */	lfs f1, 0x5c(r20)
/* 8099F7E4  4B 9A 78 F5 */	bl PSVECScale
/* 8099F7E8  D3 E1 00 FC */	stfs f31, 0xfc(r1)
/* 8099F7EC  38 61 00 5C */	addi r3, r1, 0x5c
/* 8099F7F0  7F 24 CB 78 */	mr r4, r25
/* 8099F7F4  38 B9 00 0C */	addi r5, r25, 0xc
/* 8099F7F8  4B 8C 73 3D */	bl __mi__4cXyzCFRC3Vec
/* 8099F7FC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8099F800  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 8099F804  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 8099F808  D0 21 00 E4 */	stfs f1, 0xe4(r1)
/* 8099F80C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8099F810  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 8099F814  C0 18 05 30 */	lfs f0, 0x530(r24)
/* 8099F818  EC 01 00 2A */	fadds f0, f1, f0
/* 8099F81C  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 8099F820  38 61 00 50 */	addi r3, r1, 0x50
/* 8099F824  7E 64 9B 78 */	mr r4, r19
/* 8099F828  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 8099F82C  4B 8C 72 B9 */	bl __pl__4cXyzCFRC3Vec
/* 8099F830  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8099F834  38 81 00 50 */	addi r4, r1, 0x50
/* 8099F838  7C 65 1B 78 */	mr r5, r3
/* 8099F83C  4B 9A 78 55 */	bl PSVECAdd
/* 8099F840  38 61 00 44 */	addi r3, r1, 0x44
/* 8099F844  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8099F848  4B 8C 77 01 */	bl normalizeZP__4cXyzFv
/* 8099F84C  38 61 00 38 */	addi r3, r1, 0x38
/* 8099F850  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8099F854  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 8099F858  4B 8C 73 2D */	bl __ml__4cXyzCFf
/* 8099F85C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8099F860  38 99 00 0C */	addi r4, r25, 0xc
/* 8099F864  38 A1 00 38 */	addi r5, r1, 0x38
/* 8099F868  4B 8C 72 7D */	bl __pl__4cXyzCFRC3Vec
/* 8099F86C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8099F870  D0 19 00 00 */	stfs f0, 0(r25)
/* 8099F874  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8099F878  D0 19 00 04 */	stfs f0, 4(r25)
/* 8099F87C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8099F880  D0 19 00 08 */	stfs f0, 8(r25)
/* 8099F884  37 5A FF FF */	addic. r26, r26, -1
/* 8099F888  3B 39 FF F4 */	addi r25, r25, -12
/* 8099F88C  3A 73 FF F4 */	addi r19, r19, -12
/* 8099F890  41 81 FF 14 */	bgt lbl_8099F7A4
/* 8099F894  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8099F898  7E 63 B0 2E */	lwzx r19, r3, r22
/* 8099F89C  3B 20 00 01 */	li r25, 1
lbl_8099F8A0:
/* 8099F8A0  38 61 00 20 */	addi r3, r1, 0x20
/* 8099F8A4  7E 64 9B 78 */	mr r4, r19
/* 8099F8A8  7E 45 93 78 */	mr r5, r18
/* 8099F8AC  4B 8C 72 89 */	bl __mi__4cXyzCFRC3Vec
/* 8099F8B0  38 61 00 14 */	addi r3, r1, 0x14
/* 8099F8B4  38 81 00 20 */	addi r4, r1, 0x20
/* 8099F8B8  C0 34 00 58 */	lfs f1, 0x58(r20)
/* 8099F8BC  4B 8C 72 C9 */	bl __ml__4cXyzCFf
/* 8099F8C0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8099F8C4  D0 11 00 00 */	stfs f0, 0(r17)
/* 8099F8C8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8099F8CC  D0 11 00 04 */	stfs f0, 4(r17)
/* 8099F8D0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8099F8D4  D0 11 00 08 */	stfs f0, 8(r17)
/* 8099F8D8  C0 13 00 00 */	lfs f0, 0(r19)
/* 8099F8DC  D0 12 00 00 */	stfs f0, 0(r18)
/* 8099F8E0  C0 13 00 04 */	lfs f0, 4(r19)
/* 8099F8E4  D0 12 00 04 */	stfs f0, 4(r18)
/* 8099F8E8  C0 13 00 08 */	lfs f0, 8(r19)
/* 8099F8EC  D0 12 00 08 */	stfs f0, 8(r18)
/* 8099F8F0  3B 39 00 01 */	addi r25, r25, 1
/* 8099F8F4  2C 19 00 06 */	cmpwi r25, 6
/* 8099F8F8  3A 73 00 0C */	addi r19, r19, 0xc
/* 8099F8FC  3A 52 00 0C */	addi r18, r18, 0xc
/* 8099F900  3A 31 00 0C */	addi r17, r17, 0xc
/* 8099F904  41 80 FF 9C */	blt lbl_8099F8A0
/* 8099F908  3B 9C 00 01 */	addi r28, r28, 1
/* 8099F90C  2C 1C 00 02 */	cmpwi r28, 2
/* 8099F910  3A F7 00 3C */	addi r23, r23, 0x3c
/* 8099F914  3A D6 00 20 */	addi r22, r22, 0x20
/* 8099F918  41 80 FC 9C */	blt lbl_8099F5B4
/* 8099F91C  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 8099F920  82 23 00 00 */	lwz r17, 0(r3)
/* 8099F924  3A 40 00 00 */	li r18, 0
lbl_8099F928:
/* 8099F928  28 1D 00 00 */	cmplwi r29, 0
/* 8099F92C  41 82 00 2C */	beq lbl_8099F958
/* 8099F930  38 61 00 08 */	addi r3, r1, 8
/* 8099F934  7F A4 EB 78 */	mr r4, r29
/* 8099F938  7E 45 93 78 */	mr r5, r18
/* 8099F93C  48 15 DB CD */	bl getHandPos1__11daNpcTheB_cFi
/* 8099F940  C0 01 00 08 */	lfs f0, 8(r1)
/* 8099F944  D0 11 00 00 */	stfs f0, 0(r17)
/* 8099F948  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8099F94C  D0 11 00 04 */	stfs f0, 4(r17)
/* 8099F950  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8099F954  D0 11 00 08 */	stfs f0, 8(r17)
lbl_8099F958:
/* 8099F958  3A 52 00 01 */	addi r18, r18, 1
/* 8099F95C  2C 12 00 02 */	cmpwi r18, 2
/* 8099F960  3A 31 00 0C */	addi r17, r17, 0xc
/* 8099F964  41 80 FF C4 */	blt lbl_8099F928
lbl_8099F968:
/* 8099F968  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 8099F96C  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 8099F970  39 61 01 60 */	addi r11, r1, 0x160
/* 8099F974  4B 9C 28 85 */	bl _restgpr_17
/* 8099F978  80 01 01 74 */	lwz r0, 0x174(r1)
/* 8099F97C  7C 08 03 A6 */	mtlr r0
/* 8099F980  38 21 01 70 */	addi r1, r1, 0x170
/* 8099F984  4E 80 00 20 */	blr 
