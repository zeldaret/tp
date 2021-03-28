lbl_80CBA828:
/* 80CBA828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBA82C  7C 08 02 A6 */	mflr r0
/* 80CBA830  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBA834  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBA838  7C 7F 1B 78 */	mr r31, r3
/* 80CBA83C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80CBA840  3C 80 80 CC */	lis r4, l_arcName@ha
/* 80CBA844  38 84 C4 C0 */	addi r4, r4, l_arcName@l
/* 80CBA848  80 84 00 00 */	lwz r4, 0(r4)
/* 80CBA84C  4B 37 26 70 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CBA850  7C 60 1B 78 */	mr r0, r3
/* 80CBA854  2C 00 00 04 */	cmpwi r0, 4
/* 80CBA858  40 82 00 38 */	bne lbl_80CBA890
/* 80CBA85C  7F E3 FB 78 */	mr r3, r31
/* 80CBA860  3C 80 80 CC */	lis r4, l_arcName@ha
/* 80CBA864  38 84 C4 C0 */	addi r4, r4, l_arcName@l
/* 80CBA868  80 84 00 00 */	lwz r4, 0(r4)
/* 80CBA86C  38 A0 00 0A */	li r5, 0xa
/* 80CBA870  38 C0 00 00 */	li r6, 0
/* 80CBA874  38 E0 21 80 */	li r7, 0x2180
/* 80CBA878  39 00 00 00 */	li r8, 0
/* 80CBA87C  4B 3B DF 40 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CBA880  7C 60 1B 78 */	mr r0, r3
/* 80CBA884  2C 00 00 05 */	cmpwi r0, 5
/* 80CBA888  40 82 00 08 */	bne lbl_80CBA890
/* 80CBA88C  48 00 00 08 */	b lbl_80CBA894
lbl_80CBA890:
/* 80CBA890  7C 03 03 78 */	mr r3, r0
lbl_80CBA894:
/* 80CBA894  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBA898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBA89C  7C 08 03 A6 */	mtlr r0
/* 80CBA8A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBA8A4  4E 80 00 20 */	blr 
