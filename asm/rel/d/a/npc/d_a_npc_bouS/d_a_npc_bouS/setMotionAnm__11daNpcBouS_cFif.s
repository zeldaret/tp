lbl_809745F4:
/* 809745F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809745F8  7C 08 02 A6 */	mflr r0
/* 809745FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80974600  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80974604  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80974608  39 61 00 20 */	addi r11, r1, 0x20
/* 8097460C  4B 9E DB C9 */	bl _savegpr_27
/* 80974610  7C 7E 1B 78 */	mr r30, r3
/* 80974614  FF E0 08 90 */	fmr f31, f1
/* 80974618  3C A0 80 98 */	lis r5, cNullVec__6Z2Calc@ha /* 0x809787A4@ha */
/* 8097461C  3B A5 87 A4 */	addi r29, r5, cNullVec__6Z2Calc@l /* 0x809787A4@l */
/* 80974620  1F 84 00 0C */	mulli r28, r4, 0xc
/* 80974624  38 BD 00 20 */	addi r5, r29, 0x20
/* 80974628  7C 85 E2 14 */	add r4, r5, r28
/* 8097462C  80 04 00 08 */	lwz r0, 8(r4)
/* 80974630  54 00 10 3A */	slwi r0, r0, 2
/* 80974634  38 9D 01 7C */	addi r4, r29, 0x17c
/* 80974638  7C 84 00 2E */	lwzx r4, r4, r0
/* 8097463C  7C A5 E0 2E */	lwzx r5, r5, r28
/* 80974640  4B 7D E4 ED */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80974644  7C 7B 1B 78 */	mr r27, r3
/* 80974648  7F C3 F3 78 */	mr r3, r30
/* 8097464C  38 9D 01 70 */	addi r4, r29, 0x170
/* 80974650  80 04 00 08 */	lwz r0, 8(r4)
/* 80974654  54 00 10 3A */	slwi r0, r0, 2
/* 80974658  38 9D 01 7C */	addi r4, r29, 0x17c
/* 8097465C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80974660  80 BD 01 70 */	lwz r5, 0x170(r29)
/* 80974664  4B 7D E5 41 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80974668  7C 7F 1B 78 */	mr r31, r3
/* 8097466C  38 1D 00 20 */	addi r0, r29, 0x20
/* 80974670  7C 60 E2 14 */	add r3, r0, r28
/* 80974674  80 A3 00 04 */	lwz r5, 4(r3)
/* 80974678  38 7D 01 70 */	addi r3, r29, 0x170
/* 8097467C  83 83 00 04 */	lwz r28, 4(r3)
/* 80974680  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80974684  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80974688  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 8097468C  28 1B 00 00 */	cmplwi r27, 0
/* 80974690  41 82 00 40 */	beq lbl_809746D0
/* 80974694  7F C3 F3 78 */	mr r3, r30
/* 80974698  7F 64 DB 78 */	mr r4, r27
/* 8097469C  3C C0 80 98 */	lis r6, lit_4446@ha /* 0x809784AC@ha */
/* 809746A0  C0 26 84 AC */	lfs f1, lit_4446@l(r6)  /* 0x809784AC@l */
/* 809746A4  FC 40 F8 90 */	fmr f2, f31
/* 809746A8  38 C0 00 00 */	li r6, 0
/* 809746AC  38 E0 FF FF */	li r7, -1
/* 809746B0  4B 7D E5 6D */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 809746B4  2C 03 00 00 */	cmpwi r3, 0
/* 809746B8  41 82 00 18 */	beq lbl_809746D0
/* 809746BC  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 809746C0  60 00 00 09 */	ori r0, r0, 9
/* 809746C4  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 809746C8  38 00 00 00 */	li r0, 0
/* 809746CC  B0 1E 09 E2 */	sth r0, 0x9e2(r30)
lbl_809746D0:
/* 809746D0  28 1F 00 00 */	cmplwi r31, 0
/* 809746D4  41 82 00 3C */	beq lbl_80974710
/* 809746D8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809746DC  80 63 00 04 */	lwz r3, 4(r3)
/* 809746E0  80 A3 00 04 */	lwz r5, 4(r3)
/* 809746E4  7F C3 F3 78 */	mr r3, r30
/* 809746E8  7F E4 FB 78 */	mr r4, r31
/* 809746EC  3C C0 80 98 */	lis r6, lit_4446@ha /* 0x809784AC@ha */
/* 809746F0  C0 26 84 AC */	lfs f1, lit_4446@l(r6)  /* 0x809784AC@l */
/* 809746F4  7F 86 E3 78 */	mr r6, r28
/* 809746F8  4B 7D E6 0D */	bl setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 809746FC  2C 03 00 00 */	cmpwi r3, 0
/* 80974700  41 82 00 10 */	beq lbl_80974710
/* 80974704  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80974708  60 00 00 12 */	ori r0, r0, 0x12
/* 8097470C  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_80974710:
/* 80974710  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80974714  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80974718  39 61 00 20 */	addi r11, r1, 0x20
/* 8097471C  4B 9E DB 05 */	bl _restgpr_27
/* 80974720  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80974724  7C 08 03 A6 */	mtlr r0
/* 80974728  38 21 00 30 */	addi r1, r1, 0x30
/* 8097472C  4E 80 00 20 */	blr 
