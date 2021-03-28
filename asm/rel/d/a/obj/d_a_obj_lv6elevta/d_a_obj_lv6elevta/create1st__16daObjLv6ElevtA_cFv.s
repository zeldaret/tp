lbl_80C82D38:
/* 80C82D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C82D3C  7C 08 02 A6 */	mflr r0
/* 80C82D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C82D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C82D48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C82D4C  41 82 00 08 */	beq lbl_80C82D54
/* 80C82D50  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C82D54:
/* 80C82D54  3C 80 80 C8 */	lis r4, l_arcName@ha
/* 80C82D58  38 84 38 54 */	addi r4, r4, l_arcName@l
/* 80C82D5C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C82D60  4B 3A A1 5C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C82D64  7C 60 1B 78 */	mr r0, r3
/* 80C82D68  2C 00 00 04 */	cmpwi r0, 4
/* 80C82D6C  40 82 00 44 */	bne lbl_80C82DB0
/* 80C82D70  7F E3 FB 78 */	mr r3, r31
/* 80C82D74  48 00 00 55 */	bl setMtx__16daObjLv6ElevtA_cFv
/* 80C82D78  7F E3 FB 78 */	mr r3, r31
/* 80C82D7C  3C 80 80 C8 */	lis r4, l_arcName@ha
/* 80C82D80  38 84 38 54 */	addi r4, r4, l_arcName@l
/* 80C82D84  80 84 00 00 */	lwz r4, 0(r4)
/* 80C82D88  38 A0 00 07 */	li r5, 7
/* 80C82D8C  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C82D90  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C82D94  38 E0 55 B0 */	li r7, 0x55b0
/* 80C82D98  39 1F 05 B8 */	addi r8, r31, 0x5b8
/* 80C82D9C  4B 3F 5A 20 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C82DA0  7C 60 1B 78 */	mr r0, r3
/* 80C82DA4  2C 00 00 05 */	cmpwi r0, 5
/* 80C82DA8  40 82 00 08 */	bne lbl_80C82DB0
/* 80C82DAC  48 00 00 08 */	b lbl_80C82DB4
lbl_80C82DB0:
/* 80C82DB0  7C 03 03 78 */	mr r3, r0
lbl_80C82DB4:
/* 80C82DB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C82DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C82DBC  7C 08 03 A6 */	mtlr r0
/* 80C82DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C82DC4  4E 80 00 20 */	blr 
