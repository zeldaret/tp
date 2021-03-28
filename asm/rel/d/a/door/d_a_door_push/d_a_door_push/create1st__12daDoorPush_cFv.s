lbl_80678318:
/* 80678318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067831C  7C 08 02 A6 */	mflr r0
/* 80678320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80678324  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80678328  7C 7F 1B 78 */	mr r31, r3
/* 8067832C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80678330  3C 80 80 68 */	lis r4, l_arcName@ha
/* 80678334  38 84 8F 70 */	addi r4, r4, l_arcName@l
/* 80678338  80 84 00 00 */	lwz r4, 0(r4)
/* 8067833C  4B 9B 4B 80 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80678340  7C 60 1B 78 */	mr r0, r3
/* 80678344  2C 00 00 04 */	cmpwi r0, 4
/* 80678348  40 82 00 3C */	bne lbl_80678384
/* 8067834C  7F E3 FB 78 */	mr r3, r31
/* 80678350  3C 80 80 68 */	lis r4, l_arcName@ha
/* 80678354  38 84 8F 70 */	addi r4, r4, l_arcName@l
/* 80678358  80 84 00 00 */	lwz r4, 0(r4)
/* 8067835C  38 A0 00 08 */	li r5, 8
/* 80678360  38 C0 00 00 */	li r6, 0
/* 80678364  3C E0 00 01 */	lis r7, 0x0001 /* 0x00008600@ha */
/* 80678368  38 E7 86 00 */	addi r7, r7, 0x8600 /* 0x00008600@l */
/* 8067836C  39 00 00 00 */	li r8, 0
/* 80678370  4B A0 04 4C */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80678374  7C 60 1B 78 */	mr r0, r3
/* 80678378  2C 00 00 05 */	cmpwi r0, 5
/* 8067837C  40 82 00 08 */	bne lbl_80678384
/* 80678380  48 00 00 08 */	b lbl_80678388
lbl_80678384:
/* 80678384  7C 03 03 78 */	mr r3, r0
lbl_80678388:
/* 80678388  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067838C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80678390  7C 08 03 A6 */	mtlr r0
/* 80678394  38 21 00 10 */	addi r1, r1, 0x10
/* 80678398  4E 80 00 20 */	blr 
