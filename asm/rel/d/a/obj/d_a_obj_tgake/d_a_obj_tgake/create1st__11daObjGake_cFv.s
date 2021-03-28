lbl_80D0BDA0:
/* 80D0BDA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0BDA4  7C 08 02 A6 */	mflr r0
/* 80D0BDA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0BDAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0BDB0  7C 7F 1B 78 */	mr r31, r3
/* 80D0BDB4  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D0BDB8  3C 80 80 D1 */	lis r4, l_arcName@ha
/* 80D0BDBC  38 84 C1 44 */	addi r4, r4, l_arcName@l
/* 80D0BDC0  80 84 00 00 */	lwz r4, 0(r4)
/* 80D0BDC4  4B 32 10 F8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D0BDC8  7C 60 1B 78 */	mr r0, r3
/* 80D0BDCC  2C 00 00 04 */	cmpwi r0, 4
/* 80D0BDD0  40 82 00 3C */	bne lbl_80D0BE0C
/* 80D0BDD4  7F E3 FB 78 */	mr r3, r31
/* 80D0BDD8  3C 80 80 D1 */	lis r4, l_arcName@ha
/* 80D0BDDC  38 84 C1 44 */	addi r4, r4, l_arcName@l
/* 80D0BDE0  80 84 00 00 */	lwz r4, 0(r4)
/* 80D0BDE4  38 A0 00 07 */	li r5, 7
/* 80D0BDE8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80D0BDEC  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80D0BDF0  38 E0 40 00 */	li r7, 0x4000
/* 80D0BDF4  39 00 00 00 */	li r8, 0
/* 80D0BDF8  4B 36 C9 C4 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D0BDFC  7C 60 1B 78 */	mr r0, r3
/* 80D0BE00  2C 00 00 05 */	cmpwi r0, 5
/* 80D0BE04  40 82 00 08 */	bne lbl_80D0BE0C
/* 80D0BE08  48 00 00 08 */	b lbl_80D0BE10
lbl_80D0BE0C:
/* 80D0BE0C  7C 03 03 78 */	mr r3, r0
lbl_80D0BE10:
/* 80D0BE10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0BE14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0BE18  7C 08 03 A6 */	mtlr r0
/* 80D0BE1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0BE20  4E 80 00 20 */	blr 
