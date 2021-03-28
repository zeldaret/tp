lbl_804A6428:
/* 804A6428  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804A642C  7C 08 02 A6 */	mflr r0
/* 804A6430  90 01 00 64 */	stw r0, 0x64(r1)
/* 804A6434  39 61 00 60 */	addi r11, r1, 0x60
/* 804A6438  4B EB BD 88 */	b _savegpr_22
/* 804A643C  7C 79 1B 78 */	mr r25, r3
/* 804A6440  7C 9F 23 78 */	mr r31, r4
/* 804A6444  7C BC 2B 78 */	mr r28, r5
/* 804A6448  7C D6 33 78 */	mr r22, r6
/* 804A644C  7C FA 3B 78 */	mr r26, r7
/* 804A6450  7D 3D 4B 78 */	mr r29, r9
/* 804A6454  3C 60 80 4B */	lis r3, lit_1109@ha
/* 804A6458  3B C3 8C 18 */	addi r30, r3, lit_1109@l
/* 804A645C  3C 60 80 4B */	lis r3, lit_3727@ha
/* 804A6460  3B 63 88 60 */	addi r27, r3, lit_3727@l
/* 804A6464  3A E0 00 00 */	li r23, 0
/* 804A6468  2C 1D 00 04 */	cmpwi r29, 4
/* 804A646C  40 82 00 0C */	bne lbl_804A6478
/* 804A6470  3A E0 C7 8B */	li r23, -14453
/* 804A6474  48 00 00 10 */	b lbl_804A6484
lbl_804A6478:
/* 804A6478  2C 1D 00 05 */	cmpwi r29, 5
/* 804A647C  40 82 00 08 */	bne lbl_804A6484
/* 804A6480  3A E0 E4 A8 */	li r23, -7000
lbl_804A6484:
/* 804A6484  80 79 00 84 */	lwz r3, 0x84(r25)
/* 804A6488  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804A648C  1F 08 00 30 */	mulli r24, r8, 0x30
/* 804A6490  7C 60 C2 14 */	add r3, r0, r24
/* 804A6494  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 804A6498  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 804A649C  4B EA 00 14 */	b PSMTXCopy
/* 804A64A0  2C 1D 00 05 */	cmpwi r29, 5
/* 804A64A4  40 82 00 20 */	bne lbl_804A64C4
/* 804A64A8  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 804A64AC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804A64B0  C0 1B 00 90 */	lfs f0, 0x90(r27)
/* 804A64B4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A64B8  C0 1B 00 88 */	lfs f0, 0x88(r27)
/* 804A64BC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804A64C0  48 00 00 4C */	b lbl_804A650C
lbl_804A64C4:
/* 804A64C4  38 1D FF FE */	addi r0, r29, -2
/* 804A64C8  28 00 00 01 */	cmplwi r0, 1
/* 804A64CC  40 81 00 0C */	ble lbl_804A64D8
/* 804A64D0  2C 1D 00 04 */	cmpwi r29, 4
/* 804A64D4  40 82 00 20 */	bne lbl_804A64F4
lbl_804A64D8:
/* 804A64D8  C0 1B 00 94 */	lfs f0, 0x94(r27)
/* 804A64DC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804A64E0  C0 1B 00 98 */	lfs f0, 0x98(r27)
/* 804A64E4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A64E8  C0 1B 00 9C */	lfs f0, 0x9c(r27)
/* 804A64EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804A64F0  48 00 00 1C */	b lbl_804A650C
lbl_804A64F4:
/* 804A64F4  C0 1B 00 A0 */	lfs f0, 0xa0(r27)
/* 804A64F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804A64FC  C0 1B 00 A4 */	lfs f0, 0xa4(r27)
/* 804A6500  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A6504  C0 1B 00 A8 */	lfs f0, 0xa8(r27)
/* 804A6508  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_804A650C:
/* 804A650C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804A6510  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804A6514  38 81 00 20 */	addi r4, r1, 0x20
/* 804A6518  38 A1 00 14 */	addi r5, r1, 0x14
/* 804A651C  4B EA 08 50 */	b PSMTXMultVec
/* 804A6520  2C 1D 00 05 */	cmpwi r29, 5
/* 804A6524  40 82 00 24 */	bne lbl_804A6548
/* 804A6528  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 804A652C  D0 01 00 08 */	stfs f0, 8(r1)
/* 804A6530  38 7E 01 E4 */	addi r3, r30, 0x1e4
/* 804A6534  C0 03 00 04 */	lfs f0, 4(r3)
/* 804A6538  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804A653C  C0 03 00 08 */	lfs f0, 8(r3)
/* 804A6540  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804A6544  48 00 00 8C */	b lbl_804A65D0
lbl_804A6548:
/* 804A6548  80 79 00 84 */	lwz r3, 0x84(r25)
/* 804A654C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804A6550  1C 16 00 30 */	mulli r0, r22, 0x30
/* 804A6554  7C 63 02 14 */	add r3, r3, r0
/* 804A6558  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 804A655C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 804A6560  4B E9 FF 50 */	b PSMTXCopy
/* 804A6564  2C 1D 00 01 */	cmpwi r29, 1
/* 804A6568  40 82 00 20 */	bne lbl_804A6588
/* 804A656C  C0 1B 00 AC */	lfs f0, 0xac(r27)
/* 804A6570  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804A6574  C0 1B 00 B0 */	lfs f0, 0xb0(r27)
/* 804A6578  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A657C  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 804A6580  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804A6584  48 00 00 38 */	b lbl_804A65BC
lbl_804A6588:
/* 804A6588  2C 1D 00 03 */	cmpwi r29, 3
/* 804A658C  40 82 00 20 */	bne lbl_804A65AC
/* 804A6590  C0 1B 00 B4 */	lfs f0, 0xb4(r27)
/* 804A6594  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804A6598  C0 1B 00 B8 */	lfs f0, 0xb8(r27)
/* 804A659C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A65A0  C0 1B 00 BC */	lfs f0, 0xbc(r27)
/* 804A65A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804A65A8  48 00 00 14 */	b lbl_804A65BC
lbl_804A65AC:
/* 804A65AC  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 804A65B0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804A65B4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A65B8  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_804A65BC:
/* 804A65BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804A65C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804A65C4  38 81 00 20 */	addi r4, r1, 0x20
/* 804A65C8  38 A1 00 08 */	addi r5, r1, 8
/* 804A65CC  4B EA 07 A0 */	b PSMTXMultVec
lbl_804A65D0:
/* 804A65D0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804A65D4  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A65D8  EC 21 00 28 */	fsubs f1, f1, f0
/* 804A65DC  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 804A65E0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804A65E4  EC 42 00 28 */	fsubs f2, f2, f0
/* 804A65E8  4B DC 10 8C */	b cM_atan2s__Fff
/* 804A65EC  7E E4 07 34 */	extsh r4, r23
/* 804A65F0  3A E4 60 00 */	addi r23, r4, 0x6000
/* 804A65F4  7C 17 1A 14 */	add r0, r23, r3
/* 804A65F8  7C 06 07 34 */	extsh r6, r0
/* 804A65FC  38 61 00 14 */	addi r3, r1, 0x14
/* 804A6600  38 81 00 08 */	addi r4, r1, 8
/* 804A6604  38 BE 00 4C */	addi r5, r30, 0x4c
/* 804A6608  7F A7 EB 78 */	mr r7, r29
/* 804A660C  4B FF FB E5 */	bl teduna_calc__FP4cXyzP4cXyzP4cXyzsi
/* 804A6610  80 79 00 84 */	lwz r3, 0x84(r25)
/* 804A6614  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804A6618  7C 60 C2 14 */	add r3, r0, r24
/* 804A661C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 804A6620  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 804A6624  4B E9 FE 8C */	b PSMTXCopy
/* 804A6628  2C 1D 00 05 */	cmpwi r29, 5
/* 804A662C  40 82 00 20 */	bne lbl_804A664C
/* 804A6630  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 804A6634  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804A6638  C0 1B 00 90 */	lfs f0, 0x90(r27)
/* 804A663C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A6640  C0 1B 00 C0 */	lfs f0, 0xc0(r27)
/* 804A6644  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804A6648  48 00 00 4C */	b lbl_804A6694
lbl_804A664C:
/* 804A664C  38 1D FF FE */	addi r0, r29, -2
/* 804A6650  28 00 00 01 */	cmplwi r0, 1
/* 804A6654  40 81 00 0C */	ble lbl_804A6660
/* 804A6658  2C 1D 00 04 */	cmpwi r29, 4
/* 804A665C  40 82 00 20 */	bne lbl_804A667C
lbl_804A6660:
/* 804A6660  C0 1B 00 94 */	lfs f0, 0x94(r27)
/* 804A6664  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804A6668  C0 1B 00 98 */	lfs f0, 0x98(r27)
/* 804A666C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A6670  C0 1B 00 C4 */	lfs f0, 0xc4(r27)
/* 804A6674  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804A6678  48 00 00 1C */	b lbl_804A6694
lbl_804A667C:
/* 804A667C  C0 1B 00 A0 */	lfs f0, 0xa0(r27)
/* 804A6680  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804A6684  C0 1B 00 A4 */	lfs f0, 0xa4(r27)
/* 804A6688  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A668C  C0 1B 00 C8 */	lfs f0, 0xc8(r27)
/* 804A6690  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_804A6694:
/* 804A6694  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804A6698  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804A669C  38 81 00 20 */	addi r4, r1, 0x20
/* 804A66A0  38 A1 00 14 */	addi r5, r1, 0x14
/* 804A66A4  4B EA 06 C8 */	b PSMTXMultVec
/* 804A66A8  2C 1D 00 05 */	cmpwi r29, 5
/* 804A66AC  40 82 00 24 */	bne lbl_804A66D0
/* 804A66B0  C0 1E 01 FC */	lfs f0, 0x1fc(r30)
/* 804A66B4  D0 01 00 08 */	stfs f0, 8(r1)
/* 804A66B8  38 7E 01 FC */	addi r3, r30, 0x1fc
/* 804A66BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 804A66C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804A66C4  C0 03 00 08 */	lfs f0, 8(r3)
/* 804A66C8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804A66CC  48 00 00 88 */	b lbl_804A6754
lbl_804A66D0:
/* 804A66D0  80 79 00 84 */	lwz r3, 0x84(r25)
/* 804A66D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804A66D8  1C 1A 00 30 */	mulli r0, r26, 0x30
/* 804A66DC  7C 63 02 14 */	add r3, r3, r0
/* 804A66E0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 804A66E4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 804A66E8  4B E9 FD C8 */	b PSMTXCopy
/* 804A66EC  2C 1D 00 01 */	cmpwi r29, 1
/* 804A66F0  40 82 00 20 */	bne lbl_804A6710
/* 804A66F4  C0 1B 00 AC */	lfs f0, 0xac(r27)
/* 804A66F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804A66FC  C0 1B 00 B0 */	lfs f0, 0xb0(r27)
/* 804A6700  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A6704  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 804A6708  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804A670C  48 00 00 34 */	b lbl_804A6740
lbl_804A6710:
/* 804A6710  2C 1D 00 04 */	cmpwi r29, 4
/* 804A6714  40 82 00 1C */	bne lbl_804A6730
/* 804A6718  C0 3B 00 CC */	lfs f1, 0xcc(r27)
/* 804A671C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804A6720  C0 1B 00 D0 */	lfs f0, 0xd0(r27)
/* 804A6724  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A6728  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804A672C  48 00 00 14 */	b lbl_804A6740
lbl_804A6730:
/* 804A6730  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 804A6734  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804A6738  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A673C  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_804A6740:
/* 804A6740  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804A6744  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804A6748  38 81 00 20 */	addi r4, r1, 0x20
/* 804A674C  38 A1 00 08 */	addi r5, r1, 8
/* 804A6750  4B EA 06 1C */	b PSMTXMultVec
lbl_804A6754:
/* 804A6754  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804A6758  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A675C  EC 21 00 28 */	fsubs f1, f1, f0
/* 804A6760  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 804A6764  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804A6768  EC 42 00 28 */	fsubs f2, f2, f0
/* 804A676C  4B DC 0F 08 */	b cM_atan2s__Fff
/* 804A6770  7C 17 18 50 */	subf r0, r23, r3
/* 804A6774  7C 06 07 34 */	extsh r6, r0
/* 804A6778  38 61 00 14 */	addi r3, r1, 0x14
/* 804A677C  38 81 00 08 */	addi r4, r1, 8
/* 804A6780  38 BE 01 18 */	addi r5, r30, 0x118
/* 804A6784  7F A7 EB 78 */	mr r7, r29
/* 804A6788  4B FF FA 69 */	bl teduna_calc__FP4cXyzP4cXyzP4cXyzsi
/* 804A678C  38 9E 00 4C */	addi r4, r30, 0x4c
/* 804A6790  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 804A6794  80 63 00 00 */	lwz r3, 0(r3)
/* 804A6798  38 00 00 10 */	li r0, 0x10
/* 804A679C  7C 09 03 A6 */	mtctr r0
lbl_804A67A0:
/* 804A67A0  C0 04 00 00 */	lfs f0, 0(r4)
/* 804A67A4  D0 03 00 00 */	stfs f0, 0(r3)
/* 804A67A8  C0 04 00 04 */	lfs f0, 4(r4)
/* 804A67AC  D0 03 00 04 */	stfs f0, 4(r3)
/* 804A67B0  C0 04 00 08 */	lfs f0, 8(r4)
/* 804A67B4  D0 03 00 08 */	stfs f0, 8(r3)
/* 804A67B8  38 63 00 0C */	addi r3, r3, 0xc
/* 804A67BC  38 84 00 0C */	addi r4, r4, 0xc
/* 804A67C0  42 00 FF E0 */	bdnz lbl_804A67A0
/* 804A67C4  38 9E 01 18 */	addi r4, r30, 0x118
/* 804A67C8  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 804A67CC  80 63 00 00 */	lwz r3, 0(r3)
/* 804A67D0  38 63 01 74 */	addi r3, r3, 0x174
/* 804A67D4  38 00 00 10 */	li r0, 0x10
/* 804A67D8  7C 09 03 A6 */	mtctr r0
lbl_804A67DC:
/* 804A67DC  C0 04 00 00 */	lfs f0, 0(r4)
/* 804A67E0  D0 03 00 00 */	stfs f0, 0(r3)
/* 804A67E4  C0 04 00 04 */	lfs f0, 4(r4)
/* 804A67E8  D0 03 00 04 */	stfs f0, 4(r3)
/* 804A67EC  C0 04 00 08 */	lfs f0, 8(r4)
/* 804A67F0  D0 03 00 08 */	stfs f0, 8(r3)
/* 804A67F4  38 63 FF F4 */	addi r3, r3, -12
/* 804A67F8  38 84 00 0C */	addi r4, r4, 0xc
/* 804A67FC  42 00 FF E0 */	bdnz lbl_804A67DC
/* 804A6800  7F E3 FB 78 */	mr r3, r31
/* 804A6804  38 80 00 20 */	li r4, 0x20
/* 804A6808  3C A0 80 4B */	lis r5, l_color@ha
/* 804A680C  38 A5 8A 38 */	addi r5, r5, l_color@l
/* 804A6810  7F 86 E3 78 */	mr r6, r28
/* 804A6814  4B B6 D7 9C */	b update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 804A6818  7F E3 FB 78 */	mr r3, r31
/* 804A681C  81 9F 00 00 */	lwz r12, 0(r31)
/* 804A6820  81 8C 00 08 */	lwz r12, 8(r12)
/* 804A6824  7D 89 03 A6 */	mtctr r12
/* 804A6828  4E 80 04 21 */	bctrl 
/* 804A682C  1C 83 00 14 */	mulli r4, r3, 0x14
/* 804A6830  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804A6834  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 804A6838  7C 60 22 14 */	add r3, r0, r4
/* 804A683C  3C 63 00 01 */	addis r3, r3, 1
/* 804A6840  38 63 61 54 */	addi r3, r3, 0x6154
/* 804A6844  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 804A6848  7F E4 FB 78 */	mr r4, r31
/* 804A684C  4B B6 DE EC */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 804A6850  39 61 00 60 */	addi r11, r1, 0x60
/* 804A6854  4B EB B9 B8 */	b _restgpr_22
/* 804A6858  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804A685C  7C 08 03 A6 */	mtlr r0
/* 804A6860  38 21 00 60 */	addi r1, r1, 0x60
/* 804A6864  4E 80 00 20 */	blr 
