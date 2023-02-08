lbl_80B98F84:
/* 80B98F84  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80B98F88  7C 08 02 A6 */	mflr r0
/* 80B98F8C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80B98F90  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80B98F94  4B 7C 92 41 */	bl _savegpr_27
/* 80B98F98  7C 7F 1B 78 */	mr r31, r3
/* 80B98F9C  3C 80 80 BA */	lis r4, m__17daNpc_zrZ_Param_c@ha /* 0x80B9AFEC@ha */
/* 80B98FA0  3B C4 AF EC */	addi r30, r4, m__17daNpc_zrZ_Param_c@l /* 0x80B9AFEC@l */
/* 80B98FA4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B98FA8  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B98FAC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B98FB0  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80B98FB4  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80B98FB8  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80B98FBC  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80B98FC0  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80B98FC4  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80B98FC8  A0 03 0C 90 */	lhz r0, 0xc90(r3)
/* 80B98FCC  80 83 0C 94 */	lwz r4, 0xc94(r3)
/* 80B98FD0  80 84 00 08 */	lwz r4, 8(r4)
/* 80B98FD4  54 00 20 36 */	slwi r0, r0, 4
/* 80B98FD8  7C A4 02 14 */	add r5, r4, r0
/* 80B98FDC  80 85 00 04 */	lwz r4, 4(r5)
/* 80B98FE0  80 05 00 08 */	lwz r0, 8(r5)
/* 80B98FE4  90 81 00 A8 */	stw r4, 0xa8(r1)
/* 80B98FE8  90 01 00 AC */	stw r0, 0xac(r1)
/* 80B98FEC  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80B98FF0  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80B98FF4  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80B98FF8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80B98FFC  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80B99000  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80B99004  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80B99008  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80B9900C  A0 03 14 4A */	lhz r0, 0x144a(r3)
/* 80B99010  2C 00 00 02 */	cmpwi r0, 2
/* 80B99014  41 82 00 F4 */	beq lbl_80B99108
/* 80B99018  40 80 00 10 */	bge lbl_80B99028
/* 80B9901C  2C 00 00 00 */	cmpwi r0, 0
/* 80B99020  41 82 00 14 */	beq lbl_80B99034
/* 80B99024  48 00 08 7C */	b lbl_80B998A0
lbl_80B99028:
/* 80B99028  2C 00 00 04 */	cmpwi r0, 4
/* 80B9902C  40 80 08 74 */	bge lbl_80B998A0
/* 80B99030  48 00 08 68 */	b lbl_80B99898
lbl_80B99034:
/* 80B99034  88 1F 14 4D */	lbz r0, 0x144d(r31)
/* 80B99038  28 00 00 00 */	cmplwi r0, 0
/* 80B9903C  41 82 00 40 */	beq lbl_80B9907C
/* 80B99040  38 80 00 01 */	li r4, 1
/* 80B99044  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80B99048  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B9904C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B99050  7D 89 03 A6 */	mtctr r12
/* 80B99054  4E 80 04 21 */	bctrl 
/* 80B99058  7F E3 FB 78 */	mr r3, r31
/* 80B9905C  38 80 00 02 */	li r4, 2
/* 80B99060  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80B99064  38 A0 00 00 */	li r5, 0
/* 80B99068  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B9906C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B99070  7D 89 03 A6 */	mtctr r12
/* 80B99074  4E 80 04 21 */	bctrl 
/* 80B99078  48 00 00 3C */	b lbl_80B990B4
lbl_80B9907C:
/* 80B9907C  38 80 00 01 */	li r4, 1
/* 80B99080  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80B99084  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B99088  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B9908C  7D 89 03 A6 */	mtctr r12
/* 80B99090  4E 80 04 21 */	bctrl 
/* 80B99094  7F E3 FB 78 */	mr r3, r31
/* 80B99098  38 80 00 00 */	li r4, 0
/* 80B9909C  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80B990A0  38 A0 00 00 */	li r5, 0
/* 80B990A4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B990A8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B990AC  7D 89 03 A6 */	mtctr r12
/* 80B990B0  4E 80 04 21 */	bctrl 
lbl_80B990B4:
/* 80B990B4  7F E3 FB 78 */	mr r3, r31
/* 80B990B8  38 80 00 00 */	li r4, 0
/* 80B990BC  4B FF DD C1 */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B990C0  38 00 00 00 */	li r0, 0
/* 80B990C4  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80B990C8  38 00 00 02 */	li r0, 2
/* 80B990CC  B0 1F 14 4A */	sth r0, 0x144a(r31)
/* 80B990D0  A3 9F 0C 90 */	lhz r28, 0xc90(r31)
/* 80B990D4  38 7F 0C 90 */	addi r3, r31, 0xc90
/* 80B990D8  4B 5B 7B 89 */	bl getBeforeIdx__13daNpcF_Path_cFv
/* 80B990DC  7C 1C 18 00 */	cmpw r28, r3
/* 80B990E0  40 82 00 28 */	bne lbl_80B99108
/* 80B990E4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B990E8  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80B990EC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B990F0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80B990F4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B990F8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80B990FC  38 7F 0C 90 */	addi r3, r31, 0xc90
/* 80B99100  38 81 00 9C */	addi r4, r1, 0x9c
/* 80B99104  4B 5B 7D B1 */	bl setNextIdxDst__13daNpcF_Path_cF4cXyz
lbl_80B99108:
/* 80B99108  7F E3 FB 78 */	mr r3, r31
/* 80B9910C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B99110  4B 48 16 01 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B99114  7C 64 1B 78 */	mr r4, r3
/* 80B99118  38 7F 08 F2 */	addi r3, r31, 0x8f2
/* 80B9911C  38 A0 00 02 */	li r5, 2
/* 80B99120  38 C0 08 00 */	li r6, 0x800
/* 80B99124  4B 6D 74 E5 */	bl cLib_addCalcAngleS2__FPssss
/* 80B99128  7F E3 FB 78 */	mr r3, r31
/* 80B9912C  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80B99130  4B 5B B1 21 */	bl setAngle__8daNpcF_cFs
/* 80B99134  88 1F 14 4D */	lbz r0, 0x144d(r31)
/* 80B99138  28 00 00 00 */	cmplwi r0, 0
/* 80B9913C  40 82 02 EC */	bne lbl_80B99428
/* 80B99140  38 61 00 90 */	addi r3, r1, 0x90
/* 80B99144  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80B99148  38 A1 00 CC */	addi r5, r1, 0xcc
/* 80B9914C  4B 6C D9 E9 */	bl __mi__4cXyzCFRC3Vec
/* 80B99150  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80B99154  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B99158  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80B9915C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B99160  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80B99164  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B99168  38 61 00 3C */	addi r3, r1, 0x3c
/* 80B9916C  4B 7A DF CD */	bl PSVECSquareMag
/* 80B99170  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80B99174  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B99178  40 81 00 58 */	ble lbl_80B991D0
/* 80B9917C  FC 00 08 34 */	frsqrte f0, f1
/* 80B99180  C8 9E 00 D0 */	lfd f4, 0xd0(r30)
/* 80B99184  FC 44 00 32 */	fmul f2, f4, f0
/* 80B99188  C8 7E 00 D8 */	lfd f3, 0xd8(r30)
/* 80B9918C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B99190  FC 01 00 32 */	fmul f0, f1, f0
/* 80B99194  FC 03 00 28 */	fsub f0, f3, f0
/* 80B99198  FC 02 00 32 */	fmul f0, f2, f0
/* 80B9919C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B991A0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B991A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B991A8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B991AC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B991B0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B991B4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B991B8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B991BC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B991C0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B991C4  FC 21 00 32 */	fmul f1, f1, f0
/* 80B991C8  FC 20 08 18 */	frsp f1, f1
/* 80B991CC  48 00 00 88 */	b lbl_80B99254
lbl_80B991D0:
/* 80B991D0  C8 1E 00 E0 */	lfd f0, 0xe0(r30)
/* 80B991D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B991D8  40 80 00 10 */	bge lbl_80B991E8
/* 80B991DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B991E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B991E4  48 00 00 70 */	b lbl_80B99254
lbl_80B991E8:
/* 80B991E8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B991EC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B991F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B991F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B991F8  7C 03 00 00 */	cmpw r3, r0
/* 80B991FC  41 82 00 14 */	beq lbl_80B99210
/* 80B99200  40 80 00 40 */	bge lbl_80B99240
/* 80B99204  2C 03 00 00 */	cmpwi r3, 0
/* 80B99208  41 82 00 20 */	beq lbl_80B99228
/* 80B9920C  48 00 00 34 */	b lbl_80B99240
lbl_80B99210:
/* 80B99210  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B99214  41 82 00 0C */	beq lbl_80B99220
/* 80B99218  38 00 00 01 */	li r0, 1
/* 80B9921C  48 00 00 28 */	b lbl_80B99244
lbl_80B99220:
/* 80B99220  38 00 00 02 */	li r0, 2
/* 80B99224  48 00 00 20 */	b lbl_80B99244
lbl_80B99228:
/* 80B99228  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B9922C  41 82 00 0C */	beq lbl_80B99238
/* 80B99230  38 00 00 05 */	li r0, 5
/* 80B99234  48 00 00 10 */	b lbl_80B99244
lbl_80B99238:
/* 80B99238  38 00 00 03 */	li r0, 3
/* 80B9923C  48 00 00 08 */	b lbl_80B99244
lbl_80B99240:
/* 80B99240  38 00 00 04 */	li r0, 4
lbl_80B99244:
/* 80B99244  2C 00 00 01 */	cmpwi r0, 1
/* 80B99248  40 82 00 0C */	bne lbl_80B99254
/* 80B9924C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B99250  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B99254:
/* 80B99254  38 7E 00 00 */	addi r3, r30, 0
/* 80B99258  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 80B9925C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B99260  40 80 00 60 */	bge lbl_80B992C0
/* 80B99264  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80B99268  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B9926C  4B 5B 74 51 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B99270  7F E3 FB 78 */	mr r3, r31
/* 80B99274  38 80 00 02 */	li r4, 2
/* 80B99278  4B FF DC 05 */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B9927C  7F E3 FB 78 */	mr r3, r31
/* 80B99280  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B99284  4B 48 14 8D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B99288  7C 64 1B 78 */	mr r4, r3
/* 80B9928C  7F E3 FB 78 */	mr r3, r31
/* 80B99290  4B 5B AF C1 */	bl setAngle__8daNpcF_cFs
/* 80B99294  7F E3 FB 78 */	mr r3, r31
/* 80B99298  38 80 00 02 */	li r4, 2
/* 80B9929C  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80B992A0  38 A0 00 00 */	li r5, 0
/* 80B992A4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B992A8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B992AC  7D 89 03 A6 */	mtctr r12
/* 80B992B0  4E 80 04 21 */	bctrl 
/* 80B992B4  38 00 00 01 */	li r0, 1
/* 80B992B8  98 1F 14 4D */	stb r0, 0x144d(r31)
/* 80B992BC  48 00 05 E4 */	b lbl_80B998A0
lbl_80B992C0:
/* 80B992C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B992C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B992C8  88 9F 14 54 */	lbz r4, 0x1454(r31)
/* 80B992CC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B992D0  7C 05 07 74 */	extsb r5, r0
/* 80B992D4  4B 49 C0 8D */	bl isSwitch__10dSv_info_cCFii
/* 80B992D8  2C 03 00 00 */	cmpwi r3, 0
/* 80B992DC  40 82 05 C4 */	bne lbl_80B998A0
/* 80B992E0  38 61 00 84 */	addi r3, r1, 0x84
/* 80B992E4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B992E8  38 A1 00 CC */	addi r5, r1, 0xcc
/* 80B992EC  4B 6C D8 49 */	bl __mi__4cXyzCFRC3Vec
/* 80B992F0  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80B992F4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B992F8  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80B992FC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B99300  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80B99304  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B99308  38 61 00 30 */	addi r3, r1, 0x30
/* 80B9930C  4B 7A DE 2D */	bl PSVECSquareMag
/* 80B99310  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80B99314  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B99318  40 81 00 58 */	ble lbl_80B99370
/* 80B9931C  FC 00 08 34 */	frsqrte f0, f1
/* 80B99320  C8 9E 00 D0 */	lfd f4, 0xd0(r30)
/* 80B99324  FC 44 00 32 */	fmul f2, f4, f0
/* 80B99328  C8 7E 00 D8 */	lfd f3, 0xd8(r30)
/* 80B9932C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B99330  FC 01 00 32 */	fmul f0, f1, f0
/* 80B99334  FC 03 00 28 */	fsub f0, f3, f0
/* 80B99338  FC 02 00 32 */	fmul f0, f2, f0
/* 80B9933C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B99340  FC 00 00 32 */	fmul f0, f0, f0
/* 80B99344  FC 01 00 32 */	fmul f0, f1, f0
/* 80B99348  FC 03 00 28 */	fsub f0, f3, f0
/* 80B9934C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B99350  FC 44 00 32 */	fmul f2, f4, f0
/* 80B99354  FC 00 00 32 */	fmul f0, f0, f0
/* 80B99358  FC 01 00 32 */	fmul f0, f1, f0
/* 80B9935C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B99360  FC 02 00 32 */	fmul f0, f2, f0
/* 80B99364  FC 21 00 32 */	fmul f1, f1, f0
/* 80B99368  FC 20 08 18 */	frsp f1, f1
/* 80B9936C  48 00 00 88 */	b lbl_80B993F4
lbl_80B99370:
/* 80B99370  C8 1E 00 E0 */	lfd f0, 0xe0(r30)
/* 80B99374  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B99378  40 80 00 10 */	bge lbl_80B99388
/* 80B9937C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B99380  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B99384  48 00 00 70 */	b lbl_80B993F4
lbl_80B99388:
/* 80B99388  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B9938C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B99390  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B99394  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B99398  7C 03 00 00 */	cmpw r3, r0
/* 80B9939C  41 82 00 14 */	beq lbl_80B993B0
/* 80B993A0  40 80 00 40 */	bge lbl_80B993E0
/* 80B993A4  2C 03 00 00 */	cmpwi r3, 0
/* 80B993A8  41 82 00 20 */	beq lbl_80B993C8
/* 80B993AC  48 00 00 34 */	b lbl_80B993E0
lbl_80B993B0:
/* 80B993B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B993B4  41 82 00 0C */	beq lbl_80B993C0
/* 80B993B8  38 00 00 01 */	li r0, 1
/* 80B993BC  48 00 00 28 */	b lbl_80B993E4
lbl_80B993C0:
/* 80B993C0  38 00 00 02 */	li r0, 2
/* 80B993C4  48 00 00 20 */	b lbl_80B993E4
lbl_80B993C8:
/* 80B993C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B993CC  41 82 00 0C */	beq lbl_80B993D8
/* 80B993D0  38 00 00 05 */	li r0, 5
/* 80B993D4  48 00 00 10 */	b lbl_80B993E4
lbl_80B993D8:
/* 80B993D8  38 00 00 03 */	li r0, 3
/* 80B993DC  48 00 00 08 */	b lbl_80B993E4
lbl_80B993E0:
/* 80B993E0  38 00 00 04 */	li r0, 4
lbl_80B993E4:
/* 80B993E4  2C 00 00 01 */	cmpwi r0, 1
/* 80B993E8  40 82 00 0C */	bne lbl_80B993F4
/* 80B993EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B993F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B993F4:
/* 80B993F4  38 7E 00 00 */	addi r3, r30, 0
/* 80B993F8  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 80B993FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B99400  40 81 04 A0 */	ble lbl_80B998A0
/* 80B99404  38 00 00 03 */	li r0, 3
/* 80B99408  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80B9940C  7F E3 FB 78 */	mr r3, r31
/* 80B99410  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B99414  4B 48 12 FD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B99418  7C 64 1B 78 */	mr r4, r3
/* 80B9941C  7F E3 FB 78 */	mr r3, r31
/* 80B99420  4B 5B AE 31 */	bl setAngle__8daNpcF_cFs
/* 80B99424  48 00 04 7C */	b lbl_80B998A0
lbl_80B99428:
/* 80B99428  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B9942C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B99430  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B99434  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B99438  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B9943C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B99440  38 7F 0C 90 */	addi r3, r31, 0xc90
/* 80B99444  38 81 00 78 */	addi r4, r1, 0x78
/* 80B99448  4B 5B 76 35 */	bl chkPassedDst__13daNpcF_Path_cF4cXyz
/* 80B9944C  2C 03 00 00 */	cmpwi r3, 0
/* 80B99450  41 82 01 A8 */	beq lbl_80B995F8
/* 80B99454  38 61 00 6C */	addi r3, r1, 0x6c
/* 80B99458  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80B9945C  38 A1 00 CC */	addi r5, r1, 0xcc
/* 80B99460  4B 6C D6 D5 */	bl __mi__4cXyzCFRC3Vec
/* 80B99464  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B99468  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B9946C  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80B99470  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B99474  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80B99478  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B9947C  38 61 00 24 */	addi r3, r1, 0x24
/* 80B99480  4B 7A DC B9 */	bl PSVECSquareMag
/* 80B99484  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80B99488  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B9948C  40 81 00 58 */	ble lbl_80B994E4
/* 80B99490  FC 00 08 34 */	frsqrte f0, f1
/* 80B99494  C8 9E 00 D0 */	lfd f4, 0xd0(r30)
/* 80B99498  FC 44 00 32 */	fmul f2, f4, f0
/* 80B9949C  C8 7E 00 D8 */	lfd f3, 0xd8(r30)
/* 80B994A0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B994A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B994A8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B994AC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B994B0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B994B4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B994B8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B994BC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B994C0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B994C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B994C8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B994CC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B994D0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B994D4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B994D8  FC 21 00 32 */	fmul f1, f1, f0
/* 80B994DC  FC 20 08 18 */	frsp f1, f1
/* 80B994E0  48 00 00 88 */	b lbl_80B99568
lbl_80B994E4:
/* 80B994E4  C8 1E 00 E0 */	lfd f0, 0xe0(r30)
/* 80B994E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B994EC  40 80 00 10 */	bge lbl_80B994FC
/* 80B994F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B994F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B994F8  48 00 00 70 */	b lbl_80B99568
lbl_80B994FC:
/* 80B994FC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B99500  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B99504  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B99508  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B9950C  7C 03 00 00 */	cmpw r3, r0
/* 80B99510  41 82 00 14 */	beq lbl_80B99524
/* 80B99514  40 80 00 40 */	bge lbl_80B99554
/* 80B99518  2C 03 00 00 */	cmpwi r3, 0
/* 80B9951C  41 82 00 20 */	beq lbl_80B9953C
/* 80B99520  48 00 00 34 */	b lbl_80B99554
lbl_80B99524:
/* 80B99524  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B99528  41 82 00 0C */	beq lbl_80B99534
/* 80B9952C  38 00 00 01 */	li r0, 1
/* 80B99530  48 00 00 28 */	b lbl_80B99558
lbl_80B99534:
/* 80B99534  38 00 00 02 */	li r0, 2
/* 80B99538  48 00 00 20 */	b lbl_80B99558
lbl_80B9953C:
/* 80B9953C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B99540  41 82 00 0C */	beq lbl_80B9954C
/* 80B99544  38 00 00 05 */	li r0, 5
/* 80B99548  48 00 00 10 */	b lbl_80B99558
lbl_80B9954C:
/* 80B9954C  38 00 00 03 */	li r0, 3
/* 80B99550  48 00 00 08 */	b lbl_80B99558
lbl_80B99554:
/* 80B99554  38 00 00 04 */	li r0, 4
lbl_80B99558:
/* 80B99558  2C 00 00 01 */	cmpwi r0, 1
/* 80B9955C  40 82 00 0C */	bne lbl_80B99568
/* 80B99560  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B99564  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B99568:
/* 80B99568  38 7E 00 00 */	addi r3, r30, 0
/* 80B9956C  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 80B99570  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B99574  40 80 00 78 */	bge lbl_80B995EC
/* 80B99578  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B9957C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B99580  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B99584  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B99588  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B9958C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B99590  38 7F 0C 90 */	addi r3, r31, 0xc90
/* 80B99594  38 81 00 60 */	addi r4, r1, 0x60
/* 80B99598  4B 5B 79 1D */	bl setNextIdxDst__13daNpcF_Path_cF4cXyz
/* 80B9959C  A0 1F 0C 90 */	lhz r0, 0xc90(r31)
/* 80B995A0  80 7F 0C 94 */	lwz r3, 0xc94(r31)
/* 80B995A4  80 63 00 08 */	lwz r3, 8(r3)
/* 80B995A8  54 00 20 36 */	slwi r0, r0, 4
/* 80B995AC  7C 83 02 14 */	add r4, r3, r0
/* 80B995B0  80 64 00 04 */	lwz r3, 4(r4)
/* 80B995B4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B995B8  90 61 00 54 */	stw r3, 0x54(r1)
/* 80B995BC  90 01 00 58 */	stw r0, 0x58(r1)
/* 80B995C0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B995C4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80B995C8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80B995CC  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80B995D0  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80B995D4  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80B995D8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80B995DC  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80B995E0  38 00 00 01 */	li r0, 1
/* 80B995E4  98 1F 14 4F */	stb r0, 0x144f(r31)
/* 80B995E8  48 00 00 18 */	b lbl_80B99600
lbl_80B995EC:
/* 80B995EC  38 00 00 00 */	li r0, 0
/* 80B995F0  98 1F 14 4F */	stb r0, 0x144f(r31)
/* 80B995F4  48 00 00 0C */	b lbl_80B99600
lbl_80B995F8:
/* 80B995F8  38 00 00 01 */	li r0, 1
/* 80B995FC  98 1F 14 4F */	stb r0, 0x144f(r31)
lbl_80B99600:
/* 80B99600  A3 9F 0C 90 */	lhz r28, 0xc90(r31)
/* 80B99604  38 7F 0C 90 */	addi r3, r31, 0xc90
/* 80B99608  4B 5B 76 11 */	bl getNextIdx__13daNpcF_Path_cFv
/* 80B9960C  7C 1C 18 00 */	cmpw r28, r3
/* 80B99610  40 82 00 60 */	bne lbl_80B99670
/* 80B99614  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B99618  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9961C  88 9F 14 54 */	lbz r4, 0x1454(r31)
/* 80B99620  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B99624  7C 05 07 74 */	extsb r5, r0
/* 80B99628  4B 49 BD 39 */	bl isSwitch__10dSv_info_cCFii
/* 80B9962C  2C 03 00 00 */	cmpwi r3, 0
/* 80B99630  40 82 00 1C */	bne lbl_80B9964C
/* 80B99634  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B99638  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9963C  88 9F 14 54 */	lbz r4, 0x1454(r31)
/* 80B99640  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B99644  7C 05 07 74 */	extsb r5, r0
/* 80B99648  4B 49 BB B9 */	bl onSwitch__10dSv_info_cFii
lbl_80B9964C:
/* 80B9964C  38 7F 04 6A */	addi r3, r31, 0x46a
/* 80B99650  38 80 00 00 */	li r4, 0
/* 80B99654  38 A0 00 04 */	li r5, 4
/* 80B99658  4B 6D 70 79 */	bl cLib_chaseS__FPsss
/* 80B9965C  A8 1F 04 6A */	lha r0, 0x46a(r31)
/* 80B99660  2C 00 00 00 */	cmpwi r0, 0
/* 80B99664  40 82 00 0C */	bne lbl_80B99670
/* 80B99668  7F E3 FB 78 */	mr r3, r31
/* 80B9966C  4B 48 06 11 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80B99670:
/* 80B99670  88 1F 14 4F */	lbz r0, 0x144f(r31)
/* 80B99674  28 00 00 00 */	cmplwi r0, 0
/* 80B99678  41 82 00 68 */	beq lbl_80B996E0
/* 80B9967C  38 7F 14 50 */	addi r3, r31, 0x1450
/* 80B99680  38 9E 00 00 */	addi r4, r30, 0
/* 80B99684  C0 24 00 78 */	lfs f1, 0x78(r4)
/* 80B99688  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 80B9968C  C0 7E 00 94 */	lfs f3, 0x94(r30)
/* 80B99690  4B 6D 63 AD */	bl cLib_addCalc2__FPffff
/* 80B99694  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B99698  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80B9969C  4B 6D 75 69 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B996A0  7C 7C 1B 78 */	mr r28, r3
/* 80B996A4  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80B996A8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B996AC  4B 6D 75 C9 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B996B0  7C 7B 1B 78 */	mr r27, r3
/* 80B996B4  38 7F 14 5A */	addi r3, r31, 0x145a
/* 80B996B8  7F 84 E3 78 */	mr r4, r28
/* 80B996BC  38 A0 00 02 */	li r5, 2
/* 80B996C0  38 C0 08 00 */	li r6, 0x800
/* 80B996C4  4B 6D 6F 45 */	bl cLib_addCalcAngleS2__FPssss
/* 80B996C8  38 7F 14 58 */	addi r3, r31, 0x1458
/* 80B996CC  7F 64 DB 78 */	mr r4, r27
/* 80B996D0  38 A0 00 02 */	li r5, 2
/* 80B996D4  38 C0 08 00 */	li r6, 0x800
/* 80B996D8  4B 6D 6F 31 */	bl cLib_addCalcAngleS2__FPssss
/* 80B996DC  48 00 00 14 */	b lbl_80B996F0
lbl_80B996E0:
/* 80B996E0  38 7F 14 50 */	addi r3, r31, 0x1450
/* 80B996E4  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80B996E8  C0 5E 02 1C */	lfs f2, 0x21c(r30)
/* 80B996EC  4B 6D 70 55 */	bl cLib_chaseF__FPfff
lbl_80B996F0:
/* 80B996F0  C0 3F 14 50 */	lfs f1, 0x1450(r31)
/* 80B996F4  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80B996F8  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80B996FC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80B99700  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 80B99704  38 7F 14 58 */	addi r3, r31, 0x1458
/* 80B99708  4B 47 38 05 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B9970C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B99710  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B99714  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80B99718  7C 85 23 78 */	mr r5, r4
/* 80B9971C  4B 7A D6 51 */	bl PSMTXMultVec
/* 80B99720  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B99724  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80B99728  7C 65 1B 78 */	mr r5, r3
/* 80B9972C  4B 7A D9 65 */	bl PSVECAdd
/* 80B99730  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B99734  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B99738  88 9F 14 54 */	lbz r4, 0x1454(r31)
/* 80B9973C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B99740  7C 05 07 74 */	extsb r5, r0
/* 80B99744  4B 49 BC 1D */	bl isSwitch__10dSv_info_cCFii
/* 80B99748  2C 03 00 00 */	cmpwi r3, 0
/* 80B9974C  40 82 01 54 */	bne lbl_80B998A0
/* 80B99750  38 61 00 48 */	addi r3, r1, 0x48
/* 80B99754  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B99758  38 A1 00 CC */	addi r5, r1, 0xcc
/* 80B9975C  4B 6C D3 D9 */	bl __mi__4cXyzCFRC3Vec
/* 80B99760  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B99764  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B99768  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80B9976C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B99770  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B99774  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B99778  38 61 00 18 */	addi r3, r1, 0x18
/* 80B9977C  4B 7A D9 BD */	bl PSVECSquareMag
/* 80B99780  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80B99784  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B99788  40 81 00 58 */	ble lbl_80B997E0
/* 80B9978C  FC 00 08 34 */	frsqrte f0, f1
/* 80B99790  C8 9E 00 D0 */	lfd f4, 0xd0(r30)
/* 80B99794  FC 44 00 32 */	fmul f2, f4, f0
/* 80B99798  C8 7E 00 D8 */	lfd f3, 0xd8(r30)
/* 80B9979C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B997A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B997A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B997A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B997AC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B997B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B997B4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B997B8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B997BC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B997C0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B997C4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B997C8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B997CC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B997D0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B997D4  FC 21 00 32 */	fmul f1, f1, f0
/* 80B997D8  FC 20 08 18 */	frsp f1, f1
/* 80B997DC  48 00 00 88 */	b lbl_80B99864
lbl_80B997E0:
/* 80B997E0  C8 1E 00 E0 */	lfd f0, 0xe0(r30)
/* 80B997E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B997E8  40 80 00 10 */	bge lbl_80B997F8
/* 80B997EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B997F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B997F4  48 00 00 70 */	b lbl_80B99864
lbl_80B997F8:
/* 80B997F8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B997FC  80 81 00 08 */	lwz r4, 8(r1)
/* 80B99800  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B99804  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B99808  7C 03 00 00 */	cmpw r3, r0
/* 80B9980C  41 82 00 14 */	beq lbl_80B99820
/* 80B99810  40 80 00 40 */	bge lbl_80B99850
/* 80B99814  2C 03 00 00 */	cmpwi r3, 0
/* 80B99818  41 82 00 20 */	beq lbl_80B99838
/* 80B9981C  48 00 00 34 */	b lbl_80B99850
lbl_80B99820:
/* 80B99820  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B99824  41 82 00 0C */	beq lbl_80B99830
/* 80B99828  38 00 00 01 */	li r0, 1
/* 80B9982C  48 00 00 28 */	b lbl_80B99854
lbl_80B99830:
/* 80B99830  38 00 00 02 */	li r0, 2
/* 80B99834  48 00 00 20 */	b lbl_80B99854
lbl_80B99838:
/* 80B99838  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B9983C  41 82 00 0C */	beq lbl_80B99848
/* 80B99840  38 00 00 05 */	li r0, 5
/* 80B99844  48 00 00 10 */	b lbl_80B99854
lbl_80B99848:
/* 80B99848  38 00 00 03 */	li r0, 3
/* 80B9984C  48 00 00 08 */	b lbl_80B99854
lbl_80B99850:
/* 80B99850  38 00 00 04 */	li r0, 4
lbl_80B99854:
/* 80B99854  2C 00 00 01 */	cmpwi r0, 1
/* 80B99858  40 82 00 0C */	bne lbl_80B99864
/* 80B9985C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B99860  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B99864:
/* 80B99864  38 7E 00 00 */	addi r3, r30, 0
/* 80B99868  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 80B9986C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B99870  40 81 00 30 */	ble lbl_80B998A0
/* 80B99874  38 00 00 03 */	li r0, 3
/* 80B99878  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80B9987C  7F E3 FB 78 */	mr r3, r31
/* 80B99880  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80B99884  4B 48 0E 8D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B99888  7C 64 1B 78 */	mr r4, r3
/* 80B9988C  7F E3 FB 78 */	mr r3, r31
/* 80B99890  4B 5B A9 C1 */	bl setAngle__8daNpcF_cFs
/* 80B99894  48 00 00 0C */	b lbl_80B998A0
lbl_80B99898:
/* 80B99898  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80B9989C  D0 1F 14 50 */	stfs f0, 0x1450(r31)
lbl_80B998A0:
/* 80B998A0  38 60 00 01 */	li r3, 1
/* 80B998A4  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80B998A8  4B 7C 89 79 */	bl _restgpr_27
/* 80B998AC  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80B998B0  7C 08 03 A6 */	mtlr r0
/* 80B998B4  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80B998B8  4E 80 00 20 */	blr 
