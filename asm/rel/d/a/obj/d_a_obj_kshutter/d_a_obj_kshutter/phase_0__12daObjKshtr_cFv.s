lbl_80C48148:
/* 80C48148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4814C  7C 08 02 A6 */	mflr r0
/* 80C48150  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C48154  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C48158  7C 7F 1B 78 */	mr r31, r3
/* 80C4815C  88 03 06 19 */	lbz r0, 0x619(r3)
/* 80C48160  28 00 00 00 */	cmplwi r0, 0
/* 80C48164  40 82 00 38 */	bne lbl_80C4819C
/* 80C48168  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80C4816C  B0 1F 06 1A */	sth r0, 0x61a(r31)
/* 80C48170  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80C48174  B0 1F 06 1C */	sth r0, 0x61c(r31)
/* 80C48178  38 00 00 00 */	li r0, 0
/* 80C4817C  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80C48180  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80C48184  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80C48188  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80C4818C  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80C48190  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 80C48194  38 00 00 01 */	li r0, 1
/* 80C48198  98 1F 06 19 */	stb r0, 0x619(r31)
lbl_80C4819C:
/* 80C4819C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C481A0  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80C481A4  38 03 00 01 */	addi r0, r3, 1
/* 80C481A8  98 1F 05 EA */	stb r0, 0x5ea(r31)
/* 80C481AC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C481B0  98 1F 05 EB */	stb r0, 0x5eb(r31)
/* 80C481B4  7F E3 FB 78 */	mr r3, r31
/* 80C481B8  4B FF FE 99 */	bl initKey__12daObjKshtr_cFv
/* 80C481BC  88 1F 05 EA */	lbz r0, 0x5ea(r31)
/* 80C481C0  54 00 10 3A */	slwi r0, r0, 2
/* 80C481C4  3C 60 80 C5 */	lis r3, l_anmArcName@ha /* 0x80C49EE4@ha */
/* 80C481C8  38 63 9E E4 */	addi r3, r3, l_anmArcName@l /* 0x80C49EE4@l */
/* 80C481CC  7C 83 00 2E */	lwzx r4, r3, r0
/* 80C481D0  28 04 00 00 */	cmplwi r4, 0
/* 80C481D4  41 82 00 18 */	beq lbl_80C481EC
/* 80C481D8  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80C481DC  4B 3E 4C E1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C481E0  2C 03 00 04 */	cmpwi r3, 4
/* 80C481E4  41 82 00 08 */	beq lbl_80C481EC
/* 80C481E8  48 00 00 80 */	b lbl_80C48268
lbl_80C481EC:
/* 80C481EC  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C481F0  88 1F 05 EA */	lbz r0, 0x5ea(r31)
/* 80C481F4  54 00 10 3A */	slwi r0, r0, 2
/* 80C481F8  3C 80 80 C5 */	lis r4, l_arcName@ha /* 0x80C49E80@ha */
/* 80C481FC  38 84 9E 80 */	addi r4, r4, l_arcName@l /* 0x80C49E80@l */
/* 80C48200  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C48204  4B 3E 4C B9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C48208  2C 03 00 04 */	cmpwi r3, 4
/* 80C4820C  40 82 00 5C */	bne lbl_80C48268
/* 80C48210  88 1F 05 EA */	lbz r0, 0x5ea(r31)
/* 80C48214  54 00 10 3A */	slwi r0, r0, 2
/* 80C48218  7F E3 FB 78 */	mr r3, r31
/* 80C4821C  3C 80 80 C5 */	lis r4, l_arcName@ha /* 0x80C49E80@ha */
/* 80C48220  38 84 9E 80 */	addi r4, r4, l_arcName@l /* 0x80C49E80@l */
/* 80C48224  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C48228  3C A0 80 C5 */	lis r5, l_dzb@ha /* 0x80C49CBC@ha */
/* 80C4822C  38 A5 9C BC */	addi r5, r5, l_dzb@l /* 0x80C49CBC@l */
/* 80C48230  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C48234  38 C0 00 00 */	li r6, 0
/* 80C48238  3C E0 80 C5 */	lis r7, l_heap_size@ha /* 0x80C49CD0@ha */
/* 80C4823C  38 E7 9C D0 */	addi r7, r7, l_heap_size@l /* 0x80C49CD0@l */
/* 80C48240  7C E7 00 2E */	lwzx r7, r7, r0
/* 80C48244  39 00 00 00 */	li r8, 0
/* 80C48248  4B 43 05 75 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C4824C  2C 03 00 05 */	cmpwi r3, 5
/* 80C48250  40 82 00 08 */	bne lbl_80C48258
/* 80C48254  48 00 00 14 */	b lbl_80C48268
lbl_80C48258:
/* 80C48258  88 7F 06 18 */	lbz r3, 0x618(r31)
/* 80C4825C  38 03 00 01 */	addi r0, r3, 1
/* 80C48260  98 1F 06 18 */	stb r0, 0x618(r31)
/* 80C48264  38 60 00 00 */	li r3, 0
lbl_80C48268:
/* 80C48268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4826C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C48270  7C 08 03 A6 */	mtlr r0
/* 80C48274  38 21 00 10 */	addi r1, r1, 0x10
/* 80C48278  4E 80 00 20 */	blr 
