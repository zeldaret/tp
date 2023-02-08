lbl_80CAA1BC:
/* 80CAA1BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAA1C0  7C 08 02 A6 */	mflr r0
/* 80CAA1C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAA1C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAA1CC  7C 7F 1B 78 */	mr r31, r3
/* 80CAA1D0  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80CAA1D4  3C 80 80 CB */	lis r4, l_arcName@ha /* 0x80CAAB6C@ha */
/* 80CAA1D8  38 84 AB 6C */	addi r4, r4, l_arcName@l /* 0x80CAAB6C@l */
/* 80CAA1DC  80 84 00 00 */	lwz r4, 0(r4)
/* 80CAA1E0  4B 38 2C DD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CAA1E4  7C 60 1B 78 */	mr r0, r3
/* 80CAA1E8  2C 00 00 04 */	cmpwi r0, 4
/* 80CAA1EC  40 82 00 38 */	bne lbl_80CAA224
/* 80CAA1F0  7F E3 FB 78 */	mr r3, r31
/* 80CAA1F4  3C 80 80 CB */	lis r4, l_arcName@ha /* 0x80CAAB6C@ha */
/* 80CAA1F8  38 84 AB 6C */	addi r4, r4, l_arcName@l /* 0x80CAAB6C@l */
/* 80CAA1FC  80 84 00 00 */	lwz r4, 0(r4)
/* 80CAA200  38 A0 00 08 */	li r5, 8
/* 80CAA204  38 C0 00 00 */	li r6, 0
/* 80CAA208  38 E0 42 30 */	li r7, 0x4230
/* 80CAA20C  39 00 00 00 */	li r8, 0
/* 80CAA210  4B 3C E5 AD */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CAA214  7C 60 1B 78 */	mr r0, r3
/* 80CAA218  2C 00 00 05 */	cmpwi r0, 5
/* 80CAA21C  40 82 00 08 */	bne lbl_80CAA224
/* 80CAA220  48 00 00 08 */	b lbl_80CAA228
lbl_80CAA224:
/* 80CAA224  7C 03 03 78 */	mr r3, r0
lbl_80CAA228:
/* 80CAA228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAA22C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAA230  7C 08 03 A6 */	mtlr r0
/* 80CAA234  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAA238  4E 80 00 20 */	blr 
