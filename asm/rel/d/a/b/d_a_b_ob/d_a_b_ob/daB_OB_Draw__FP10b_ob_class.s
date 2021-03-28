lbl_80610EE4:
/* 80610EE4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80610EE8  7C 08 02 A6 */	mflr r0
/* 80610EEC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80610EF0  39 61 00 50 */	addi r11, r1, 0x50
/* 80610EF4  4B D5 12 D8 */	b _savegpr_25
/* 80610EF8  7C 7F 1B 78 */	mr r31, r3
/* 80610EFC  3C 60 80 62 */	lis r3, lit_3772@ha
/* 80610F00  3B C3 AD 84 */	addi r30, r3, lit_3772@l
/* 80610F04  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80610F08  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80610F0C  38 80 00 00 */	li r4, 0
/* 80610F10  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80610F14  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80610F18  4B B9 28 AC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80610F1C  3B 80 00 01 */	li r28, 1
/* 80610F20  88 1F 47 4D */	lbz r0, 0x474d(r31)
/* 80610F24  2C 00 00 02 */	cmpwi r0, 2
/* 80610F28  40 82 02 FC */	bne lbl_80611224
/* 80610F2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80610F30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80610F34  83 63 5D 74 */	lwz r27, 0x5d74(r3)
/* 80610F38  3B 80 00 00 */	li r28, 0
/* 80610F3C  3B 40 00 00 */	li r26, 0
/* 80610F40  3B 20 00 00 */	li r25, 0
lbl_80610F44:
/* 80610F44  7F BF CA 14 */	add r29, r31, r25
/* 80610F48  88 1D 05 FF */	lbz r0, 0x5ff(r29)
/* 80610F4C  7C 00 07 75 */	extsb. r0, r0
/* 80610F50  40 82 02 94 */	bne lbl_806111E4
/* 80610F54  38 61 00 0C */	addi r3, r1, 0xc
/* 80610F58  38 9D 05 D4 */	addi r4, r29, 0x5d4
/* 80610F5C  38 BB 00 D8 */	addi r5, r27, 0xd8
/* 80610F60  4B C5 5B D4 */	b __mi__4cXyzCFRC3Vec
/* 80610F64  38 61 00 0C */	addi r3, r1, 0xc
/* 80610F68  4B D3 61 D0 */	b PSVECSquareMag
/* 80610F6C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80610F70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80610F74  40 81 00 58 */	ble lbl_80610FCC
/* 80610F78  FC 00 08 34 */	frsqrte f0, f1
/* 80610F7C  C8 9E 00 20 */	lfd f4, 0x20(r30)
/* 80610F80  FC 44 00 32 */	fmul f2, f4, f0
/* 80610F84  C8 7E 00 28 */	lfd f3, 0x28(r30)
/* 80610F88  FC 00 00 32 */	fmul f0, f0, f0
/* 80610F8C  FC 01 00 32 */	fmul f0, f1, f0
/* 80610F90  FC 03 00 28 */	fsub f0, f3, f0
/* 80610F94  FC 02 00 32 */	fmul f0, f2, f0
/* 80610F98  FC 44 00 32 */	fmul f2, f4, f0
/* 80610F9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80610FA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80610FA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80610FA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80610FAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80610FB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80610FB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80610FB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80610FBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80610FC0  FC 21 00 32 */	fmul f1, f1, f0
/* 80610FC4  FC 20 08 18 */	frsp f1, f1
/* 80610FC8  48 00 00 88 */	b lbl_80611050
lbl_80610FCC:
/* 80610FCC  C8 1E 00 30 */	lfd f0, 0x30(r30)
/* 80610FD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80610FD4  40 80 00 10 */	bge lbl_80610FE4
/* 80610FD8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80610FDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80610FE0  48 00 00 70 */	b lbl_80611050
lbl_80610FE4:
/* 80610FE4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80610FE8  80 81 00 08 */	lwz r4, 8(r1)
/* 80610FEC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80610FF0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80610FF4  7C 03 00 00 */	cmpw r3, r0
/* 80610FF8  41 82 00 14 */	beq lbl_8061100C
/* 80610FFC  40 80 00 40 */	bge lbl_8061103C
/* 80611000  2C 03 00 00 */	cmpwi r3, 0
/* 80611004  41 82 00 20 */	beq lbl_80611024
/* 80611008  48 00 00 34 */	b lbl_8061103C
lbl_8061100C:
/* 8061100C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80611010  41 82 00 0C */	beq lbl_8061101C
/* 80611014  38 00 00 01 */	li r0, 1
/* 80611018  48 00 00 28 */	b lbl_80611040
lbl_8061101C:
/* 8061101C  38 00 00 02 */	li r0, 2
/* 80611020  48 00 00 20 */	b lbl_80611040
lbl_80611024:
/* 80611024  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80611028  41 82 00 0C */	beq lbl_80611034
/* 8061102C  38 00 00 05 */	li r0, 5
/* 80611030  48 00 00 10 */	b lbl_80611040
lbl_80611034:
/* 80611034  38 00 00 03 */	li r0, 3
/* 80611038  48 00 00 08 */	b lbl_80611040
lbl_8061103C:
/* 8061103C  38 00 00 04 */	li r0, 4
lbl_80611040:
/* 80611040  2C 00 00 01 */	cmpwi r0, 1
/* 80611044  40 82 00 0C */	bne lbl_80611050
/* 80611048  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8061104C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80611050:
/* 80611050  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80611054  C0 1D 05 E8 */	lfs f0, 0x5e8(r29)
/* 80611058  EC 02 00 32 */	fmuls f0, f2, f0
/* 8061105C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80611060  40 81 01 84 */	ble lbl_806111E4
/* 80611064  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 80611068  80 83 00 04 */	lwz r4, 4(r3)
/* 8061106C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80611070  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80611074  80 84 00 04 */	lwz r4, 4(r4)
/* 80611078  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8061107C  4B B9 3D 24 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80611080  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 80611084  80 63 00 04 */	lwz r3, 4(r3)
/* 80611088  80 63 00 04 */	lwz r3, 4(r3)
/* 8061108C  C0 1F 5D 14 */	lfs f0, 0x5d14(r31)
/* 80611090  FC 00 00 1E */	fctiwz f0, f0
/* 80611094  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80611098  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8061109C  4B FF FD 91 */	bl dark__FP12J3DModelDatas
/* 806110A0  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 806110A4  4B 9F F5 DC */	b entryDL__14mDoExt_McaMorfFv
/* 806110A8  2C 1A 00 00 */	cmpwi r26, 0
/* 806110AC  40 82 00 08 */	bne lbl_806110B4
/* 806110B0  3B 80 00 01 */	li r28, 1
lbl_806110B4:
/* 806110B4  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 806110B8  28 03 00 00 */	cmplwi r3, 0
/* 806110BC  41 82 00 44 */	beq lbl_80611100
/* 806110C0  80 83 00 04 */	lwz r4, 4(r3)
/* 806110C4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806110C8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806110CC  80 84 00 04 */	lwz r4, 4(r4)
/* 806110D0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 806110D4  4B B9 3C CC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806110D8  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 806110DC  80 63 00 04 */	lwz r3, 4(r3)
/* 806110E0  80 63 00 04 */	lwz r3, 4(r3)
/* 806110E4  C0 1F 5D 14 */	lfs f0, 0x5d14(r31)
/* 806110E8  FC 00 00 1E */	fctiwz f0, f0
/* 806110EC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 806110F0  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 806110F4  4B FF FD 39 */	bl dark__FP12J3DModelDatas
/* 806110F8  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 806110FC  4B 9F F5 84 */	b entryDL__14mDoExt_McaMorfFv
lbl_80611100:
/* 80611100  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 80611104  28 03 00 00 */	cmplwi r3, 0
/* 80611108  41 82 00 44 */	beq lbl_8061114C
/* 8061110C  80 83 00 04 */	lwz r4, 4(r3)
/* 80611110  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80611114  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80611118  80 84 00 04 */	lwz r4, 4(r4)
/* 8061111C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80611120  4B B9 3C 80 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80611124  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 80611128  80 63 00 04 */	lwz r3, 4(r3)
/* 8061112C  80 63 00 04 */	lwz r3, 4(r3)
/* 80611130  C0 1F 5D 14 */	lfs f0, 0x5d14(r31)
/* 80611134  FC 00 00 1E */	fctiwz f0, f0
/* 80611138  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8061113C  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80611140  4B FF FC ED */	bl dark__FP12J3DModelDatas
/* 80611144  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 80611148  4B 9F F5 38 */	b entryDL__14mDoExt_McaMorfFv
lbl_8061114C:
/* 8061114C  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80611150  28 03 00 00 */	cmplwi r3, 0
/* 80611154  41 82 00 44 */	beq lbl_80611198
/* 80611158  80 83 00 04 */	lwz r4, 4(r3)
/* 8061115C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80611160  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80611164  80 84 00 04 */	lwz r4, 4(r4)
/* 80611168  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8061116C  4B B9 3C 34 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80611170  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80611174  80 63 00 04 */	lwz r3, 4(r3)
/* 80611178  80 63 00 04 */	lwz r3, 4(r3)
/* 8061117C  C0 1F 5D 14 */	lfs f0, 0x5d14(r31)
/* 80611180  FC 00 00 1E */	fctiwz f0, f0
/* 80611184  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80611188  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8061118C  4B FF FC A1 */	bl dark__FP12J3DModelDatas
/* 80611190  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80611194  4B 9F F4 EC */	b entryDL__14mDoExt_McaMorfFv
lbl_80611198:
/* 80611198  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 8061119C  28 03 00 00 */	cmplwi r3, 0
/* 806111A0  41 82 00 44 */	beq lbl_806111E4
/* 806111A4  80 83 00 04 */	lwz r4, 4(r3)
/* 806111A8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806111AC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806111B0  80 84 00 04 */	lwz r4, 4(r4)
/* 806111B4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 806111B8  4B B9 3B E8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806111BC  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 806111C0  80 63 00 04 */	lwz r3, 4(r3)
/* 806111C4  80 63 00 04 */	lwz r3, 4(r3)
/* 806111C8  C0 1F 5D 14 */	lfs f0, 0x5d14(r31)
/* 806111CC  FC 00 00 1E */	fctiwz f0, f0
/* 806111D0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 806111D4  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 806111D8  4B FF FC 55 */	bl dark__FP12J3DModelDatas
/* 806111DC  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 806111E0  4B 9F F4 A0 */	b entryDL__14mDoExt_McaMorfFv
lbl_806111E4:
/* 806111E4  3B 5A 00 01 */	addi r26, r26, 1
/* 806111E8  2C 1A 00 13 */	cmpwi r26, 0x13
/* 806111EC  3B 39 01 78 */	addi r25, r25, 0x178
/* 806111F0  41 80 FD 54 */	blt lbl_80610F44
/* 806111F4  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 806111F8  7C 00 07 75 */	extsb. r0, r0
/* 806111FC  40 82 00 28 */	bne lbl_80611224
/* 80611200  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80611204  80 83 00 04 */	lwz r4, 4(r3)
/* 80611208  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8061120C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80611210  80 84 00 04 */	lwz r4, 4(r4)
/* 80611214  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80611218  4B B9 3B 88 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8061121C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80611220  4B 9F FF A0 */	b entryDL__16mDoExt_McaMorfSOFv
lbl_80611224:
/* 80611224  88 1F 47 4C */	lbz r0, 0x474c(r31)
/* 80611228  7C 00 07 75 */	extsb. r0, r0
/* 8061122C  41 82 01 38 */	beq lbl_80611364
/* 80611230  2C 1C 00 00 */	cmpwi r28, 0
/* 80611234  41 82 01 30 */	beq lbl_80611364
/* 80611238  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8061123C  80 83 00 04 */	lwz r4, 4(r3)
/* 80611240  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80611244  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80611248  80 84 00 04 */	lwz r4, 4(r4)
/* 8061124C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80611250  4B B9 3B 50 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80611254  A8 7F 47 52 */	lha r3, 0x4752(r31)
/* 80611258  7C 60 07 35 */	extsh. r0, r3
/* 8061125C  41 82 00 0C */	beq lbl_80611268
/* 80611260  2C 03 00 01 */	cmpwi r3, 1
/* 80611264  40 82 00 2C */	bne lbl_80611290
lbl_80611268:
/* 80611268  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8061126C  80 63 00 04 */	lwz r3, 4(r3)
/* 80611270  80 63 00 04 */	lwz r3, 4(r3)
/* 80611274  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80611278  80 63 00 04 */	lwz r3, 4(r3)
/* 8061127C  80 63 00 08 */	lwz r3, 8(r3)
/* 80611280  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80611284  60 00 00 01 */	ori r0, r0, 1
/* 80611288  90 03 00 0C */	stw r0, 0xc(r3)
/* 8061128C  48 00 00 28 */	b lbl_806112B4
lbl_80611290:
/* 80611290  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80611294  80 63 00 04 */	lwz r3, 4(r3)
/* 80611298  80 63 00 04 */	lwz r3, 4(r3)
/* 8061129C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 806112A0  80 63 00 04 */	lwz r3, 4(r3)
/* 806112A4  80 63 00 08 */	lwz r3, 8(r3)
/* 806112A8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806112AC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806112B0  90 03 00 0C */	stw r0, 0xc(r3)
lbl_806112B4:
/* 806112B4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806112B8  4B 9F FF 08 */	b entryDL__16mDoExt_McaMorfSOFv
/* 806112BC  88 1F 47 45 */	lbz r0, 0x4745(r31)
/* 806112C0  7C 00 07 75 */	extsb. r0, r0
/* 806112C4  41 82 00 64 */	beq lbl_80611328
/* 806112C8  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 806112CC  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 806112D0  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 806112D4  EC 20 18 2A */	fadds f1, f0, f3
/* 806112D8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806112DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806112E0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 806112E4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 806112E8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806112EC  80 A3 00 04 */	lwz r5, 4(r3)
/* 806112F0  80 7F 47 48 */	lwz r3, 0x4748(r31)
/* 806112F4  38 80 00 01 */	li r4, 1
/* 806112F8  38 C1 00 18 */	addi r6, r1, 0x18
/* 806112FC  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80611300  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80611304  C0 9F 4E 24 */	lfs f4, 0x4e24(r31)
/* 80611308  38 FF 4E 7C */	addi r7, r31, 0x4e7c
/* 8061130C  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80611310  39 20 00 00 */	li r9, 0
/* 80611314  C0 BE 00 00 */	lfs f5, 0(r30)
/* 80611318  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8061131C  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80611320  4B A1 D5 F0 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80611324  90 7F 47 48 */	stw r3, 0x4748(r31)
lbl_80611328:
/* 80611328  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8061132C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80611330  38 80 00 00 */	li r4, 0
/* 80611334  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 80611338  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8061133C  4B B9 24 88 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80611340  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80611344  80 83 00 04 */	lwz r4, 4(r3)
/* 80611348  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8061134C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80611350  80 84 00 04 */	lwz r4, 4(r4)
/* 80611354  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80611358  4B B9 3A 48 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8061135C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80611360  4B 9F F3 20 */	b entryDL__14mDoExt_McaMorfFv
lbl_80611364:
/* 80611364  C0 3F 47 30 */	lfs f1, 0x4730(r31)
/* 80611368  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8061136C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80611370  40 81 00 54 */	ble lbl_806113C4
/* 80611374  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80611378  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8061137C  80 9F 47 24 */	lwz r4, 0x4724(r31)
/* 80611380  80 84 00 04 */	lwz r4, 4(r4)
/* 80611384  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80611388  4B B9 3A 18 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8061138C  80 7F 47 24 */	lwz r3, 0x4724(r31)
/* 80611390  80 83 00 04 */	lwz r4, 4(r3)
/* 80611394  80 7F 47 2C */	lwz r3, 0x472c(r31)
/* 80611398  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8061139C  38 84 00 58 */	addi r4, r4, 0x58
/* 806113A0  4B 9F C4 08 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 806113A4  80 7F 47 24 */	lwz r3, 0x4724(r31)
/* 806113A8  80 83 00 04 */	lwz r4, 4(r3)
/* 806113AC  80 7F 47 28 */	lwz r3, 0x4728(r31)
/* 806113B0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806113B4  38 84 00 58 */	addi r4, r4, 0x58
/* 806113B8  4B 9F C3 20 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 806113BC  80 7F 47 24 */	lwz r3, 0x4724(r31)
/* 806113C0  4B 9F C9 04 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_806113C4:
/* 806113C4  A8 1F 5D 0A */	lha r0, 0x5d0a(r31)
/* 806113C8  2C 00 00 02 */	cmpwi r0, 2
/* 806113CC  40 81 00 14 */	ble lbl_806113E0
/* 806113D0  3C 60 80 45 */	lis r3, struct_80450BE4+0x1@ha
/* 806113D4  98 03 0B E5 */	stb r0, struct_80450BE4+0x1@l(r3)
/* 806113D8  4B 9F 6C A0 */	b onBlure__13mDoGph_gInf_cFv
/* 806113DC  48 00 00 10 */	b lbl_806113EC
lbl_806113E0:
/* 806113E0  38 00 00 00 */	li r0, 0
/* 806113E4  3C 60 80 45 */	lis r3, struct_80450BE4+0x0@ha
/* 806113E8  98 03 0B E4 */	stb r0, struct_80450BE4+0x0@l(r3)
lbl_806113EC:
/* 806113EC  38 60 00 01 */	li r3, 1
/* 806113F0  39 61 00 50 */	addi r11, r1, 0x50
/* 806113F4  4B D5 0E 24 */	b _restgpr_25
/* 806113F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806113FC  7C 08 03 A6 */	mtlr r0
/* 80611400  38 21 00 50 */	addi r1, r1, 0x50
/* 80611404  4E 80 00 20 */	blr 
