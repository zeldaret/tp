lbl_80CFBDD0:
/* 80CFBDD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFBDD4  7C 08 02 A6 */	mflr r0
/* 80CFBDD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFBDDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFBDE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CFBDE4  7C 7F 1B 78 */	mr r31, r3
/* 80CFBDE8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CFBDEC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CFBDF0  40 82 00 D4 */	bne lbl_80CFBEC4
/* 80CFBDF4  7F E0 FB 79 */	or. r0, r31, r31
/* 80CFBDF8  41 82 00 C0 */	beq lbl_80CFBEB8
/* 80CFBDFC  7C 1E 03 78 */	mr r30, r0
/* 80CFBE00  4B 37 C8 24 */	b __ct__16dBgS_MoveBgActorFv
/* 80CFBE04  3C 60 80 D0 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80CFBE08  38 03 D4 6C */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80CFBE0C  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80CFBE10  93 DE 05 A4 */	stw r30, 0x5a4(r30)
/* 80CFBE14  38 00 00 00 */	li r0, 0
/* 80CFBE18  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80CFBE1C  3C 60 80 D0 */	lis r3, __vt__13daObjSwHang_c@ha
/* 80CFBE20  38 63 D4 84 */	addi r3, r3, __vt__13daObjSwHang_c@l
/* 80CFBE24  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80CFBE28  38 03 00 28 */	addi r0, r3, 0x28
/* 80CFBE2C  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80CFBE30  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CFBE34  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CFBE38  90 1E 05 D4 */	stw r0, 0x5d4(r30)
/* 80CFBE3C  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80CFBE40  4B 38 79 20 */	b __ct__10dCcD_GSttsFv
/* 80CFBE44  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CFBE48  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CFBE4C  90 7E 05 D4 */	stw r3, 0x5d4(r30)
/* 80CFBE50  38 03 00 20 */	addi r0, r3, 0x20
/* 80CFBE54  90 1E 05 D8 */	stw r0, 0x5d8(r30)
/* 80CFBE58  3B DE 05 F8 */	addi r30, r30, 0x5f8
/* 80CFBE5C  7F C3 F3 78 */	mr r3, r30
/* 80CFBE60  4B 38 7B C8 */	b __ct__12dCcD_GObjInfFv
/* 80CFBE64  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CFBE68  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CFBE6C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CFBE70  3C 60 80 D0 */	lis r3, __vt__8cM3dGAab@ha
/* 80CFBE74  38 03 D4 60 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CFBE78  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80CFBE7C  3C 60 80 D0 */	lis r3, __vt__8cM3dGSph@ha
/* 80CFBE80  38 03 D4 54 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80CFBE84  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CFBE88  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80CFBE8C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80CFBE90  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CFBE94  38 03 00 58 */	addi r0, r3, 0x58
/* 80CFBE98  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80CFBE9C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80CFBEA0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80CFBEA4  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CFBEA8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CFBEAC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CFBEB0  38 03 00 84 */	addi r0, r3, 0x84
/* 80CFBEB4  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80CFBEB8:
/* 80CFBEB8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CFBEBC  60 00 00 08 */	ori r0, r0, 8
/* 80CFBEC0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CFBEC4:
/* 80CFBEC4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CFBEC8  54 00 27 3E */	srwi r0, r0, 0x1c
/* 80CFBECC  98 1F 07 30 */	stb r0, 0x730(r31)
/* 80CFBED0  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80CFBED4  88 1F 07 30 */	lbz r0, 0x730(r31)
/* 80CFBED8  54 00 10 3A */	slwi r0, r0, 2
/* 80CFBEDC  3C 80 80 D0 */	lis r4, l_arcName@ha
/* 80CFBEE0  38 84 D2 D8 */	addi r4, r4, l_arcName@l
/* 80CFBEE4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CFBEE8  4B 33 0F D4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CFBEEC  7C 60 1B 78 */	mr r0, r3
/* 80CFBEF0  2C 00 00 04 */	cmpwi r0, 4
/* 80CFBEF4  40 82 00 50 */	bne lbl_80CFBF44
/* 80CFBEF8  88 1F 07 30 */	lbz r0, 0x730(r31)
/* 80CFBEFC  54 00 10 3A */	slwi r0, r0, 2
/* 80CFBF00  7F E3 FB 78 */	mr r3, r31
/* 80CFBF04  3C 80 80 D0 */	lis r4, l_arcName@ha
/* 80CFBF08  38 84 D2 D8 */	addi r4, r4, l_arcName@l
/* 80CFBF0C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CFBF10  3C A0 80 D0 */	lis r5, l_dzbIdx2@ha
/* 80CFBF14  38 A5 D2 04 */	addi r5, r5, l_dzbIdx2@l
/* 80CFBF18  7C A5 00 2E */	lwzx r5, r5, r0
/* 80CFBF1C  38 C0 00 00 */	li r6, 0
/* 80CFBF20  3C E0 80 D0 */	lis r7, l_heap_size@ha
/* 80CFBF24  38 E7 D2 2C */	addi r7, r7, l_heap_size@l
/* 80CFBF28  7C E7 00 2E */	lwzx r7, r7, r0
/* 80CFBF2C  39 00 00 00 */	li r8, 0
/* 80CFBF30  4B 37 C8 8C */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CFBF34  7C 60 1B 78 */	mr r0, r3
/* 80CFBF38  2C 00 00 05 */	cmpwi r0, 5
/* 80CFBF3C  40 82 00 08 */	bne lbl_80CFBF44
/* 80CFBF40  48 00 00 08 */	b lbl_80CFBF48
lbl_80CFBF44:
/* 80CFBF44  7C 03 03 78 */	mr r3, r0
lbl_80CFBF48:
/* 80CFBF48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFBF4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CFBF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFBF54  7C 08 03 A6 */	mtlr r0
/* 80CFBF58  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFBF5C  4E 80 00 20 */	blr 
