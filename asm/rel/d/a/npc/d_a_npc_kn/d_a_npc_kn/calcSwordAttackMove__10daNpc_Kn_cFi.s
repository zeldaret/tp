lbl_80A37D20:
/* 80A37D20  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A37D24  7C 08 02 A6 */	mflr r0
/* 80A37D28  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A37D2C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80A37D30  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80A37D34  39 61 00 40 */	addi r11, r1, 0x40
/* 80A37D38  4B 92 A4 9D */	bl _savegpr_27
/* 80A37D3C  7C 7C 1B 78 */	mr r28, r3
/* 80A37D40  7C 9D 23 78 */	mr r29, r4
/* 80A37D44  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A37D48  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A37D4C  38 61 00 18 */	addi r3, r1, 0x18
/* 80A37D50  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A37D54  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A37D58  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A37D5C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80A37D60  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80A37D64  4B 82 ED D1 */	bl __mi__4cXyzCFRC3Vec
/* 80A37D68  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A37D6C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A37D70  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A37D74  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A37D78  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A37D7C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A37D80  38 61 00 0C */	addi r3, r1, 0xc
/* 80A37D84  4B 90 F3 B5 */	bl PSVECSquareMag
/* 80A37D88  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A37D8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A37D90  40 81 00 58 */	ble lbl_80A37DE8
/* 80A37D94  FC 00 08 34 */	frsqrte f0, f1
/* 80A37D98  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 80A37D9C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A37DA0  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 80A37DA4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A37DA8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A37DAC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A37DB0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A37DB4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A37DB8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A37DBC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A37DC0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A37DC4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A37DC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A37DCC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A37DD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A37DD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A37DD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A37DDC  FF E1 00 32 */	fmul f31, f1, f0
/* 80A37DE0  FF E0 F8 18 */	frsp f31, f31
/* 80A37DE4  48 00 00 90 */	b lbl_80A37E74
lbl_80A37DE8:
/* 80A37DE8  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 80A37DEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A37DF0  40 80 00 10 */	bge lbl_80A37E00
/* 80A37DF4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A37DF8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A37DFC  48 00 00 78 */	b lbl_80A37E74
lbl_80A37E00:
/* 80A37E00  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A37E04  80 81 00 08 */	lwz r4, 8(r1)
/* 80A37E08  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A37E0C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A37E10  7C 03 00 00 */	cmpw r3, r0
/* 80A37E14  41 82 00 14 */	beq lbl_80A37E28
/* 80A37E18  40 80 00 40 */	bge lbl_80A37E58
/* 80A37E1C  2C 03 00 00 */	cmpwi r3, 0
/* 80A37E20  41 82 00 20 */	beq lbl_80A37E40
/* 80A37E24  48 00 00 34 */	b lbl_80A37E58
lbl_80A37E28:
/* 80A37E28  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A37E2C  41 82 00 0C */	beq lbl_80A37E38
/* 80A37E30  38 00 00 01 */	li r0, 1
/* 80A37E34  48 00 00 28 */	b lbl_80A37E5C
lbl_80A37E38:
/* 80A37E38  38 00 00 02 */	li r0, 2
/* 80A37E3C  48 00 00 20 */	b lbl_80A37E5C
lbl_80A37E40:
/* 80A37E40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A37E44  41 82 00 0C */	beq lbl_80A37E50
/* 80A37E48  38 00 00 05 */	li r0, 5
/* 80A37E4C  48 00 00 10 */	b lbl_80A37E5C
lbl_80A37E50:
/* 80A37E50  38 00 00 03 */	li r0, 3
/* 80A37E54  48 00 00 08 */	b lbl_80A37E5C
lbl_80A37E58:
/* 80A37E58  38 00 00 04 */	li r0, 4
lbl_80A37E5C:
/* 80A37E5C  2C 00 00 01 */	cmpwi r0, 1
/* 80A37E60  40 82 00 10 */	bne lbl_80A37E70
/* 80A37E64  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A37E68  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A37E6C  48 00 00 08 */	b lbl_80A37E74
lbl_80A37E70:
/* 80A37E70  FF E0 08 90 */	fmr f31, f1
lbl_80A37E74:
/* 80A37E74  38 7C 15 D0 */	addi r3, r28, 0x15d0
/* 80A37E78  48 00 3E B5 */	bl func_80A3BD2C
/* 80A37E7C  7C 60 07 34 */	extsh r0, r3
/* 80A37E80  2C 00 00 01 */	cmpwi r0, 1
/* 80A37E84  40 82 00 74 */	bne lbl_80A37EF8
/* 80A37E88  88 1C 15 BC */	lbz r0, 0x15bc(r28)
/* 80A37E8C  28 00 00 00 */	cmplwi r0, 0
/* 80A37E90  40 82 00 68 */	bne lbl_80A37EF8
/* 80A37E94  C0 1E 02 08 */	lfs f0, 0x208(r30)
/* 80A37E98  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80A37E9C  40 80 00 54 */	bge lbl_80A37EF0
/* 80A37EA0  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A37EA4  2C 00 00 01 */	cmpwi r0, 1
/* 80A37EA8  41 82 00 24 */	beq lbl_80A37ECC
/* 80A37EAC  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A37EB0  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A37EB4  4B 70 D9 E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A37EB8  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A37EBC  38 00 00 01 */	li r0, 1
/* 80A37EC0  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A37EC4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A37EC8  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A37ECC:
/* 80A37ECC  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A37ED0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A37ED4  4B 70 D9 C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A37ED8  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A37EDC  38 00 00 19 */	li r0, 0x19
/* 80A37EE0  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A37EE4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A37EE8  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A37EEC  48 00 00 0C */	b lbl_80A37EF8
lbl_80A37EF0:
/* 80A37EF0  38 00 00 02 */	li r0, 2
/* 80A37EF4  B0 1C 15 D0 */	sth r0, 0x15d0(r28)
lbl_80A37EF8:
/* 80A37EF8  88 1C 15 BC */	lbz r0, 0x15bc(r28)
/* 80A37EFC  28 00 00 00 */	cmplwi r0, 0
/* 80A37F00  40 82 00 44 */	bne lbl_80A37F44
/* 80A37F04  88 1C 15 CE */	lbz r0, 0x15ce(r28)
/* 80A37F08  28 00 00 00 */	cmplwi r0, 0
/* 80A37F0C  40 82 00 38 */	bne lbl_80A37F44
/* 80A37F10  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A37F14  2C 00 00 1B */	cmpwi r0, 0x1b
/* 80A37F18  40 82 00 10 */	bne lbl_80A37F28
/* 80A37F1C  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A37F20  2C 00 00 00 */	cmpwi r0, 0
/* 80A37F24  41 82 00 20 */	beq lbl_80A37F44
lbl_80A37F28:
/* 80A37F28  C0 1E 02 08 */	lfs f0, 0x208(r30)
/* 80A37F2C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80A37F30  40 81 00 14 */	ble lbl_80A37F44
/* 80A37F34  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A37F38  C0 03 00 B0 */	lfs f0, 0xb0(r3)
/* 80A37F3C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80A37F40  48 00 00 24 */	b lbl_80A37F64
lbl_80A37F44:
/* 80A37F44  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A37F48  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80A37F4C  88 1C 15 BC */	lbz r0, 0x15bc(r28)
/* 80A37F50  28 00 00 00 */	cmplwi r0, 0
/* 80A37F54  40 82 00 10 */	bne lbl_80A37F64
/* 80A37F58  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80A37F5C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80A37F60  D0 1C 05 00 */	stfs f0, 0x500(r28)
lbl_80A37F64:
/* 80A37F64  88 1C 15 CE */	lbz r0, 0x15ce(r28)
/* 80A37F68  28 00 00 00 */	cmplwi r0, 0
/* 80A37F6C  40 82 00 9C */	bne lbl_80A38008
/* 80A37F70  2C 1D 00 00 */	cmpwi r29, 0
/* 80A37F74  41 82 00 28 */	beq lbl_80A37F9C
/* 80A37F78  7F 83 E3 78 */	mr r3, r28
/* 80A37F7C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A37F80  4B 5E 27 91 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A37F84  7C 64 1B 78 */	mr r4, r3
/* 80A37F88  38 7C 0D AE */	addi r3, r28, 0xdae
/* 80A37F8C  38 A0 00 02 */	li r5, 2
/* 80A37F90  38 C0 08 00 */	li r6, 0x800
/* 80A37F94  4B 83 86 75 */	bl cLib_addCalcAngleS2__FPssss
/* 80A37F98  48 00 00 28 */	b lbl_80A37FC0
lbl_80A37F9C:
/* 80A37F9C  7F 83 E3 78 */	mr r3, r28
/* 80A37FA0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A37FA4  4B 5E 27 6D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A37FA8  7C 64 1B 78 */	mr r4, r3
/* 80A37FAC  38 7C 0D AE */	addi r3, r28, 0xdae
/* 80A37FB0  38 DE 00 A8 */	addi r6, r30, 0xa8
/* 80A37FB4  A8 A6 00 A8 */	lha r5, 0xa8(r6)
/* 80A37FB8  A8 C6 00 AA */	lha r6, 0xaa(r6)
/* 80A37FBC  4B 83 86 4D */	bl cLib_addCalcAngleS2__FPssss
lbl_80A37FC0:
/* 80A37FC0  7F 83 E3 78 */	mr r3, r28
/* 80A37FC4  A8 9C 0D AE */	lha r4, 0xdae(r28)
/* 80A37FC8  48 00 2B 29 */	bl setAngle__10daNpc_Kn_cFs
/* 80A37FCC  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A37FD0  2C 00 00 01 */	cmpwi r0, 1
/* 80A37FD4  41 82 00 28 */	beq lbl_80A37FFC
/* 80A37FD8  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A37FDC  4B 70 D7 21 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A37FE0  38 00 00 00 */	li r0, 0
/* 80A37FE4  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A37FE8  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A37FEC  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A37FF0  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A37FF4  38 00 00 01 */	li r0, 1
/* 80A37FF8  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A37FFC:
/* 80A37FFC  38 00 00 00 */	li r0, 0
/* 80A38000  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A38004  48 00 00 38 */	b lbl_80A3803C
lbl_80A38008:
/* 80A38008  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A3800C  2C 00 00 00 */	cmpwi r0, 0
/* 80A38010  41 82 00 24 */	beq lbl_80A38034
/* 80A38014  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A38018  4B 70 D6 E5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A3801C  38 00 00 00 */	li r0, 0
/* 80A38020  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A38024  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A38028  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A3802C  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A38030  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A38034:
/* 80A38034  38 00 00 00 */	li r0, 0
/* 80A38038  98 1C 0D 33 */	stb r0, 0xd33(r28)
lbl_80A3803C:
/* 80A3803C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80A38040  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80A38044  39 61 00 40 */	addi r11, r1, 0x40
/* 80A38048  4B 92 A1 D9 */	bl _restgpr_27
/* 80A3804C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A38050  7C 08 03 A6 */	mtlr r0
/* 80A38054  38 21 00 50 */	addi r1, r1, 0x50
/* 80A38058  4E 80 00 20 */	blr 
