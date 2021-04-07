lbl_80645DA4:
/* 80645DA4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80645DA8  7C 08 02 A6 */	mflr r0
/* 80645DAC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80645DB0  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80645DB4  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80645DB8  39 61 00 90 */	addi r11, r1, 0x90
/* 80645DBC  4B D1 C4 19 */	bl _savegpr_27
/* 80645DC0  7C 7C 1B 78 */	mr r28, r3
/* 80645DC4  3C 60 80 65 */	lis r3, lit_3757@ha /* 0x8064EB1C@ha */
/* 80645DC8  3B E3 EB 1C */	addi r31, r3, lit_3757@l /* 0x8064EB1C@l */
/* 80645DCC  AB DC 04 E6 */	lha r30, 0x4e6(r28)
/* 80645DD0  80 1C 06 DC */	lwz r0, 0x6dc(r28)
/* 80645DD4  2C 00 00 01 */	cmpwi r0, 1
/* 80645DD8  41 82 00 70 */	beq lbl_80645E48
/* 80645DDC  40 80 00 10 */	bge lbl_80645DEC
/* 80645DE0  2C 00 00 00 */	cmpwi r0, 0
/* 80645DE4  40 80 00 14 */	bge lbl_80645DF8
/* 80645DE8  48 00 0A 74 */	b lbl_8064685C
lbl_80645DEC:
/* 80645DEC  2C 00 00 06 */	cmpwi r0, 6
/* 80645DF0  40 80 0A 6C */	bge lbl_8064685C
/* 80645DF4  48 00 02 B0 */	b lbl_806460A4
lbl_80645DF8:
/* 80645DF8  C0 3F 01 98 */	lfs f1, 0x198(r31)
/* 80645DFC  4B C2 1B 91 */	bl cM_rndFX__Ff
/* 80645E00  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 80645E04  EC 00 08 2A */	fadds f0, f0, f1
/* 80645E08  FC 00 00 1E */	fctiwz f0, f0
/* 80645E0C  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80645E10  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80645E14  90 1C 06 E8 */	stw r0, 0x6e8(r28)
/* 80645E18  38 60 00 00 */	li r3, 0
/* 80645E1C  38 BF 00 40 */	addi r5, r31, 0x40
/* 80645E20  38 00 00 06 */	li r0, 6
/* 80645E24  7C 09 03 A6 */	mtctr r0
lbl_80645E28:
/* 80645E28  7C 05 18 2E */	lwzx r0, r5, r3
/* 80645E2C  1C 80 01 38 */	mulli r4, r0, 0x138
/* 80645E30  38 84 0D 4C */	addi r4, r4, 0xd4c
/* 80645E34  7C 1C 20 2E */	lwzx r0, r28, r4
/* 80645E38  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80645E3C  7C 1C 21 2E */	stwx r0, r28, r4
/* 80645E40  38 63 00 04 */	addi r3, r3, 4
/* 80645E44  42 00 FF E4 */	bdnz lbl_80645E28
lbl_80645E48:
/* 80645E48  4B C2 1A 25 */	bl cM_rnd__Fv
/* 80645E4C  FF E0 08 90 */	fmr f31, f1
/* 80645E50  7F 83 E3 78 */	mr r3, r28
/* 80645E54  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80645E58  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80645E5C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80645E60  4B 9D 48 B1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80645E64  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80645E68  7C 03 00 50 */	subf r0, r3, r0
/* 80645E6C  7C 1B 07 34 */	extsh r27, r0
/* 80645E70  7F 83 E3 78 */	mr r3, r28
/* 80645E74  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80645E78  4B 9D 49 69 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80645E7C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80645E80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80645E84  40 80 00 6C */	bge lbl_80645EF0
/* 80645E88  7F 60 07 35 */	extsh. r0, r27
/* 80645E8C  40 80 00 34 */	bge lbl_80645EC0
/* 80645E90  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80645E94  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80645E98  40 80 00 0C */	bge lbl_80645EA4
/* 80645E9C  3B 60 00 04 */	li r27, 4
/* 80645EA0  48 00 00 08 */	b lbl_80645EA8
lbl_80645EA4:
/* 80645EA4  3B 60 00 05 */	li r27, 5
lbl_80645EA8:
/* 80645EA8  7F 83 E3 78 */	mr r3, r28
/* 80645EAC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80645EB0  4B 9D 48 61 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80645EB4  38 03 10 00 */	addi r0, r3, 0x1000
/* 80645EB8  B0 1C 06 BA */	sth r0, 0x6ba(r28)
/* 80645EBC  48 00 01 34 */	b lbl_80645FF0
lbl_80645EC0:
/* 80645EC0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80645EC4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80645EC8  40 80 00 0C */	bge lbl_80645ED4
/* 80645ECC  3B 60 00 02 */	li r27, 2
/* 80645ED0  48 00 00 08 */	b lbl_80645ED8
lbl_80645ED4:
/* 80645ED4  3B 60 00 03 */	li r27, 3
lbl_80645ED8:
/* 80645ED8  7F 83 E3 78 */	mr r3, r28
/* 80645EDC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80645EE0  4B 9D 48 31 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80645EE4  38 03 F0 00 */	addi r0, r3, -4096
/* 80645EE8  B0 1C 06 BA */	sth r0, 0x6ba(r28)
/* 80645EEC  48 00 01 04 */	b lbl_80645FF0
lbl_80645EF0:
/* 80645EF0  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80645EF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80645EF8  40 80 00 6C */	bge lbl_80645F64
/* 80645EFC  7F 60 07 35 */	extsh. r0, r27
/* 80645F00  40 81 00 34 */	ble lbl_80645F34
/* 80645F04  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80645F08  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80645F0C  40 80 00 0C */	bge lbl_80645F18
/* 80645F10  3B 60 00 02 */	li r27, 2
/* 80645F14  48 00 00 08 */	b lbl_80645F1C
lbl_80645F18:
/* 80645F18  3B 60 00 03 */	li r27, 3
lbl_80645F1C:
/* 80645F1C  7F 83 E3 78 */	mr r3, r28
/* 80645F20  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80645F24  4B 9D 47 ED */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80645F28  38 03 40 00 */	addi r0, r3, 0x4000
/* 80645F2C  B0 1C 06 BA */	sth r0, 0x6ba(r28)
/* 80645F30  48 00 00 C0 */	b lbl_80645FF0
lbl_80645F34:
/* 80645F34  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80645F38  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80645F3C  40 80 00 0C */	bge lbl_80645F48
/* 80645F40  3B 60 00 04 */	li r27, 4
/* 80645F44  48 00 00 08 */	b lbl_80645F4C
lbl_80645F48:
/* 80645F48  3B 60 00 05 */	li r27, 5
lbl_80645F4C:
/* 80645F4C  7F 83 E3 78 */	mr r3, r28
/* 80645F50  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80645F54  4B 9D 47 BD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80645F58  38 03 C0 00 */	addi r0, r3, -16384
/* 80645F5C  B0 1C 06 BA */	sth r0, 0x6ba(r28)
/* 80645F60  48 00 00 90 */	b lbl_80645FF0
lbl_80645F64:
/* 80645F64  7F 63 DB 78 */	mr r3, r27
/* 80645F68  4B D1 F1 69 */	bl abs
/* 80645F6C  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80645F70  40 81 00 44 */	ble lbl_80645FB4
/* 80645F74  7F 60 07 35 */	extsh. r0, r27
/* 80645F78  40 80 00 20 */	bge lbl_80645F98
/* 80645F7C  3B 60 00 04 */	li r27, 4
/* 80645F80  7F 83 E3 78 */	mr r3, r28
/* 80645F84  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80645F88  4B 9D 47 89 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80645F8C  38 03 F0 00 */	addi r0, r3, -4096
/* 80645F90  B0 1C 06 BA */	sth r0, 0x6ba(r28)
/* 80645F94  48 00 00 5C */	b lbl_80645FF0
lbl_80645F98:
/* 80645F98  3B 60 00 02 */	li r27, 2
/* 80645F9C  7F 83 E3 78 */	mr r3, r28
/* 80645FA0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80645FA4  4B 9D 47 6D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80645FA8  38 03 10 00 */	addi r0, r3, 0x1000
/* 80645FAC  B0 1C 06 BA */	sth r0, 0x6ba(r28)
/* 80645FB0  48 00 00 40 */	b lbl_80645FF0
lbl_80645FB4:
/* 80645FB4  7F 60 07 35 */	extsh. r0, r27
/* 80645FB8  40 80 00 20 */	bge lbl_80645FD8
/* 80645FBC  3B 60 00 02 */	li r27, 2
/* 80645FC0  7F 83 E3 78 */	mr r3, r28
/* 80645FC4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80645FC8  4B 9D 47 49 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80645FCC  38 03 40 00 */	addi r0, r3, 0x4000
/* 80645FD0  B0 1C 06 BA */	sth r0, 0x6ba(r28)
/* 80645FD4  48 00 00 1C */	b lbl_80645FF0
lbl_80645FD8:
/* 80645FD8  3B 60 00 04 */	li r27, 4
/* 80645FDC  7F 83 E3 78 */	mr r3, r28
/* 80645FE0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80645FE4  4B 9D 47 2D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80645FE8  38 03 C0 00 */	addi r0, r3, -16384
/* 80645FEC  B0 1C 06 BA */	sth r0, 0x6ba(r28)
lbl_80645FF0:
/* 80645FF0  2C 1B 00 04 */	cmpwi r27, 4
/* 80645FF4  41 82 00 6C */	beq lbl_80646060
/* 80645FF8  40 80 00 14 */	bge lbl_8064600C
/* 80645FFC  2C 1B 00 02 */	cmpwi r27, 2
/* 80646000  41 82 00 18 */	beq lbl_80646018
/* 80646004  40 80 00 38 */	bge lbl_8064603C
/* 80646008  48 00 00 9C */	b lbl_806460A4
lbl_8064600C:
/* 8064600C  2C 1B 00 06 */	cmpwi r27, 6
/* 80646010  40 80 00 94 */	bge lbl_806460A4
/* 80646014  48 00 00 70 */	b lbl_80646084
lbl_80646018:
/* 80646018  7F 83 E3 78 */	mr r3, r28
/* 8064601C  38 80 00 3D */	li r4, 0x3d
/* 80646020  38 A0 00 00 */	li r5, 0
/* 80646024  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80646028  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8064602C  4B FF 85 99 */	bl setBck__10daB_ZANT_cFiUcff
/* 80646030  38 00 00 02 */	li r0, 2
/* 80646034  90 1C 06 DC */	stw r0, 0x6dc(r28)
/* 80646038  48 00 00 6C */	b lbl_806460A4
lbl_8064603C:
/* 8064603C  7F 83 E3 78 */	mr r3, r28
/* 80646040  38 80 00 3F */	li r4, 0x3f
/* 80646044  38 A0 00 00 */	li r5, 0
/* 80646048  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8064604C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80646050  4B FF 85 75 */	bl setBck__10daB_ZANT_cFiUcff
/* 80646054  38 00 00 03 */	li r0, 3
/* 80646058  90 1C 06 DC */	stw r0, 0x6dc(r28)
/* 8064605C  48 00 00 48 */	b lbl_806460A4
lbl_80646060:
/* 80646060  7F 83 E3 78 */	mr r3, r28
/* 80646064  38 80 00 3E */	li r4, 0x3e
/* 80646068  38 A0 00 00 */	li r5, 0
/* 8064606C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80646070  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80646074  4B FF 85 51 */	bl setBck__10daB_ZANT_cFiUcff
/* 80646078  38 00 00 04 */	li r0, 4
/* 8064607C  90 1C 06 DC */	stw r0, 0x6dc(r28)
/* 80646080  48 00 00 24 */	b lbl_806460A4
lbl_80646084:
/* 80646084  7F 83 E3 78 */	mr r3, r28
/* 80646088  38 80 00 40 */	li r4, 0x40
/* 8064608C  38 A0 00 00 */	li r5, 0
/* 80646090  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80646094  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80646098  4B FF 85 2D */	bl setBck__10daB_ZANT_cFiUcff
/* 8064609C  38 00 00 05 */	li r0, 5
/* 806460A0  90 1C 06 DC */	stw r0, 0x6dc(r28)
lbl_806460A4:
/* 806460A4  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806460A8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806460AC  3B A0 00 00 */	li r29, 0
/* 806460B0  80 1C 06 DC */	lwz r0, 0x6dc(r28)
/* 806460B4  2C 00 00 02 */	cmpwi r0, 2
/* 806460B8  40 82 01 18 */	bne lbl_806461D0
/* 806460BC  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 806460C0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806460C4  4C 40 13 82 */	cror 2, 0, 2
/* 806460C8  40 82 00 18 */	bne lbl_806460E0
/* 806460CC  C0 1F 01 F8 */	lfs f0, 0x1f8(r31)
/* 806460D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806460D4  4C 40 13 82 */	cror 2, 0, 2
/* 806460D8  40 82 00 08 */	bne lbl_806460E0
/* 806460DC  3B A0 00 01 */	li r29, 1
lbl_806460E0:
/* 806460E0  38 63 00 0C */	addi r3, r3, 0xc
/* 806460E4  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 806460E8  4B CE 23 45 */	bl checkPass__12J3DFrameCtrlFf
/* 806460EC  2C 03 00 00 */	cmpwi r3, 0
/* 806460F0  41 82 00 38 */	beq lbl_80646128
/* 806460F4  80 1C 1E F8 */	lwz r0, 0x1ef8(r28)
/* 806460F8  60 00 00 01 */	ori r0, r0, 1
/* 806460FC  90 1C 1E F8 */	stw r0, 0x1ef8(r28)
/* 80646100  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070435@ha */
/* 80646104  38 03 04 35 */	addi r0, r3, 0x0435 /* 0x00070435@l */
/* 80646108  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8064610C  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 80646110  38 81 00 2C */	addi r4, r1, 0x2c
/* 80646114  38 A0 FF FF */	li r5, -1
/* 80646118  81 9C 05 F0 */	lwz r12, 0x5f0(r28)
/* 8064611C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80646120  7D 89 03 A6 */	mtctr r12
/* 80646124  4E 80 04 21 */	bctrl 
lbl_80646128:
/* 80646128  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 8064612C  38 63 00 0C */	addi r3, r3, 0xc
/* 80646130  C0 3F 01 D0 */	lfs f1, 0x1d0(r31)
/* 80646134  4B CE 22 F9 */	bl checkPass__12J3DFrameCtrlFf
/* 80646138  2C 03 00 00 */	cmpwi r3, 0
/* 8064613C  41 82 00 6C */	beq lbl_806461A8
/* 80646140  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070434@ha */
/* 80646144  38 03 04 34 */	addi r0, r3, 0x0434 /* 0x00070434@l */
/* 80646148  90 01 00 28 */	stw r0, 0x28(r1)
/* 8064614C  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 80646150  38 81 00 28 */	addi r4, r1, 0x28
/* 80646154  38 A0 00 00 */	li r5, 0
/* 80646158  38 C0 FF FF */	li r6, -1
/* 8064615C  81 9C 05 F0 */	lwz r12, 0x5f0(r28)
/* 80646160  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80646164  7D 89 03 A6 */	mtctr r12
/* 80646168  4E 80 04 21 */	bctrl 
/* 8064616C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80646170  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80646174  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80646178  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8064617C  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80646180  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80646184  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80646188  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8064618C  38 80 00 06 */	li r4, 6
/* 80646190  38 A0 00 1F */	li r5, 0x1f
/* 80646194  38 C1 00 54 */	addi r6, r1, 0x54
/* 80646198  4B A2 98 8D */	bl StartShock__12dVibration_cFii4cXyz
/* 8064619C  7F 83 E3 78 */	mr r3, r28
/* 806461A0  38 80 00 01 */	li r4, 1
/* 806461A4  4B FF 9F DD */	bl setIceLandingEffect__10daB_ZANT_cFi
lbl_806461A8:
/* 806461A8  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806461AC  38 63 00 0C */	addi r3, r3, 0xc
/* 806461B0  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 806461B4  4B CE 22 79 */	bl checkPass__12J3DFrameCtrlFf
/* 806461B8  2C 03 00 00 */	cmpwi r3, 0
/* 806461BC  41 82 04 BC */	beq lbl_80646678
/* 806461C0  80 1C 1E F8 */	lwz r0, 0x1ef8(r28)
/* 806461C4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806461C8  90 1C 1E F8 */	stw r0, 0x1ef8(r28)
/* 806461CC  48 00 04 AC */	b lbl_80646678
lbl_806461D0:
/* 806461D0  2C 00 00 03 */	cmpwi r0, 3
/* 806461D4  40 82 01 C8 */	bne lbl_8064639C
/* 806461D8  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 806461DC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806461E0  4C 40 13 82 */	cror 2, 0, 2
/* 806461E4  40 82 00 18 */	bne lbl_806461FC
/* 806461E8  C0 1F 01 FC */	lfs f0, 0x1fc(r31)
/* 806461EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806461F0  4C 40 13 82 */	cror 2, 0, 2
/* 806461F4  40 82 00 08 */	bne lbl_806461FC
/* 806461F8  3B A0 00 01 */	li r29, 1
lbl_806461FC:
/* 806461FC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80646200  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80646204  4C 40 13 82 */	cror 2, 0, 2
/* 80646208  40 82 00 18 */	bne lbl_80646220
/* 8064620C  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 80646210  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80646214  4C 40 13 82 */	cror 2, 0, 2
/* 80646218  40 82 00 08 */	bne lbl_80646220
/* 8064621C  3B A0 00 01 */	li r29, 1
lbl_80646220:
/* 80646220  38 63 00 0C */	addi r3, r3, 0xc
/* 80646224  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80646228  4B CE 22 05 */	bl checkPass__12J3DFrameCtrlFf
/* 8064622C  2C 03 00 00 */	cmpwi r3, 0
/* 80646230  40 82 00 1C */	bne lbl_8064624C
/* 80646234  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80646238  38 63 00 0C */	addi r3, r3, 0xc
/* 8064623C  C0 3F 02 00 */	lfs f1, 0x200(r31)
/* 80646240  4B CE 21 ED */	bl checkPass__12J3DFrameCtrlFf
/* 80646244  2C 03 00 00 */	cmpwi r3, 0
/* 80646248  41 82 00 7C */	beq lbl_806462C4
lbl_8064624C:
/* 8064624C  80 1C 1E F8 */	lwz r0, 0x1ef8(r28)
/* 80646250  60 00 00 01 */	ori r0, r0, 1
/* 80646254  90 1C 1E F8 */	stw r0, 0x1ef8(r28)
/* 80646258  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 8064625C  38 63 00 0C */	addi r3, r3, 0xc
/* 80646260  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80646264  4B CE 21 C9 */	bl checkPass__12J3DFrameCtrlFf
/* 80646268  2C 03 00 00 */	cmpwi r3, 0
/* 8064626C  41 82 00 30 */	beq lbl_8064629C
/* 80646270  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070436@ha */
/* 80646274  38 03 04 36 */	addi r0, r3, 0x0436 /* 0x00070436@l */
/* 80646278  90 01 00 24 */	stw r0, 0x24(r1)
/* 8064627C  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 80646280  38 81 00 24 */	addi r4, r1, 0x24
/* 80646284  38 A0 FF FF */	li r5, -1
/* 80646288  81 9C 05 F0 */	lwz r12, 0x5f0(r28)
/* 8064628C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80646290  7D 89 03 A6 */	mtctr r12
/* 80646294  4E 80 04 21 */	bctrl 
/* 80646298  48 00 00 2C */	b lbl_806462C4
lbl_8064629C:
/* 8064629C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070437@ha */
/* 806462A0  38 03 04 37 */	addi r0, r3, 0x0437 /* 0x00070437@l */
/* 806462A4  90 01 00 20 */	stw r0, 0x20(r1)
/* 806462A8  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 806462AC  38 81 00 20 */	addi r4, r1, 0x20
/* 806462B0  38 A0 FF FF */	li r5, -1
/* 806462B4  81 9C 05 F0 */	lwz r12, 0x5f0(r28)
/* 806462B8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806462BC  7D 89 03 A6 */	mtctr r12
/* 806462C0  4E 80 04 21 */	bctrl 
lbl_806462C4:
/* 806462C4  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806462C8  38 63 00 0C */	addi r3, r3, 0xc
/* 806462CC  C0 3F 02 04 */	lfs f1, 0x204(r31)
/* 806462D0  4B CE 21 5D */	bl checkPass__12J3DFrameCtrlFf
/* 806462D4  2C 03 00 00 */	cmpwi r3, 0
/* 806462D8  40 82 00 1C */	bne lbl_806462F4
/* 806462DC  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806462E0  38 63 00 0C */	addi r3, r3, 0xc
/* 806462E4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 806462E8  4B CE 21 45 */	bl checkPass__12J3DFrameCtrlFf
/* 806462EC  2C 03 00 00 */	cmpwi r3, 0
/* 806462F0  41 82 00 6C */	beq lbl_8064635C
lbl_806462F4:
/* 806462F4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070434@ha */
/* 806462F8  38 03 04 34 */	addi r0, r3, 0x0434 /* 0x00070434@l */
/* 806462FC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80646300  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 80646304  38 81 00 1C */	addi r4, r1, 0x1c
/* 80646308  38 A0 00 00 */	li r5, 0
/* 8064630C  38 C0 FF FF */	li r6, -1
/* 80646310  81 9C 05 F0 */	lwz r12, 0x5f0(r28)
/* 80646314  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80646318  7D 89 03 A6 */	mtctr r12
/* 8064631C  4E 80 04 21 */	bctrl 
/* 80646320  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80646324  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80646328  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8064632C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80646330  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80646334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80646338  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064633C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80646340  38 80 00 06 */	li r4, 6
/* 80646344  38 A0 00 1F */	li r5, 0x1f
/* 80646348  38 C1 00 48 */	addi r6, r1, 0x48
/* 8064634C  4B A2 96 D9 */	bl StartShock__12dVibration_cFii4cXyz
/* 80646350  7F 83 E3 78 */	mr r3, r28
/* 80646354  38 80 00 01 */	li r4, 1
/* 80646358  4B FF 9E 29 */	bl setIceLandingEffect__10daB_ZANT_cFi
lbl_8064635C:
/* 8064635C  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80646360  38 63 00 0C */	addi r3, r3, 0xc
/* 80646364  C0 3F 01 AC */	lfs f1, 0x1ac(r31)
/* 80646368  4B CE 20 C5 */	bl checkPass__12J3DFrameCtrlFf
/* 8064636C  2C 03 00 00 */	cmpwi r3, 0
/* 80646370  40 82 00 1C */	bne lbl_8064638C
/* 80646374  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80646378  38 63 00 0C */	addi r3, r3, 0xc
/* 8064637C  C0 3F 02 08 */	lfs f1, 0x208(r31)
/* 80646380  4B CE 20 AD */	bl checkPass__12J3DFrameCtrlFf
/* 80646384  2C 03 00 00 */	cmpwi r3, 0
/* 80646388  41 82 02 F0 */	beq lbl_80646678
lbl_8064638C:
/* 8064638C  80 1C 1E F8 */	lwz r0, 0x1ef8(r28)
/* 80646390  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80646394  90 1C 1E F8 */	stw r0, 0x1ef8(r28)
/* 80646398  48 00 02 E0 */	b lbl_80646678
lbl_8064639C:
/* 8064639C  2C 00 00 04 */	cmpwi r0, 4
/* 806463A0  40 82 01 18 */	bne lbl_806464B8
/* 806463A4  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 806463A8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806463AC  4C 40 13 82 */	cror 2, 0, 2
/* 806463B0  40 82 00 18 */	bne lbl_806463C8
/* 806463B4  C0 1F 01 B0 */	lfs f0, 0x1b0(r31)
/* 806463B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806463BC  4C 40 13 82 */	cror 2, 0, 2
/* 806463C0  40 82 00 08 */	bne lbl_806463C8
/* 806463C4  3B A0 00 01 */	li r29, 1
lbl_806463C8:
/* 806463C8  38 63 00 0C */	addi r3, r3, 0xc
/* 806463CC  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 806463D0  4B CE 20 5D */	bl checkPass__12J3DFrameCtrlFf
/* 806463D4  2C 03 00 00 */	cmpwi r3, 0
/* 806463D8  41 82 00 38 */	beq lbl_80646410
/* 806463DC  80 1C 1A 18 */	lwz r0, 0x1a18(r28)
/* 806463E0  60 00 00 01 */	ori r0, r0, 1
/* 806463E4  90 1C 1A 18 */	stw r0, 0x1a18(r28)
/* 806463E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070435@ha */
/* 806463EC  38 03 04 35 */	addi r0, r3, 0x0435 /* 0x00070435@l */
/* 806463F0  90 01 00 18 */	stw r0, 0x18(r1)
/* 806463F4  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 806463F8  38 81 00 18 */	addi r4, r1, 0x18
/* 806463FC  38 A0 FF FF */	li r5, -1
/* 80646400  81 9C 05 F0 */	lwz r12, 0x5f0(r28)
/* 80646404  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80646408  7D 89 03 A6 */	mtctr r12
/* 8064640C  4E 80 04 21 */	bctrl 
lbl_80646410:
/* 80646410  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80646414  38 63 00 0C */	addi r3, r3, 0xc
/* 80646418  C0 3F 01 D0 */	lfs f1, 0x1d0(r31)
/* 8064641C  4B CE 20 11 */	bl checkPass__12J3DFrameCtrlFf
/* 80646420  2C 03 00 00 */	cmpwi r3, 0
/* 80646424  41 82 00 6C */	beq lbl_80646490
/* 80646428  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070434@ha */
/* 8064642C  38 03 04 34 */	addi r0, r3, 0x0434 /* 0x00070434@l */
/* 80646430  90 01 00 14 */	stw r0, 0x14(r1)
/* 80646434  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 80646438  38 81 00 14 */	addi r4, r1, 0x14
/* 8064643C  38 A0 00 00 */	li r5, 0
/* 80646440  38 C0 FF FF */	li r6, -1
/* 80646444  81 9C 05 F0 */	lwz r12, 0x5f0(r28)
/* 80646448  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8064644C  7D 89 03 A6 */	mtctr r12
/* 80646450  4E 80 04 21 */	bctrl 
/* 80646454  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80646458  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8064645C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80646460  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80646464  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80646468  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064646C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80646470  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80646474  38 80 00 06 */	li r4, 6
/* 80646478  38 A0 00 1F */	li r5, 0x1f
/* 8064647C  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80646480  4B A2 95 A5 */	bl StartShock__12dVibration_cFii4cXyz
/* 80646484  7F 83 E3 78 */	mr r3, r28
/* 80646488  38 80 00 00 */	li r4, 0
/* 8064648C  4B FF 9C F5 */	bl setIceLandingEffect__10daB_ZANT_cFi
lbl_80646490:
/* 80646490  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80646494  38 63 00 0C */	addi r3, r3, 0xc
/* 80646498  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8064649C  4B CE 1F 91 */	bl checkPass__12J3DFrameCtrlFf
/* 806464A0  2C 03 00 00 */	cmpwi r3, 0
/* 806464A4  41 82 01 D4 */	beq lbl_80646678
/* 806464A8  80 1C 1A 18 */	lwz r0, 0x1a18(r28)
/* 806464AC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806464B0  90 1C 1A 18 */	stw r0, 0x1a18(r28)
/* 806464B4  48 00 01 C4 */	b lbl_80646678
lbl_806464B8:
/* 806464B8  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 806464BC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806464C0  4C 40 13 82 */	cror 2, 0, 2
/* 806464C4  40 82 00 18 */	bne lbl_806464DC
/* 806464C8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806464CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806464D0  4C 40 13 82 */	cror 2, 0, 2
/* 806464D4  40 82 00 08 */	bne lbl_806464DC
/* 806464D8  3B A0 00 01 */	li r29, 1
lbl_806464DC:
/* 806464DC  C0 1F 02 0C */	lfs f0, 0x20c(r31)
/* 806464E0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806464E4  4C 40 13 82 */	cror 2, 0, 2
/* 806464E8  40 82 00 18 */	bne lbl_80646500
/* 806464EC  C0 1F 02 00 */	lfs f0, 0x200(r31)
/* 806464F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806464F4  4C 40 13 82 */	cror 2, 0, 2
/* 806464F8  40 82 00 08 */	bne lbl_80646500
/* 806464FC  3B A0 00 01 */	li r29, 1
lbl_80646500:
/* 80646500  38 63 00 0C */	addi r3, r3, 0xc
/* 80646504  C0 3F 02 10 */	lfs f1, 0x210(r31)
/* 80646508  4B CE 1F 25 */	bl checkPass__12J3DFrameCtrlFf
/* 8064650C  2C 03 00 00 */	cmpwi r3, 0
/* 80646510  40 82 00 1C */	bne lbl_8064652C
/* 80646514  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80646518  38 63 00 0C */	addi r3, r3, 0xc
/* 8064651C  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80646520  4B CE 1F 0D */	bl checkPass__12J3DFrameCtrlFf
/* 80646524  2C 03 00 00 */	cmpwi r3, 0
/* 80646528  41 82 00 7C */	beq lbl_806465A4
lbl_8064652C:
/* 8064652C  80 1C 1A 18 */	lwz r0, 0x1a18(r28)
/* 80646530  60 00 00 01 */	ori r0, r0, 1
/* 80646534  90 1C 1A 18 */	stw r0, 0x1a18(r28)
/* 80646538  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 8064653C  38 63 00 0C */	addi r3, r3, 0xc
/* 80646540  C0 3F 02 10 */	lfs f1, 0x210(r31)
/* 80646544  4B CE 1E E9 */	bl checkPass__12J3DFrameCtrlFf
/* 80646548  2C 03 00 00 */	cmpwi r3, 0
/* 8064654C  41 82 00 30 */	beq lbl_8064657C
/* 80646550  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070436@ha */
/* 80646554  38 03 04 36 */	addi r0, r3, 0x0436 /* 0x00070436@l */
/* 80646558  90 01 00 10 */	stw r0, 0x10(r1)
/* 8064655C  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 80646560  38 81 00 10 */	addi r4, r1, 0x10
/* 80646564  38 A0 FF FF */	li r5, -1
/* 80646568  81 9C 05 F0 */	lwz r12, 0x5f0(r28)
/* 8064656C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80646570  7D 89 03 A6 */	mtctr r12
/* 80646574  4E 80 04 21 */	bctrl 
/* 80646578  48 00 00 2C */	b lbl_806465A4
lbl_8064657C:
/* 8064657C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070437@ha */
/* 80646580  38 03 04 37 */	addi r0, r3, 0x0437 /* 0x00070437@l */
/* 80646584  90 01 00 0C */	stw r0, 0xc(r1)
/* 80646588  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 8064658C  38 81 00 0C */	addi r4, r1, 0xc
/* 80646590  38 A0 FF FF */	li r5, -1
/* 80646594  81 9C 05 F0 */	lwz r12, 0x5f0(r28)
/* 80646598  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8064659C  7D 89 03 A6 */	mtctr r12
/* 806465A0  4E 80 04 21 */	bctrl 
lbl_806465A4:
/* 806465A4  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806465A8  38 63 00 0C */	addi r3, r3, 0xc
/* 806465AC  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806465B0  4B CE 1E 7D */	bl checkPass__12J3DFrameCtrlFf
/* 806465B4  2C 03 00 00 */	cmpwi r3, 0
/* 806465B8  40 82 00 1C */	bne lbl_806465D4
/* 806465BC  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806465C0  38 63 00 0C */	addi r3, r3, 0xc
/* 806465C4  C0 3F 02 08 */	lfs f1, 0x208(r31)
/* 806465C8  4B CE 1E 65 */	bl checkPass__12J3DFrameCtrlFf
/* 806465CC  2C 03 00 00 */	cmpwi r3, 0
/* 806465D0  41 82 00 6C */	beq lbl_8064663C
lbl_806465D4:
/* 806465D4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070434@ha */
/* 806465D8  38 03 04 34 */	addi r0, r3, 0x0434 /* 0x00070434@l */
/* 806465DC  90 01 00 08 */	stw r0, 8(r1)
/* 806465E0  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 806465E4  38 81 00 08 */	addi r4, r1, 8
/* 806465E8  38 A0 00 00 */	li r5, 0
/* 806465EC  38 C0 FF FF */	li r6, -1
/* 806465F0  81 9C 05 F0 */	lwz r12, 0x5f0(r28)
/* 806465F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806465F8  7D 89 03 A6 */	mtctr r12
/* 806465FC  4E 80 04 21 */	bctrl 
/* 80646600  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80646604  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80646608  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8064660C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80646610  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80646614  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80646618  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064661C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80646620  38 80 00 06 */	li r4, 6
/* 80646624  38 A0 00 1F */	li r5, 0x1f
/* 80646628  38 C1 00 30 */	addi r6, r1, 0x30
/* 8064662C  4B A2 93 F9 */	bl StartShock__12dVibration_cFii4cXyz
/* 80646630  7F 83 E3 78 */	mr r3, r28
/* 80646634  38 80 00 00 */	li r4, 0
/* 80646638  4B FF 9B 49 */	bl setIceLandingEffect__10daB_ZANT_cFi
lbl_8064663C:
/* 8064663C  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80646640  38 63 00 0C */	addi r3, r3, 0xc
/* 80646644  C0 3F 01 AC */	lfs f1, 0x1ac(r31)
/* 80646648  4B CE 1D E5 */	bl checkPass__12J3DFrameCtrlFf
/* 8064664C  2C 03 00 00 */	cmpwi r3, 0
/* 80646650  40 82 00 1C */	bne lbl_8064666C
/* 80646654  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80646658  38 63 00 0C */	addi r3, r3, 0xc
/* 8064665C  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 80646660  4B CE 1D CD */	bl checkPass__12J3DFrameCtrlFf
/* 80646664  2C 03 00 00 */	cmpwi r3, 0
/* 80646668  41 82 00 10 */	beq lbl_80646678
lbl_8064666C:
/* 8064666C  80 1C 1A 18 */	lwz r0, 0x1a18(r28)
/* 80646670  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80646674  90 1C 1A 18 */	stw r0, 0x1a18(r28)
lbl_80646678:
/* 80646678  2C 1D 00 00 */	cmpwi r29, 0
/* 8064667C  41 82 00 18 */	beq lbl_80646694
/* 80646680  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 80646684  A8 9C 06 BA */	lha r4, 0x6ba(r28)
/* 80646688  38 A0 00 10 */	li r5, 0x10
/* 8064668C  38 C0 04 00 */	li r6, 0x400
/* 80646690  4B C2 9F 79 */	bl cLib_addCalcAngleS2__FPssss
lbl_80646694:
/* 80646694  80 1C 06 DC */	lwz r0, 0x6dc(r28)
/* 80646698  2C 00 00 03 */	cmpwi r0, 3
/* 8064669C  41 81 00 A0 */	bgt lbl_8064673C
/* 806466A0  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 806466A4  4B 9C 66 C1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 806466A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806466AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806466B0  7F C4 F3 78 */	mr r4, r30
/* 806466B4  4B 9C 5D 81 */	bl mDoMtx_YrotM__FPA4_fs
/* 806466B8  C0 3F 02 14 */	lfs f1, 0x214(r31)
/* 806466BC  C0 1C 06 C0 */	lfs f0, 0x6c0(r28)
/* 806466C0  EC 21 00 32 */	fmuls f1, f1, f0
/* 806466C4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806466C8  FC 60 10 90 */	fmr f3, f2
/* 806466CC  4B 9C 66 D1 */	bl transM__14mDoMtx_stack_cFfff
/* 806466D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806466D4  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806466D8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 806466DC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806466E0  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 806466E4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806466E8  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 806466EC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806466F0  38 61 00 60 */	addi r3, r1, 0x60
/* 806466F4  4B 9C 66 71 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 806466F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806466FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80646700  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80646704  4B 9C 5D 31 */	bl mDoMtx_YrotM__FPA4_fs
/* 80646708  C0 3F 02 18 */	lfs f1, 0x218(r31)
/* 8064670C  C0 1C 06 C0 */	lfs f0, 0x6c0(r28)
/* 80646710  EC 21 00 32 */	fmuls f1, f1, f0
/* 80646714  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80646718  FC 60 10 90 */	fmr f3, f2
/* 8064671C  4B 9C 66 81 */	bl transM__14mDoMtx_stack_cFfff
/* 80646720  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80646724  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80646728  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8064672C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80646730  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80646734  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80646738  48 00 00 9C */	b lbl_806467D4
lbl_8064673C:
/* 8064673C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80646740  4B 9C 66 25 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80646744  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80646748  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064674C  7F C4 F3 78 */	mr r4, r30
/* 80646750  4B 9C 5C E5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80646754  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80646758  C0 1C 06 C0 */	lfs f0, 0x6c0(r28)
/* 8064675C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80646760  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80646764  FC 60 10 90 */	fmr f3, f2
/* 80646768  4B 9C 66 35 */	bl transM__14mDoMtx_stack_cFfff
/* 8064676C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80646770  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80646774  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80646778  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8064677C  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80646780  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80646784  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80646788  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8064678C  38 61 00 60 */	addi r3, r1, 0x60
/* 80646790  4B 9C 65 D5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80646794  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80646798  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064679C  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 806467A0  4B 9C 5C 95 */	bl mDoMtx_YrotM__FPA4_fs
/* 806467A4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 806467A8  C0 1C 06 C0 */	lfs f0, 0x6c0(r28)
/* 806467AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 806467B0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 806467B4  FC 60 10 90 */	fmr f3, f2
/* 806467B8  4B 9C 65 E5 */	bl transM__14mDoMtx_stack_cFfff
/* 806467BC  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 806467C0  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 806467C4  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 806467C8  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 806467CC  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 806467D0  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_806467D4:
/* 806467D4  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806467D8  38 80 00 01 */	li r4, 1
/* 806467DC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806467E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806467E4  40 82 00 18 */	bne lbl_806467FC
/* 806467E8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 806467EC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806467F0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806467F4  41 82 00 08 */	beq lbl_806467FC
/* 806467F8  38 80 00 00 */	li r4, 0
lbl_806467FC:
/* 806467FC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80646800  41 82 00 5C */	beq lbl_8064685C
/* 80646804  80 1C 06 E8 */	lwz r0, 0x6e8(r28)
/* 80646808  2C 00 00 00 */	cmpwi r0, 0
/* 8064680C  41 82 00 10 */	beq lbl_8064681C
/* 80646810  38 00 00 01 */	li r0, 1
/* 80646814  90 1C 06 DC */	stw r0, 0x6dc(r28)
/* 80646818  48 00 00 44 */	b lbl_8064685C
lbl_8064681C:
/* 8064681C  38 60 00 00 */	li r3, 0
/* 80646820  38 BF 00 40 */	addi r5, r31, 0x40
/* 80646824  38 00 00 06 */	li r0, 6
/* 80646828  7C 09 03 A6 */	mtctr r0
lbl_8064682C:
/* 8064682C  7C 05 18 2E */	lwzx r0, r5, r3
/* 80646830  1C 80 01 38 */	mulli r4, r0, 0x138
/* 80646834  38 84 0D 4C */	addi r4, r4, 0xd4c
/* 80646838  7C 1C 20 2E */	lwzx r0, r28, r4
/* 8064683C  60 00 00 01 */	ori r0, r0, 1
/* 80646840  7C 1C 21 2E */	stwx r0, r28, r4
/* 80646844  38 63 00 04 */	addi r3, r3, 4
/* 80646848  42 00 FF E4 */	bdnz lbl_8064682C
/* 8064684C  7F 83 E3 78 */	mr r3, r28
/* 80646850  38 80 00 0C */	li r4, 0xc
/* 80646854  38 A0 00 00 */	li r5, 0
/* 80646858  4B FF 7E 6D */	bl setActionMode__10daB_ZANT_cFii
lbl_8064685C:
/* 8064685C  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80646860  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80646864  39 61 00 90 */	addi r11, r1, 0x90
/* 80646868  4B D1 B9 B9 */	bl _restgpr_27
/* 8064686C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80646870  7C 08 03 A6 */	mtlr r0
/* 80646874  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80646878  4E 80 00 20 */	blr 
