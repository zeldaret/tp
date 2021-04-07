lbl_8099F988:
/* 8099F988  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8099F98C  7C 08 02 A6 */	mflr r0
/* 8099F990  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8099F994  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8099F998  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8099F99C  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8099F9A0  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 8099F9A4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8099F9A8  4B 9C 28 15 */	bl _savegpr_21
/* 8099F9AC  7C 7A 1B 78 */	mr r26, r3
/* 8099F9B0  3C 60 80 9A */	lis r3, M_attr__12daNpcCoach_c@ha /* 0x809A4ED0@ha */
/* 8099F9B4  3B C3 4E D0 */	addi r30, r3, M_attr__12daNpcCoach_c@l /* 0x809A4ED0@l */
/* 8099F9B8  3B BA 0D 00 */	addi r29, r26, 0xd00
/* 8099F9BC  80 7A 04 A4 */	lwz r3, 0x4a4(r26)
/* 8099F9C0  4B 68 19 99 */	bl fpcEx_SearchByID__FUi
/* 8099F9C4  7C 7C 1B 78 */	mr r28, r3
/* 8099F9C8  3B 60 00 00 */	li r27, 0
/* 8099F9CC  3B 20 00 00 */	li r25, 0
/* 8099F9D0  3B 00 00 00 */	li r24, 0
/* 8099F9D4  C3 DE 01 A4 */	lfs f30, 0x1a4(r30)
/* 8099F9D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099F9DC  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8099F9E0  C3 FE 00 A0 */	lfs f31, 0xa0(r30)
lbl_8099F9E4:
/* 8099F9E4  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 8099F9E8  38 18 00 04 */	addi r0, r24, 4
/* 8099F9EC  7C 63 00 2E */	lwzx r3, r3, r0
/* 8099F9F0  38 00 00 07 */	li r0, 7
/* 8099F9F4  7C 09 03 A6 */	mtctr r0
lbl_8099F9F8:
/* 8099F9F8  D3 C3 00 00 */	stfs f30, 0(r3)
/* 8099F9FC  38 63 00 04 */	addi r3, r3, 4
/* 8099FA00  42 00 FF F8 */	bdnz lbl_8099F9F8
/* 8099FA04  2C 1B 00 00 */	cmpwi r27, 0
/* 8099FA08  40 82 00 20 */	bne lbl_8099FA28
/* 8099FA0C  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 8099FA10  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8099FA14  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 8099FA18  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8099FA1C  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 8099FA20  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8099FA24  48 00 00 1C */	b lbl_8099FA40
lbl_8099FA28:
/* 8099FA28  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 8099FA2C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8099FA30  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 8099FA34  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8099FA38  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 8099FA3C  D0 01 00 68 */	stfs f0, 0x68(r1)
lbl_8099FA40:
/* 8099FA40  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 8099FA44  80 63 00 04 */	lwz r3, 4(r3)
/* 8099FA48  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8099FA4C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8099FA50  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 8099FA54  7F E4 FB 78 */	mr r4, r31
/* 8099FA58  4B 9A 6A 59 */	bl PSMTXCopy
/* 8099FA5C  7F E3 FB 78 */	mr r3, r31
/* 8099FA60  38 81 00 60 */	addi r4, r1, 0x60
/* 8099FA64  7C 85 23 78 */	mr r5, r4
/* 8099FA68  4B 9A 73 05 */	bl PSMTXMultVec
/* 8099FA6C  28 1C 00 00 */	cmplwi r28, 0
/* 8099FA70  41 82 00 2C */	beq lbl_8099FA9C
/* 8099FA74  38 61 00 3C */	addi r3, r1, 0x3c
/* 8099FA78  7F 84 E3 78 */	mr r4, r28
/* 8099FA7C  7F 65 DB 78 */	mr r5, r27
/* 8099FA80  48 15 DB 71 */	bl getHandPos2__11daNpcTheB_cFi
/* 8099FA84  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8099FA88  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8099FA8C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8099FA90  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8099FA94  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8099FA98  D0 01 00 5C */	stfs f0, 0x5c(r1)
lbl_8099FA9C:
/* 8099FA9C  38 61 00 30 */	addi r3, r1, 0x30
/* 8099FAA0  38 81 00 54 */	addi r4, r1, 0x54
/* 8099FAA4  38 A1 00 60 */	addi r5, r1, 0x60
/* 8099FAA8  4B 8C 70 8D */	bl __mi__4cXyzCFRC3Vec
/* 8099FAAC  38 61 00 24 */	addi r3, r1, 0x24
/* 8099FAB0  38 81 00 30 */	addi r4, r1, 0x30
/* 8099FAB4  C0 3E 01 A8 */	lfs f1, 0x1a8(r30)
/* 8099FAB8  4B 8C 71 61 */	bl __dv__4cXyzCFf
/* 8099FABC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8099FAC0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8099FAC4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8099FAC8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8099FACC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8099FAD0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8099FAD4  38 61 00 48 */	addi r3, r1, 0x48
/* 8099FAD8  4B 9A 76 61 */	bl PSVECSquareMag
/* 8099FADC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8099FAE0  40 81 00 58 */	ble lbl_8099FB38
/* 8099FAE4  FC 00 08 34 */	frsqrte f0, f1
/* 8099FAE8  C8 9E 01 30 */	lfd f4, 0x130(r30)
/* 8099FAEC  FC 44 00 32 */	fmul f2, f4, f0
/* 8099FAF0  C8 7E 01 38 */	lfd f3, 0x138(r30)
/* 8099FAF4  FC 00 00 32 */	fmul f0, f0, f0
/* 8099FAF8  FC 01 00 32 */	fmul f0, f1, f0
/* 8099FAFC  FC 03 00 28 */	fsub f0, f3, f0
/* 8099FB00  FC 02 00 32 */	fmul f0, f2, f0
/* 8099FB04  FC 44 00 32 */	fmul f2, f4, f0
/* 8099FB08  FC 00 00 32 */	fmul f0, f0, f0
/* 8099FB0C  FC 01 00 32 */	fmul f0, f1, f0
/* 8099FB10  FC 03 00 28 */	fsub f0, f3, f0
/* 8099FB14  FC 02 00 32 */	fmul f0, f2, f0
/* 8099FB18  FC 44 00 32 */	fmul f2, f4, f0
/* 8099FB1C  FC 00 00 32 */	fmul f0, f0, f0
/* 8099FB20  FC 01 00 32 */	fmul f0, f1, f0
/* 8099FB24  FC 03 00 28 */	fsub f0, f3, f0
/* 8099FB28  FC 02 00 32 */	fmul f0, f2, f0
/* 8099FB2C  FC 21 00 32 */	fmul f1, f1, f0
/* 8099FB30  FC 20 08 18 */	frsp f1, f1
/* 8099FB34  48 00 00 88 */	b lbl_8099FBBC
lbl_8099FB38:
/* 8099FB38  C8 1E 01 40 */	lfd f0, 0x140(r30)
/* 8099FB3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8099FB40  40 80 00 10 */	bge lbl_8099FB50
/* 8099FB44  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8099FB48  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8099FB4C  48 00 00 70 */	b lbl_8099FBBC
lbl_8099FB50:
/* 8099FB50  D0 21 00 08 */	stfs f1, 8(r1)
/* 8099FB54  80 81 00 08 */	lwz r4, 8(r1)
/* 8099FB58  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8099FB5C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8099FB60  7C 03 00 00 */	cmpw r3, r0
/* 8099FB64  41 82 00 14 */	beq lbl_8099FB78
/* 8099FB68  40 80 00 40 */	bge lbl_8099FBA8
/* 8099FB6C  2C 03 00 00 */	cmpwi r3, 0
/* 8099FB70  41 82 00 20 */	beq lbl_8099FB90
/* 8099FB74  48 00 00 34 */	b lbl_8099FBA8
lbl_8099FB78:
/* 8099FB78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8099FB7C  41 82 00 0C */	beq lbl_8099FB88
/* 8099FB80  38 00 00 01 */	li r0, 1
/* 8099FB84  48 00 00 28 */	b lbl_8099FBAC
lbl_8099FB88:
/* 8099FB88  38 00 00 02 */	li r0, 2
/* 8099FB8C  48 00 00 20 */	b lbl_8099FBAC
lbl_8099FB90:
/* 8099FB90  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8099FB94  41 82 00 0C */	beq lbl_8099FBA0
/* 8099FB98  38 00 00 05 */	li r0, 5
/* 8099FB9C  48 00 00 10 */	b lbl_8099FBAC
lbl_8099FBA0:
/* 8099FBA0  38 00 00 03 */	li r0, 3
/* 8099FBA4  48 00 00 08 */	b lbl_8099FBAC
lbl_8099FBA8:
/* 8099FBA8  38 00 00 04 */	li r0, 4
lbl_8099FBAC:
/* 8099FBAC  2C 00 00 01 */	cmpwi r0, 1
/* 8099FBB0  40 82 00 0C */	bne lbl_8099FBBC
/* 8099FBB4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8099FBB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8099FBBC:
/* 8099FBBC  D0 3D 01 68 */	stfs f1, 0x168(r29)
/* 8099FBC0  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 8099FBC4  7C 63 C0 2E */	lwzx r3, r3, r24
/* 8099FBC8  3A B9 00 78 */	addi r21, r25, 0x78
/* 8099FBCC  7E BD AA 14 */	add r21, r29, r21
/* 8099FBD0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8099FBD4  D0 03 00 00 */	stfs f0, 0(r3)
/* 8099FBD8  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8099FBDC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8099FBE0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8099FBE4  D0 03 00 08 */	stfs f0, 8(r3)
/* 8099FBE8  3A E0 00 01 */	li r23, 1
/* 8099FBEC  3A C3 00 0C */	addi r22, r3, 0xc
lbl_8099FBF0:
/* 8099FBF0  38 61 00 18 */	addi r3, r1, 0x18
/* 8099FBF4  38 96 FF F4 */	addi r4, r22, -12
/* 8099FBF8  38 A1 00 48 */	addi r5, r1, 0x48
/* 8099FBFC  4B 8C 6E E9 */	bl __pl__4cXyzCFRC3Vec
/* 8099FC00  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8099FC04  D0 16 00 00 */	stfs f0, 0(r22)
/* 8099FC08  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8099FC0C  D0 16 00 04 */	stfs f0, 4(r22)
/* 8099FC10  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8099FC14  D0 16 00 08 */	stfs f0, 8(r22)
/* 8099FC18  C0 16 00 00 */	lfs f0, 0(r22)
/* 8099FC1C  D0 15 00 00 */	stfs f0, 0(r21)
/* 8099FC20  C0 16 00 04 */	lfs f0, 4(r22)
/* 8099FC24  D0 15 00 04 */	stfs f0, 4(r21)
/* 8099FC28  C0 16 00 08 */	lfs f0, 8(r22)
/* 8099FC2C  D0 15 00 08 */	stfs f0, 8(r21)
/* 8099FC30  3A F7 00 01 */	addi r23, r23, 1
/* 8099FC34  2C 17 00 06 */	cmpwi r23, 6
/* 8099FC38  3A D6 00 0C */	addi r22, r22, 0xc
/* 8099FC3C  3A B5 00 0C */	addi r21, r21, 0xc
/* 8099FC40  41 80 FF B0 */	blt lbl_8099FBF0
/* 8099FC44  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8099FC48  D0 16 00 00 */	stfs f0, 0(r22)
/* 8099FC4C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8099FC50  D0 16 00 04 */	stfs f0, 4(r22)
/* 8099FC54  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8099FC58  D0 16 00 08 */	stfs f0, 8(r22)
/* 8099FC5C  3B 7B 00 01 */	addi r27, r27, 1
/* 8099FC60  2C 1B 00 02 */	cmpwi r27, 2
/* 8099FC64  3B 39 00 3C */	addi r25, r25, 0x3c
/* 8099FC68  3B 18 00 20 */	addi r24, r24, 0x20
/* 8099FC6C  41 80 FD 78 */	blt lbl_8099F9E4
/* 8099FC70  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8099FC74  82 A3 00 00 */	lwz r21, 0(r3)
/* 8099FC78  82 C3 00 04 */	lwz r22, 4(r3)
/* 8099FC7C  3A E0 00 00 */	li r23, 0
/* 8099FC80  C3 DE 01 A4 */	lfs f30, 0x1a4(r30)
lbl_8099FC84:
/* 8099FC84  28 1C 00 00 */	cmplwi r28, 0
/* 8099FC88  41 82 00 2C */	beq lbl_8099FCB4
/* 8099FC8C  38 61 00 0C */	addi r3, r1, 0xc
/* 8099FC90  7F 84 E3 78 */	mr r4, r28
/* 8099FC94  7E E5 BB 78 */	mr r5, r23
/* 8099FC98  48 15 D8 71 */	bl getHandPos1__11daNpcTheB_cFi
/* 8099FC9C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8099FCA0  D0 15 00 00 */	stfs f0, 0(r21)
/* 8099FCA4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8099FCA8  D0 15 00 04 */	stfs f0, 4(r21)
/* 8099FCAC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8099FCB0  D0 15 00 08 */	stfs f0, 8(r21)
lbl_8099FCB4:
/* 8099FCB4  D3 D6 00 00 */	stfs f30, 0(r22)
/* 8099FCB8  3A F7 00 01 */	addi r23, r23, 1
/* 8099FCBC  2C 17 00 02 */	cmpwi r23, 2
/* 8099FCC0  3A B5 00 0C */	addi r21, r21, 0xc
/* 8099FCC4  3A D6 00 04 */	addi r22, r22, 4
/* 8099FCC8  41 80 FF BC */	blt lbl_8099FC84
/* 8099FCCC  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8099FCD0  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8099FCD4  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 8099FCD8  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8099FCDC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8099FCE0  4B 9C 25 29 */	bl _restgpr_21
/* 8099FCE4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8099FCE8  7C 08 03 A6 */	mtlr r0
/* 8099FCEC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8099FCF0  4E 80 00 20 */	blr 
