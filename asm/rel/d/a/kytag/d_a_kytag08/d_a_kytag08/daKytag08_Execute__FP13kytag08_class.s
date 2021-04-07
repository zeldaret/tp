lbl_8085A580:
/* 8085A580  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8085A584  7C 08 02 A6 */	mflr r0
/* 8085A588  90 01 00 74 */	stw r0, 0x74(r1)
/* 8085A58C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8085A590  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8085A594  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8085A598  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8085A59C  39 61 00 50 */	addi r11, r1, 0x50
/* 8085A5A0  4B B0 7C 39 */	bl _savegpr_28
/* 8085A5A4  7C 7C 1B 78 */	mr r28, r3
/* 8085A5A8  3C 60 80 86 */	lis r3, lit_4012@ha /* 0x8085B28C@ha */
/* 8085A5AC  3B C3 B2 8C */	addi r30, r3, lit_4012@l /* 0x8085B28C@l */
/* 8085A5B0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8085A5B4  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 8085A5B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085A5BC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085A5C0  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 8085A5C4  38 00 00 01 */	li r0, 1
/* 8085A5C8  98 1C 05 D8 */	stb r0, 0x5d8(r28)
/* 8085A5CC  88 1C 05 D8 */	lbz r0, 0x5d8(r28)
/* 8085A5D0  28 00 00 00 */	cmplwi r0, 0
/* 8085A5D4  40 82 00 20 */	bne lbl_8085A5F4
/* 8085A5D8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8085A5DC  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8085A5E0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8085A5E4  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 8085A5E8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8085A5EC  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 8085A5F0  48 00 00 28 */	b lbl_8085A618
lbl_8085A5F4:
/* 8085A5F4  88 04 0C 3E */	lbz r0, 0xc3e(r4)
/* 8085A5F8  28 00 00 01 */	cmplwi r0, 1
/* 8085A5FC  40 82 00 1C */	bne lbl_8085A618
/* 8085A600  C0 04 0C 18 */	lfs f0, 0xc18(r4)
/* 8085A604  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8085A608  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8085A60C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 8085A610  C0 04 0C 20 */	lfs f0, 0xc20(r4)
/* 8085A614  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_8085A618:
/* 8085A618  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 8085A61C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8085A620  4B AE CD 7D */	bl PSVECSquareDistance
/* 8085A624  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8085A628  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085A62C  40 81 00 58 */	ble lbl_8085A684
/* 8085A630  FC 00 08 34 */	frsqrte f0, f1
/* 8085A634  C8 9E 00 08 */	lfd f4, 8(r30)
/* 8085A638  FC 44 00 32 */	fmul f2, f4, f0
/* 8085A63C  C8 7E 00 10 */	lfd f3, 0x10(r30)
/* 8085A640  FC 00 00 32 */	fmul f0, f0, f0
/* 8085A644  FC 01 00 32 */	fmul f0, f1, f0
/* 8085A648  FC 03 00 28 */	fsub f0, f3, f0
/* 8085A64C  FC 02 00 32 */	fmul f0, f2, f0
/* 8085A650  FC 44 00 32 */	fmul f2, f4, f0
/* 8085A654  FC 00 00 32 */	fmul f0, f0, f0
/* 8085A658  FC 01 00 32 */	fmul f0, f1, f0
/* 8085A65C  FC 03 00 28 */	fsub f0, f3, f0
/* 8085A660  FC 02 00 32 */	fmul f0, f2, f0
/* 8085A664  FC 44 00 32 */	fmul f2, f4, f0
/* 8085A668  FC 00 00 32 */	fmul f0, f0, f0
/* 8085A66C  FC 01 00 32 */	fmul f0, f1, f0
/* 8085A670  FC 03 00 28 */	fsub f0, f3, f0
/* 8085A674  FC 02 00 32 */	fmul f0, f2, f0
/* 8085A678  FC 21 00 32 */	fmul f1, f1, f0
/* 8085A67C  FC 20 08 18 */	frsp f1, f1
/* 8085A680  48 00 00 88 */	b lbl_8085A708
lbl_8085A684:
/* 8085A684  C8 1E 00 18 */	lfd f0, 0x18(r30)
/* 8085A688  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085A68C  40 80 00 10 */	bge lbl_8085A69C
/* 8085A690  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085A694  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8085A698  48 00 00 70 */	b lbl_8085A708
lbl_8085A69C:
/* 8085A69C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8085A6A0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8085A6A4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8085A6A8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8085A6AC  7C 03 00 00 */	cmpw r3, r0
/* 8085A6B0  41 82 00 14 */	beq lbl_8085A6C4
/* 8085A6B4  40 80 00 40 */	bge lbl_8085A6F4
/* 8085A6B8  2C 03 00 00 */	cmpwi r3, 0
/* 8085A6BC  41 82 00 20 */	beq lbl_8085A6DC
/* 8085A6C0  48 00 00 34 */	b lbl_8085A6F4
lbl_8085A6C4:
/* 8085A6C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085A6C8  41 82 00 0C */	beq lbl_8085A6D4
/* 8085A6CC  38 00 00 01 */	li r0, 1
/* 8085A6D0  48 00 00 28 */	b lbl_8085A6F8
lbl_8085A6D4:
/* 8085A6D4  38 00 00 02 */	li r0, 2
/* 8085A6D8  48 00 00 20 */	b lbl_8085A6F8
lbl_8085A6DC:
/* 8085A6DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085A6E0  41 82 00 0C */	beq lbl_8085A6EC
/* 8085A6E4  38 00 00 05 */	li r0, 5
/* 8085A6E8  48 00 00 10 */	b lbl_8085A6F8
lbl_8085A6EC:
/* 8085A6EC  38 00 00 03 */	li r0, 3
/* 8085A6F0  48 00 00 08 */	b lbl_8085A6F8
lbl_8085A6F4:
/* 8085A6F4  38 00 00 04 */	li r0, 4
lbl_8085A6F8:
/* 8085A6F8  2C 00 00 01 */	cmpwi r0, 1
/* 8085A6FC  40 82 00 0C */	bne lbl_8085A708
/* 8085A700  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085A704  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8085A708:
/* 8085A708  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8085A70C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085A710  40 80 00 CC */	bge lbl_8085A7DC
/* 8085A714  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085A718  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085A71C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8085A720  28 00 00 00 */	cmplwi r0, 0
/* 8085A724  40 82 00 B8 */	bne lbl_8085A7DC
/* 8085A728  80 1C 05 D4 */	lwz r0, 0x5d4(r28)
/* 8085A72C  2C 00 00 64 */	cmpwi r0, 0x64
/* 8085A730  40 81 00 58 */	ble lbl_8085A788
/* 8085A734  88 1C 05 D8 */	lbz r0, 0x5d8(r28)
/* 8085A738  28 00 00 00 */	cmplwi r0, 0
/* 8085A73C  41 82 00 10 */	beq lbl_8085A74C
/* 8085A740  C3 DE 00 24 */	lfs f30, 0x24(r30)
/* 8085A744  C3 FE 00 28 */	lfs f31, 0x28(r30)
/* 8085A748  48 00 00 0C */	b lbl_8085A754
lbl_8085A74C:
/* 8085A74C  C3 DE 00 2C */	lfs f30, 0x2c(r30)
/* 8085A750  C3 FE 00 30 */	lfs f31, 0x30(r30)
lbl_8085A754:
/* 8085A754  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 8085A758  C0 3C 05 C4 */	lfs f1, 0x5c4(r28)
/* 8085A75C  FC 40 F8 90 */	fmr f2, f31
/* 8085A760  FC 60 F0 90 */	fmr f3, f30
/* 8085A764  C0 9E 00 34 */	lfs f4, 0x34(r30)
/* 8085A768  4B A1 52 15 */	bl cLib_addCalc__FPfffff
/* 8085A76C  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 8085A770  C0 3C 05 CC */	lfs f1, 0x5cc(r28)
/* 8085A774  FC 40 F8 90 */	fmr f2, f31
/* 8085A778  FC 60 F0 90 */	fmr f3, f30
/* 8085A77C  C0 9E 00 34 */	lfs f4, 0x34(r30)
/* 8085A780  4B A1 51 FD */	bl cLib_addCalc__FPfffff
/* 8085A784  48 00 00 68 */	b lbl_8085A7EC
lbl_8085A788:
/* 8085A788  88 1C 05 D8 */	lbz r0, 0x5d8(r28)
/* 8085A78C  28 00 00 00 */	cmplwi r0, 0
/* 8085A790  41 82 00 10 */	beq lbl_8085A7A0
/* 8085A794  C3 DE 00 38 */	lfs f30, 0x38(r30)
/* 8085A798  C3 FE 00 3C */	lfs f31, 0x3c(r30)
/* 8085A79C  48 00 00 0C */	b lbl_8085A7A8
lbl_8085A7A0:
/* 8085A7A0  C3 DE 00 40 */	lfs f30, 0x40(r30)
/* 8085A7A4  C3 FE 00 44 */	lfs f31, 0x44(r30)
lbl_8085A7A8:
/* 8085A7A8  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 8085A7AC  C0 3C 05 C4 */	lfs f1, 0x5c4(r28)
/* 8085A7B0  FC 40 F8 90 */	fmr f2, f31
/* 8085A7B4  FC 60 F0 90 */	fmr f3, f30
/* 8085A7B8  C0 9E 00 28 */	lfs f4, 0x28(r30)
/* 8085A7BC  4B A1 51 C1 */	bl cLib_addCalc__FPfffff
/* 8085A7C0  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 8085A7C4  C0 3C 05 CC */	lfs f1, 0x5cc(r28)
/* 8085A7C8  FC 40 F8 90 */	fmr f2, f31
/* 8085A7CC  FC 60 F0 90 */	fmr f3, f30
/* 8085A7D0  C0 9E 00 28 */	lfs f4, 0x28(r30)
/* 8085A7D4  4B A1 51 A9 */	bl cLib_addCalc__FPfffff
/* 8085A7D8  48 00 00 14 */	b lbl_8085A7EC
lbl_8085A7DC:
/* 8085A7DC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8085A7E0  D0 1C 05 B8 */	stfs f0, 0x5b8(r28)
/* 8085A7E4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8085A7E8  D0 1C 05 C0 */	stfs f0, 0x5c0(r28)
lbl_8085A7EC:
/* 8085A7EC  38 60 00 02 */	li r3, 2
/* 8085A7F0  4B 95 25 1D */	bl dKy_shadow_mode_check__FUc
/* 8085A7F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8085A7F8  40 82 00 34 */	bne lbl_8085A82C
/* 8085A7FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085A800  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085A804  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8085A808  28 00 00 00 */	cmplwi r0, 0
/* 8085A80C  40 82 00 74 */	bne lbl_8085A880
/* 8085A810  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 8085A814  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8085A818  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 8085A81C  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 8085A820  C0 9E 00 4C */	lfs f4, 0x4c(r30)
/* 8085A824  4B A1 51 59 */	bl cLib_addCalc__FPfffff
/* 8085A828  48 00 00 58 */	b lbl_8085A880
lbl_8085A82C:
/* 8085A82C  80 1C 05 D4 */	lwz r0, 0x5d4(r28)
/* 8085A830  2C 00 00 00 */	cmpwi r0, 0
/* 8085A834  41 82 00 20 */	beq lbl_8085A854
/* 8085A838  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 8085A83C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8085A840  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 8085A844  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 8085A848  C0 9E 00 4C */	lfs f4, 0x4c(r30)
/* 8085A84C  4B A1 51 31 */	bl cLib_addCalc__FPfffff
/* 8085A850  48 00 00 30 */	b lbl_8085A880
lbl_8085A854:
/* 8085A854  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085A858  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085A85C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8085A860  28 00 00 00 */	cmplwi r0, 0
/* 8085A864  40 82 00 1C */	bne lbl_8085A880
/* 8085A868  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 8085A86C  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8085A870  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 8085A874  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 8085A878  C0 9E 00 4C */	lfs f4, 0x4c(r30)
/* 8085A87C  4B A1 51 01 */	bl cLib_addCalc__FPfffff
lbl_8085A880:
/* 8085A880  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 8085A884  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 8085A888  C0 3C 05 D0 */	lfs f1, 0x5d0(r28)
/* 8085A88C  4B A6 EB 15 */	bl setFogWipeWidth__10Z2EnvSeMgrFf
/* 8085A890  88 1C 05 D8 */	lbz r0, 0x5d8(r28)
/* 8085A894  28 00 00 00 */	cmplwi r0, 0
/* 8085A898  41 82 01 18 */	beq lbl_8085A9B0
/* 8085A89C  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 8085A8A0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8085A8A4  4B AE CA F9 */	bl PSVECSquareDistance
/* 8085A8A8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8085A8AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085A8B0  40 81 00 58 */	ble lbl_8085A908
/* 8085A8B4  FC 00 08 34 */	frsqrte f0, f1
/* 8085A8B8  C8 9E 00 08 */	lfd f4, 8(r30)
/* 8085A8BC  FC 44 00 32 */	fmul f2, f4, f0
/* 8085A8C0  C8 7E 00 10 */	lfd f3, 0x10(r30)
/* 8085A8C4  FC 00 00 32 */	fmul f0, f0, f0
/* 8085A8C8  FC 01 00 32 */	fmul f0, f1, f0
/* 8085A8CC  FC 03 00 28 */	fsub f0, f3, f0
/* 8085A8D0  FC 02 00 32 */	fmul f0, f2, f0
/* 8085A8D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8085A8D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8085A8DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8085A8E0  FC 03 00 28 */	fsub f0, f3, f0
/* 8085A8E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8085A8E8  FC 44 00 32 */	fmul f2, f4, f0
/* 8085A8EC  FC 00 00 32 */	fmul f0, f0, f0
/* 8085A8F0  FC 01 00 32 */	fmul f0, f1, f0
/* 8085A8F4  FC 03 00 28 */	fsub f0, f3, f0
/* 8085A8F8  FC 02 00 32 */	fmul f0, f2, f0
/* 8085A8FC  FC 21 00 32 */	fmul f1, f1, f0
/* 8085A900  FC 20 08 18 */	frsp f1, f1
/* 8085A904  48 00 00 88 */	b lbl_8085A98C
lbl_8085A908:
/* 8085A908  C8 1E 00 18 */	lfd f0, 0x18(r30)
/* 8085A90C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085A910  40 80 00 10 */	bge lbl_8085A920
/* 8085A914  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085A918  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8085A91C  48 00 00 70 */	b lbl_8085A98C
lbl_8085A920:
/* 8085A920  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8085A924  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8085A928  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8085A92C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8085A930  7C 03 00 00 */	cmpw r3, r0
/* 8085A934  41 82 00 14 */	beq lbl_8085A948
/* 8085A938  40 80 00 40 */	bge lbl_8085A978
/* 8085A93C  2C 03 00 00 */	cmpwi r3, 0
/* 8085A940  41 82 00 20 */	beq lbl_8085A960
/* 8085A944  48 00 00 34 */	b lbl_8085A978
lbl_8085A948:
/* 8085A948  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085A94C  41 82 00 0C */	beq lbl_8085A958
/* 8085A950  38 00 00 01 */	li r0, 1
/* 8085A954  48 00 00 28 */	b lbl_8085A97C
lbl_8085A958:
/* 8085A958  38 00 00 02 */	li r0, 2
/* 8085A95C  48 00 00 20 */	b lbl_8085A97C
lbl_8085A960:
/* 8085A960  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085A964  41 82 00 0C */	beq lbl_8085A970
/* 8085A968  38 00 00 05 */	li r0, 5
/* 8085A96C  48 00 00 10 */	b lbl_8085A97C
lbl_8085A970:
/* 8085A970  38 00 00 03 */	li r0, 3
/* 8085A974  48 00 00 08 */	b lbl_8085A97C
lbl_8085A978:
/* 8085A978  38 00 00 04 */	li r0, 4
lbl_8085A97C:
/* 8085A97C  2C 00 00 01 */	cmpwi r0, 1
/* 8085A980  40 82 00 0C */	bne lbl_8085A98C
/* 8085A984  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085A988  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8085A98C:
/* 8085A98C  C0 7C 05 D0 */	lfs f3, 0x5d0(r28)
/* 8085A990  C0 5C 05 AC */	lfs f2, 0x5ac(r28)
/* 8085A994  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8085A998  EC 02 00 32 */	fmuls f0, f2, f0
/* 8085A99C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8085A9A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085A9A4  40 81 00 0C */	ble lbl_8085A9B0
/* 8085A9A8  38 60 00 02 */	li r3, 2
/* 8085A9AC  4B 7D 2F 51 */	bl dComIfGs_BossLife_public_Set__FSc
lbl_8085A9B0:
/* 8085A9B0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8085A9B4  38 80 00 01 */	li r4, 1
/* 8085A9B8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8085A9BC  81 8C 01 B8 */	lwz r12, 0x1b8(r12)
/* 8085A9C0  7D 89 03 A6 */	mtctr r12
/* 8085A9C4  4E 80 04 21 */	bctrl 
/* 8085A9C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8085A9CC  41 82 00 10 */	beq lbl_8085A9DC
/* 8085A9D0  80 1C 05 D4 */	lwz r0, 0x5d4(r28)
/* 8085A9D4  2C 00 00 64 */	cmpwi r0, 0x64
/* 8085A9D8  41 80 00 14 */	blt lbl_8085A9EC
lbl_8085A9DC:
/* 8085A9DC  4B 7D 2F 35 */	bl dComIfGs_BossLife_public_Get__Fv
/* 8085A9E0  7C 60 07 74 */	extsb r0, r3
/* 8085A9E4  2C 00 00 01 */	cmpwi r0, 1
/* 8085A9E8  40 82 00 40 */	bne lbl_8085AA28
lbl_8085A9EC:
/* 8085A9EC  38 60 00 00 */	li r3, 0
/* 8085A9F0  4B 7D 2F 0D */	bl dComIfGs_BossLife_public_Set__FSc
/* 8085A9F4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8085A9F8  D0 1C 05 C4 */	stfs f0, 0x5c4(r28)
/* 8085A9FC  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8085AA00  D0 1C 05 C8 */	stfs f0, 0x5c8(r28)
/* 8085AA04  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8085AA08  D0 1C 05 CC */	stfs f0, 0x5cc(r28)
/* 8085AA0C  38 00 00 B4 */	li r0, 0xb4
/* 8085AA10  90 1C 05 D4 */	stw r0, 0x5d4(r28)
/* 8085AA14  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 8085AA18  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 8085AA1C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8085AA20  4B A6 E8 CD */	bl startFogWipeTrigger__10Z2EnvSeMgrFP3Vec
/* 8085AA24  48 00 00 54 */	b lbl_8085AA78
lbl_8085AA28:
/* 8085AA28  88 1C 05 D8 */	lbz r0, 0x5d8(r28)
/* 8085AA2C  28 00 00 00 */	cmplwi r0, 0
/* 8085AA30  41 82 00 10 */	beq lbl_8085AA40
/* 8085AA34  C3 DE 00 68 */	lfs f30, 0x68(r30)
/* 8085AA38  C3 FE 00 54 */	lfs f31, 0x54(r30)
/* 8085AA3C  48 00 00 0C */	b lbl_8085AA48
lbl_8085AA40:
/* 8085AA40  C3 DE 00 6C */	lfs f30, 0x6c(r30)
/* 8085AA44  C3 FE 00 70 */	lfs f31, 0x70(r30)
lbl_8085AA48:
/* 8085AA48  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 8085AA4C  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 8085AA50  FC 40 F8 90 */	fmr f2, f31
/* 8085AA54  FC 60 F0 90 */	fmr f3, f30
/* 8085AA58  C0 9E 00 58 */	lfs f4, 0x58(r30)
/* 8085AA5C  4B A1 4F 21 */	bl cLib_addCalc__FPfffff
/* 8085AA60  38 7C 05 CC */	addi r3, r28, 0x5cc
/* 8085AA64  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 8085AA68  FC 40 F8 90 */	fmr f2, f31
/* 8085AA6C  FC 60 F0 90 */	fmr f3, f30
/* 8085AA70  C0 9E 00 58 */	lfs f4, 0x58(r30)
/* 8085AA74  4B A1 4F 09 */	bl cLib_addCalc__FPfffff
lbl_8085AA78:
/* 8085AA78  80 7C 05 D4 */	lwz r3, 0x5d4(r28)
/* 8085AA7C  2C 03 00 00 */	cmpwi r3, 0
/* 8085AA80  41 82 00 0C */	beq lbl_8085AA8C
/* 8085AA84  38 03 FF FF */	addi r0, r3, -1
/* 8085AA88  90 1C 05 D4 */	stw r0, 0x5d4(r28)
lbl_8085AA8C:
/* 8085AA8C  80 7C 05 9C */	lwz r3, 0x59c(r28)
/* 8085AA90  28 03 00 00 */	cmplwi r3, 0
/* 8085AA94  41 82 00 64 */	beq lbl_8085AAF8
/* 8085AA98  C0 5C 05 C0 */	lfs f2, 0x5c0(r28)
/* 8085AA9C  C0 3C 05 BC */	lfs f1, 0x5bc(r28)
/* 8085AAA0  C0 1C 05 B8 */	lfs f0, 0x5b8(r28)
/* 8085AAA4  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 8085AAA8  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 8085AAAC  D0 43 00 AC */	stfs f2, 0xac(r3)
/* 8085AAB0  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 8085AAB4  C0 1C 05 AC */	lfs f0, 0x5ac(r28)
/* 8085AAB8  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085AABC  C0 1C 05 D0 */	lfs f0, 0x5d0(r28)
/* 8085AAC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085AAC4  FC 00 00 1E */	fctiwz f0, f0
/* 8085AAC8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8085AACC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8085AAD0  80 7C 05 9C */	lwz r3, 0x59c(r28)
/* 8085AAD4  B0 03 00 54 */	sth r0, 0x54(r3)
/* 8085AAD8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8085AADC  C0 1C 05 D0 */	lfs f0, 0x5d0(r28)
/* 8085AAE0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8085AAE4  EC 00 00 32 */	fmuls f0, f0, f0
/* 8085AAE8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8085AAEC  80 7C 05 9C */	lwz r3, 0x59c(r28)
/* 8085AAF0  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 8085AAF4  D0 03 00 B4 */	stfs f0, 0xb4(r3)
lbl_8085AAF8:
/* 8085AAF8  C0 3C 05 D0 */	lfs f1, 0x5d0(r28)
/* 8085AAFC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 8085AB00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085AB04  4C 40 13 82 */	cror 2, 0, 2
/* 8085AB08  40 82 00 2C */	bne lbl_8085AB34
/* 8085AB0C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8085AB10  D0 1C 05 B8 */	stfs f0, 0x5b8(r28)
/* 8085AB14  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8085AB18  D0 1C 05 C0 */	stfs f0, 0x5c0(r28)
/* 8085AB1C  C0 1C 05 B8 */	lfs f0, 0x5b8(r28)
/* 8085AB20  D0 1C 05 C4 */	stfs f0, 0x5c4(r28)
/* 8085AB24  C0 1C 05 BC */	lfs f0, 0x5bc(r28)
/* 8085AB28  D0 1C 05 C8 */	stfs f0, 0x5c8(r28)
/* 8085AB2C  C0 1C 05 C0 */	lfs f0, 0x5c0(r28)
/* 8085AB30  D0 1C 05 CC */	stfs f0, 0x5cc(r28)
lbl_8085AB34:
/* 8085AB34  C3 DE 00 24 */	lfs f30, 0x24(r30)
/* 8085AB38  4B 95 1A 45 */	bl dKy_darkworld_check__Fv
/* 8085AB3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8085AB40  41 82 00 08 */	beq lbl_8085AB48
/* 8085AB44  C3 DE 00 78 */	lfs f30, 0x78(r30)
lbl_8085AB48:
/* 8085AB48  7F A3 EB 78 */	mr r3, r29
/* 8085AB4C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8085AB50  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 8085AB54  7D 89 03 A6 */	mtctr r12
/* 8085AB58  4E 80 04 21 */	bctrl 
/* 8085AB5C  28 03 00 00 */	cmplwi r3, 0
/* 8085AB60  41 82 00 20 */	beq lbl_8085AB80
/* 8085AB64  7F A3 EB 78 */	mr r3, r29
/* 8085AB68  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8085AB6C  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 8085AB70  7D 89 03 A6 */	mtctr r12
/* 8085AB74  4E 80 04 21 */	bctrl 
/* 8085AB78  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8085AB7C  48 00 00 08 */	b lbl_8085AB84
lbl_8085AB80:
/* 8085AB80  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
lbl_8085AB84:
/* 8085AB84  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8085AB88  40 80 01 4C */	bge lbl_8085ACD4
/* 8085AB8C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8085AB90  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8085AB94  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8085AB98  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8085AB9C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8085ABA0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8085ABA4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8085ABA8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8085ABAC  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 8085ABB0  38 81 00 24 */	addi r4, r1, 0x24
/* 8085ABB4  4B AE C7 E9 */	bl PSVECSquareDistance
/* 8085ABB8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8085ABBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085ABC0  40 81 00 58 */	ble lbl_8085AC18
/* 8085ABC4  FC 00 08 34 */	frsqrte f0, f1
/* 8085ABC8  C8 9E 00 08 */	lfd f4, 8(r30)
/* 8085ABCC  FC 44 00 32 */	fmul f2, f4, f0
/* 8085ABD0  C8 7E 00 10 */	lfd f3, 0x10(r30)
/* 8085ABD4  FC 00 00 32 */	fmul f0, f0, f0
/* 8085ABD8  FC 01 00 32 */	fmul f0, f1, f0
/* 8085ABDC  FC 03 00 28 */	fsub f0, f3, f0
/* 8085ABE0  FC 02 00 32 */	fmul f0, f2, f0
/* 8085ABE4  FC 44 00 32 */	fmul f2, f4, f0
/* 8085ABE8  FC 00 00 32 */	fmul f0, f0, f0
/* 8085ABEC  FC 01 00 32 */	fmul f0, f1, f0
/* 8085ABF0  FC 03 00 28 */	fsub f0, f3, f0
/* 8085ABF4  FC 02 00 32 */	fmul f0, f2, f0
/* 8085ABF8  FC 44 00 32 */	fmul f2, f4, f0
/* 8085ABFC  FC 00 00 32 */	fmul f0, f0, f0
/* 8085AC00  FC 01 00 32 */	fmul f0, f1, f0
/* 8085AC04  FC 03 00 28 */	fsub f0, f3, f0
/* 8085AC08  FC 02 00 32 */	fmul f0, f2, f0
/* 8085AC0C  FC 21 00 32 */	fmul f1, f1, f0
/* 8085AC10  FC 20 08 18 */	frsp f1, f1
/* 8085AC14  48 00 00 88 */	b lbl_8085AC9C
lbl_8085AC18:
/* 8085AC18  C8 1E 00 18 */	lfd f0, 0x18(r30)
/* 8085AC1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085AC20  40 80 00 10 */	bge lbl_8085AC30
/* 8085AC24  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085AC28  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8085AC2C  48 00 00 70 */	b lbl_8085AC9C
lbl_8085AC30:
/* 8085AC30  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8085AC34  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8085AC38  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8085AC3C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8085AC40  7C 03 00 00 */	cmpw r3, r0
/* 8085AC44  41 82 00 14 */	beq lbl_8085AC58
/* 8085AC48  40 80 00 40 */	bge lbl_8085AC88
/* 8085AC4C  2C 03 00 00 */	cmpwi r3, 0
/* 8085AC50  41 82 00 20 */	beq lbl_8085AC70
/* 8085AC54  48 00 00 34 */	b lbl_8085AC88
lbl_8085AC58:
/* 8085AC58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085AC5C  41 82 00 0C */	beq lbl_8085AC68
/* 8085AC60  38 00 00 01 */	li r0, 1
/* 8085AC64  48 00 00 28 */	b lbl_8085AC8C
lbl_8085AC68:
/* 8085AC68  38 00 00 02 */	li r0, 2
/* 8085AC6C  48 00 00 20 */	b lbl_8085AC8C
lbl_8085AC70:
/* 8085AC70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085AC74  41 82 00 0C */	beq lbl_8085AC80
/* 8085AC78  38 00 00 05 */	li r0, 5
/* 8085AC7C  48 00 00 10 */	b lbl_8085AC8C
lbl_8085AC80:
/* 8085AC80  38 00 00 03 */	li r0, 3
/* 8085AC84  48 00 00 08 */	b lbl_8085AC8C
lbl_8085AC88:
/* 8085AC88  38 00 00 04 */	li r0, 4
lbl_8085AC8C:
/* 8085AC8C  2C 00 00 01 */	cmpwi r0, 1
/* 8085AC90  40 82 00 0C */	bne lbl_8085AC9C
/* 8085AC94  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085AC98  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8085AC9C:
/* 8085AC9C  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 8085ACA0  C0 1C 05 AC */	lfs f0, 0x5ac(r28)
/* 8085ACA4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8085ACA8  C0 5C 05 D0 */	lfs f2, 0x5d0(r28)
/* 8085ACAC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8085ACB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085ACB4  41 81 00 14 */	bgt lbl_8085ACC8
/* 8085ACB8  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8085ACBC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8085ACC0  4C 40 13 82 */	cror 2, 0, 2
/* 8085ACC4  40 82 00 10 */	bne lbl_8085ACD4
lbl_8085ACC8:
/* 8085ACC8  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8085ACCC  60 00 40 00 */	ori r0, r0, 0x4000
/* 8085ACD0  90 1D 05 78 */	stw r0, 0x578(r29)
lbl_8085ACD4:
/* 8085ACD4  28 1D 00 00 */	cmplwi r29, 0
/* 8085ACD8  41 82 01 9C */	beq lbl_8085AE74
/* 8085ACDC  80 7C 05 A0 */	lwz r3, 0x5a0(r28)
/* 8085ACE0  28 03 00 00 */	cmplwi r3, 0
/* 8085ACE4  41 82 01 90 */	beq lbl_8085AE74
/* 8085ACE8  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8085ACEC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8085ACF0  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 8085ACF4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8085ACF8  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 8085ACFC  D0 43 00 AC */	stfs f2, 0xac(r3)
/* 8085AD00  C3 FE 00 04 */	lfs f31, 4(r30)
/* 8085AD04  FF C0 F8 90 */	fmr f30, f31
/* 8085AD08  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8085AD0C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8085AD10  40 80 01 58 */	bge lbl_8085AE68
/* 8085AD14  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8085AD18  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8085AD1C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8085AD20  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8085AD24  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8085AD28  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8085AD2C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8085AD30  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 8085AD34  38 81 00 18 */	addi r4, r1, 0x18
/* 8085AD38  4B AE C6 65 */	bl PSVECSquareDistance
/* 8085AD3C  FC 00 F8 90 */	fmr f0, f31
/* 8085AD40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085AD44  40 81 00 58 */	ble lbl_8085AD9C
/* 8085AD48  FC 00 08 34 */	frsqrte f0, f1
/* 8085AD4C  C8 9E 00 08 */	lfd f4, 8(r30)
/* 8085AD50  FC 44 00 32 */	fmul f2, f4, f0
/* 8085AD54  C8 7E 00 10 */	lfd f3, 0x10(r30)
/* 8085AD58  FC 00 00 32 */	fmul f0, f0, f0
/* 8085AD5C  FC 01 00 32 */	fmul f0, f1, f0
/* 8085AD60  FC 03 00 28 */	fsub f0, f3, f0
/* 8085AD64  FC 02 00 32 */	fmul f0, f2, f0
/* 8085AD68  FC 44 00 32 */	fmul f2, f4, f0
/* 8085AD6C  FC 00 00 32 */	fmul f0, f0, f0
/* 8085AD70  FC 01 00 32 */	fmul f0, f1, f0
/* 8085AD74  FC 03 00 28 */	fsub f0, f3, f0
/* 8085AD78  FC 02 00 32 */	fmul f0, f2, f0
/* 8085AD7C  FC 44 00 32 */	fmul f2, f4, f0
/* 8085AD80  FC 00 00 32 */	fmul f0, f0, f0
/* 8085AD84  FC 01 00 32 */	fmul f0, f1, f0
/* 8085AD88  FC 03 00 28 */	fsub f0, f3, f0
/* 8085AD8C  FC 02 00 32 */	fmul f0, f2, f0
/* 8085AD90  FC 21 00 32 */	fmul f1, f1, f0
/* 8085AD94  FC 20 08 18 */	frsp f1, f1
/* 8085AD98  48 00 00 88 */	b lbl_8085AE20
lbl_8085AD9C:
/* 8085AD9C  C8 1E 00 18 */	lfd f0, 0x18(r30)
/* 8085ADA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085ADA4  40 80 00 10 */	bge lbl_8085ADB4
/* 8085ADA8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085ADAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8085ADB0  48 00 00 70 */	b lbl_8085AE20
lbl_8085ADB4:
/* 8085ADB4  D0 21 00 08 */	stfs f1, 8(r1)
/* 8085ADB8  80 81 00 08 */	lwz r4, 8(r1)
/* 8085ADBC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8085ADC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8085ADC4  7C 03 00 00 */	cmpw r3, r0
/* 8085ADC8  41 82 00 14 */	beq lbl_8085ADDC
/* 8085ADCC  40 80 00 40 */	bge lbl_8085AE0C
/* 8085ADD0  2C 03 00 00 */	cmpwi r3, 0
/* 8085ADD4  41 82 00 20 */	beq lbl_8085ADF4
/* 8085ADD8  48 00 00 34 */	b lbl_8085AE0C
lbl_8085ADDC:
/* 8085ADDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085ADE0  41 82 00 0C */	beq lbl_8085ADEC
/* 8085ADE4  38 00 00 01 */	li r0, 1
/* 8085ADE8  48 00 00 28 */	b lbl_8085AE10
lbl_8085ADEC:
/* 8085ADEC  38 00 00 02 */	li r0, 2
/* 8085ADF0  48 00 00 20 */	b lbl_8085AE10
lbl_8085ADF4:
/* 8085ADF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085ADF8  41 82 00 0C */	beq lbl_8085AE04
/* 8085ADFC  38 00 00 05 */	li r0, 5
/* 8085AE00  48 00 00 10 */	b lbl_8085AE10
lbl_8085AE04:
/* 8085AE04  38 00 00 03 */	li r0, 3
/* 8085AE08  48 00 00 08 */	b lbl_8085AE10
lbl_8085AE0C:
/* 8085AE0C  38 00 00 04 */	li r0, 4
lbl_8085AE10:
/* 8085AE10  2C 00 00 01 */	cmpwi r0, 1
/* 8085AE14  40 82 00 0C */	bne lbl_8085AE20
/* 8085AE18  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085AE1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8085AE20:
/* 8085AE20  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 8085AE24  C0 1C 05 AC */	lfs f0, 0x5ac(r28)
/* 8085AE28  EC 42 00 32 */	fmuls f2, f2, f0
/* 8085AE2C  C0 1C 05 D0 */	lfs f0, 0x5d0(r28)
/* 8085AE30  EC 02 00 32 */	fmuls f0, f2, f0
/* 8085AE34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085AE38  40 81 00 30 */	ble lbl_8085AE68
/* 8085AE3C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8085AE40  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8085AE44  EC 21 00 28 */	fsubs f1, f1, f0
/* 8085AE48  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8085AE4C  EC 21 00 24 */	fdivs f1, f1, f0
/* 8085AE50  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8085AE54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085AE58  40 81 00 08 */	ble lbl_8085AE60
/* 8085AE5C  FC 20 00 90 */	fmr f1, f0
lbl_8085AE60:
/* 8085AE60  FF E0 08 90 */	fmr f31, f1
/* 8085AE64  FF C0 08 90 */	fmr f30, f1
lbl_8085AE68:
/* 8085AE68  80 7C 05 A0 */	lwz r3, 0x5a0(r28)
/* 8085AE6C  D3 C3 00 B0 */	stfs f30, 0xb0(r3)
/* 8085AE70  D3 E3 00 B4 */	stfs f31, 0xb4(r3)
lbl_8085AE74:
/* 8085AE74  38 60 00 01 */	li r3, 1
/* 8085AE78  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8085AE7C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8085AE80  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8085AE84  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8085AE88  39 61 00 50 */	addi r11, r1, 0x50
/* 8085AE8C  4B B0 73 99 */	bl _restgpr_28
/* 8085AE90  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8085AE94  7C 08 03 A6 */	mtlr r0
/* 8085AE98  38 21 00 70 */	addi r1, r1, 0x70
/* 8085AE9C  4E 80 00 20 */	blr 
