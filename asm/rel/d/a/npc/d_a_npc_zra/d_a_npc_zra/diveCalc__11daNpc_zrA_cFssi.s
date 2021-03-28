lbl_80B83FA4:
/* 80B83FA4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B83FA8  7C 08 02 A6 */	mflr r0
/* 80B83FAC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B83FB0  39 61 00 50 */	addi r11, r1, 0x50
/* 80B83FB4  4B 7D E2 20 */	b _savegpr_27
/* 80B83FB8  7C 7F 1B 78 */	mr r31, r3
/* 80B83FBC  7C 9B 23 78 */	mr r27, r4
/* 80B83FC0  7C BC 2B 78 */	mr r28, r5
/* 80B83FC4  7C DD 33 78 */	mr r29, r6
/* 80B83FC8  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B83FCC  3B C3 C4 58 */	addi r30, r3, m__17daNpc_zrA_Param_c@l
/* 80B83FD0  38 7E 00 00 */	addi r3, r30, 0
/* 80B83FD4  C0 23 00 84 */	lfs f1, 0x84(r3)
/* 80B83FD8  38 7F 15 6C */	addi r3, r31, 0x156c
/* 80B83FDC  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B83FE0  EC 41 00 28 */	fsubs f2, f1, f0
/* 80B83FE4  C0 1E 07 C0 */	lfs f0, 0x7c0(r30)
/* 80B83FE8  EC 42 00 24 */	fdivs f2, f2, f0
/* 80B83FEC  4B 6E C7 54 */	b cLib_chaseF__FPfff
/* 80B83FF0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B83FF4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B83FF8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B83FFC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B84000  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B84004  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B84008  38 7F 0C 18 */	addi r3, r31, 0xc18
/* 80B8400C  38 81 00 10 */	addi r4, r1, 0x10
/* 80B84010  38 A1 00 28 */	addi r5, r1, 0x28
/* 80B84014  4B FF 44 F9 */	bl getDstPosDst2__16daNpc_zrA_Path_cF4cXyzR4cXyz
/* 80B84018  38 61 00 28 */	addi r3, r1, 0x28
/* 80B8401C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B84020  4B 6E CC 54 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B84024  B0 61 00 08 */	sth r3, 8(r1)
/* 80B84028  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B8402C  38 81 00 28 */	addi r4, r1, 0x28
/* 80B84030  4B 6E CB D4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B84034  B0 61 00 0A */	sth r3, 0xa(r1)
/* 80B84038  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80B8403C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B84040  7F E3 FB 78 */	mr r3, r31
/* 80B84044  38 81 00 08 */	addi r4, r1, 8
/* 80B84048  38 BF 15 36 */	addi r5, r31, 0x1536
/* 80B8404C  7F 86 E3 78 */	mr r6, r28
/* 80B84050  7F 67 DB 78 */	mr r7, r27
/* 80B84054  4B FF E4 A1 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B84058  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80B8405C  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80B84060  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80B84064  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80B84068  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80B8406C  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80B84070  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80B84074  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80B84078  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80B8407C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80B84080  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80B84084  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80B84088  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B8408C  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 80B84090  C0 5E 00 B0 */	lfs f2, 0xb0(r30)
/* 80B84094  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B84098  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80B8409C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B840A0  C0 3E 07 CC */	lfs f1, 0x7cc(r30)
/* 80B840A4  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80B840A8  40 80 00 18 */	bge lbl_80B840C0
/* 80B840AC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B840B0  C0 1E 07 D8 */	lfs f0, 0x7d8(r30)
/* 80B840B4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B840B8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B840BC  48 00 00 AC */	b lbl_80B84168
lbl_80B840C0:
/* 80B840C0  C0 1E 07 DC */	lfs f0, 0x7dc(r30)
/* 80B840C4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B840C8  40 80 00 18 */	bge lbl_80B840E0
/* 80B840CC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B840D0  C0 1E 07 E0 */	lfs f0, 0x7e0(r30)
/* 80B840D4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B840D8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B840DC  48 00 00 8C */	b lbl_80B84168
lbl_80B840E0:
/* 80B840E0  C0 1E 07 E4 */	lfs f0, 0x7e4(r30)
/* 80B840E4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B840E8  40 80 00 1C */	bge lbl_80B84104
/* 80B840EC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B840F0  C0 1E 07 E0 */	lfs f0, 0x7e0(r30)
/* 80B840F4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B840F8  C0 1E 07 E8 */	lfs f0, 0x7e8(r30)
/* 80B840FC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B84100  48 00 00 68 */	b lbl_80B84168
lbl_80B84104:
/* 80B84104  C0 1E 07 74 */	lfs f0, 0x774(r30)
/* 80B84108  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B8410C  40 80 00 1C */	bge lbl_80B84128
/* 80B84110  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B84114  C0 1E 07 E0 */	lfs f0, 0x7e0(r30)
/* 80B84118  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B8411C  C0 1E 07 EC */	lfs f0, 0x7ec(r30)
/* 80B84120  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B84124  48 00 00 44 */	b lbl_80B84168
lbl_80B84128:
/* 80B84128  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80B8412C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B84130  40 80 00 18 */	bge lbl_80B84148
/* 80B84134  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B84138  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B8413C  C0 1E 07 F0 */	lfs f0, 0x7f0(r30)
/* 80B84140  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B84144  48 00 00 24 */	b lbl_80B84168
lbl_80B84148:
/* 80B84148  C0 1E 07 F4 */	lfs f0, 0x7f4(r30)
/* 80B8414C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B84150  40 80 00 18 */	bge lbl_80B84168
/* 80B84154  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 80B84158  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B8415C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B84160  C0 1E 07 F8 */	lfs f0, 0x7f8(r30)
/* 80B84164  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_80B84168:
/* 80B84168  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 80B8416C  4B 48 8D A0 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B84170  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B84174  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B84178  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B8417C  7C 85 23 78 */	mr r5, r4
/* 80B84180  4B 7C 2B EC */	b PSMTXMultVec
/* 80B84184  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B84188  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B8418C  7C 65 1B 78 */	mr r5, r3
/* 80B84190  4B 7C 2F 00 */	b PSVECAdd
/* 80B84194  2C 1D 00 00 */	cmpwi r29, 0
/* 80B84198  41 82 00 30 */	beq lbl_80B841C8
/* 80B8419C  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80B841A0  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80B841A4  41 82 00 24 */	beq lbl_80B841C8
/* 80B841A8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80B841AC  C0 3F 07 9C */	lfs f1, 0x79c(r31)
/* 80B841B0  38 7E 00 00 */	addi r3, r30, 0
/* 80B841B4  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B841B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B841BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B841C0  40 81 00 08 */	ble lbl_80B841C8
/* 80B841C4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_80B841C8:
/* 80B841C8  80 1F 14 EC */	lwz r0, 0x14ec(r31)
/* 80B841CC  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80B841D0  41 82 00 0C */	beq lbl_80B841DC
/* 80B841D4  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80B841D8  40 82 00 0C */	bne lbl_80B841E4
lbl_80B841DC:
/* 80B841DC  38 60 00 01 */	li r3, 1
/* 80B841E0  48 00 00 08 */	b lbl_80B841E8
lbl_80B841E4:
/* 80B841E4  38 60 00 00 */	li r3, 0
lbl_80B841E8:
/* 80B841E8  39 61 00 50 */	addi r11, r1, 0x50
/* 80B841EC  4B 7D E0 34 */	b _restgpr_27
/* 80B841F0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B841F4  7C 08 03 A6 */	mtlr r0
/* 80B841F8  38 21 00 50 */	addi r1, r1, 0x50
/* 80B841FC  4E 80 00 20 */	blr 
