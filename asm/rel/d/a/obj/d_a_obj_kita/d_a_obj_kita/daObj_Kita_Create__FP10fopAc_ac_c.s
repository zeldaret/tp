lbl_80C45C4C:
/* 80C45C4C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C45C50  7C 08 02 A6 */	mflr r0
/* 80C45C54  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C45C58  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80C45C5C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80C45C60  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80C45C64  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80C45C68  39 61 00 30 */	addi r11, r1, 0x30
/* 80C45C6C  4B 71 C5 61 */	bl _savegpr_25
/* 80C45C70  7C 7E 1B 78 */	mr r30, r3
/* 80C45C74  3C 80 80 C4 */	lis r4, lit_3769@ha /* 0x80C45F1C@ha */
/* 80C45C78  3B E4 5F 1C */	addi r31, r4, lit_3769@l /* 0x80C45F1C@l */
/* 80C45C7C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C45C80  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C45C84  40 82 00 40 */	bne lbl_80C45CC4
/* 80C45C88  7F C0 F3 79 */	or. r0, r30, r30
/* 80C45C8C  41 82 00 2C */	beq lbl_80C45CB8
/* 80C45C90  7C 19 03 78 */	mr r25, r0
/* 80C45C94  4B 3D 2E D1 */	bl __ct__10fopAc_ac_cFv
/* 80C45C98  38 79 05 94 */	addi r3, r25, 0x594
/* 80C45C9C  3C 80 80 C4 */	lis r4, __ct__6kita_sFv@ha /* 0x80C45E80@ha */
/* 80C45CA0  38 84 5E 80 */	addi r4, r4, __ct__6kita_sFv@l /* 0x80C45E80@l */
/* 80C45CA4  3C A0 80 C4 */	lis r5, __dt__6kita_sFv@ha /* 0x80C45E44@ha */
/* 80C45CA8  38 A5 5E 44 */	addi r5, r5, __dt__6kita_sFv@l /* 0x80C45E44@l */
/* 80C45CAC  38 C0 00 60 */	li r6, 0x60
/* 80C45CB0  38 E0 00 15 */	li r7, 0x15
/* 80C45CB4  4B 71 C0 AD */	bl __construct_array
lbl_80C45CB8:
/* 80C45CB8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C45CBC  60 00 00 08 */	ori r0, r0, 8
/* 80C45CC0  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C45CC4:
/* 80C45CC4  38 7E 05 68 */	addi r3, r30, 0x568
/* 80C45CC8  3C 80 80 C4 */	lis r4, d_a_obj_kita__stringBase0@ha /* 0x80C45F80@ha */
/* 80C45CCC  38 84 5F 80 */	addi r4, r4, d_a_obj_kita__stringBase0@l /* 0x80C45F80@l */
/* 80C45CD0  4B 3E 71 ED */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C45CD4  7C 7D 1B 78 */	mr r29, r3
/* 80C45CD8  2C 1D 00 04 */	cmpwi r29, 4
/* 80C45CDC  40 82 01 3C */	bne lbl_80C45E18
/* 80C45CE0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C45CE4  98 1E 05 70 */	stb r0, 0x570(r30)
/* 80C45CE8  88 7E 05 70 */	lbz r3, 0x570(r30)
/* 80C45CEC  28 03 00 FF */	cmplwi r3, 0xff
/* 80C45CF0  41 82 00 0C */	beq lbl_80C45CFC
/* 80C45CF4  28 03 00 00 */	cmplwi r3, 0
/* 80C45CF8  40 82 00 10 */	bne lbl_80C45D08
lbl_80C45CFC:
/* 80C45CFC  38 00 00 0B */	li r0, 0xb
/* 80C45D00  90 1E 05 7C */	stw r0, 0x57c(r30)
/* 80C45D04  48 00 00 20 */	b lbl_80C45D24
lbl_80C45D08:
/* 80C45D08  38 03 00 01 */	addi r0, r3, 1
/* 80C45D0C  90 1E 05 7C */	stw r0, 0x57c(r30)
/* 80C45D10  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 80C45D14  2C 00 00 15 */	cmpwi r0, 0x15
/* 80C45D18  40 81 00 0C */	ble lbl_80C45D24
/* 80C45D1C  38 00 00 15 */	li r0, 0x15
/* 80C45D20  90 1E 05 7C */	stw r0, 0x57c(r30)
lbl_80C45D24:
/* 80C45D24  7F C3 F3 78 */	mr r3, r30
/* 80C45D28  3C 80 80 C4 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80C45B10@ha */
/* 80C45D2C  38 84 5B 10 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80C45B10@l */
/* 80C45D30  38 A0 47 60 */	li r5, 0x4760
/* 80C45D34  4B 3D 47 7D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C45D38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C45D3C  40 82 00 0C */	bne lbl_80C45D48
/* 80C45D40  38 60 00 05 */	li r3, 5
/* 80C45D44  48 00 00 D8 */	b lbl_80C45E1C
lbl_80C45D48:
/* 80C45D48  3B 20 00 00 */	li r25, 0
/* 80C45D4C  3B 80 00 00 */	li r28, 0
/* 80C45D50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C45D54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C45D58  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 80C45D5C  C3 DF 00 58 */	lfs f30, 0x58(r31)
/* 80C45D60  C3 FF 00 18 */	lfs f31, 0x18(r31)
/* 80C45D64  48 00 00 58 */	b lbl_80C45DBC
lbl_80C45D68:
/* 80C45D68  7F 63 DB 78 */	mr r3, r27
/* 80C45D6C  7F 5E E2 14 */	add r26, r30, r28
/* 80C45D70  80 9A 05 F0 */	lwz r4, 0x5f0(r26)
/* 80C45D74  7F C5 F3 78 */	mr r5, r30
/* 80C45D78  4B 42 EC 91 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C45D7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C45D80  41 82 00 0C */	beq lbl_80C45D8C
/* 80C45D84  38 60 00 05 */	li r3, 5
/* 80C45D88  48 00 00 94 */	b lbl_80C45E1C
lbl_80C45D8C:
/* 80C45D8C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C45D90  4B 62 1B C5 */	bl cM_rndF__Ff
/* 80C45D94  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80C45D98  40 80 00 0C */	bge lbl_80C45DA4
/* 80C45D9C  38 00 80 00 */	li r0, -32768
/* 80C45DA0  B0 1A 05 BC */	sth r0, 0x5bc(r26)
lbl_80C45DA4:
/* 80C45DA4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C45DA8  4B 62 1B E5 */	bl cM_rndFX__Ff
/* 80C45DAC  EC 1F 08 2A */	fadds f0, f31, f1
/* 80C45DB0  D0 1A 05 B8 */	stfs f0, 0x5b8(r26)
/* 80C45DB4  3B 39 00 01 */	addi r25, r25, 1
/* 80C45DB8  3B 9C 00 60 */	addi r28, r28, 0x60
lbl_80C45DBC:
/* 80C45DBC  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80C45DC0  38 03 FF FF */	addi r0, r3, -1
/* 80C45DC4  7C 19 00 00 */	cmpw r25, r0
/* 80C45DC8  41 80 FF A0 */	blt lbl_80C45D68
/* 80C45DCC  3C 60 80 C4 */	lis r3, data_80C45FF0@ha /* 0x80C45FF0@ha */
/* 80C45DD0  8C 03 5F F0 */	lbzu r0, data_80C45FF0@l(r3)  /* 0x80C45FF0@l */
/* 80C45DD4  28 00 00 00 */	cmplwi r0, 0
/* 80C45DD8  40 82 00 20 */	bne lbl_80C45DF8
/* 80C45DDC  38 00 00 01 */	li r0, 1
/* 80C45DE0  98 1E 0D 74 */	stb r0, 0xd74(r30)
/* 80C45DE4  98 03 00 00 */	stb r0, 0(r3)
/* 80C45DE8  38 00 FF FF */	li r0, -1
/* 80C45DEC  3C 60 80 C4 */	lis r3, l_HIO@ha /* 0x80C46000@ha */
/* 80C45DF0  38 63 60 00 */	addi r3, r3, l_HIO@l /* 0x80C46000@l */
/* 80C45DF4  98 03 00 04 */	stb r0, 4(r3)
lbl_80C45DF8:
/* 80C45DF8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C45DFC  4B 62 1B 59 */	bl cM_rndF__Ff
/* 80C45E00  FC 00 08 1E */	fctiwz f0, f1
/* 80C45E04  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C45E08  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C45E0C  B0 1E 05 72 */	sth r0, 0x572(r30)
/* 80C45E10  7F C3 F3 78 */	mr r3, r30
/* 80C45E14  4B FF FB FD */	bl daObj_Kita_Execute__FP14obj_kita_class
lbl_80C45E18:
/* 80C45E18  7F A3 EB 78 */	mr r3, r29
lbl_80C45E1C:
/* 80C45E1C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80C45E20  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80C45E24  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80C45E28  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80C45E2C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C45E30  4B 71 C3 E9 */	bl _restgpr_25
/* 80C45E34  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C45E38  7C 08 03 A6 */	mtlr r0
/* 80C45E3C  38 21 00 50 */	addi r1, r1, 0x50
/* 80C45E40  4E 80 00 20 */	blr 
