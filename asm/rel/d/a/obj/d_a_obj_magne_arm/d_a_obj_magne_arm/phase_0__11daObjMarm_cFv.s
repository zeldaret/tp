lbl_80590244:
/* 80590244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80590248  7C 08 02 A6 */	mflr r0
/* 8059024C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590250  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80590254  7C 7F 1B 78 */	mr r31, r3
/* 80590258  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8059025C  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80590260  98 03 0A 15 */	stb r0, 0xa15(r3)
/* 80590264  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80590268  3C 80 80 59 */	lis r4, l_arcName@ha /* 0x805929A0@ha */
/* 8059026C  38 84 29 A0 */	addi r4, r4, l_arcName@l /* 0x805929A0@l */
/* 80590270  80 84 00 00 */	lwz r4, 0(r4)
/* 80590274  4B A9 CC 49 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80590278  2C 03 00 04 */	cmpwi r3, 4
/* 8059027C  40 82 00 44 */	bne lbl_805902C0
/* 80590280  7F E3 FB 78 */	mr r3, r31
/* 80590284  3C 80 80 59 */	lis r4, l_arcName@ha /* 0x805929A0@ha */
/* 80590288  38 84 29 A0 */	addi r4, r4, l_arcName@l /* 0x805929A0@l */
/* 8059028C  80 84 00 00 */	lwz r4, 0(r4)
/* 80590290  38 A0 00 15 */	li r5, 0x15
/* 80590294  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80590298  38 C6 5A 24 */	addi r6, r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 8059029C  38 E0 60 00 */	li r7, 0x6000
/* 805902A0  39 00 00 00 */	li r8, 0
/* 805902A4  4B AE 85 19 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 805902A8  2C 03 00 05 */	cmpwi r3, 5
/* 805902AC  40 82 00 08 */	bne lbl_805902B4
/* 805902B0  48 00 00 14 */	b lbl_805902C4
lbl_805902B4:
/* 805902B4  88 7F 0A 1C */	lbz r3, 0xa1c(r31)
/* 805902B8  38 03 00 01 */	addi r0, r3, 1
/* 805902BC  98 1F 0A 1C */	stb r0, 0xa1c(r31)
lbl_805902C0:
/* 805902C0  38 60 00 00 */	li r3, 0
lbl_805902C4:
/* 805902C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805902C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805902CC  7C 08 03 A6 */	mtlr r0
/* 805902D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805902D4  4E 80 00 20 */	blr 
