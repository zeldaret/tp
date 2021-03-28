lbl_80C68C98:
/* 80C68C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C68C9C  7C 08 02 A6 */	mflr r0
/* 80C68CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C68CA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C68CA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C68CAC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C68CB0  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 80C68CB4  90 03 06 14 */	stw r0, 0x614(r3)
/* 80C68CB8  41 82 00 08 */	beq lbl_80C68CC0
/* 80C68CBC  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C68CC0:
/* 80C68CC0  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80C68CC4  54 00 10 3A */	slwi r0, r0, 2
/* 80C68CC8  3C 80 80 C7 */	lis r4, l_arcName@ha
/* 80C68CCC  38 84 99 90 */	addi r4, r4, l_arcName@l
/* 80C68CD0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C68CD4  4B 3C 41 E8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C68CD8  7C 60 1B 78 */	mr r0, r3
/* 80C68CDC  2C 00 00 04 */	cmpwi r0, 4
/* 80C68CE0  40 82 00 E0 */	bne lbl_80C68DC0
/* 80C68CE4  38 00 00 00 */	li r0, 0
/* 80C68CE8  B0 1F 06 0E */	sth r0, 0x60e(r31)
/* 80C68CEC  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80C68CF0  2C 00 00 00 */	cmpwi r0, 0
/* 80C68CF4  40 82 00 44 */	bne lbl_80C68D38
/* 80C68CF8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C68CFC  54 04 AE 3E */	rlwinm r4, r0, 0x15, 0x18, 0x1f
/* 80C68D00  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C68D04  41 82 00 34 */	beq lbl_80C68D38
/* 80C68D08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C68D0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C68D10  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C68D14  7C 05 07 74 */	extsb r5, r0
/* 80C68D18  4B 3C C6 48 */	b isSwitch__10dSv_info_cCFii
/* 80C68D1C  2C 03 00 00 */	cmpwi r3, 0
/* 80C68D20  41 82 00 18 */	beq lbl_80C68D38
/* 80C68D24  38 00 00 01 */	li r0, 1
/* 80C68D28  98 1F 06 29 */	stb r0, 0x629(r31)
/* 80C68D2C  38 00 C0 01 */	li r0, -16383
/* 80C68D30  B0 1F 06 0E */	sth r0, 0x60e(r31)
/* 80C68D34  48 00 00 38 */	b lbl_80C68D6C
lbl_80C68D38:
/* 80C68D38  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C68D3C  54 04 EE 3E */	rlwinm r4, r0, 0x1d, 0x18, 0x1f
/* 80C68D40  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C68D44  41 82 00 28 */	beq lbl_80C68D6C
/* 80C68D48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C68D4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C68D50  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C68D54  7C 05 07 74 */	extsb r5, r0
/* 80C68D58  4B 3C C6 08 */	b isSwitch__10dSv_info_cCFii
/* 80C68D5C  2C 03 00 00 */	cmpwi r3, 0
/* 80C68D60  41 82 00 0C */	beq lbl_80C68D6C
/* 80C68D64  38 00 3F FF */	li r0, 0x3fff
/* 80C68D68  B0 1F 06 0E */	sth r0, 0x60e(r31)
lbl_80C68D6C:
/* 80C68D6C  7F E3 FB 78 */	mr r3, r31
/* 80C68D70  48 00 00 69 */	bl setMtx__16daObjLv4PRwall_cFv
/* 80C68D74  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80C68D78  54 00 10 3A */	slwi r0, r0, 2
/* 80C68D7C  7F E3 FB 78 */	mr r3, r31
/* 80C68D80  3C 80 80 C7 */	lis r4, l_arcName@ha
/* 80C68D84  38 84 99 90 */	addi r4, r4, l_arcName@l
/* 80C68D88  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C68D8C  3C A0 80 C7 */	lis r5, l_dzbidx@ha
/* 80C68D90  38 A5 98 E8 */	addi r5, r5, l_dzbidx@l
/* 80C68D94  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C68D98  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C68D9C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C68DA0  3C E0 00 01 */	lis r7, 0x0001 /* 0x00008440@ha */
/* 80C68DA4  38 E7 84 40 */	addi r7, r7, 0x8440 /* 0x00008440@l */
/* 80C68DA8  39 1F 05 A8 */	addi r8, r31, 0x5a8
/* 80C68DAC  4B 40 FA 10 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C68DB0  7C 60 1B 78 */	mr r0, r3
/* 80C68DB4  2C 00 00 05 */	cmpwi r0, 5
/* 80C68DB8  40 82 00 08 */	bne lbl_80C68DC0
/* 80C68DBC  48 00 00 08 */	b lbl_80C68DC4
lbl_80C68DC0:
/* 80C68DC0  7C 03 03 78 */	mr r3, r0
lbl_80C68DC4:
/* 80C68DC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C68DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C68DCC  7C 08 03 A6 */	mtlr r0
/* 80C68DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C68DD4  4E 80 00 20 */	blr 
