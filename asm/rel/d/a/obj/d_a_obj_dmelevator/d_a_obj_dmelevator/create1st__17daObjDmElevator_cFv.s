lbl_80BDE448:
/* 80BDE448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDE44C  7C 08 02 A6 */	mflr r0
/* 80BDE450  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDE454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDE458  7C 7F 1B 78 */	mr r31, r3
/* 80BDE45C  4B FF FC 49 */	bl init__17daObjDmElevator_cFv
/* 80BDE460  2C 03 00 00 */	cmpwi r3, 0
/* 80BDE464  40 82 00 0C */	bne lbl_80BDE470
/* 80BDE468  38 60 00 05 */	li r3, 5
/* 80BDE46C  48 00 00 80 */	b lbl_80BDE4EC
lbl_80BDE470:
/* 80BDE470  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80BDE474  3C 80 80 BE */	lis r4, l_sw_arcName@ha
/* 80BDE478  38 84 F9 68 */	addi r4, r4, l_sw_arcName@l
/* 80BDE47C  80 84 00 00 */	lwz r4, 0(r4)
/* 80BDE480  4B 44 EA 3C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BDE484  2C 03 00 04 */	cmpwi r3, 4
/* 80BDE488  41 82 00 08 */	beq lbl_80BDE490
/* 80BDE48C  48 00 00 60 */	b lbl_80BDE4EC
lbl_80BDE490:
/* 80BDE490  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BDE494  3C 80 80 BE */	lis r4, l_el_arcName@ha
/* 80BDE498  38 84 F9 64 */	addi r4, r4, l_el_arcName@l
/* 80BDE49C  80 84 00 00 */	lwz r4, 0(r4)
/* 80BDE4A0  4B 44 EA 1C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BDE4A4  7C 60 1B 78 */	mr r0, r3
/* 80BDE4A8  2C 00 00 04 */	cmpwi r0, 4
/* 80BDE4AC  40 82 00 3C */	bne lbl_80BDE4E8
/* 80BDE4B0  7F E3 FB 78 */	mr r3, r31
/* 80BDE4B4  3C 80 80 BE */	lis r4, l_el_arcName@ha
/* 80BDE4B8  38 84 F9 64 */	addi r4, r4, l_el_arcName@l
/* 80BDE4BC  80 84 00 00 */	lwz r4, 0(r4)
/* 80BDE4C0  38 A0 00 08 */	li r5, 8
/* 80BDE4C4  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80BDE4C8  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80BDE4CC  38 E0 22 80 */	li r7, 0x2280
/* 80BDE4D0  39 00 00 00 */	li r8, 0
/* 80BDE4D4  4B 49 A2 E8 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BDE4D8  7C 60 1B 78 */	mr r0, r3
/* 80BDE4DC  2C 00 00 05 */	cmpwi r0, 5
/* 80BDE4E0  40 82 00 08 */	bne lbl_80BDE4E8
/* 80BDE4E4  48 00 00 08 */	b lbl_80BDE4EC
lbl_80BDE4E8:
/* 80BDE4E8  7C 03 03 78 */	mr r3, r0
lbl_80BDE4EC:
/* 80BDE4EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDE4F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDE4F4  7C 08 03 A6 */	mtlr r0
/* 80BDE4F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDE4FC  4E 80 00 20 */	blr 
