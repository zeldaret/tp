lbl_80CCD02C:
/* 80CCD02C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCD030  7C 08 02 A6 */	mflr r0
/* 80CCD034  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCD038  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCD03C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CCD040  7C 7E 1B 78 */	mr r30, r3
/* 80CCD044  3C 80 80 CD */	lis r4, cNullVec__6Z2Calc@ha /* 0x80CCDA3C@ha */
/* 80CCD048  3B E4 DA 3C */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80CCDA3C@l */
/* 80CCD04C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CCD050  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CCD054  40 82 00 28 */	bne lbl_80CCD07C
/* 80CCD058  28 1E 00 00 */	cmplwi r30, 0
/* 80CCD05C  41 82 00 14 */	beq lbl_80CCD070
/* 80CCD060  4B 3A B5 C5 */	bl __ct__16dBgS_MoveBgActorFv
/* 80CCD064  3C 60 80 CD */	lis r3, __vt__16daObj_SekiDoor_c@ha /* 0x80CCDAC4@ha */
/* 80CCD068  38 03 DA C4 */	addi r0, r3, __vt__16daObj_SekiDoor_c@l /* 0x80CCDAC4@l */
/* 80CCD06C  90 1E 05 9C */	stw r0, 0x59c(r30)
lbl_80CCD070:
/* 80CCD070  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80CCD074  60 00 00 08 */	ori r0, r0, 8
/* 80CCD078  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80CCD07C:
/* 80CCD07C  38 00 00 00 */	li r0, 0
/* 80CCD080  98 1E 05 D6 */	stb r0, 0x5d6(r30)
/* 80CCD084  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80CCD088  38 9F 00 20 */	addi r4, r31, 0x20
/* 80CCD08C  88 1E 05 D6 */	lbz r0, 0x5d6(r30)
/* 80CCD090  54 00 18 38 */	slwi r0, r0, 3
/* 80CCD094  7C 84 02 14 */	add r4, r4, r0
/* 80CCD098  80 04 00 04 */	lwz r0, 4(r4)
/* 80CCD09C  54 00 10 3A */	slwi r0, r0, 2
/* 80CCD0A0  38 9F 00 30 */	addi r4, r31, 0x30
/* 80CCD0A4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CCD0A8  4B 35 FE 15 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CCD0AC  7C 60 1B 78 */	mr r0, r3
/* 80CCD0B0  2C 00 00 04 */	cmpwi r0, 4
/* 80CCD0B4  40 82 00 84 */	bne lbl_80CCD138
/* 80CCD0B8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CCD0BC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CCD0C0  28 04 00 FF */	cmplwi r4, 0xff
/* 80CCD0C4  41 82 00 28 */	beq lbl_80CCD0EC
/* 80CCD0C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCD0CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCD0D0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CCD0D4  7C 05 07 74 */	extsb r5, r0
/* 80CCD0D8  4B 36 82 89 */	bl isSwitch__10dSv_info_cCFii
/* 80CCD0DC  2C 03 00 00 */	cmpwi r3, 0
/* 80CCD0E0  41 82 00 0C */	beq lbl_80CCD0EC
/* 80CCD0E4  38 60 00 05 */	li r3, 5
/* 80CCD0E8  48 00 00 54 */	b lbl_80CCD13C
lbl_80CCD0EC:
/* 80CCD0EC  88 1E 05 D6 */	lbz r0, 0x5d6(r30)
/* 80CCD0F0  54 06 18 38 */	slwi r6, r0, 3
/* 80CCD0F4  7F C3 F3 78 */	mr r3, r30
/* 80CCD0F8  38 BF 00 28 */	addi r5, r31, 0x28
/* 80CCD0FC  7C 85 32 14 */	add r4, r5, r6
/* 80CCD100  80 04 00 04 */	lwz r0, 4(r4)
/* 80CCD104  54 00 10 3A */	slwi r0, r0, 2
/* 80CCD108  38 9F 00 30 */	addi r4, r31, 0x30
/* 80CCD10C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CCD110  7C A5 30 2E */	lwzx r5, r5, r6
/* 80CCD114  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80CCD118  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80CCD11C  38 E0 0C 20 */	li r7, 0xc20
/* 80CCD120  39 00 00 00 */	li r8, 0
/* 80CCD124  4B 3A B6 99 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CCD128  7C 60 1B 78 */	mr r0, r3
/* 80CCD12C  2C 00 00 05 */	cmpwi r0, 5
/* 80CCD130  40 82 00 08 */	bne lbl_80CCD138
/* 80CCD134  48 00 00 08 */	b lbl_80CCD13C
lbl_80CCD138:
/* 80CCD138  7C 03 03 78 */	mr r3, r0
lbl_80CCD13C:
/* 80CCD13C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCD140  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CCD144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCD148  7C 08 03 A6 */	mtlr r0
/* 80CCD14C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCD150  4E 80 00 20 */	blr 
