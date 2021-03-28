lbl_80B8F9F8:
/* 80B8F9F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B8F9FC  7C 08 02 A6 */	mflr r0
/* 80B8FA00  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B8FA04  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B8FA08  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B8FA0C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B8FA10  4B 7D 27 B8 */	b _savegpr_24
/* 80B8FA14  7C 78 1B 78 */	mr r24, r3
/* 80B8FA18  7C 99 23 78 */	mr r25, r4
/* 80B8FA1C  FF E0 08 90 */	fmr f31, f1
/* 80B8FA20  3C 80 80 B9 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B8FA24  3B E4 36 E8 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80B8FA28  3B C0 00 00 */	li r30, 0
/* 80B8FA2C  3B A0 00 00 */	li r29, 0
/* 80B8FA30  3B 80 00 00 */	li r28, 0
/* 80B8FA34  3B 60 00 02 */	li r27, 2
/* 80B8FA38  3B 40 00 02 */	li r26, 2
/* 80B8FA3C  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80B8FA40  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80B8FA44  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80B8FA48  57 20 18 38 */	slwi r0, r25, 3
/* 80B8FA4C  38 9F 00 30 */	addi r4, r31, 0x30
/* 80B8FA50  7C A4 00 2E */	lwzx r5, r4, r0
/* 80B8FA54  2C 05 00 00 */	cmpwi r5, 0
/* 80B8FA58  41 80 00 20 */	blt lbl_80B8FA78
/* 80B8FA5C  7C 84 02 14 */	add r4, r4, r0
/* 80B8FA60  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8FA64  54 00 10 3A */	slwi r0, r0, 2
/* 80B8FA68  38 9F 02 60 */	addi r4, r31, 0x260
/* 80B8FA6C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B8FA70  4B 5C 30 BC */	b getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80B8FA74  7C 7E 1B 78 */	mr r30, r3
lbl_80B8FA78:
/* 80B8FA78  38 19 FF EE */	addi r0, r25, -18
/* 80B8FA7C  28 00 00 0D */	cmplwi r0, 0xd
/* 80B8FA80  41 81 00 7C */	bgt lbl_80B8FAFC
/* 80B8FA84  3C 60 80 B9 */	lis r3, lit_5051@ha
/* 80B8FA88  38 63 3A 24 */	addi r3, r3, lit_5051@l
/* 80B8FA8C  54 00 10 3A */	slwi r0, r0, 2
/* 80B8FA90  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B8FA94  7C 09 03 A6 */	mtctr r0
/* 80B8FA98  4E 80 04 20 */	bctr 
lbl_80B8FA9C:
/* 80B8FA9C  3B 60 00 00 */	li r27, 0
/* 80B8FAA0  48 00 00 64 */	b lbl_80B8FB04
lbl_80B8FAA4:
/* 80B8FAA4  3B 60 00 00 */	li r27, 0
/* 80B8FAA8  48 00 00 5C */	b lbl_80B8FB04
lbl_80B8FAAC:
/* 80B8FAAC  3B 60 00 00 */	li r27, 0
/* 80B8FAB0  48 00 00 54 */	b lbl_80B8FB04
lbl_80B8FAB4:
/* 80B8FAB4  3B 60 00 00 */	li r27, 0
/* 80B8FAB8  48 00 00 4C */	b lbl_80B8FB04
lbl_80B8FABC:
/* 80B8FABC  3B 60 00 00 */	li r27, 0
/* 80B8FAC0  3B 80 00 01 */	li r28, 1
/* 80B8FAC4  3B 40 00 00 */	li r26, 0
/* 80B8FAC8  48 00 00 3C */	b lbl_80B8FB04
lbl_80B8FACC:
/* 80B8FACC  3B 80 00 02 */	li r28, 2
/* 80B8FAD0  48 00 00 34 */	b lbl_80B8FB04
lbl_80B8FAD4:
/* 80B8FAD4  3B 60 00 00 */	li r27, 0
/* 80B8FAD8  48 00 00 2C */	b lbl_80B8FB04
lbl_80B8FADC:
/* 80B8FADC  3B 60 00 00 */	li r27, 0
/* 80B8FAE0  3B 80 00 03 */	li r28, 3
/* 80B8FAE4  3B 40 00 00 */	li r26, 0
/* 80B8FAE8  48 00 00 1C */	b lbl_80B8FB04
lbl_80B8FAEC:
/* 80B8FAEC  3B 80 00 04 */	li r28, 4
/* 80B8FAF0  48 00 00 14 */	b lbl_80B8FB04
lbl_80B8FAF4:
/* 80B8FAF4  3B 60 00 00 */	li r27, 0
/* 80B8FAF8  48 00 00 0C */	b lbl_80B8FB04
lbl_80B8FAFC:
/* 80B8FAFC  3B C0 00 00 */	li r30, 0
/* 80B8FB00  3B A0 00 00 */	li r29, 0
lbl_80B8FB04:
/* 80B8FB04  57 80 18 38 */	slwi r0, r28, 3
/* 80B8FB08  38 9F 01 A8 */	addi r4, r31, 0x1a8
/* 80B8FB0C  7C A4 00 2E */	lwzx r5, r4, r0
/* 80B8FB10  2C 05 00 00 */	cmpwi r5, 0
/* 80B8FB14  41 80 00 24 */	blt lbl_80B8FB38
/* 80B8FB18  7F 03 C3 78 */	mr r3, r24
/* 80B8FB1C  7C 84 02 14 */	add r4, r4, r0
/* 80B8FB20  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8FB24  54 00 10 3A */	slwi r0, r0, 2
/* 80B8FB28  38 9F 02 60 */	addi r4, r31, 0x260
/* 80B8FB2C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B8FB30  4B 5C 30 74 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80B8FB34  7C 7D 1B 78 */	mr r29, r3
lbl_80B8FB38:
/* 80B8FB38  28 1D 00 00 */	cmplwi r29, 0
/* 80B8FB3C  41 82 00 3C */	beq lbl_80B8FB78
/* 80B8FB40  80 78 05 68 */	lwz r3, 0x568(r24)
/* 80B8FB44  80 63 00 04 */	lwz r3, 4(r3)
/* 80B8FB48  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B8FB4C  7F 03 C3 78 */	mr r3, r24
/* 80B8FB50  7F A4 EB 78 */	mr r4, r29
/* 80B8FB54  3C C0 80 B9 */	lis r6, lit_4483@ha
/* 80B8FB58  C0 26 32 94 */	lfs f1, lit_4483@l(r6)
/* 80B8FB5C  7F 46 D3 78 */	mr r6, r26
/* 80B8FB60  4B 5C 31 A4 */	b setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80B8FB64  2C 03 00 00 */	cmpwi r3, 0
/* 80B8FB68  41 82 00 10 */	beq lbl_80B8FB78
/* 80B8FB6C  80 18 09 9C */	lwz r0, 0x99c(r24)
/* 80B8FB70  60 00 00 12 */	ori r0, r0, 0x12
/* 80B8FB74  90 18 09 9C */	stw r0, 0x99c(r24)
lbl_80B8FB78:
/* 80B8FB78  28 1E 00 00 */	cmplwi r30, 0
/* 80B8FB7C  41 82 00 48 */	beq lbl_80B8FBC4
/* 80B8FB80  7F 03 C3 78 */	mr r3, r24
/* 80B8FB84  7F C4 F3 78 */	mr r4, r30
/* 80B8FB88  3C A0 80 B9 */	lis r5, lit_4483@ha
/* 80B8FB8C  C0 25 32 94 */	lfs f1, lit_4483@l(r5)
/* 80B8FB90  FC 40 F8 90 */	fmr f2, f31
/* 80B8FB94  7F 65 DB 78 */	mr r5, r27
/* 80B8FB98  38 C0 00 00 */	li r6, 0
/* 80B8FB9C  38 E0 FF FF */	li r7, -1
/* 80B8FBA0  4B 5C 30 7C */	b setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 80B8FBA4  2C 03 00 00 */	cmpwi r3, 0
/* 80B8FBA8  41 82 00 1C */	beq lbl_80B8FBC4
/* 80B8FBAC  80 18 09 9C */	lwz r0, 0x99c(r24)
/* 80B8FBB0  60 00 00 09 */	ori r0, r0, 9
/* 80B8FBB4  90 18 09 9C */	stw r0, 0x99c(r24)
/* 80B8FBB8  38 00 00 00 */	li r0, 0
/* 80B8FBBC  B0 18 09 E2 */	sth r0, 0x9e2(r24)
/* 80B8FBC0  93 38 0E 2C */	stw r25, 0xe2c(r24)
lbl_80B8FBC4:
/* 80B8FBC4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B8FBC8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B8FBCC  39 61 00 30 */	addi r11, r1, 0x30
/* 80B8FBD0  4B 7D 26 44 */	b _restgpr_24
/* 80B8FBD4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B8FBD8  7C 08 03 A6 */	mtlr r0
/* 80B8FBDC  38 21 00 40 */	addi r1, r1, 0x40
/* 80B8FBE0  4E 80 00 20 */	blr 
