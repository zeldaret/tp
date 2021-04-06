lbl_809F5E0C:
/* 809F5E0C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 809F5E10  7C 08 02 A6 */	mflr r0
/* 809F5E14  90 01 00 94 */	stw r0, 0x94(r1)
/* 809F5E18  39 61 00 90 */	addi r11, r1, 0x90
/* 809F5E1C  4B 96 C3 AD */	bl _savegpr_24
/* 809F5E20  7C 7A 1B 78 */	mr r26, r3
/* 809F5E24  7C 98 23 78 */	mr r24, r4
/* 809F5E28  3C 60 80 A0 */	lis r3, m__19daNpc_GWolf_Param_c@ha /* 0x809F84F4@ha */
/* 809F5E2C  3B C3 84 F4 */	addi r30, r3, m__19daNpc_GWolf_Param_c@l /* 0x809F84F4@l */
/* 809F5E30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F5E34  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F5E38  3B 3F 4F F8 */	addi r25, r31, 0x4ff8
/* 809F5E3C  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 809F5E40  3B 80 00 00 */	li r28, 0
/* 809F5E44  3B 60 FF FF */	li r27, -1
/* 809F5E48  7F 23 CB 78 */	mr r3, r25
/* 809F5E4C  3C A0 80 A0 */	lis r5, d_a_npc_gwolf__stringBase0@ha /* 0x809F871C@ha */
/* 809F5E50  38 A5 87 1C */	addi r5, r5, d_a_npc_gwolf__stringBase0@l /* 0x809F871C@l */
/* 809F5E54  38 A5 00 D3 */	addi r5, r5, 0xd3
/* 809F5E58  38 C0 00 03 */	li r6, 3
/* 809F5E5C  4B 65 22 91 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809F5E60  28 03 00 00 */	cmplwi r3, 0
/* 809F5E64  41 82 00 08 */	beq lbl_809F5E6C
/* 809F5E68  83 63 00 00 */	lwz r27, 0(r3)
lbl_809F5E6C:
/* 809F5E6C  7F 23 CB 78 */	mr r3, r25
/* 809F5E70  7F 04 C3 78 */	mr r4, r24
/* 809F5E74  4B 65 1E D9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809F5E78  2C 03 00 00 */	cmpwi r3, 0
/* 809F5E7C  41 82 03 38 */	beq lbl_809F61B4
/* 809F5E80  28 1B 00 28 */	cmplwi r27, 0x28
/* 809F5E84  41 81 03 30 */	bgt lbl_809F61B4
/* 809F5E88  3C 60 80 A0 */	lis r3, lit_5641@ha /* 0x809F8B78@ha */
/* 809F5E8C  38 63 8B 78 */	addi r3, r3, lit_5641@l /* 0x809F8B78@l */
/* 809F5E90  57 60 10 3A */	slwi r0, r27, 2
/* 809F5E94  7C 03 00 2E */	lwzx r0, r3, r0
/* 809F5E98  7C 09 03 A6 */	mtctr r0
/* 809F5E9C  4E 80 04 20 */	bctr 
lbl_809F5EA0:
/* 809F5EA0  7F 43 D3 78 */	mr r3, r26
/* 809F5EA4  38 80 00 00 */	li r4, 0
/* 809F5EA8  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809F5EAC  38 A0 00 00 */	li r5, 0
/* 809F5EB0  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 809F5EB4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F5EB8  7D 89 03 A6 */	mtctr r12
/* 809F5EBC  4E 80 04 21 */	bctrl 
/* 809F5EC0  7F 43 D3 78 */	mr r3, r26
/* 809F5EC4  38 80 00 00 */	li r4, 0
/* 809F5EC8  4B FF FC 99 */	bl setLookMode__13daNpc_GWolf_cFi
/* 809F5ECC  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F5ED0  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 809F5ED4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 809F5ED8  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 809F5EDC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 809F5EE0  C0 1E 01 D8 */	lfs f0, 0x1d8(r30)
/* 809F5EE4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 809F5EE8  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 809F5EEC  4B 61 6E 79 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 809F5EF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809F5EF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809F5EF8  A8 9A 08 F2 */	lha r4, 0x8f2(r26)
/* 809F5EFC  4B 61 65 39 */	bl mDoMtx_YrotM__FPA4_fs
/* 809F5F00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809F5F04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809F5F08  38 81 00 64 */	addi r4, r1, 0x64
/* 809F5F0C  7C 85 23 78 */	mr r5, r4
/* 809F5F10  4B 95 0E 5D */	bl PSMTXMultVec
/* 809F5F14  38 61 00 64 */	addi r3, r1, 0x64
/* 809F5F18  4B 62 7D A5 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 809F5F1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809F5F20  41 82 00 10 */	beq lbl_809F5F30
/* 809F5F24  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 809F5F28  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 809F5F2C  D0 01 00 68 */	stfs f0, 0x68(r1)
lbl_809F5F30:
/* 809F5F30  38 61 00 64 */	addi r3, r1, 0x64
/* 809F5F34  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 809F5F38  4B 87 AC CD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809F5F3C  7C 65 1B 78 */	mr r5, r3
/* 809F5F40  7F A3 EB 78 */	mr r3, r29
/* 809F5F44  38 81 00 64 */	addi r4, r1, 0x64
/* 809F5F48  38 C0 00 00 */	li r6, 0
/* 809F5F4C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 809F5F50  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 809F5F54  7D 89 03 A6 */	mtctr r12
/* 809F5F58  4E 80 04 21 */	bctrl 
/* 809F5F5C  48 00 02 58 */	b lbl_809F61B4
lbl_809F5F60:
/* 809F5F60  7F 43 D3 78 */	mr r3, r26
/* 809F5F64  38 80 00 01 */	li r4, 1
/* 809F5F68  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809F5F6C  38 A0 00 00 */	li r5, 0
/* 809F5F70  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 809F5F74  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F5F78  7D 89 03 A6 */	mtctr r12
/* 809F5F7C  4E 80 04 21 */	bctrl 
/* 809F5F80  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060085@ha */
/* 809F5F84  38 03 00 85 */	addi r0, r3, 0x0085 /* 0x00060085@l */
/* 809F5F88  90 01 00 18 */	stw r0, 0x18(r1)
/* 809F5F8C  38 7A 0B 48 */	addi r3, r26, 0xb48
/* 809F5F90  38 81 00 18 */	addi r4, r1, 0x18
/* 809F5F94  38 A0 FF FF */	li r5, -1
/* 809F5F98  81 9A 0B 48 */	lwz r12, 0xb48(r26)
/* 809F5F9C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809F5FA0  7D 89 03 A6 */	mtctr r12
/* 809F5FA4  4E 80 04 21 */	bctrl 
/* 809F5FA8  48 00 02 0C */	b lbl_809F61B4
lbl_809F5FAC:
/* 809F5FAC  38 00 00 14 */	li r0, 0x14
/* 809F5FB0  90 1A 09 60 */	stw r0, 0x960(r26)
/* 809F5FB4  4B 78 B6 8D */	bl dCam_getBody__Fv
/* 809F5FB8  38 80 13 88 */	li r4, 0x1388
/* 809F5FBC  7F 45 D3 78 */	mr r5, r26
/* 809F5FC0  38 DE 00 00 */	addi r6, r30, 0
/* 809F5FC4  C0 26 00 84 */	lfs f1, 0x84(r6)
/* 809F5FC8  C0 46 00 80 */	lfs f2, 0x80(r6)
/* 809F5FCC  4B 78 B1 A5 */	bl StartBlure__9dCamera_cFiP10fopAc_ac_cff
/* 809F5FD0  48 00 01 E4 */	b lbl_809F61B4
lbl_809F5FD4:
/* 809F5FD4  7F 43 D3 78 */	mr r3, r26
/* 809F5FD8  38 80 00 02 */	li r4, 2
/* 809F5FDC  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809F5FE0  38 A0 00 00 */	li r5, 0
/* 809F5FE4  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 809F5FE8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F5FEC  7D 89 03 A6 */	mtctr r12
/* 809F5FF0  4E 80 04 21 */	bctrl 
/* 809F5FF4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060084@ha */
/* 809F5FF8  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x00060084@l */
/* 809F5FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F6000  38 7A 0B 48 */	addi r3, r26, 0xb48
/* 809F6004  38 81 00 14 */	addi r4, r1, 0x14
/* 809F6008  38 A0 FF FF */	li r5, -1
/* 809F600C  81 9A 0B 48 */	lwz r12, 0xb48(r26)
/* 809F6010  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809F6014  7D 89 03 A6 */	mtctr r12
/* 809F6018  4E 80 04 21 */	bctrl 
/* 809F601C  48 00 01 98 */	b lbl_809F61B4
lbl_809F6020:
/* 809F6020  80 1A 0C B8 */	lwz r0, 0xcb8(r26)
/* 809F6024  60 00 01 00 */	ori r0, r0, 0x100
/* 809F6028  90 1A 0C B8 */	stw r0, 0xcb8(r26)
/* 809F602C  80 1A 0C B8 */	lwz r0, 0xcb8(r26)
/* 809F6030  60 00 02 00 */	ori r0, r0, 0x200
/* 809F6034  90 1A 0C B8 */	stw r0, 0xcb8(r26)
/* 809F6038  38 7E 00 00 */	addi r3, r30, 0
/* 809F603C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 809F6040  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 809F6044  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 809F6048  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 809F604C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 809F6050  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 809F6054  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 809F6058  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 809F605C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 809F6060  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 809F6064  38 61 00 40 */	addi r3, r1, 0x40
/* 809F6068  38 81 00 58 */	addi r4, r1, 0x58
/* 809F606C  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 809F6070  4B 87 0A C5 */	bl __mi__4cXyzCFRC3Vec
/* 809F6074  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 809F6078  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809F607C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F6080  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809F6084  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 809F6088  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809F608C  38 61 00 28 */	addi r3, r1, 0x28
/* 809F6090  4B 95 10 A9 */	bl PSVECSquareMag
/* 809F6094  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F6098  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F609C  40 81 00 58 */	ble lbl_809F60F4
/* 809F60A0  FC 00 08 34 */	frsqrte f0, f1
/* 809F60A4  C8 9E 00 D0 */	lfd f4, 0xd0(r30)
/* 809F60A8  FC 44 00 32 */	fmul f2, f4, f0
/* 809F60AC  C8 7E 00 D8 */	lfd f3, 0xd8(r30)
/* 809F60B0  FC 00 00 32 */	fmul f0, f0, f0
/* 809F60B4  FC 01 00 32 */	fmul f0, f1, f0
/* 809F60B8  FC 03 00 28 */	fsub f0, f3, f0
/* 809F60BC  FC 02 00 32 */	fmul f0, f2, f0
/* 809F60C0  FC 44 00 32 */	fmul f2, f4, f0
/* 809F60C4  FC 00 00 32 */	fmul f0, f0, f0
/* 809F60C8  FC 01 00 32 */	fmul f0, f1, f0
/* 809F60CC  FC 03 00 28 */	fsub f0, f3, f0
/* 809F60D0  FC 02 00 32 */	fmul f0, f2, f0
/* 809F60D4  FC 44 00 32 */	fmul f2, f4, f0
/* 809F60D8  FC 00 00 32 */	fmul f0, f0, f0
/* 809F60DC  FC 01 00 32 */	fmul f0, f1, f0
/* 809F60E0  FC 03 00 28 */	fsub f0, f3, f0
/* 809F60E4  FC 02 00 32 */	fmul f0, f2, f0
/* 809F60E8  FC 21 00 32 */	fmul f1, f1, f0
/* 809F60EC  FC 20 08 18 */	frsp f1, f1
/* 809F60F0  48 00 00 88 */	b lbl_809F6178
lbl_809F60F4:
/* 809F60F4  C8 1E 00 E0 */	lfd f0, 0xe0(r30)
/* 809F60F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F60FC  40 80 00 10 */	bge lbl_809F610C
/* 809F6100  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809F6104  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809F6108  48 00 00 70 */	b lbl_809F6178
lbl_809F610C:
/* 809F610C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809F6110  80 81 00 0C */	lwz r4, 0xc(r1)
/* 809F6114  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809F6118  3C 00 7F 80 */	lis r0, 0x7f80
/* 809F611C  7C 03 00 00 */	cmpw r3, r0
/* 809F6120  41 82 00 14 */	beq lbl_809F6134
/* 809F6124  40 80 00 40 */	bge lbl_809F6164
/* 809F6128  2C 03 00 00 */	cmpwi r3, 0
/* 809F612C  41 82 00 20 */	beq lbl_809F614C
/* 809F6130  48 00 00 34 */	b lbl_809F6164
lbl_809F6134:
/* 809F6134  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809F6138  41 82 00 0C */	beq lbl_809F6144
/* 809F613C  38 00 00 01 */	li r0, 1
/* 809F6140  48 00 00 28 */	b lbl_809F6168
lbl_809F6144:
/* 809F6144  38 00 00 02 */	li r0, 2
/* 809F6148  48 00 00 20 */	b lbl_809F6168
lbl_809F614C:
/* 809F614C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809F6150  41 82 00 0C */	beq lbl_809F615C
/* 809F6154  38 00 00 05 */	li r0, 5
/* 809F6158  48 00 00 10 */	b lbl_809F6168
lbl_809F615C:
/* 809F615C  38 00 00 03 */	li r0, 3
/* 809F6160  48 00 00 08 */	b lbl_809F6168
lbl_809F6164:
/* 809F6164  38 00 00 04 */	li r0, 4
lbl_809F6168:
/* 809F6168  2C 00 00 01 */	cmpwi r0, 1
/* 809F616C  40 82 00 0C */	bne lbl_809F6178
/* 809F6170  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809F6174  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_809F6178:
/* 809F6178  C0 7A 04 FC */	lfs f3, 0x4fc(r26)
/* 809F617C  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 809F6180  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 809F6184  EC 42 00 28 */	fsubs f2, f2, f0
/* 809F6188  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 809F618C  EC 01 00 24 */	fdivs f0, f1, f0
/* 809F6190  EC 02 00 24 */	fdivs f0, f2, f0
/* 809F6194  EC 03 00 2A */	fadds f0, f3, f0
/* 809F6198  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 809F619C  48 00 00 18 */	b lbl_809F61B4
lbl_809F61A0:
/* 809F61A0  38 7E 00 00 */	addi r3, r30, 0
/* 809F61A4  C0 23 00 6C */	lfs f1, 0x6c(r3)
/* 809F61A8  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 809F61AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 809F61B0  D0 1A 05 2C */	stfs f0, 0x52c(r26)
lbl_809F61B4:
/* 809F61B4  28 1B 00 28 */	cmplwi r27, 0x28
/* 809F61B8  41 81 03 70 */	bgt lbl_809F6528
/* 809F61BC  3C 60 80 A0 */	lis r3, lit_5642@ha /* 0x809F8AD4@ha */
/* 809F61C0  38 63 8A D4 */	addi r3, r3, lit_5642@l /* 0x809F8AD4@l */
/* 809F61C4  57 60 10 3A */	slwi r0, r27, 2
/* 809F61C8  7C 03 00 2E */	lwzx r0, r3, r0
/* 809F61CC  7C 09 03 A6 */	mtctr r0
/* 809F61D0  4E 80 04 20 */	bctr 
lbl_809F61D4:
/* 809F61D4  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F61D8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809F61DC  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 809F61E0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 809F61E4  C0 1E 01 D8 */	lfs f0, 0x1d8(r30)
/* 809F61E8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 809F61EC  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 809F61F0  4B 61 6B 75 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 809F61F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809F61F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809F61FC  A8 9A 08 F2 */	lha r4, 0x8f2(r26)
/* 809F6200  4B 61 62 35 */	bl mDoMtx_YrotM__FPA4_fs
/* 809F6204  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809F6208  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809F620C  38 81 00 4C */	addi r4, r1, 0x4c
/* 809F6210  7C 85 23 78 */	mr r5, r4
/* 809F6214  4B 95 0B 59 */	bl PSMTXMultVec
/* 809F6218  38 61 00 4C */	addi r3, r1, 0x4c
/* 809F621C  4B 62 7A A1 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 809F6220  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809F6224  41 82 00 10 */	beq lbl_809F6234
/* 809F6228  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 809F622C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 809F6230  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_809F6234:
/* 809F6234  38 61 00 4C */	addi r3, r1, 0x4c
/* 809F6238  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 809F623C  4B 87 A9 C9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809F6240  7C 65 1B 78 */	mr r5, r3
/* 809F6244  7F A3 EB 78 */	mr r3, r29
/* 809F6248  38 81 00 4C */	addi r4, r1, 0x4c
/* 809F624C  38 C0 00 00 */	li r6, 0
/* 809F6250  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 809F6254  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 809F6258  7D 89 03 A6 */	mtctr r12
/* 809F625C  4E 80 04 21 */	bctrl 
/* 809F6260  3B 80 00 01 */	li r28, 1
/* 809F6264  48 00 02 C8 */	b lbl_809F652C
lbl_809F6268:
/* 809F6268  7F 43 D3 78 */	mr r3, r26
/* 809F626C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809F6270  4B 62 44 A1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809F6274  7C 64 1B 78 */	mr r4, r3
/* 809F6278  38 7A 08 F2 */	addi r3, r26, 0x8f2
/* 809F627C  38 A0 00 02 */	li r5, 2
/* 809F6280  38 C0 08 00 */	li r6, 0x800
/* 809F6284  4B 87 A3 85 */	bl cLib_addCalcAngleS2__FPssss
/* 809F6288  7F 43 D3 78 */	mr r3, r26
/* 809F628C  A8 9A 08 F2 */	lha r4, 0x8f2(r26)
/* 809F6290  4B 75 DF C1 */	bl setAngle__8daNpcF_cFs
/* 809F6294  3B 80 00 01 */	li r28, 1
/* 809F6298  48 00 02 94 */	b lbl_809F652C
lbl_809F629C:
/* 809F629C  38 7A 09 60 */	addi r3, r26, 0x960
/* 809F62A0  48 00 20 F9 */	bl func_809F8398
/* 809F62A4  2C 03 00 00 */	cmpwi r3, 0
/* 809F62A8  40 82 02 84 */	bne lbl_809F652C
/* 809F62AC  3B 80 00 01 */	li r28, 1
/* 809F62B0  48 00 02 7C */	b lbl_809F652C
lbl_809F62B4:
/* 809F62B4  A8 1A 09 E0 */	lha r0, 0x9e0(r26)
/* 809F62B8  2C 00 00 02 */	cmpwi r0, 2
/* 809F62BC  40 82 02 70 */	bne lbl_809F652C
/* 809F62C0  A8 1A 09 DA */	lha r0, 0x9da(r26)
/* 809F62C4  2C 00 00 00 */	cmpwi r0, 0
/* 809F62C8  40 81 02 64 */	ble lbl_809F652C
/* 809F62CC  3B 80 00 01 */	li r28, 1
/* 809F62D0  48 00 02 5C */	b lbl_809F652C
lbl_809F62D4:
/* 809F62D4  A8 1A 09 E0 */	lha r0, 0x9e0(r26)
/* 809F62D8  2C 00 00 02 */	cmpwi r0, 2
/* 809F62DC  40 82 02 50 */	bne lbl_809F652C
/* 809F62E0  A8 1A 09 DA */	lha r0, 0x9da(r26)
/* 809F62E4  2C 00 00 00 */	cmpwi r0, 0
/* 809F62E8  40 81 02 44 */	ble lbl_809F652C
/* 809F62EC  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 809F62F0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809F62F4  C0 1E 01 E0 */	lfs f0, 0x1e0(r30)
/* 809F62F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F62FC  4C 41 13 82 */	cror 2, 1, 2
/* 809F6300  40 82 00 28 */	bne lbl_809F6328
/* 809F6304  C0 3A 04 FC */	lfs f1, 0x4fc(r26)
/* 809F6308  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 809F630C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F6310  40 81 00 10 */	ble lbl_809F6320
/* 809F6314  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F6318  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809F631C  48 00 00 0C */	b lbl_809F6328
lbl_809F6320:
/* 809F6320  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 809F6324  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_809F6328:
/* 809F6328  38 61 00 34 */	addi r3, r1, 0x34
/* 809F632C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809F6330  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 809F6334  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 809F6338  4B 87 07 FD */	bl __mi__4cXyzCFRC3Vec
/* 809F633C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 809F6340  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809F6344  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F6348  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809F634C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 809F6350  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809F6354  38 61 00 1C */	addi r3, r1, 0x1c
/* 809F6358  4B 95 0D E1 */	bl PSVECSquareMag
/* 809F635C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F6360  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F6364  40 81 00 58 */	ble lbl_809F63BC
/* 809F6368  FC 00 08 34 */	frsqrte f0, f1
/* 809F636C  C8 9E 00 D0 */	lfd f4, 0xd0(r30)
/* 809F6370  FC 44 00 32 */	fmul f2, f4, f0
/* 809F6374  C8 7E 00 D8 */	lfd f3, 0xd8(r30)
/* 809F6378  FC 00 00 32 */	fmul f0, f0, f0
/* 809F637C  FC 01 00 32 */	fmul f0, f1, f0
/* 809F6380  FC 03 00 28 */	fsub f0, f3, f0
/* 809F6384  FC 02 00 32 */	fmul f0, f2, f0
/* 809F6388  FC 44 00 32 */	fmul f2, f4, f0
/* 809F638C  FC 00 00 32 */	fmul f0, f0, f0
/* 809F6390  FC 01 00 32 */	fmul f0, f1, f0
/* 809F6394  FC 03 00 28 */	fsub f0, f3, f0
/* 809F6398  FC 02 00 32 */	fmul f0, f2, f0
/* 809F639C  FC 44 00 32 */	fmul f2, f4, f0
/* 809F63A0  FC 00 00 32 */	fmul f0, f0, f0
/* 809F63A4  FC 01 00 32 */	fmul f0, f1, f0
/* 809F63A8  FC 03 00 28 */	fsub f0, f3, f0
/* 809F63AC  FC 02 00 32 */	fmul f0, f2, f0
/* 809F63B0  FC 21 00 32 */	fmul f1, f1, f0
/* 809F63B4  FC 20 08 18 */	frsp f1, f1
/* 809F63B8  48 00 00 88 */	b lbl_809F6440
lbl_809F63BC:
/* 809F63BC  C8 1E 00 E0 */	lfd f0, 0xe0(r30)
/* 809F63C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F63C4  40 80 00 10 */	bge lbl_809F63D4
/* 809F63C8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809F63CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809F63D0  48 00 00 70 */	b lbl_809F6440
lbl_809F63D4:
/* 809F63D4  D0 21 00 08 */	stfs f1, 8(r1)
/* 809F63D8  80 81 00 08 */	lwz r4, 8(r1)
/* 809F63DC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809F63E0  3C 00 7F 80 */	lis r0, 0x7f80
/* 809F63E4  7C 03 00 00 */	cmpw r3, r0
/* 809F63E8  41 82 00 14 */	beq lbl_809F63FC
/* 809F63EC  40 80 00 40 */	bge lbl_809F642C
/* 809F63F0  2C 03 00 00 */	cmpwi r3, 0
/* 809F63F4  41 82 00 20 */	beq lbl_809F6414
/* 809F63F8  48 00 00 34 */	b lbl_809F642C
lbl_809F63FC:
/* 809F63FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809F6400  41 82 00 0C */	beq lbl_809F640C
/* 809F6404  38 00 00 01 */	li r0, 1
/* 809F6408  48 00 00 28 */	b lbl_809F6430
lbl_809F640C:
/* 809F640C  38 00 00 02 */	li r0, 2
/* 809F6410  48 00 00 20 */	b lbl_809F6430
lbl_809F6414:
/* 809F6414  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809F6418  41 82 00 0C */	beq lbl_809F6424
/* 809F641C  38 00 00 05 */	li r0, 5
/* 809F6420  48 00 00 10 */	b lbl_809F6430
lbl_809F6424:
/* 809F6424  38 00 00 03 */	li r0, 3
/* 809F6428  48 00 00 08 */	b lbl_809F6430
lbl_809F642C:
/* 809F642C  38 00 00 04 */	li r0, 4
lbl_809F6430:
/* 809F6430  2C 00 00 01 */	cmpwi r0, 1
/* 809F6434  40 82 00 0C */	bne lbl_809F6440
/* 809F6438  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809F643C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_809F6440:
/* 809F6440  38 7E 00 00 */	addi r3, r30, 0
/* 809F6444  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 809F6448  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F644C  40 80 00 E0 */	bge lbl_809F652C
/* 809F6450  88 1A 0E 11 */	lbz r0, 0xe11(r26)
/* 809F6454  7C 00 07 74 */	extsb r0, r0
/* 809F6458  54 00 08 3C */	slwi r0, r0, 1
/* 809F645C  3C 60 80 A0 */	lis r3, l_appearTmpFlag@ha /* 0x809F8970@ha */
/* 809F6460  38 63 89 70 */	addi r3, r3, l_appearTmpFlag@l /* 0x809F8970@l */
/* 809F6464  7C 63 02 AE */	lhax r3, r3, r0
/* 809F6468  2C 03 FF FF */	cmpwi r3, -1
/* 809F646C  41 82 00 08 */	beq lbl_809F6474
/* 809F6470  4B 75 66 7D */	bl daNpcT_onTmpBit__FUl
lbl_809F6474:
/* 809F6474  80 7A 0E 14 */	lwz r3, 0xe14(r26)
/* 809F6478  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 809F647C  38 80 00 00 */	li r4, 0
/* 809F6480  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 809F6484  7C 05 07 74 */	extsb r5, r0
/* 809F6488  38 C0 00 00 */	li r6, 0
/* 809F648C  38 E0 FF FF */	li r7, -1
/* 809F6490  4B 63 0C E1 */	bl dStage_changeScene__FifUlScsi
/* 809F6494  38 00 00 87 */	li r0, 0x87
/* 809F6498  90 01 00 10 */	stw r0, 0x10(r1)
/* 809F649C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809F64A0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809F64A4  80 63 00 00 */	lwz r3, 0(r3)
/* 809F64A8  38 81 00 10 */	addi r4, r1, 0x10
/* 809F64AC  38 A0 00 00 */	li r5, 0
/* 809F64B0  38 C0 00 00 */	li r6, 0
/* 809F64B4  38 E0 00 00 */	li r7, 0
/* 809F64B8  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 809F64BC  FC 40 08 90 */	fmr f2, f1
/* 809F64C0  C0 7E 00 BC */	lfs f3, 0xbc(r30)
/* 809F64C4  FC 80 18 90 */	fmr f4, f3
/* 809F64C8  39 00 00 00 */	li r8, 0
/* 809F64CC  4B 8B 54 B9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 809F64D0  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 809F64D4  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 809F64D8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809F64DC  3B 80 00 01 */	li r28, 1
/* 809F64E0  48 00 00 4C */	b lbl_809F652C
lbl_809F64E4:
/* 809F64E4  80 1A 05 FC */	lwz r0, 0x5fc(r26)
/* 809F64E8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 809F64EC  41 82 00 40 */	beq lbl_809F652C
/* 809F64F0  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F64F4  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 809F64F8  D0 1A 04 F8 */	stfs f0, 0x4f8(r26)
/* 809F64FC  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 809F6500  D0 1A 05 00 */	stfs f0, 0x500(r26)
/* 809F6504  7F 43 D3 78 */	mr r3, r26
/* 809F6508  38 80 00 03 */	li r4, 3
/* 809F650C  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809F6510  38 A0 00 00 */	li r5, 0
/* 809F6514  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 809F6518  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F651C  7D 89 03 A6 */	mtctr r12
/* 809F6520  4E 80 04 21 */	bctrl 
/* 809F6524  48 00 00 08 */	b lbl_809F652C
lbl_809F6528:
/* 809F6528  3B 80 00 01 */	li r28, 1
lbl_809F652C:
/* 809F652C  7F 83 E3 78 */	mr r3, r28
/* 809F6530  39 61 00 90 */	addi r11, r1, 0x90
/* 809F6534  4B 96 BC E1 */	bl _restgpr_24
/* 809F6538  80 01 00 94 */	lwz r0, 0x94(r1)
/* 809F653C  7C 08 03 A6 */	mtlr r0
/* 809F6540  38 21 00 90 */	addi r1, r1, 0x90
/* 809F6544  4E 80 00 20 */	blr 
