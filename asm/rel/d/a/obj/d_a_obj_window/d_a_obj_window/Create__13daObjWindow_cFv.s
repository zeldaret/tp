lbl_80D38840:
/* 80D38840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D38844  7C 08 02 A6 */	mflr r0
/* 80D38848  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3884C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D38850  93 C1 00 08 */	stw r30, 8(r1)
/* 80D38854  7C 7E 1B 78 */	mr r30, r3
/* 80D38858  3C 80 80 D4 */	lis r4, l_bck@ha /* 0x80D3922C@ha */
/* 80D3885C  3B E4 92 2C */	addi r31, r4, l_bck@l /* 0x80D3922C@l */
/* 80D38860  4B FF FE F9 */	bl initBaseMtx__13daObjWindow_cFv
/* 80D38864  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D38868  38 03 00 24 */	addi r0, r3, 0x24
/* 80D3886C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D38870  7F C3 F3 78 */	mr r3, r30
/* 80D38874  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80D38878  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80D3887C  FC 60 08 90 */	fmr f3, f1
/* 80D38880  C0 9F 00 14 */	lfs f4, 0x14(r31)
/* 80D38884  C0 BF 00 18 */	lfs f5, 0x18(r31)
/* 80D38888  FC C0 20 90 */	fmr f6, f4
/* 80D3888C  4B 2E 1C BD */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D38890  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80D38894  28 00 00 01 */	cmplwi r0, 1
/* 80D38898  40 82 00 30 */	bne lbl_80D388C8
/* 80D3889C  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80D388A0  38 80 00 FF */	li r4, 0xff
/* 80D388A4  38 A0 00 FF */	li r5, 0xff
/* 80D388A8  7F C6 F3 78 */	mr r6, r30
/* 80D388AC  4B 34 AF B5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D388B0  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80D388B4  3C 80 80 D4 */	lis r4, l_cyl_src@ha /* 0x80D39288@ha */
/* 80D388B8  38 84 92 88 */	addi r4, r4, l_cyl_src@l /* 0x80D39288@l */
/* 80D388BC  4B 34 BF F9 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D388C0  38 1E 05 B4 */	addi r0, r30, 0x5b4
/* 80D388C4  90 1E 06 34 */	stw r0, 0x634(r30)
lbl_80D388C8:
/* 80D388C8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D388CC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D388D0  98 1E 04 70 */	stb r0, 0x470(r30)
/* 80D388D4  38 60 00 01 */	li r3, 1
/* 80D388D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D388DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D388E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D388E4  7C 08 03 A6 */	mtlr r0
/* 80D388E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D388EC  4E 80 00 20 */	blr 
