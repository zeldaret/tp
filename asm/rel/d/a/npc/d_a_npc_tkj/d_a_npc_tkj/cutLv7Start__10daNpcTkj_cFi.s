lbl_80574D28:
/* 80574D28  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80574D2C  7C 08 02 A6 */	mflr r0
/* 80574D30  90 01 00 44 */	stw r0, 0x44(r1)
/* 80574D34  39 61 00 40 */	addi r11, r1, 0x40
/* 80574D38  4B DE D4 99 */	bl _savegpr_26
/* 80574D3C  7C 7C 1B 78 */	mr r28, r3
/* 80574D40  7C 9A 23 78 */	mr r26, r4
/* 80574D44  3C 60 80 57 */	lis r3, m__17daNpc_Tkj_Param_c@ha /* 0x80576598@ha */
/* 80574D48  3B C3 65 98 */	addi r30, r3, m__17daNpc_Tkj_Param_c@l /* 0x80576598@l */
/* 80574D4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80574D50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80574D54  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80574D58  3B A0 00 00 */	li r29, 0
/* 80574D5C  2C 1A FF FF */	cmpwi r26, -1
/* 80574D60  40 82 00 0C */	bne lbl_80574D6C
/* 80574D64  38 60 00 00 */	li r3, 0
/* 80574D68  48 00 04 00 */	b lbl_80575168
lbl_80574D6C:
/* 80574D6C  7F 63 DB 78 */	mr r3, r27
/* 80574D70  4B AD 31 ED */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80574D74  7C 7F 1B 78 */	mr r31, r3
/* 80574D78  7F 63 DB 78 */	mr r3, r27
/* 80574D7C  7F 44 D3 78 */	mr r4, r26
/* 80574D80  4B AD 2F CD */	bl getIsAddvance__16dEvent_manager_cFi
/* 80574D84  2C 03 00 00 */	cmpwi r3, 0
/* 80574D88  41 82 01 20 */	beq lbl_80574EA8
/* 80574D8C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80574D90  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303034@ha */
/* 80574D94  38 03 30 34 */	addi r0, r3, 0x3034 /* 0x30303034@l */
/* 80574D98  7C 04 00 00 */	cmpw r4, r0
/* 80574D9C  41 82 01 0C */	beq lbl_80574EA8
/* 80574DA0  40 80 00 24 */	bge lbl_80574DC4
/* 80574DA4  38 03 30 32 */	addi r0, r3, 0x3032
/* 80574DA8  7C 04 00 00 */	cmpw r4, r0
/* 80574DAC  41 82 00 5C */	beq lbl_80574E08
/* 80574DB0  40 80 00 90 */	bge lbl_80574E40
/* 80574DB4  38 03 30 31 */	addi r0, r3, 0x3031
/* 80574DB8  7C 04 00 00 */	cmpw r4, r0
/* 80574DBC  40 80 00 1C */	bge lbl_80574DD8
/* 80574DC0  48 00 00 E8 */	b lbl_80574EA8
lbl_80574DC4:
/* 80574DC4  38 03 30 36 */	addi r0, r3, 0x3036
/* 80574DC8  7C 04 00 00 */	cmpw r4, r0
/* 80574DCC  41 82 00 D4 */	beq lbl_80574EA0
/* 80574DD0  40 80 00 D8 */	bge lbl_80574EA8
/* 80574DD4  48 00 00 9C */	b lbl_80574E70
lbl_80574DD8:
/* 80574DD8  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80574DDC  2C 00 00 00 */	cmpwi r0, 0
/* 80574DE0  41 82 00 C8 */	beq lbl_80574EA8
/* 80574DE4  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80574DE8  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80574DEC  4B BD 0A AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80574DF0  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80574DF4  38 00 00 00 */	li r0, 0
/* 80574DF8  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80574DFC  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80574E00  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80574E04  48 00 00 A4 */	b lbl_80574EA8
lbl_80574E08:
/* 80574E08  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80574E0C  2C 00 00 01 */	cmpwi r0, 1
/* 80574E10  41 82 00 24 */	beq lbl_80574E34
/* 80574E14  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80574E18  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80574E1C  4B BD 0A 7D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80574E20  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80574E24  38 00 00 01 */	li r0, 1
/* 80574E28  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80574E2C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80574E30  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80574E34:
/* 80574E34  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80574E38  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80574E3C  48 00 00 6C */	b lbl_80574EA8
lbl_80574E40:
/* 80574E40  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80574E44  2C 00 00 00 */	cmpwi r0, 0
/* 80574E48  41 82 00 60 */	beq lbl_80574EA8
/* 80574E4C  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80574E50  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80574E54  4B BD 0A 45 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80574E58  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80574E5C  38 00 00 00 */	li r0, 0
/* 80574E60  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80574E64  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80574E68  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
/* 80574E6C  48 00 00 3C */	b lbl_80574EA8
lbl_80574E70:
/* 80574E70  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80574E74  2C 00 00 01 */	cmpwi r0, 1
/* 80574E78  41 82 00 30 */	beq lbl_80574EA8
/* 80574E7C  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80574E80  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80574E84  4B BD 0A 15 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80574E88  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80574E8C  38 00 00 01 */	li r0, 1
/* 80574E90  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80574E94  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80574E98  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80574E9C  48 00 00 0C */	b lbl_80574EA8
lbl_80574EA0:
/* 80574EA0  7F 83 E3 78 */	mr r3, r28
/* 80574EA4  4B AA 4D D9 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80574EA8:
/* 80574EA8  80 9F 00 00 */	lwz r4, 0(r31)
/* 80574EAC  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303034@ha */
/* 80574EB0  38 03 30 34 */	addi r0, r3, 0x3034 /* 0x30303034@l */
/* 80574EB4  7C 04 00 00 */	cmpw r4, r0
/* 80574EB8  41 82 02 2C */	beq lbl_805750E4
/* 80574EBC  40 80 00 24 */	bge lbl_80574EE0
/* 80574EC0  38 03 30 32 */	addi r0, r3, 0x3032
/* 80574EC4  7C 04 00 00 */	cmpw r4, r0
/* 80574EC8  41 82 00 34 */	beq lbl_80574EFC
/* 80574ECC  40 80 01 C4 */	bge lbl_80575090
/* 80574ED0  38 03 30 31 */	addi r0, r3, 0x3031
/* 80574ED4  7C 04 00 00 */	cmpw r4, r0
/* 80574ED8  40 80 00 1C */	bge lbl_80574EF4
/* 80574EDC  48 00 02 88 */	b lbl_80575164
lbl_80574EE0:
/* 80574EE0  38 03 30 36 */	addi r0, r3, 0x3036
/* 80574EE4  7C 04 00 00 */	cmpw r4, r0
/* 80574EE8  41 82 01 FC */	beq lbl_805750E4
/* 80574EEC  40 80 02 78 */	bge lbl_80575164
/* 80574EF0  48 00 01 FC */	b lbl_805750EC
lbl_80574EF4:
/* 80574EF4  3B A0 00 01 */	li r29, 1
/* 80574EF8  48 00 02 6C */	b lbl_80575164
lbl_80574EFC:
/* 80574EFC  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80574F00  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80574F04  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80574F08  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80574F0C  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80574F10  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80574F14  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80574F18  38 81 00 18 */	addi r4, r1, 0x18
/* 80574F1C  4B DD 24 81 */	bl PSVECSquareDistance
/* 80574F20  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80574F24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80574F28  40 81 00 58 */	ble lbl_80574F80
/* 80574F2C  FC 00 08 34 */	frsqrte f0, f1
/* 80574F30  C8 9E 00 C8 */	lfd f4, 0xc8(r30)
/* 80574F34  FC 44 00 32 */	fmul f2, f4, f0
/* 80574F38  C8 7E 00 D0 */	lfd f3, 0xd0(r30)
/* 80574F3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80574F40  FC 01 00 32 */	fmul f0, f1, f0
/* 80574F44  FC 03 00 28 */	fsub f0, f3, f0
/* 80574F48  FC 02 00 32 */	fmul f0, f2, f0
/* 80574F4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80574F50  FC 00 00 32 */	fmul f0, f0, f0
/* 80574F54  FC 01 00 32 */	fmul f0, f1, f0
/* 80574F58  FC 03 00 28 */	fsub f0, f3, f0
/* 80574F5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80574F60  FC 44 00 32 */	fmul f2, f4, f0
/* 80574F64  FC 00 00 32 */	fmul f0, f0, f0
/* 80574F68  FC 01 00 32 */	fmul f0, f1, f0
/* 80574F6C  FC 03 00 28 */	fsub f0, f3, f0
/* 80574F70  FC 02 00 32 */	fmul f0, f2, f0
/* 80574F74  FC 21 00 32 */	fmul f1, f1, f0
/* 80574F78  FC 20 08 18 */	frsp f1, f1
/* 80574F7C  48 00 00 88 */	b lbl_80575004
lbl_80574F80:
/* 80574F80  C8 1E 00 D8 */	lfd f0, 0xd8(r30)
/* 80574F84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80574F88  40 80 00 10 */	bge lbl_80574F98
/* 80574F8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80574F90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80574F94  48 00 00 70 */	b lbl_80575004
lbl_80574F98:
/* 80574F98  D0 21 00 08 */	stfs f1, 8(r1)
/* 80574F9C  80 81 00 08 */	lwz r4, 8(r1)
/* 80574FA0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80574FA4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80574FA8  7C 03 00 00 */	cmpw r3, r0
/* 80574FAC  41 82 00 14 */	beq lbl_80574FC0
/* 80574FB0  40 80 00 40 */	bge lbl_80574FF0
/* 80574FB4  2C 03 00 00 */	cmpwi r3, 0
/* 80574FB8  41 82 00 20 */	beq lbl_80574FD8
/* 80574FBC  48 00 00 34 */	b lbl_80574FF0
lbl_80574FC0:
/* 80574FC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80574FC4  41 82 00 0C */	beq lbl_80574FD0
/* 80574FC8  38 00 00 01 */	li r0, 1
/* 80574FCC  48 00 00 28 */	b lbl_80574FF4
lbl_80574FD0:
/* 80574FD0  38 00 00 02 */	li r0, 2
/* 80574FD4  48 00 00 20 */	b lbl_80574FF4
lbl_80574FD8:
/* 80574FD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80574FDC  41 82 00 0C */	beq lbl_80574FE8
/* 80574FE0  38 00 00 05 */	li r0, 5
/* 80574FE4  48 00 00 10 */	b lbl_80574FF4
lbl_80574FE8:
/* 80574FE8  38 00 00 03 */	li r0, 3
/* 80574FEC  48 00 00 08 */	b lbl_80574FF4
lbl_80574FF0:
/* 80574FF0  38 00 00 04 */	li r0, 4
lbl_80574FF4:
/* 80574FF4  2C 00 00 01 */	cmpwi r0, 1
/* 80574FF8  40 82 00 0C */	bne lbl_80575004
/* 80574FFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80575000  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80575004:
/* 80575004  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80575008  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057500C  4C 40 13 82 */	cror 2, 0, 2
/* 80575010  40 82 00 54 */	bne lbl_80575064
/* 80575014  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80575018  2C 00 00 00 */	cmpwi r0, 0
/* 8057501C  41 82 00 24 */	beq lbl_80575040
/* 80575020  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80575024  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80575028  4B BD 08 71 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8057502C  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80575030  38 00 00 00 */	li r0, 0
/* 80575034  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80575038  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 8057503C  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80575040:
/* 80575040  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80575044  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80575048  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8057504C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80575050  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80575054  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80575058  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 8057505C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80575060  3B A0 00 01 */	li r29, 1
lbl_80575064:
/* 80575064  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050034@ha */
/* 80575068  38 03 00 34 */	addi r0, r3, 0x0034 /* 0x00050034@l */
/* 8057506C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80575070  38 7C 05 80 */	addi r3, r28, 0x580
/* 80575074  38 81 00 14 */	addi r4, r1, 0x14
/* 80575078  38 A0 FF FF */	li r5, -1
/* 8057507C  81 9C 05 80 */	lwz r12, 0x580(r28)
/* 80575080  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80575084  7D 89 03 A6 */	mtctr r12
/* 80575088  4E 80 04 21 */	bctrl 
/* 8057508C  48 00 00 D8 */	b lbl_80575164
lbl_80575090:
/* 80575090  7F 83 E3 78 */	mr r3, r28
/* 80575094  38 80 DC 7E */	li r4, -9090
/* 80575098  38 A0 FF FF */	li r5, -1
/* 8057509C  38 C0 FF FF */	li r6, -1
/* 805750A0  38 E0 00 0F */	li r7, 0xf
/* 805750A4  39 00 00 00 */	li r8, 0
/* 805750A8  4B BD 65 A1 */	bl step__8daNpcT_cFsiiii
/* 805750AC  2C 03 00 00 */	cmpwi r3, 0
/* 805750B0  41 82 00 08 */	beq lbl_805750B8
/* 805750B4  3B A0 00 01 */	li r29, 1
lbl_805750B8:
/* 805750B8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050034@ha */
/* 805750BC  38 03 00 34 */	addi r0, r3, 0x0034 /* 0x00050034@l */
/* 805750C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805750C4  38 7C 05 80 */	addi r3, r28, 0x580
/* 805750C8  38 81 00 10 */	addi r4, r1, 0x10
/* 805750CC  38 A0 FF FF */	li r5, -1
/* 805750D0  81 9C 05 80 */	lwz r12, 0x580(r28)
/* 805750D4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 805750D8  7D 89 03 A6 */	mtctr r12
/* 805750DC  4E 80 04 21 */	bctrl 
/* 805750E0  48 00 00 84 */	b lbl_80575164
lbl_805750E4:
/* 805750E4  3B A0 00 01 */	li r29, 1
/* 805750E8  48 00 00 7C */	b lbl_80575164
lbl_805750EC:
/* 805750EC  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 805750F0  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 805750F4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805750F8  40 82 00 40 */	bne lbl_80575138
/* 805750FC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80575100  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 80575104  4B CF BB 01 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80575108  7C 64 1B 78 */	mr r4, r3
/* 8057510C  7F 83 E3 78 */	mr r3, r28
/* 80575110  38 A0 FF FF */	li r5, -1
/* 80575114  38 C0 FF FF */	li r6, -1
/* 80575118  38 E0 00 0F */	li r7, 0xf
/* 8057511C  39 00 00 00 */	li r8, 0
/* 80575120  4B BD 65 29 */	bl step__8daNpcT_cFsiiii
/* 80575124  2C 03 00 00 */	cmpwi r3, 0
/* 80575128  41 82 00 38 */	beq lbl_80575160
/* 8057512C  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80575130  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80575134  48 00 00 2C */	b lbl_80575160
lbl_80575138:
/* 80575138  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050037@ha */
/* 8057513C  38 03 00 37 */	addi r0, r3, 0x0037 /* 0x00050037@l */
/* 80575140  90 01 00 0C */	stw r0, 0xc(r1)
/* 80575144  38 7C 05 80 */	addi r3, r28, 0x580
/* 80575148  38 81 00 0C */	addi r4, r1, 0xc
/* 8057514C  38 A0 FF FF */	li r5, -1
/* 80575150  81 9C 05 80 */	lwz r12, 0x580(r28)
/* 80575154  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80575158  7D 89 03 A6 */	mtctr r12
/* 8057515C  4E 80 04 21 */	bctrl 
lbl_80575160:
/* 80575160  3B A0 00 01 */	li r29, 1
lbl_80575164:
/* 80575164  7F A3 EB 78 */	mr r3, r29
lbl_80575168:
/* 80575168  39 61 00 40 */	addi r11, r1, 0x40
/* 8057516C  4B DE D0 B1 */	bl _restgpr_26
/* 80575170  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80575174  7C 08 03 A6 */	mtlr r0
/* 80575178  38 21 00 40 */	addi r1, r1, 0x40
/* 8057517C  4E 80 00 20 */	blr 
