lbl_80008630:
/* 80008630  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80008634  7C 08 02 A6 */	mflr r0
/* 80008638  90 01 01 34 */	stw r0, 0x134(r1)
/* 8000863C  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 80008640  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 80008644  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 80008648  F3 C1 01 18 */	psq_st f30, 280(r1), 0, 0 /* qr0 */
/* 8000864C  39 61 01 10 */	addi r11, r1, 0x110
/* 80008650  48 35 9B 5D */	bl _savegpr_17
/* 80008654  7C 7F 1B 78 */	mr r31, r3
/* 80008658  7C 99 23 78 */	mr r25, r4
/* 8000865C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80008660  3A C3 61 C0 */	addi r22, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80008664  80 16 5D B4 */	lwz r0, 0x5db4(r22)
/* 80008668  28 00 00 00 */	cmplwi r0, 0
/* 8000866C  41 82 0A F0 */	beq lbl_8000915C
/* 80008670  88 0D 86 67 */	lbz r0, mBlureFlag__13mDoGph_gInf_c+0x3(r13)
/* 80008674  2C 00 00 00 */	cmpwi r0, 0
/* 80008678  41 82 00 3C */	beq lbl_800086B4
/* 8000867C  38 61 00 4C */	addi r3, r1, 0x4c
/* 80008680  48 35 7B 85 */	bl GXGetProjectionv
/* 80008684  38 61 00 34 */	addi r3, r1, 0x34
/* 80008688  48 35 7E 25 */	bl GXGetViewportv
/* 8000868C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80008690  C0 5F 00 E8 */	lfs f2, 0xe8(r31)
/* 80008694  C0 7F 00 EC */	lfs f3, 0xec(r31)
/* 80008698  38 7F 01 40 */	addi r3, r31, 0x140
/* 8000869C  38 81 00 4C */	addi r4, r1, 0x4c
/* 800086A0  38 A1 00 34 */	addi r5, r1, 0x34
/* 800086A4  38 C1 00 1C */	addi r6, r1, 0x1c
/* 800086A8  38 E1 00 18 */	addi r7, r1, 0x18
/* 800086AC  39 01 00 14 */	addi r8, r1, 0x14
/* 800086B0  48 35 78 B1 */	bl GXProject
lbl_800086B4:
/* 800086B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800086B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800086BC  3A E3 5D 74 */	addi r23, r3, 0x5d74
/* 800086C0  82 23 5D 74 */	lwz r17, 0x5d74(r3)
/* 800086C4  C3 C2 80 48 */	lfs f30, lit_4422(r2)
/* 800086C8  48 17 8F 79 */	bl dCam_getBody__Fv
/* 800086CC  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 800086D0  2C 00 00 04 */	cmpwi r0, 4
/* 800086D4  41 82 02 74 */	beq lbl_80008948
/* 800086D8  48 17 8F 69 */	bl dCam_getBody__Fv
/* 800086DC  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 800086E0  2C 00 00 07 */	cmpwi r0, 7
/* 800086E4  41 82 02 64 */	beq lbl_80008948
/* 800086E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800086EC  3A A3 61 C0 */	addi r21, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800086F0  88 15 5D B0 */	lbz r0, 0x5db0(r21)
/* 800086F4  7C 00 07 74 */	extsb r0, r0
/* 800086F8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800086FC  7C 97 00 2E */	lwzx r4, r23, r0
/* 80008700  38 75 56 B8 */	addi r3, r21, 0x56b8
/* 80008704  C0 22 80 4C */	lfs f1, lit_4423(r2)
/* 80008708  28 04 00 00 */	cmplwi r4, 0
/* 8000870C  41 82 00 0C */	beq lbl_80008718
/* 80008710  C0 04 00 D0 */	lfs f0, 0xd0(r4)
/* 80008714  48 00 00 08 */	b lbl_8000871C
lbl_80008718:
/* 80008718  C0 02 80 50 */	lfs f0, lit_4424(r2)
lbl_8000871C:
/* 8000871C  EF E1 00 24 */	fdivs f31, f1, f0
/* 80008720  48 06 B0 C5 */	bl LockonTruth__12dAttention_cFv
/* 80008724  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80008728  41 82 01 A8 */	beq lbl_800088D0
/* 8000872C  80 76 5D B4 */	lwz r3, 0x5db4(r22)
/* 80008730  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80008734  81 8C 00 F4 */	lwz r12, 0xf4(r12)
/* 80008738  7D 89 03 A6 */	mtctr r12
/* 8000873C  4E 80 04 21 */	bctrl 
/* 80008740  90 61 00 0C */	stw r3, 0xc(r1)
/* 80008744  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80008748  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8000874C  38 81 00 0C */	addi r4, r1, 0xc
/* 80008750  48 01 10 A9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80008754  28 03 00 00 */	cmplwi r3, 0
/* 80008758  41 82 01 F0 */	beq lbl_80008948
/* 8000875C  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 80008760  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80008764  C0 43 05 3C */	lfs f2, 0x53c(r3)
/* 80008768  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8000876C  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 80008770  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80008774  C0 31 00 DC */	lfs f1, 0xdc(r17)
/* 80008778  EC 02 08 28 */	fsubs f0, f2, f1
/* 8000877C  FC 00 02 10 */	fabs f0, f0
/* 80008780  FC 40 00 18 */	frsp f2, f0
/* 80008784  C0 02 80 54 */	lfs f0, lit_4425(r2)
/* 80008788  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8000878C  40 80 00 08 */	bge lbl_80008794
/* 80008790  D0 21 00 2C */	stfs f1, 0x2c(r1)
lbl_80008794:
/* 80008794  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80008798  38 91 00 D8 */	addi r4, r17, 0xd8
/* 8000879C  48 33 EC 01 */	bl PSVECSquareDistance
/* 800087A0  C0 02 80 38 */	lfs f0, lit_4062(r2)
/* 800087A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800087A8  40 81 00 58 */	ble lbl_80008800
/* 800087AC  FC 00 08 34 */	frsqrte f0, f1
/* 800087B0  C8 82 80 58 */	lfd f4, lit_4426(r2)
/* 800087B4  FC 44 00 32 */	fmul f2, f4, f0
/* 800087B8  C8 62 80 60 */	lfd f3, lit_4427(r2)
/* 800087BC  FC 00 00 32 */	fmul f0, f0, f0
/* 800087C0  FC 01 00 32 */	fmul f0, f1, f0
/* 800087C4  FC 03 00 28 */	fsub f0, f3, f0
/* 800087C8  FC 02 00 32 */	fmul f0, f2, f0
/* 800087CC  FC 44 00 32 */	fmul f2, f4, f0
/* 800087D0  FC 00 00 32 */	fmul f0, f0, f0
/* 800087D4  FC 01 00 32 */	fmul f0, f1, f0
/* 800087D8  FC 03 00 28 */	fsub f0, f3, f0
/* 800087DC  FC 02 00 32 */	fmul f0, f2, f0
/* 800087E0  FC 44 00 32 */	fmul f2, f4, f0
/* 800087E4  FC 00 00 32 */	fmul f0, f0, f0
/* 800087E8  FC 01 00 32 */	fmul f0, f1, f0
/* 800087EC  FC 03 00 28 */	fsub f0, f3, f0
/* 800087F0  FC 02 00 32 */	fmul f0, f2, f0
/* 800087F4  FC 21 00 32 */	fmul f1, f1, f0
/* 800087F8  FC 20 08 18 */	frsp f1, f1
/* 800087FC  48 00 00 88 */	b lbl_80008884
lbl_80008800:
/* 80008800  C8 02 80 68 */	lfd f0, lit_4428(r2)
/* 80008804  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80008808  40 80 00 10 */	bge lbl_80008818
/* 8000880C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80008810  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80008814  48 00 00 70 */	b lbl_80008884
lbl_80008818:
/* 80008818  D0 21 00 08 */	stfs f1, 8(r1)
/* 8000881C  80 81 00 08 */	lwz r4, 8(r1)
/* 80008820  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80008824  3C 00 7F 80 */	lis r0, 0x7f80
/* 80008828  7C 03 00 00 */	cmpw r3, r0
/* 8000882C  41 82 00 14 */	beq lbl_80008840
/* 80008830  40 80 00 40 */	bge lbl_80008870
/* 80008834  2C 03 00 00 */	cmpwi r3, 0
/* 80008838  41 82 00 20 */	beq lbl_80008858
/* 8000883C  48 00 00 34 */	b lbl_80008870
lbl_80008840:
/* 80008840  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80008844  41 82 00 0C */	beq lbl_80008850
/* 80008848  38 00 00 01 */	li r0, 1
/* 8000884C  48 00 00 28 */	b lbl_80008874
lbl_80008850:
/* 80008850  38 00 00 02 */	li r0, 2
/* 80008854  48 00 00 20 */	b lbl_80008874
lbl_80008858:
/* 80008858  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8000885C  41 82 00 0C */	beq lbl_80008868
/* 80008860  38 00 00 05 */	li r0, 5
/* 80008864  48 00 00 10 */	b lbl_80008874
lbl_80008868:
/* 80008868  38 00 00 03 */	li r0, 3
/* 8000886C  48 00 00 08 */	b lbl_80008874
lbl_80008870:
/* 80008870  38 00 00 04 */	li r0, 4
lbl_80008874:
/* 80008874  2C 00 00 01 */	cmpwi r0, 1
/* 80008878  40 82 00 0C */	bne lbl_80008884
/* 8000887C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80008880  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80008884:
/* 80008884  C0 02 80 70 */	lfs f0, lit_4429(r2)
/* 80008888  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8000888C  EC 41 00 24 */	fdivs f2, f1, f0
/* 80008890  C0 02 80 74 */	lfs f0, lit_4430(r2)
/* 80008894  EC 42 00 28 */	fsubs f2, f2, f0
/* 80008898  C0 02 80 38 */	lfs f0, lit_4062(r2)
/* 8000889C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800088A0  40 80 00 0C */	bge lbl_800088AC
/* 800088A4  FC 40 00 90 */	fmr f2, f0
/* 800088A8  48 00 00 14 */	b lbl_800088BC
lbl_800088AC:
/* 800088AC  C0 02 80 3C */	lfs f0, lit_4063(r2)
/* 800088B0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800088B4  40 81 00 08 */	ble lbl_800088BC
/* 800088B8  FC 40 00 90 */	fmr f2, f0
lbl_800088BC:
/* 800088BC  C0 22 80 78 */	lfs f1, lit_4431(r2)
/* 800088C0  C0 02 80 7C */	lfs f0, lit_4432(r2)
/* 800088C4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800088C8  EF C1 00 28 */	fsubs f30, f1, f0
/* 800088CC  48 00 00 7C */	b lbl_80008948
lbl_800088D0:
/* 800088D0  88 15 4F AD */	lbz r0, 0x4fad(r21)
/* 800088D4  28 00 00 00 */	cmplwi r0, 0
/* 800088D8  41 82 00 70 */	beq lbl_80008948
/* 800088DC  C0 02 80 80 */	lfs f0, lit_4433(r2)
/* 800088E0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800088E4  40 80 00 64 */	bge lbl_80008948
/* 800088E8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 800088EC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 800088F0  C0 23 12 6C */	lfs f1, 0x126c(r3)
/* 800088F4  C0 02 80 84 */	lfs f0, lit_4434(r2)
/* 800088F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800088FC  40 80 00 4C */	bge lbl_80008948
/* 80008900  C0 02 80 88 */	lfs f0, lit_4435(r2)
/* 80008904  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80008908  EC 41 00 24 */	fdivs f2, f1, f0
/* 8000890C  C0 02 80 74 */	lfs f0, lit_4430(r2)
/* 80008910  EC 42 00 28 */	fsubs f2, f2, f0
/* 80008914  C0 02 80 38 */	lfs f0, lit_4062(r2)
/* 80008918  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8000891C  40 80 00 0C */	bge lbl_80008928
/* 80008920  FC 40 00 90 */	fmr f2, f0
/* 80008924  48 00 00 14 */	b lbl_80008938
lbl_80008928:
/* 80008928  C0 02 80 3C */	lfs f0, lit_4063(r2)
/* 8000892C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80008930  40 81 00 08 */	ble lbl_80008938
/* 80008934  FC 40 00 90 */	fmr f2, f0
lbl_80008938:
/* 80008938  C0 22 80 78 */	lfs f1, lit_4431(r2)
/* 8000893C  C0 02 80 7C */	lfs f0, lit_4432(r2)
/* 80008940  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80008944  EF C1 00 28 */	fsubs f30, f1, f0
lbl_80008948:
/* 80008948  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8000894C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80008950  3A A3 12 64 */	addi r21, r3, 0x1264
/* 80008954  7E A3 AB 78 */	mr r3, r21
/* 80008958  FC 20 F0 90 */	fmr f1, f30
/* 8000895C  C0 42 80 8C */	lfs f2, lit_4436(r2)
/* 80008960  C0 62 80 90 */	lfs f3, lit_4437(r2)
/* 80008964  C0 82 80 94 */	lfs f4, lit_4438(r2)
/* 80008968  48 26 70 15 */	bl cLib_addCalc__FPfffff
/* 8000896C  C0 15 00 00 */	lfs f0, 0(r21)
/* 80008970  FC 00 00 1E */	fctiwz f0, f0
/* 80008974  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 80008978  80 01 00 AC */	lwz r0, 0xac(r1)
/* 8000897C  3B CD 80 18 */	la r30, l_tevColor0(r13) /* 80450598-_SDA_BASE_ */
/* 80008980  B0 1E 00 06 */	sth r0, 6(r30)
/* 80008984  7C 00 07 34 */	extsh r0, r0
/* 80008988  2C 00 FF 02 */	cmpwi r0, -254
/* 8000898C  41 81 00 0C */	bgt lbl_80008998
/* 80008990  38 00 FF 01 */	li r0, -255
/* 80008994  B0 1E 00 06 */	sth r0, 6(r30)
lbl_80008998:
/* 80008998  C0 19 00 00 */	lfs f0, 0(r25)
/* 8000899C  FC 00 00 1E */	fctiwz f0, f0
/* 800089A0  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 800089A4  80 01 00 AC */	lwz r0, 0xac(r1)
/* 800089A8  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 800089AC  7C 1D 07 34 */	extsh r29, r0
/* 800089B0  C0 19 00 04 */	lfs f0, 4(r25)
/* 800089B4  FC 00 00 1E */	fctiwz f0, f0
/* 800089B8  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 800089BC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 800089C0  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 800089C4  7C 03 07 35 */	extsh. r3, r0
/* 800089C8  7C 60 FE 70 */	srawi r0, r3, 0x1f
/* 800089CC  7C 60 00 78 */	andc r0, r3, r0
/* 800089D0  7C 1C 07 34 */	extsh r28, r0
/* 800089D4  C0 19 00 08 */	lfs f0, 8(r25)
/* 800089D8  FC 00 00 1E */	fctiwz f0, f0
/* 800089DC  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 800089E0  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 800089E4  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 800089E8  7C 1B 07 34 */	extsh r27, r0
/* 800089EC  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 800089F0  FC 00 00 1E */	fctiwz f0, f0
/* 800089F4  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 800089F8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 800089FC  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 80008A00  7C 1A 07 34 */	extsh r26, r0
/* 80008A04  83 0D 86 58 */	lwz r24, mZbufferTex__13mDoGph_gInf_c(r13)
/* 80008A08  82 ED 86 50 */	lwz r23, mFrameBufferTex__13mDoGph_gInf_c(r13)
/* 80008A0C  40 80 00 50 */	bge lbl_80008A5C
/* 80008A10  7F 5A 1A 14 */	add r26, r26, r3
/* 80008A14  7C 03 00 D0 */	neg r0, r3
/* 80008A18  7C 00 0E 70 */	srawi r0, r0, 1
/* 80008A1C  38 60 01 30 */	li r3, 0x130
/* 80008A20  54 15 04 3E */	clrlwi r21, r0, 0x10
/* 80008A24  7E A4 AB 78 */	mr r4, r21
/* 80008A28  38 A0 00 03 */	li r5, 3
/* 80008A2C  38 C0 00 00 */	li r6, 0
/* 80008A30  38 E0 00 00 */	li r7, 0
/* 80008A34  48 35 51 E9 */	bl GXGetTexBufferSize
/* 80008A38  7F 18 1A 14 */	add r24, r24, r3
/* 80008A3C  38 60 01 30 */	li r3, 0x130
/* 80008A40  7E A4 AB 78 */	mr r4, r21
/* 80008A44  80 AD 86 4C */	lwz r5, mFrameBufferTimg__13mDoGph_gInf_c(r13)
/* 80008A48  88 A5 00 00 */	lbz r5, 0(r5)
/* 80008A4C  38 C0 00 00 */	li r6, 0
/* 80008A50  38 E0 00 00 */	li r7, 0
/* 80008A54  48 35 51 C9 */	bl GXGetTexBufferSize
/* 80008A58  7E F7 1A 14 */	add r23, r23, r3
lbl_80008A5C:
/* 80008A5C  7F 60 0E 70 */	srawi r0, r27, 1
/* 80008A60  54 16 04 3E */	clrlwi r22, r0, 0x10
/* 80008A64  7F 40 07 34 */	extsh r0, r26
/* 80008A68  7C 00 0E 70 */	srawi r0, r0, 1
/* 80008A6C  54 15 04 3E */	clrlwi r21, r0, 0x10
/* 80008A70  80 6D 8F B8 */	lwz r3, sManager__8JUTVideo(r13)
/* 80008A74  80 C3 00 04 */	lwz r6, 4(r3)
/* 80008A78  38 60 00 00 */	li r3, 0
/* 80008A7C  38 80 00 00 */	li r4, 0
/* 80008A80  38 A0 00 01 */	li r5, 1
/* 80008A84  38 C6 00 32 */	addi r6, r6, 0x32
/* 80008A88  48 35 46 61 */	bl GXSetCopyFilter
/* 80008A8C  57 B1 04 3E */	clrlwi r17, r29, 0x10
/* 80008A90  7E 23 8B 78 */	mr r3, r17
/* 80008A94  57 92 04 3E */	clrlwi r18, r28, 0x10
/* 80008A98  7E 44 93 78 */	mr r4, r18
/* 80008A9C  57 73 04 3E */	clrlwi r19, r27, 0x10
/* 80008AA0  7E 65 9B 78 */	mr r5, r19
/* 80008AA4  57 54 04 3E */	clrlwi r20, r26, 0x10
/* 80008AA8  7E 86 A3 78 */	mr r6, r20
/* 80008AAC  48 35 3F D5 */	bl GXSetTexCopySrc
/* 80008AB0  7E C3 B3 78 */	mr r3, r22
/* 80008AB4  7E A4 AB 78 */	mr r4, r21
/* 80008AB8  38 A0 00 13 */	li r5, 0x13
/* 80008ABC  38 C0 00 01 */	li r6, 1
/* 80008AC0  48 35 40 71 */	bl GXSetTexCopyDst
/* 80008AC4  7F 03 C3 78 */	mr r3, r24
/* 80008AC8  38 80 00 00 */	li r4, 0
/* 80008ACC  48 35 49 A1 */	bl GXCopyTex
/* 80008AD0  7E 23 8B 78 */	mr r3, r17
/* 80008AD4  7E 44 93 78 */	mr r4, r18
/* 80008AD8  7E 65 9B 78 */	mr r5, r19
/* 80008ADC  7E 86 A3 78 */	mr r6, r20
/* 80008AE0  48 35 3F A1 */	bl GXSetTexCopySrc
/* 80008AE4  7E C3 B3 78 */	mr r3, r22
/* 80008AE8  7E A4 AB 78 */	mr r4, r21
/* 80008AEC  80 AD 86 4C */	lwz r5, mFrameBufferTimg__13mDoGph_gInf_c(r13)
/* 80008AF0  88 A5 00 00 */	lbz r5, 0(r5)
/* 80008AF4  38 C0 00 01 */	li r6, 1
/* 80008AF8  48 35 40 39 */	bl GXSetTexCopyDst
/* 80008AFC  7E E3 BB 78 */	mr r3, r23
/* 80008B00  38 80 00 00 */	li r4, 0
/* 80008B04  48 35 49 69 */	bl GXCopyTex
/* 80008B08  3C 60 80 3E */	lis r3, mZbufferTexObj__13mDoGph_gInf_c@ha /* 0x803DD408@ha */
/* 80008B0C  38 63 D4 08 */	addi r3, r3, mZbufferTexObj__13mDoGph_gInf_c@l /* 0x803DD408@l */
/* 80008B10  7F 04 C3 78 */	mr r4, r24
/* 80008B14  7E C5 B3 78 */	mr r5, r22
/* 80008B18  7E A6 AB 78 */	mr r6, r21
/* 80008B1C  38 E0 00 03 */	li r7, 3
/* 80008B20  39 00 00 00 */	li r8, 0
/* 80008B24  39 20 00 00 */	li r9, 0
/* 80008B28  39 40 00 00 */	li r10, 0
/* 80008B2C  48 35 53 15 */	bl GXInitTexObj
/* 80008B30  3C 60 80 3E */	lis r3, mZbufferTexObj__13mDoGph_gInf_c@ha /* 0x803DD408@ha */
/* 80008B34  38 63 D4 08 */	addi r3, r3, mZbufferTexObj__13mDoGph_gInf_c@l /* 0x803DD408@l */
/* 80008B38  38 80 00 00 */	li r4, 0
/* 80008B3C  38 A0 00 00 */	li r5, 0
/* 80008B40  C0 22 80 38 */	lfs f1, lit_4062(r2)
/* 80008B44  FC 40 08 90 */	fmr f2, f1
/* 80008B48  FC 60 08 90 */	fmr f3, f1
/* 80008B4C  38 C0 00 00 */	li r6, 0
/* 80008B50  38 E0 00 00 */	li r7, 0
/* 80008B54  39 00 00 00 */	li r8, 0
/* 80008B58  48 35 55 7D */	bl GXInitTexObjLOD
/* 80008B5C  3C 60 80 3E */	lis r3, mFrameBufferTexObj__13mDoGph_gInf_c@ha /* 0x803DD3E8@ha */
/* 80008B60  38 63 D3 E8 */	addi r3, r3, mFrameBufferTexObj__13mDoGph_gInf_c@l /* 0x803DD3E8@l */
/* 80008B64  7E E4 BB 78 */	mr r4, r23
/* 80008B68  7E C5 B3 78 */	mr r5, r22
/* 80008B6C  7E A6 AB 78 */	mr r6, r21
/* 80008B70  80 ED 86 4C */	lwz r7, mFrameBufferTimg__13mDoGph_gInf_c(r13)
/* 80008B74  88 E7 00 00 */	lbz r7, 0(r7)
/* 80008B78  39 00 00 00 */	li r8, 0
/* 80008B7C  39 20 00 00 */	li r9, 0
/* 80008B80  39 40 00 00 */	li r10, 0
/* 80008B84  48 35 52 BD */	bl GXInitTexObj
/* 80008B88  3C 60 80 3E */	lis r3, mFrameBufferTexObj__13mDoGph_gInf_c@ha /* 0x803DD3E8@ha */
/* 80008B8C  38 63 D3 E8 */	addi r3, r3, mFrameBufferTexObj__13mDoGph_gInf_c@l /* 0x803DD3E8@l */
/* 80008B90  38 80 00 01 */	li r4, 1
/* 80008B94  38 A0 00 01 */	li r5, 1
/* 80008B98  C0 22 80 38 */	lfs f1, lit_4062(r2)
/* 80008B9C  FC 40 08 90 */	fmr f2, f1
/* 80008BA0  FC 60 08 90 */	fmr f3, f1
/* 80008BA4  38 C0 00 00 */	li r6, 0
/* 80008BA8  38 E0 00 00 */	li r7, 0
/* 80008BAC  39 00 00 00 */	li r8, 0
/* 80008BB0  48 35 55 25 */	bl GXInitTexObjLOD
/* 80008BB4  48 35 37 C1 */	bl GXPixModeSync
/* 80008BB8  48 35 5A AD */	bl GXInvalidateTexAll
/* 80008BBC  3C 60 80 3E */	lis r3, mFrameBufferTexObj__13mDoGph_gInf_c@ha /* 0x803DD3E8@ha */
/* 80008BC0  38 63 D3 E8 */	addi r3, r3, mFrameBufferTexObj__13mDoGph_gInf_c@l /* 0x803DD3E8@l */
/* 80008BC4  38 80 00 01 */	li r4, 1
/* 80008BC8  48 35 58 4D */	bl GXLoadTexObj
/* 80008BCC  3C 60 80 3E */	lis r3, mZbufferTexObj__13mDoGph_gInf_c@ha /* 0x803DD408@ha */
/* 80008BD0  38 63 D4 08 */	addi r3, r3, mZbufferTexObj__13mDoGph_gInf_c@l /* 0x803DD408@l */
/* 80008BD4  38 80 00 00 */	li r4, 0
/* 80008BD8  48 35 58 3D */	bl GXLoadTexObj
/* 80008BDC  C0 02 80 38 */	lfs f0, lit_4062(r2)
/* 80008BE0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80008BE4  3A A3 CA 54 */	addi r21, r3, g_env_light@l /* 0x8042CA54@l */
/* 80008BE8  C0 75 12 70 */	lfs f3, 0x1270(r21)
/* 80008BEC  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 80008BF0  41 82 00 5C */	beq lbl_80008C4C
/* 80008BF4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80008BF8  4C 41 13 82 */	cror 2, 1, 2
/* 80008BFC  40 82 00 28 */	bne lbl_80008C24
/* 80008C00  C0 22 80 98 */	lfs f1, lit_4439(r2)
/* 80008C04  C0 02 80 9C */	lfs f0, lit_4440(r2)
/* 80008C08  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80008C0C  EC 01 00 2A */	fadds f0, f1, f0
/* 80008C10  FC 00 00 1E */	fctiwz f0, f0
/* 80008C14  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80008C18  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80008C1C  B0 1E 00 06 */	sth r0, 6(r30)
/* 80008C20  48 00 00 2C */	b lbl_80008C4C
lbl_80008C24:
/* 80008C24  C0 42 80 98 */	lfs f2, lit_4439(r2)
/* 80008C28  C0 22 80 9C */	lfs f1, lit_4440(r2)
/* 80008C2C  C0 02 80 3C */	lfs f0, lit_4063(r2)
/* 80008C30  EC 00 18 2A */	fadds f0, f0, f3
/* 80008C34  EC 01 00 32 */	fmuls f0, f1, f0
/* 80008C38  EC 02 00 2A */	fadds f0, f2, f0
/* 80008C3C  FC 00 00 1E */	fctiwz f0, f0
/* 80008C40  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80008C44  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80008C48  B0 1E 00 06 */	sth r0, 6(r30)
lbl_80008C4C:
/* 80008C4C  80 6D 80 18 */	lwz r3, l_tevColor0(r13)
/* 80008C50  80 0D 80 1C */	lwz r0, l_tevColor0+0x4(r13)
/* 80008C54  90 61 00 20 */	stw r3, 0x20(r1)
/* 80008C58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80008C5C  38 60 00 01 */	li r3, 1
/* 80008C60  38 81 00 20 */	addi r4, r1, 0x20
/* 80008C64  48 35 67 79 */	bl GXSetTevColorS10
/* 80008C68  38 60 00 03 */	li r3, 3
/* 80008C6C  38 80 00 03 */	li r4, 3
/* 80008C70  38 A0 00 01 */	li r5, 1
/* 80008C74  38 C0 00 02 */	li r6, 2
/* 80008C78  38 E0 00 00 */	li r7, 0
/* 80008C7C  48 35 69 29 */	bl GXSetTevSwapModeTable
/* 80008C80  38 60 00 00 */	li r3, 0
/* 80008C84  38 80 00 00 */	li r4, 0
/* 80008C88  38 A0 00 03 */	li r5, 3
/* 80008C8C  48 35 68 D1 */	bl GXSetTevSwapMode
/* 80008C90  38 60 00 00 */	li r3, 0
/* 80008C94  38 80 00 00 */	li r4, 0
/* 80008C98  48 35 68 69 */	bl GXSetTevKAlphaSel
/* 80008C9C  38 60 00 00 */	li r3, 0
/* 80008CA0  38 80 00 00 */	li r4, 0
/* 80008CA4  38 A0 00 00 */	li r5, 0
/* 80008CA8  38 C0 00 FF */	li r6, 0xff
/* 80008CAC  48 35 6A 49 */	bl GXSetTevOrder
/* 80008CB0  38 60 00 00 */	li r3, 0
/* 80008CB4  38 80 00 0F */	li r4, 0xf
/* 80008CB8  38 A0 00 0F */	li r5, 0xf
/* 80008CBC  38 C0 00 0F */	li r6, 0xf
/* 80008CC0  38 E0 00 0F */	li r7, 0xf
/* 80008CC4  48 35 65 61 */	bl GXSetTevColorIn
/* 80008CC8  38 60 00 00 */	li r3, 0
/* 80008CCC  38 80 00 00 */	li r4, 0
/* 80008CD0  38 A0 00 00 */	li r5, 0
/* 80008CD4  38 C0 00 00 */	li r6, 0
/* 80008CD8  38 E0 00 01 */	li r7, 1
/* 80008CDC  39 00 00 00 */	li r8, 0
/* 80008CE0  48 35 65 CD */	bl GXSetTevColorOp
/* 80008CE4  38 60 00 00 */	li r3, 0
/* 80008CE8  38 80 00 06 */	li r4, 6
/* 80008CEC  38 A0 00 04 */	li r5, 4
/* 80008CF0  38 C0 00 06 */	li r6, 6
/* 80008CF4  38 E0 00 07 */	li r7, 7
/* 80008CF8  48 35 65 71 */	bl GXSetTevAlphaIn
/* 80008CFC  38 60 00 00 */	li r3, 0
/* 80008D00  38 80 00 0F */	li r4, 0xf
/* 80008D04  38 A0 00 00 */	li r5, 0
/* 80008D08  38 C0 00 00 */	li r6, 0
/* 80008D0C  38 E0 00 01 */	li r7, 1
/* 80008D10  39 00 00 00 */	li r8, 0
/* 80008D14  48 35 66 01 */	bl GXSetTevAlphaOp
/* 80008D18  38 60 00 01 */	li r3, 1
/* 80008D1C  38 80 00 00 */	li r4, 0
/* 80008D20  38 A0 00 00 */	li r5, 0
/* 80008D24  38 C0 00 FF */	li r6, 0xff
/* 80008D28  48 35 69 CD */	bl GXSetTevOrder
/* 80008D2C  38 60 00 01 */	li r3, 1
/* 80008D30  38 80 00 0F */	li r4, 0xf
/* 80008D34  38 A0 00 0F */	li r5, 0xf
/* 80008D38  38 C0 00 0F */	li r6, 0xf
/* 80008D3C  38 E0 00 0F */	li r7, 0xf
/* 80008D40  48 35 64 E5 */	bl GXSetTevColorIn
/* 80008D44  38 60 00 01 */	li r3, 1
/* 80008D48  38 80 00 00 */	li r4, 0
/* 80008D4C  38 A0 00 00 */	li r5, 0
/* 80008D50  38 C0 00 00 */	li r6, 0
/* 80008D54  38 E0 00 01 */	li r7, 1
/* 80008D58  39 00 00 00 */	li r8, 0
/* 80008D5C  48 35 65 51 */	bl GXSetTevColorOp
/* 80008D60  38 60 00 01 */	li r3, 1
/* 80008D64  38 80 00 07 */	li r4, 7
/* 80008D68  38 A0 00 00 */	li r5, 0
/* 80008D6C  38 C0 00 04 */	li r6, 4
/* 80008D70  38 E0 00 01 */	li r7, 1
/* 80008D74  48 35 64 F5 */	bl GXSetTevAlphaIn
/* 80008D78  38 60 00 01 */	li r3, 1
/* 80008D7C  38 80 00 00 */	li r4, 0
/* 80008D80  38 A0 00 00 */	li r5, 0
/* 80008D84  38 C0 00 02 */	li r6, 2
/* 80008D88  38 E0 00 01 */	li r7, 1
/* 80008D8C  39 00 00 00 */	li r8, 0
/* 80008D90  48 35 65 85 */	bl GXSetTevAlphaOp
/* 80008D94  38 60 00 02 */	li r3, 2
/* 80008D98  38 80 00 01 */	li r4, 1
/* 80008D9C  38 A0 00 01 */	li r5, 1
/* 80008DA0  38 C0 00 FF */	li r6, 0xff
/* 80008DA4  48 35 69 51 */	bl GXSetTevOrder
/* 80008DA8  38 60 00 02 */	li r3, 2
/* 80008DAC  38 80 00 0F */	li r4, 0xf
/* 80008DB0  38 A0 00 0F */	li r5, 0xf
/* 80008DB4  38 C0 00 0F */	li r6, 0xf
/* 80008DB8  38 E0 00 08 */	li r7, 8
/* 80008DBC  48 35 64 69 */	bl GXSetTevColorIn
/* 80008DC0  38 60 00 02 */	li r3, 2
/* 80008DC4  38 80 00 00 */	li r4, 0
/* 80008DC8  38 A0 00 00 */	li r5, 0
/* 80008DCC  38 C0 00 00 */	li r6, 0
/* 80008DD0  38 E0 00 01 */	li r7, 1
/* 80008DD4  39 00 00 00 */	li r8, 0
/* 80008DD8  48 35 64 D5 */	bl GXSetTevColorOp
/* 80008DDC  38 60 00 02 */	li r3, 2
/* 80008DE0  38 80 00 07 */	li r4, 7
/* 80008DE4  38 A0 00 07 */	li r5, 7
/* 80008DE8  38 C0 00 07 */	li r6, 7
/* 80008DEC  38 E0 00 00 */	li r7, 0
/* 80008DF0  48 35 64 79 */	bl GXSetTevAlphaIn
/* 80008DF4  38 60 00 02 */	li r3, 2
/* 80008DF8  38 80 00 00 */	li r4, 0
/* 80008DFC  38 A0 00 00 */	li r5, 0
/* 80008E00  38 C0 00 00 */	li r6, 0
/* 80008E04  38 E0 00 01 */	li r7, 1
/* 80008E08  39 00 00 00 */	li r8, 0
/* 80008E0C  48 35 65 09 */	bl GXSetTevAlphaOp
/* 80008E10  38 60 00 03 */	li r3, 3
/* 80008E14  38 80 00 02 */	li r4, 2
/* 80008E18  38 A0 00 01 */	li r5, 1
/* 80008E1C  38 C0 00 FF */	li r6, 0xff
/* 80008E20  48 35 68 D5 */	bl GXSetTevOrder
/* 80008E24  38 60 00 03 */	li r3, 3
/* 80008E28  38 80 00 00 */	li r4, 0
/* 80008E2C  38 A0 00 08 */	li r5, 8
/* 80008E30  38 C0 00 0D */	li r6, 0xd
/* 80008E34  38 E0 00 0F */	li r7, 0xf
/* 80008E38  48 35 63 ED */	bl GXSetTevColorIn
/* 80008E3C  38 60 00 03 */	li r3, 3
/* 80008E40  38 80 00 00 */	li r4, 0
/* 80008E44  38 A0 00 00 */	li r5, 0
/* 80008E48  38 C0 00 00 */	li r6, 0
/* 80008E4C  38 E0 00 01 */	li r7, 1
/* 80008E50  39 00 00 00 */	li r8, 0
/* 80008E54  48 35 64 59 */	bl GXSetTevColorOp
/* 80008E58  38 60 00 03 */	li r3, 3
/* 80008E5C  38 80 00 07 */	li r4, 7
/* 80008E60  38 A0 00 07 */	li r5, 7
/* 80008E64  38 C0 00 07 */	li r6, 7
/* 80008E68  38 E0 00 00 */	li r7, 0
/* 80008E6C  48 35 63 FD */	bl GXSetTevAlphaIn
/* 80008E70  38 60 00 03 */	li r3, 3
/* 80008E74  38 80 00 00 */	li r4, 0
/* 80008E78  38 A0 00 00 */	li r5, 0
/* 80008E7C  38 C0 00 00 */	li r6, 0
/* 80008E80  38 E0 00 01 */	li r7, 1
/* 80008E84  39 00 00 00 */	li r8, 0
/* 80008E88  48 35 64 8D */	bl GXSetTevAlphaOp
/* 80008E8C  38 60 00 01 */	li r3, 1
/* 80008E90  48 35 6E 41 */	bl GXSetZCompLoc
/* 80008E94  38 60 00 00 */	li r3, 0
/* 80008E98  38 80 00 07 */	li r4, 7
/* 80008E9C  38 A0 00 00 */	li r5, 0
/* 80008EA0  48 35 6D FD */	bl GXSetZMode
/* 80008EA4  C0 35 12 70 */	lfs f1, 0x1270(r21)
/* 80008EA8  C0 02 80 38 */	lfs f0, lit_4062(r2)
/* 80008EAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80008EB0  4C 41 13 82 */	cror 2, 1, 2
/* 80008EB4  40 82 00 34 */	bne lbl_80008EE8
/* 80008EB8  38 60 00 01 */	li r3, 1
/* 80008EBC  38 80 00 04 */	li r4, 4
/* 80008EC0  38 A0 00 05 */	li r5, 5
/* 80008EC4  38 C0 00 00 */	li r6, 0
/* 80008EC8  48 35 6D 29 */	bl GXSetBlendMode
/* 80008ECC  38 60 00 04 */	li r3, 4
/* 80008ED0  38 80 00 00 */	li r4, 0
/* 80008ED4  38 A0 00 01 */	li r5, 1
/* 80008ED8  38 C0 00 04 */	li r6, 4
/* 80008EDC  38 E0 00 00 */	li r7, 0
/* 80008EE0  48 35 67 45 */	bl GXSetAlphaCompare
/* 80008EE4  48 00 00 30 */	b lbl_80008F14
lbl_80008EE8:
/* 80008EE8  38 60 00 01 */	li r3, 1
/* 80008EEC  38 80 00 05 */	li r4, 5
/* 80008EF0  38 A0 00 04 */	li r5, 4
/* 80008EF4  38 C0 00 00 */	li r6, 0
/* 80008EF8  48 35 6C F9 */	bl GXSetBlendMode
/* 80008EFC  38 60 00 01 */	li r3, 1
/* 80008F00  38 80 00 FF */	li r4, 0xff
/* 80008F04  38 A0 00 01 */	li r5, 1
/* 80008F08  38 C0 00 01 */	li r6, 1
/* 80008F0C  38 E0 00 FF */	li r7, 0xff
/* 80008F10  48 35 67 15 */	bl GXSetAlphaCompare
lbl_80008F14:
/* 80008F14  80 0D 80 80 */	lwz r0, g_clearColor(r13)
/* 80008F18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80008F1C  38 60 00 00 */	li r3, 0
/* 80008F20  C0 22 80 38 */	lfs f1, lit_4062(r2)
/* 80008F24  FC 40 08 90 */	fmr f2, f1
/* 80008F28  FC 60 08 90 */	fmr f3, f1
/* 80008F2C  FC 80 08 90 */	fmr f4, f1
/* 80008F30  38 81 00 10 */	addi r4, r1, 0x10
/* 80008F34  48 35 69 85 */	bl GXSetFog
/* 80008F38  38 60 00 00 */	li r3, 0
/* 80008F3C  48 35 3A 49 */	bl GXSetCullMode
/* 80008F40  38 60 00 01 */	li r3, 1
/* 80008F44  48 35 6E 95 */	bl GXSetDither
/* 80008F48  38 60 00 00 */	li r3, 0
/* 80008F4C  48 35 61 89 */	bl GXSetNumIndStages
/* 80008F50  C0 79 00 00 */	lfs f3, 0(r25)
/* 80008F54  C0 39 00 04 */	lfs f1, 4(r25)
/* 80008F58  38 61 00 68 */	addi r3, r1, 0x68
/* 80008F5C  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 80008F60  EC 41 00 2A */	fadds f2, f1, f0
/* 80008F64  C0 19 00 08 */	lfs f0, 8(r25)
/* 80008F68  EC 83 00 2A */	fadds f4, f3, f0
/* 80008F6C  C0 A2 80 38 */	lfs f5, lit_4062(r2)
/* 80008F70  C0 C2 80 40 */	lfs f6, lit_4105(r2)
/* 80008F74  48 33 E0 85 */	bl C_MTXOrtho
/* 80008F78  3C 60 80 3A */	lis r3, g_mDoMtx_identity@ha /* 0x803A2FD8@ha */
/* 80008F7C  38 63 2F D8 */	addi r3, r3, g_mDoMtx_identity@l /* 0x803A2FD8@l */
/* 80008F80  38 80 00 00 */	li r4, 0
/* 80008F84  48 35 72 C9 */	bl GXLoadPosMtxImm
/* 80008F88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80008F8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80008F90  C0 22 80 A0 */	lfs f1, lit_4441(r2)
/* 80008F94  FC 40 08 90 */	fmr f2, f1
/* 80008F98  C0 62 80 38 */	lfs f3, lit_4062(r2)
/* 80008F9C  48 33 D9 4D */	bl PSMTXTrans
/* 80008FA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80008FA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80008FA8  38 80 00 1E */	li r4, 0x1e
/* 80008FAC  38 A0 00 01 */	li r5, 1
/* 80008FB0  48 35 73 71 */	bl GXLoadTexMtxImm
/* 80008FB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80008FB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80008FBC  C0 22 80 A4 */	lfs f1, lit_4442(r2)
/* 80008FC0  FC 40 08 90 */	fmr f2, f1
/* 80008FC4  C0 62 80 38 */	lfs f3, lit_4062(r2)
/* 80008FC8  48 33 D9 21 */	bl PSMTXTrans
/* 80008FCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80008FD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80008FD4  38 80 00 21 */	li r4, 0x21
/* 80008FD8  38 A0 00 01 */	li r5, 1
/* 80008FDC  48 35 73 45 */	bl GXLoadTexMtxImm
/* 80008FE0  48 35 25 AD */	bl GXClearVtxDesc
/* 80008FE4  38 60 00 09 */	li r3, 9
/* 80008FE8  38 80 00 01 */	li r4, 1
/* 80008FEC  48 35 1E CD */	bl GXSetVtxDesc
/* 80008FF0  38 60 00 0D */	li r3, 0xd
/* 80008FF4  38 80 00 01 */	li r4, 1
/* 80008FF8  48 35 1E C1 */	bl GXSetVtxDesc
/* 80008FFC  38 60 00 00 */	li r3, 0
/* 80009000  38 80 00 09 */	li r4, 9
/* 80009004  38 A0 00 01 */	li r5, 1
/* 80009008  38 C0 00 03 */	li r6, 3
/* 8000900C  38 E0 00 00 */	li r7, 0
/* 80009010  48 35 25 B5 */	bl GXSetVtxAttrFmt
/* 80009014  38 60 00 00 */	li r3, 0
/* 80009018  38 80 00 0D */	li r4, 0xd
/* 8000901C  38 A0 00 01 */	li r5, 1
/* 80009020  38 C0 00 01 */	li r6, 1
/* 80009024  38 E0 00 00 */	li r7, 0
/* 80009028  48 35 25 9D */	bl GXSetVtxAttrFmt
/* 8000902C  38 60 00 00 */	li r3, 0
/* 80009030  38 80 00 01 */	li r4, 1
/* 80009034  38 A0 00 04 */	li r5, 4
/* 80009038  38 C0 00 3C */	li r6, 0x3c
/* 8000903C  38 E0 00 00 */	li r7, 0
/* 80009040  39 00 00 7D */	li r8, 0x7d
/* 80009044  48 35 2B 39 */	bl GXSetTexCoordGen2
/* 80009048  38 60 00 01 */	li r3, 1
/* 8000904C  38 80 00 01 */	li r4, 1
/* 80009050  38 A0 00 04 */	li r5, 4
/* 80009054  38 C0 00 1E */	li r6, 0x1e
/* 80009058  38 E0 00 00 */	li r7, 0
/* 8000905C  39 00 00 7D */	li r8, 0x7d
/* 80009060  48 35 2B 1D */	bl GXSetTexCoordGen2
/* 80009064  38 60 00 02 */	li r3, 2
/* 80009068  38 80 00 01 */	li r4, 1
/* 8000906C  38 A0 00 04 */	li r5, 4
/* 80009070  38 C0 00 21 */	li r6, 0x21
/* 80009074  38 E0 00 00 */	li r7, 0
/* 80009078  39 00 00 7D */	li r8, 0x7d
/* 8000907C  48 35 2B 01 */	bl GXSetTexCoordGen2
/* 80009080  38 60 00 00 */	li r3, 0
/* 80009084  48 35 4A AD */	bl GXSetNumChans
/* 80009088  38 60 00 03 */	li r3, 3
/* 8000908C  48 35 2D 71 */	bl GXSetNumTexGens
/* 80009090  38 60 00 04 */	li r3, 4
/* 80009094  48 35 67 FD */	bl GXSetNumTevStages
/* 80009098  38 61 00 68 */	addi r3, r1, 0x68
/* 8000909C  38 80 00 01 */	li r4, 1
/* 800090A0  48 35 70 35 */	bl GXSetProjection
/* 800090A4  38 60 00 00 */	li r3, 0
/* 800090A8  48 35 72 45 */	bl GXSetCurrentMtx
/* 800090AC  A8 1E 00 06 */	lha r0, 6(r30)
/* 800090B0  2C 00 FF 01 */	cmpwi r0, -255
/* 800090B4  40 81 00 74 */	ble lbl_80009128
/* 800090B8  38 60 00 80 */	li r3, 0x80
/* 800090BC  38 80 00 00 */	li r4, 0
/* 800090C0  38 A0 00 04 */	li r5, 4
/* 800090C4  48 35 36 A1 */	bl GXBegin
/* 800090C8  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 800090CC  B3 A5 80 00 */	sth r29, 0x8000(r5)  /* 0xCC008000@l */
/* 800090D0  B3 85 80 00 */	sth r28, -0x8000(r5)
/* 800090D4  38 80 FF FB */	li r4, -5
/* 800090D8  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 800090DC  38 60 00 00 */	li r3, 0
/* 800090E0  98 65 80 00 */	stb r3, -0x8000(r5)
/* 800090E4  98 65 80 00 */	stb r3, -0x8000(r5)
/* 800090E8  B3 65 80 00 */	sth r27, -0x8000(r5)
/* 800090EC  B3 85 80 00 */	sth r28, -0x8000(r5)
/* 800090F0  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 800090F4  38 00 00 01 */	li r0, 1
/* 800090F8  98 05 80 00 */	stb r0, -0x8000(r5)
/* 800090FC  98 65 80 00 */	stb r3, -0x8000(r5)
/* 80009100  B3 65 80 00 */	sth r27, -0x8000(r5)
/* 80009104  B3 45 80 00 */	sth r26, -0x8000(r5)
/* 80009108  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 8000910C  98 05 80 00 */	stb r0, -0x8000(r5)
/* 80009110  98 05 80 00 */	stb r0, -0x8000(r5)
/* 80009114  B3 A5 80 00 */	sth r29, -0x8000(r5)
/* 80009118  B3 45 80 00 */	sth r26, -0x8000(r5)
/* 8000911C  B0 85 80 00 */	sth r4, -0x8000(r5)
/* 80009120  98 65 80 00 */	stb r3, -0x8000(r5)
/* 80009124  98 05 80 00 */	stb r0, -0x8000(r5)
lbl_80009128:
/* 80009128  38 60 00 03 */	li r3, 3
/* 8000912C  38 80 00 02 */	li r4, 2
/* 80009130  38 A0 00 02 */	li r5, 2
/* 80009134  38 C0 00 02 */	li r6, 2
/* 80009138  38 E0 00 03 */	li r7, 3
/* 8000913C  48 35 64 69 */	bl GXSetTevSwapModeTable
/* 80009140  38 60 00 00 */	li r3, 0
/* 80009144  38 80 00 00 */	li r4, 0
/* 80009148  38 A0 00 00 */	li r5, 0
/* 8000914C  48 35 64 11 */	bl GXSetTevSwapMode
/* 80009150  38 7F 01 00 */	addi r3, r31, 0x100
/* 80009154  38 80 00 00 */	li r4, 0
/* 80009158  48 35 6F 7D */	bl GXSetProjection
lbl_8000915C:
/* 8000915C  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 80009160  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 80009164  E3 C1 01 18 */	psq_l f30, 280(r1), 0, 0 /* qr0 */
/* 80009168  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 8000916C  39 61 01 10 */	addi r11, r1, 0x110
/* 80009170  48 35 90 89 */	bl _restgpr_17
/* 80009174  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80009178  7C 08 03 A6 */	mtlr r0
/* 8000917C  38 21 01 30 */	addi r1, r1, 0x130
/* 80009180  4E 80 00 20 */	blr 
