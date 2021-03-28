lbl_80BE50EC:
/* 80BE50EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE50F0  7C 08 02 A6 */	mflr r0
/* 80BE50F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE50F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE50FC  7C 7F 1B 78 */	mr r31, r3
/* 80BE5100  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BE5104  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80BE5108  98 03 0A D4 */	stb r0, 0xad4(r3)
/* 80BE510C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BE5110  88 1F 0A D4 */	lbz r0, 0xad4(r31)
/* 80BE5114  54 00 10 3A */	slwi r0, r0, 2
/* 80BE5118  3C 80 80 BE */	lis r4, l_arcName@ha
/* 80BE511C  38 84 5E 78 */	addi r4, r4, l_arcName@l
/* 80BE5120  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BE5124  4B 44 7D 98 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BE5128  2C 03 00 04 */	cmpwi r3, 4
/* 80BE512C  41 82 00 08 */	beq lbl_80BE5134
/* 80BE5130  48 00 00 58 */	b lbl_80BE5188
lbl_80BE5134:
/* 80BE5134  38 00 FF FF */	li r0, -1
/* 80BE5138  90 1F 04 A4 */	stw r0, 0x4a4(r31)
/* 80BE513C  80 1F 04 A4 */	lwz r0, 0x4a4(r31)
/* 80BE5140  90 1F 0A D0 */	stw r0, 0xad0(r31)
/* 80BE5144  88 1F 0A D4 */	lbz r0, 0xad4(r31)
/* 80BE5148  54 00 10 3A */	slwi r0, r0, 2
/* 80BE514C  7F E3 FB 78 */	mr r3, r31
/* 80BE5150  3C 80 80 BE */	lis r4, l_arcName@ha
/* 80BE5154  38 84 5E 78 */	addi r4, r4, l_arcName@l
/* 80BE5158  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BE515C  3C A0 80 BE */	lis r5, l_dzb2@ha
/* 80BE5160  38 A5 5D 8C */	addi r5, r5, l_dzb2@l
/* 80BE5164  7C A5 00 2E */	lwzx r5, r5, r0
/* 80BE5168  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80BE516C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80BE5170  3C E0 80 BE */	lis r7, l_heap_size@ha
/* 80BE5174  38 E7 5D C4 */	addi r7, r7, l_heap_size@l
/* 80BE5178  7C E7 00 2E */	lwzx r7, r7, r0
/* 80BE517C  39 00 00 00 */	li r8, 0
/* 80BE5180  4B 49 36 3C */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BE5184  2C 03 00 05 */	cmpwi r3, 5
lbl_80BE5188:
/* 80BE5188  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE518C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE5190  7C 08 03 A6 */	mtlr r0
/* 80BE5194  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE5198  4E 80 00 20 */	blr 
