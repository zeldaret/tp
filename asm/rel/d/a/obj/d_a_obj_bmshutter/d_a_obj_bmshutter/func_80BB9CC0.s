lbl_80BB9CC0:
/* 80BB9CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB9CC4  7C 08 02 A6 */	mflr r0
/* 80BB9CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB9CCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB9CD0  7C 7F 1B 78 */	mr r31, r3
/* 80BB9CD4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BB9CD8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BB9CDC  40 82 00 28 */	bne lbl_80BB9D04
/* 80BB9CE0  28 1F 00 00 */	cmplwi r31, 0
/* 80BB9CE4  41 82 00 14 */	beq lbl_80BB9CF8
/* 80BB9CE8  4B 4B E9 3C */	b __ct__16dBgS_MoveBgActorFv
/* 80BB9CEC  3C 60 80 BC */	lis r3, __vt__11daObjBmSh_c@ha
/* 80BB9CF0  38 03 A9 48 */	addi r0, r3, __vt__11daObjBmSh_c@l
/* 80BB9CF4  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80BB9CF8:
/* 80BB9CF8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BB9CFC  60 00 00 08 */	ori r0, r0, 8
/* 80BB9D00  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BB9D04:
/* 80BB9D04  88 1F 05 CC */	lbz r0, 0x5cc(r31)
/* 80BB9D08  28 00 00 00 */	cmplwi r0, 0
/* 80BB9D0C  40 82 00 38 */	bne lbl_80BB9D44
/* 80BB9D10  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80BB9D14  B0 1F 05 C8 */	sth r0, 0x5c8(r31)
/* 80BB9D18  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80BB9D1C  B0 1F 05 CA */	sth r0, 0x5ca(r31)
/* 80BB9D20  38 00 00 01 */	li r0, 1
/* 80BB9D24  98 1F 05 CC */	stb r0, 0x5cc(r31)
/* 80BB9D28  38 00 00 00 */	li r0, 0
/* 80BB9D2C  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 80BB9D30  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80BB9D34  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80BB9D38  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80BB9D3C  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80BB9D40  B0 1F 04 DC */	sth r0, 0x4dc(r31)
lbl_80BB9D44:
/* 80BB9D44  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BB9D48  3C 80 80 BC */	lis r4, l_arcName@ha
/* 80BB9D4C  38 84 A8 4C */	addi r4, r4, l_arcName@l
/* 80BB9D50  80 84 00 00 */	lwz r4, 0(r4)
/* 80BB9D54  4B 47 31 68 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BB9D58  7C 60 1B 78 */	mr r0, r3
/* 80BB9D5C  2C 00 00 04 */	cmpwi r0, 4
/* 80BB9D60  40 82 00 3C */	bne lbl_80BB9D9C
/* 80BB9D64  7F E3 FB 78 */	mr r3, r31
/* 80BB9D68  3C 80 80 BC */	lis r4, l_arcName@ha
/* 80BB9D6C  38 84 A8 4C */	addi r4, r4, l_arcName@l
/* 80BB9D70  80 84 00 00 */	lwz r4, 0(r4)
/* 80BB9D74  38 A0 00 07 */	li r5, 7
/* 80BB9D78  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80BB9D7C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80BB9D80  38 E0 12 A0 */	li r7, 0x12a0
/* 80BB9D84  39 00 00 00 */	li r8, 0
/* 80BB9D88  4B 4B EA 34 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BB9D8C  7C 60 1B 78 */	mr r0, r3
/* 80BB9D90  2C 00 00 05 */	cmpwi r0, 5
/* 80BB9D94  40 82 00 08 */	bne lbl_80BB9D9C
/* 80BB9D98  48 00 00 08 */	b lbl_80BB9DA0
lbl_80BB9D9C:
/* 80BB9D9C  7C 03 03 78 */	mr r3, r0
lbl_80BB9DA0:
/* 80BB9DA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB9DA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB9DA8  7C 08 03 A6 */	mtlr r0
/* 80BB9DAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB9DB0  4E 80 00 20 */	blr 
