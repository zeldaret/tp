lbl_80123ED0:
/* 80123ED0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80123ED4  7C 08 02 A6 */	mflr r0
/* 80123ED8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80123EDC  39 61 00 70 */	addi r11, r1, 0x70
/* 80123EE0  48 23 E2 F5 */	bl _savegpr_27
/* 80123EE4  7C 7E 1B 78 */	mr r30, r3
/* 80123EE8  7C 9F 23 78 */	mr r31, r4
/* 80123EEC  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80123EF0  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80123EF4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80123EF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80123EFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80123F00  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80123F04  38 9F 00 14 */	addi r4, r31, 0x14
/* 80123F08  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80123F0C  4B F5 08 39 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80123F10  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80123F14  FC 20 00 50 */	fneg f1, f0
/* 80123F18  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80123F1C  FC 40 00 50 */	fneg f2, f0
/* 80123F20  48 14 37 55 */	bl cM_atan2s__Fff
/* 80123F24  B0 7E 31 02 */	sth r3, 0x3102(r30)
/* 80123F28  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80123F2C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80123F30  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80123F34  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80123F38  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80123F3C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80123F40  38 61 00 30 */	addi r3, r1, 0x30
/* 80123F44  48 22 31 F5 */	bl PSVECSquareMag
/* 80123F48  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80123F4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80123F50  40 81 00 58 */	ble lbl_80123FA8
/* 80123F54  FC 00 08 34 */	frsqrte f0, f1
/* 80123F58  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80123F5C  FC 44 00 32 */	fmul f2, f4, f0
/* 80123F60  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80123F64  FC 00 00 32 */	fmul f0, f0, f0
/* 80123F68  FC 01 00 32 */	fmul f0, f1, f0
/* 80123F6C  FC 03 00 28 */	fsub f0, f3, f0
/* 80123F70  FC 02 00 32 */	fmul f0, f2, f0
/* 80123F74  FC 44 00 32 */	fmul f2, f4, f0
/* 80123F78  FC 00 00 32 */	fmul f0, f0, f0
/* 80123F7C  FC 01 00 32 */	fmul f0, f1, f0
/* 80123F80  FC 03 00 28 */	fsub f0, f3, f0
/* 80123F84  FC 02 00 32 */	fmul f0, f2, f0
/* 80123F88  FC 44 00 32 */	fmul f2, f4, f0
/* 80123F8C  FC 00 00 32 */	fmul f0, f0, f0
/* 80123F90  FC 01 00 32 */	fmul f0, f1, f0
/* 80123F94  FC 03 00 28 */	fsub f0, f3, f0
/* 80123F98  FC 02 00 32 */	fmul f0, f2, f0
/* 80123F9C  FC 41 00 32 */	fmul f2, f1, f0
/* 80123FA0  FC 40 10 18 */	frsp f2, f2
/* 80123FA4  48 00 00 90 */	b lbl_80124034
lbl_80123FA8:
/* 80123FA8  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80123FAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80123FB0  40 80 00 10 */	bge lbl_80123FC0
/* 80123FB4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80123FB8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80123FBC  48 00 00 78 */	b lbl_80124034
lbl_80123FC0:
/* 80123FC0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80123FC4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80123FC8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80123FCC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80123FD0  7C 03 00 00 */	cmpw r3, r0
/* 80123FD4  41 82 00 14 */	beq lbl_80123FE8
/* 80123FD8  40 80 00 40 */	bge lbl_80124018
/* 80123FDC  2C 03 00 00 */	cmpwi r3, 0
/* 80123FE0  41 82 00 20 */	beq lbl_80124000
/* 80123FE4  48 00 00 34 */	b lbl_80124018
lbl_80123FE8:
/* 80123FE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80123FEC  41 82 00 0C */	beq lbl_80123FF8
/* 80123FF0  38 00 00 01 */	li r0, 1
/* 80123FF4  48 00 00 28 */	b lbl_8012401C
lbl_80123FF8:
/* 80123FF8  38 00 00 02 */	li r0, 2
/* 80123FFC  48 00 00 20 */	b lbl_8012401C
lbl_80124000:
/* 80124000  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80124004  41 82 00 0C */	beq lbl_80124010
/* 80124008  38 00 00 05 */	li r0, 5
/* 8012400C  48 00 00 10 */	b lbl_8012401C
lbl_80124010:
/* 80124010  38 00 00 03 */	li r0, 3
/* 80124014  48 00 00 08 */	b lbl_8012401C
lbl_80124018:
/* 80124018  38 00 00 04 */	li r0, 4
lbl_8012401C:
/* 8012401C  2C 00 00 01 */	cmpwi r0, 1
/* 80124020  40 82 00 10 */	bne lbl_80124030
/* 80124024  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80124028  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8012402C  48 00 00 08 */	b lbl_80124034
lbl_80124030:
/* 80124030  FC 40 08 90 */	fmr f2, f1
lbl_80124034:
/* 80124034  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80124038  48 14 36 3D */	bl cM_atan2s__Fff
/* 8012403C  7C 64 1B 78 */	mr r4, r3
/* 80124040  38 61 00 28 */	addi r3, r1, 0x28
/* 80124044  A8 BE 31 02 */	lha r5, 0x3102(r30)
/* 80124048  38 C0 00 00 */	li r6, 0
/* 8012404C  48 14 33 A9 */	bl __ct__5csXyzFsss
/* 80124050  38 7F 00 14 */	addi r3, r31, 0x14
/* 80124054  38 80 00 01 */	li r4, 1
/* 80124058  4B F7 E1 89 */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 8012405C  7C 60 07 34 */	extsh r0, r3
/* 80124060  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 80124064  41 82 00 0C */	beq lbl_80124070
/* 80124068  2C 00 00 2D */	cmpwi r0, 0x2d
/* 8012406C  40 82 00 0C */	bne lbl_80124078
lbl_80124070:
/* 80124070  3B 82 96 F4 */	la r28, ganonNameID(r2) /* 804530F4-_SDA2_BASE_ */
/* 80124074  48 00 00 08 */	b lbl_8012407C
lbl_80124078:
/* 80124078  3B 82 96 F0 */	la r28, normalNameID(r2) /* 804530F0-_SDA2_BASE_ */
lbl_8012407C:
/* 8012407C  3B 60 00 00 */	li r27, 0
/* 80124080  3B BF 00 30 */	addi r29, r31, 0x30
/* 80124084  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80124088  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_8012408C:
/* 8012408C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80124090  38 80 00 00 */	li r4, 0
/* 80124094  90 81 00 08 */	stw r4, 8(r1)
/* 80124098  38 00 FF FF */	li r0, -1
/* 8012409C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801240A0  90 81 00 10 */	stw r4, 0x10(r1)
/* 801240A4  90 81 00 14 */	stw r4, 0x14(r1)
/* 801240A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 801240AC  38 80 00 00 */	li r4, 0
/* 801240B0  A0 BC 00 00 */	lhz r5, 0(r28)
/* 801240B4  7F A6 EB 78 */	mr r6, r29
/* 801240B8  38 E0 00 00 */	li r7, 0
/* 801240BC  39 01 00 28 */	addi r8, r1, 0x28
/* 801240C0  39 20 00 00 */	li r9, 0
/* 801240C4  39 40 00 FF */	li r10, 0xff
/* 801240C8  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 801240CC  4B F2 89 C5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 801240D0  3B 7B 00 01 */	addi r27, r27, 1
/* 801240D4  2C 1B 00 02 */	cmpwi r27, 2
/* 801240D8  3B 9C 00 02 */	addi r28, r28, 2
/* 801240DC  41 80 FF B0 */	blt lbl_8012408C
/* 801240E0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800F5@ha */
/* 801240E4  38 03 00 F5 */	addi r0, r3, 0x00F5 /* 0x000800F5@l */
/* 801240E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801240EC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801240F0  38 81 00 24 */	addi r4, r1, 0x24
/* 801240F4  7F A5 EB 78 */	mr r5, r29
/* 801240F8  38 C0 00 00 */	li r6, 0
/* 801240FC  38 E0 00 00 */	li r7, 0
/* 80124100  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80124104  FC 40 08 90 */	fmr f2, f1
/* 80124108  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 8012410C  FC 80 18 90 */	fmr f4, f3
/* 80124110  39 00 00 00 */	li r8, 0
/* 80124114  48 18 78 71 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80124118  38 00 00 03 */	li r0, 3
/* 8012411C  B0 1E 31 00 */	sth r0, 0x3100(r30)
/* 80124120  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 80124124  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 80124128  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8012412C  39 61 00 70 */	addi r11, r1, 0x70
/* 80124130  48 23 E0 F1 */	bl _restgpr_27
/* 80124134  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80124138  7C 08 03 A6 */	mtlr r0
/* 8012413C  38 21 00 70 */	addi r1, r1, 0x70
/* 80124140  4E 80 00 20 */	blr 
