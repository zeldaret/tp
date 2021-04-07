lbl_80C1BCA0:
/* 80C1BCA0  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 80C1BCA4  7C 08 02 A6 */	mflr r0
/* 80C1BCA8  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 80C1BCAC  39 61 01 B0 */	addi r11, r1, 0x1b0
/* 80C1BCB0  4B 74 65 19 */	bl _savegpr_24
/* 80C1BCB4  7C 7E 1B 78 */	mr r30, r3
/* 80C1BCB8  3C 60 80 C2 */	lis r3, lit_3699@ha /* 0x80C1C5F8@ha */
/* 80C1BCBC  3B E3 C5 F8 */	addi r31, r3, lit_3699@l /* 0x80C1C5F8@l */
/* 80C1BCC0  38 1E 05 B8 */	addi r0, r30, 0x5b8
/* 80C1BCC4  90 04 00 00 */	stw r0, 0(r4)
/* 80C1BCC8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C1BCCC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C1BCD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1BCD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1BCD8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C1BCDC  7C 05 07 74 */	extsb r5, r0
/* 80C1BCE0  4B 41 96 81 */	bl isSwitch__10dSv_info_cCFii
/* 80C1BCE4  2C 03 00 00 */	cmpwi r3, 0
/* 80C1BCE8  41 82 03 94 */	beq lbl_80C1C07C
/* 80C1BCEC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C1BCF0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C1BCF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1BCF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1BCFC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C1BD00  7C 05 07 74 */	extsb r5, r0
/* 80C1BD04  4B 41 96 5D */	bl isSwitch__10dSv_info_cCFii
/* 80C1BD08  2C 03 00 00 */	cmpwi r3, 0
/* 80C1BD0C  41 82 00 18 */	beq lbl_80C1BD24
/* 80C1BD10  38 00 00 00 */	li r0, 0
/* 80C1BD14  98 1E 06 20 */	stb r0, 0x620(r30)
/* 80C1BD18  7F C3 F3 78 */	mr r3, r30
/* 80C1BD1C  4B 3F DF 61 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C1BD20  48 00 03 5C */	b lbl_80C1C07C
lbl_80C1BD24:
/* 80C1BD24  80 1E 06 1C */	lwz r0, 0x61c(r30)
/* 80C1BD28  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 80C1BD2C  40 82 00 0C */	bne lbl_80C1BD38
/* 80C1BD30  38 00 00 00 */	li r0, 0
/* 80C1BD34  98 1E 06 20 */	stb r0, 0x620(r30)
lbl_80C1BD38:
/* 80C1BD38  80 7F 00 08 */	lwz r3, 8(r31)
/* 80C1BD3C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80C1BD40  90 61 00 70 */	stw r3, 0x70(r1)
/* 80C1BD44  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C1BD48  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80C1BD4C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80C1BD50  90 61 00 78 */	stw r3, 0x78(r1)
/* 80C1BD54  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80C1BD58  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 80C1BD5C  38 9F 00 14 */	addi r4, r31, 0x14
/* 80C1BD60  38 00 00 14 */	li r0, 0x14
/* 80C1BD64  7C 09 03 A6 */	mtctr r0
lbl_80C1BD68:
/* 80C1BD68  80 64 00 04 */	lwz r3, 4(r4)
/* 80C1BD6C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C1BD70  90 65 00 04 */	stw r3, 4(r5)
/* 80C1BD74  94 05 00 08 */	stwu r0, 8(r5)
/* 80C1BD78  42 00 FF F0 */	bdnz lbl_80C1BD68
/* 80C1BD7C  7F C3 F3 78 */	mr r3, r30
/* 80C1BD80  38 81 00 70 */	addi r4, r1, 0x70
/* 80C1BD84  38 A0 00 08 */	li r5, 8
/* 80C1BD88  38 C1 00 E4 */	addi r6, r1, 0xe4
/* 80C1BD8C  38 E0 00 08 */	li r7, 8
/* 80C1BD90  81 1E 06 1C */	lwz r8, 0x61c(r30)
/* 80C1BD94  4B FF FD E9 */	bl setParticle__16daObjHBombkoya_cFPUsiPQ216daObjHBombkoya_c7PSetTblii
/* 80C1BD98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C1BD9C  41 82 00 44 */	beq lbl_80C1BDE0
/* 80C1BDA0  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000B@ha */
/* 80C1BDA4  38 03 00 0B */	addi r0, r3, 0x000B /* 0x0008000B@l */
/* 80C1BDA8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C1BDAC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C1BDB0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C1BDB4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C1BDB8  38 81 00 28 */	addi r4, r1, 0x28
/* 80C1BDBC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C1BDC0  38 C0 00 00 */	li r6, 0
/* 80C1BDC4  38 E0 00 00 */	li r7, 0
/* 80C1BDC8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C1BDCC  FC 40 08 90 */	fmr f2, f1
/* 80C1BDD0  C0 7F 01 24 */	lfs f3, 0x124(r31)
/* 80C1BDD4  FC 80 18 90 */	fmr f4, f3
/* 80C1BDD8  39 00 00 00 */	li r8, 0
/* 80C1BDDC  4B 68 FB A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C1BDE0:
/* 80C1BDE0  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 80C1BDE4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C1BDE8  A0 1F 00 BC */	lhz r0, 0xbc(r31)
/* 80C1BDEC  B0 01 00 30 */	sth r0, 0x30(r1)
/* 80C1BDF0  38 A1 00 7C */	addi r5, r1, 0x7c
/* 80C1BDF4  38 9F 00 BC */	addi r4, r31, 0xbc
/* 80C1BDF8  38 00 00 0C */	li r0, 0xc
/* 80C1BDFC  7C 09 03 A6 */	mtctr r0
lbl_80C1BE00:
/* 80C1BE00  80 64 00 04 */	lwz r3, 4(r4)
/* 80C1BE04  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C1BE08  90 65 00 04 */	stw r3, 4(r5)
/* 80C1BE0C  94 05 00 08 */	stwu r0, 8(r5)
/* 80C1BE10  42 00 FF F0 */	bdnz lbl_80C1BE00
/* 80C1BE14  80 04 00 04 */	lwz r0, 4(r4)
/* 80C1BE18  90 05 00 04 */	stw r0, 4(r5)
/* 80C1BE1C  7F C3 F3 78 */	mr r3, r30
/* 80C1BE20  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C1BE24  38 A0 00 03 */	li r5, 3
/* 80C1BE28  38 C1 00 80 */	addi r6, r1, 0x80
/* 80C1BE2C  38 E0 00 05 */	li r7, 5
/* 80C1BE30  81 1E 06 1C */	lwz r8, 0x61c(r30)
/* 80C1BE34  4B FF FD 49 */	bl setParticle__16daObjHBombkoya_cFPUsiPQ216daObjHBombkoya_c7PSetTblii
/* 80C1BE38  80 1E 06 1C */	lwz r0, 0x61c(r30)
/* 80C1BE3C  2C 00 00 AA */	cmpwi r0, 0xaa
/* 80C1BE40  40 80 00 CC */	bge lbl_80C1BF0C
/* 80C1BE44  3B 00 00 00 */	li r24, 0
/* 80C1BE48  3B A0 00 00 */	li r29, 0
/* 80C1BE4C  3B 80 00 00 */	li r28, 0
/* 80C1BE50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1BE54  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1BE58  3C 60 80 C2 */	lis r3, id@ha /* 0x80C1C77C@ha */
/* 80C1BE5C  3B 63 C7 7C */	addi r27, r3, id@l /* 0x80C1C77C@l */
lbl_80C1BE60:
/* 80C1BE60  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80C1BE64  38 00 00 FF */	li r0, 0xff
/* 80C1BE68  90 01 00 08 */	stw r0, 8(r1)
/* 80C1BE6C  38 80 00 00 */	li r4, 0
/* 80C1BE70  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C1BE74  38 00 FF FF */	li r0, -1
/* 80C1BE78  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C1BE7C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C1BE80  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C1BE84  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C1BE88  3B 3C 06 24 */	addi r25, r28, 0x624
/* 80C1BE8C  7C 9E C8 2E */	lwzx r4, r30, r25
/* 80C1BE90  38 A0 00 00 */	li r5, 0
/* 80C1BE94  7C DB EA 2E */	lhzx r6, r27, r29
/* 80C1BE98  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80C1BE9C  39 00 00 00 */	li r8, 0
/* 80C1BEA0  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80C1BEA4  39 40 00 00 */	li r10, 0
/* 80C1BEA8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C1BEAC  4B 43 16 21 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C1BEB0  7C 7E C9 2E */	stwx r3, r30, r25
/* 80C1BEB4  3B 18 00 01 */	addi r24, r24, 1
/* 80C1BEB8  2C 18 00 09 */	cmpwi r24, 9
/* 80C1BEBC  3B BD 00 02 */	addi r29, r29, 2
/* 80C1BEC0  3B 9C 00 04 */	addi r28, r28, 4
/* 80C1BEC4  41 80 FF 9C */	blt lbl_80C1BE60
/* 80C1BEC8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080175@ha */
/* 80C1BECC  38 03 01 75 */	addi r0, r3, 0x0175 /* 0x00080175@l */
/* 80C1BED0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C1BED4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C1BED8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C1BEDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C1BEE0  38 81 00 24 */	addi r4, r1, 0x24
/* 80C1BEE4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C1BEE8  38 C0 03 84 */	li r6, 0x384
/* 80C1BEEC  38 E0 00 00 */	li r7, 0
/* 80C1BEF0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C1BEF4  FC 40 08 90 */	fmr f2, f1
/* 80C1BEF8  C0 7F 01 24 */	lfs f3, 0x124(r31)
/* 80C1BEFC  FC 80 18 90 */	fmr f4, f3
/* 80C1BF00  39 00 00 00 */	li r8, 0
/* 80C1BF04  4B 69 06 09 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C1BF08  48 00 00 B0 */	b lbl_80C1BFB8
lbl_80C1BF0C:
/* 80C1BF0C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C1BF10  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C1BF14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1BF18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1BF1C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C1BF20  7C 05 07 74 */	extsb r5, r0
/* 80C1BF24  4B 41 92 DD */	bl onSwitch__10dSv_info_cFii
/* 80C1BF28  80 1E 06 1C */	lwz r0, 0x61c(r30)
/* 80C1BF2C  2C 00 00 AA */	cmpwi r0, 0xaa
/* 80C1BF30  40 82 00 44 */	bne lbl_80C1BF74
/* 80C1BF34  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080177@ha */
/* 80C1BF38  38 03 01 77 */	addi r0, r3, 0x0177 /* 0x00080177@l */
/* 80C1BF3C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C1BF40  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C1BF44  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C1BF48  80 63 00 00 */	lwz r3, 0(r3)
/* 80C1BF4C  38 81 00 20 */	addi r4, r1, 0x20
/* 80C1BF50  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C1BF54  38 C0 00 00 */	li r6, 0
/* 80C1BF58  38 E0 00 00 */	li r7, 0
/* 80C1BF5C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C1BF60  FC 40 08 90 */	fmr f2, f1
/* 80C1BF64  C0 7F 01 24 */	lfs f3, 0x124(r31)
/* 80C1BF68  FC 80 18 90 */	fmr f4, f3
/* 80C1BF6C  39 00 00 00 */	li r8, 0
/* 80C1BF70  4B 68 FA 15 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C1BF74:
/* 80C1BF74  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 80C1BF78  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80C1BF7C  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 80C1BF80  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C1BF84  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80C1BF88  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80C1BF8C  38 81 00 64 */	addi r4, r1, 0x64
/* 80C1BF90  38 A1 00 58 */	addi r5, r1, 0x58
/* 80C1BF94  4B 72 AD D9 */	bl PSMTXMultVec
/* 80C1BF98  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 80C1BF9C  38 81 00 58 */	addi r4, r1, 0x58
/* 80C1BFA0  4B 65 32 3D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C1BFA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1BFA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1BFAC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C1BFB0  38 9E 06 84 */	addi r4, r30, 0x684
/* 80C1BFB4  4B 64 8B F5 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80C1BFB8:
/* 80C1BFB8  3B 00 00 00 */	li r24, 0
/* 80C1BFBC  3B A0 00 00 */	li r29, 0
/* 80C1BFC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1BFC4  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1BFC8  3C 60 80 C2 */	lis r3, ptable@ha /* 0x80C1C790@ha */
/* 80C1BFCC  3B 83 C7 90 */	addi r28, r3, ptable@l /* 0x80C1C790@l */
lbl_80C1BFD0:
/* 80C1BFD0  80 7E 06 1C */	lwz r3, 0x61c(r30)
/* 80C1BFD4  7F 3C EA 14 */	add r25, r28, r29
/* 80C1BFD8  80 19 00 10 */	lwz r0, 0x10(r25)
/* 80C1BFDC  7C 03 00 00 */	cmpw r3, r0
/* 80C1BFE0  40 82 00 80 */	bne lbl_80C1C060
/* 80C1BFE4  C0 19 00 04 */	lfs f0, 4(r25)
/* 80C1BFE8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C1BFEC  C0 19 00 08 */	lfs f0, 8(r25)
/* 80C1BFF0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C1BFF4  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 80C1BFF8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C1BFFC  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80C1C000  38 81 00 40 */	addi r4, r1, 0x40
/* 80C1C004  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80C1C008  4B 72 AD 65 */	bl PSMTXMultVec
/* 80C1C00C  C0 19 00 14 */	lfs f0, 0x14(r25)
/* 80C1C010  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C1C014  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C1C018  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C1C01C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80C1C020  38 80 00 00 */	li r4, 0
/* 80C1C024  90 81 00 08 */	stw r4, 8(r1)
/* 80C1C028  38 00 FF FF */	li r0, -1
/* 80C1C02C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C1C030  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C1C034  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C1C038  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C1C03C  38 80 00 00 */	li r4, 0
/* 80C1C040  A0 B9 00 00 */	lhz r5, 0(r25)
/* 80C1C044  38 C1 00 4C */	addi r6, r1, 0x4c
/* 80C1C048  38 E0 00 00 */	li r7, 0
/* 80C1C04C  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80C1C050  39 21 00 34 */	addi r9, r1, 0x34
/* 80C1C054  39 40 00 FF */	li r10, 0xff
/* 80C1C058  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C1C05C  4B 43 0A 35 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80C1C060:
/* 80C1C060  3B 18 00 01 */	addi r24, r24, 1
/* 80C1C064  28 18 00 10 */	cmplwi r24, 0x10
/* 80C1C068  3B BD 00 18 */	addi r29, r29, 0x18
/* 80C1C06C  41 80 FF 64 */	blt lbl_80C1BFD0
/* 80C1C070  80 7E 06 1C */	lwz r3, 0x61c(r30)
/* 80C1C074  38 03 00 01 */	addi r0, r3, 1
/* 80C1C078  90 1E 06 1C */	stw r0, 0x61c(r30)
lbl_80C1C07C:
/* 80C1C07C  38 60 00 01 */	li r3, 1
/* 80C1C080  39 61 01 B0 */	addi r11, r1, 0x1b0
/* 80C1C084  4B 74 61 91 */	bl _restgpr_24
/* 80C1C088  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 80C1C08C  7C 08 03 A6 */	mtlr r0
/* 80C1C090  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 80C1C094  4E 80 00 20 */	blr 
