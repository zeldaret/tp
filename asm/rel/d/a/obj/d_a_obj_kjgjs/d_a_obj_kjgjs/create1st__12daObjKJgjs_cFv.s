lbl_80C46098:
/* 80C46098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4609C  7C 08 02 A6 */	mflr r0
/* 80C460A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C460A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C460A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C460AC  41 82 00 08 */	beq lbl_80C460B4
/* 80C460B0  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C460B4:
/* 80C460B4  3C 80 80 C4 */	lis r4, l_arcName@ha
/* 80C460B8  38 84 65 8C */	addi r4, r4, l_arcName@l
/* 80C460BC  80 84 00 00 */	lwz r4, 0(r4)
/* 80C460C0  4B 3E 6D FC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C460C4  7C 60 1B 78 */	mr r0, r3
/* 80C460C8  2C 00 00 04 */	cmpwi r0, 4
/* 80C460CC  40 82 00 88 */	bne lbl_80C46154
/* 80C460D0  7F E3 FB 78 */	mr r3, r31
/* 80C460D4  48 00 00 99 */	bl setMtx__12daObjKJgjs_cFv
/* 80C460D8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C460DC  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C460E0  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 80C460E4  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80C460E8  2C 00 00 00 */	cmpwi r0, 0
/* 80C460EC  40 80 00 10 */	bge lbl_80C460FC
/* 80C460F0  38 00 00 00 */	li r0, 0
/* 80C460F4  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 80C460F8  48 00 00 14 */	b lbl_80C4610C
lbl_80C460FC:
/* 80C460FC  2C 00 00 02 */	cmpwi r0, 2
/* 80C46100  40 81 00 0C */	ble lbl_80C4610C
/* 80C46104  38 00 00 01 */	li r0, 1
/* 80C46108  90 1F 06 0C */	stw r0, 0x60c(r31)
lbl_80C4610C:
/* 80C4610C  7F E3 FB 78 */	mr r3, r31
/* 80C46110  3C 80 80 C4 */	lis r4, l_arcName@ha
/* 80C46114  38 84 65 8C */	addi r4, r4, l_arcName@l
/* 80C46118  80 84 00 00 */	lwz r4, 0(r4)
/* 80C4611C  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80C46120  54 00 10 3A */	slwi r0, r0, 2
/* 80C46124  3C A0 80 C4 */	lis r5, l_dzbidx@ha
/* 80C46128  38 A5 65 44 */	addi r5, r5, l_dzbidx@l
/* 80C4612C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C46130  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C46134  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C46138  38 E0 47 F0 */	li r7, 0x47f0
/* 80C4613C  39 1F 05 A8 */	addi r8, r31, 0x5a8
/* 80C46140  4B 43 26 7C */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C46144  7C 60 1B 78 */	mr r0, r3
/* 80C46148  2C 00 00 05 */	cmpwi r0, 5
/* 80C4614C  40 82 00 08 */	bne lbl_80C46154
/* 80C46150  48 00 00 08 */	b lbl_80C46158
lbl_80C46154:
/* 80C46154  7C 03 03 78 */	mr r3, r0
lbl_80C46158:
/* 80C46158  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4615C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46160  7C 08 03 A6 */	mtlr r0
/* 80C46164  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46168  4E 80 00 20 */	blr 
