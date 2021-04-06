lbl_807A63A4:
/* 807A63A4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807A63A8  7C 08 02 A6 */	mflr r0
/* 807A63AC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807A63B0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807A63B4  4B BB BE 01 */	bl _savegpr_19
/* 807A63B8  7C 7E 1B 78 */	mr r30, r3
/* 807A63BC  7C 9A 23 78 */	mr r26, r4
/* 807A63C0  7C BB 2B 78 */	mr r27, r5
/* 807A63C4  7C DC 33 78 */	mr r28, r6
/* 807A63C8  3C 60 80 7A */	lis r3, cNullVec__6Z2Calc@ha /* 0x807A69EC@ha */
/* 807A63CC  3A E3 69 EC */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x807A69EC@l */
/* 807A63D0  3C 60 80 7A */	lis r3, lit_3903@ha /* 0x807A6824@ha */
/* 807A63D4  3B E3 68 24 */	addi r31, r3, lit_3903@l /* 0x807A6824@l */
/* 807A63D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A63DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A63E0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807A63E4  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807A63E8  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 807A63EC  28 00 00 00 */	cmplwi r0, 0
/* 807A63F0  41 82 03 A4 */	beq lbl_807A6794
/* 807A63F4  7F C4 F3 78 */	mr r4, r30
/* 807A63F8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807A63FC  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 807A6400  7D 89 03 A6 */	mtctr r12
/* 807A6404  4E 80 04 21 */	bctrl 
/* 807A6408  2C 03 00 00 */	cmpwi r3, 0
/* 807A640C  41 82 03 88 */	beq lbl_807A6794
/* 807A6410  4B A0 61 6D */	bl dKy_darkworld_check__Fv
/* 807A6414  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 807A6418  30 03 FF FF */	addic r0, r3, -1
/* 807A641C  7F A0 19 10 */	subfe r29, r0, r3
/* 807A6420  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 807A6424  28 00 00 00 */	cmplwi r0, 0
/* 807A6428  40 82 02 A0 */	bne lbl_807A66C8
/* 807A642C  38 00 00 01 */	li r0, 1
/* 807A6430  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807A6434  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807A6438  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 807A643C  80 63 00 00 */	lwz r3, 0(r3)
/* 807A6440  80 63 05 74 */	lwz r3, 0x574(r3)
/* 807A6444  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807A6448  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807A644C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 807A6450  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807A6454  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807A6458  4B BA 00 59 */	bl PSMTXCopy
/* 807A645C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807A6460  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807A6464  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A6468  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807A646C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807A6470  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807A6474  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807A6478  38 81 00 4C */	addi r4, r1, 0x4c
/* 807A647C  38 A1 00 58 */	addi r5, r1, 0x58
/* 807A6480  4B BA 08 ED */	bl PSMTXMultVec
/* 807A6484  38 61 00 34 */	addi r3, r1, 0x34
/* 807A6488  38 81 00 58 */	addi r4, r1, 0x58
/* 807A648C  7F 65 DB 78 */	mr r5, r27
/* 807A6490  4B AC 06 A5 */	bl __mi__4cXyzCFRC3Vec
/* 807A6494  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 807A6498  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807A649C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807A64A0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807A64A4  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 807A64A8  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 807A64AC  4B AC 11 C9 */	bl cM_atan2s__Fff
/* 807A64B0  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 807A64B4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807A64B8  EC 20 00 32 */	fmuls f1, f0, f0
/* 807A64BC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807A64C0  EC 00 00 32 */	fmuls f0, f0, f0
/* 807A64C4  EC 41 00 2A */	fadds f2, f1, f0
/* 807A64C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A64CC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807A64D0  40 81 00 0C */	ble lbl_807A64DC
/* 807A64D4  FC 00 10 34 */	frsqrte f0, f2
/* 807A64D8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807A64DC:
/* 807A64DC  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 807A64E0  4B AC 11 95 */	bl cM_atan2s__Fff
/* 807A64E4  7C 03 00 D0 */	neg r0, r3
/* 807A64E8  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 807A64EC  38 80 00 00 */	li r4, 0
/* 807A64F0  B0 81 00 30 */	sth r4, 0x30(r1)
/* 807A64F4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807A64F8  7C 00 07 74 */	extsb r0, r0
/* 807A64FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A6500  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A6504  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807A6508  57 A5 10 3A */	slwi r5, r29, 2
/* 807A650C  90 81 00 08 */	stw r4, 8(r1)
/* 807A6510  90 01 00 0C */	stw r0, 0xc(r1)
/* 807A6514  3A B7 00 20 */	addi r21, r23, 0x20
/* 807A6518  7E B5 2A 14 */	add r21, r21, r5
/* 807A651C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807A6520  3A D7 00 28 */	addi r22, r23, 0x28
/* 807A6524  7E D6 2A 14 */	add r22, r22, r5
/* 807A6528  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807A652C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807A6530  38 80 00 00 */	li r4, 0
/* 807A6534  38 A0 02 9B */	li r5, 0x29b
/* 807A6538  7F 66 DB 78 */	mr r6, r27
/* 807A653C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807A6540  39 01 00 2C */	addi r8, r1, 0x2c
/* 807A6544  7F 89 E3 78 */	mr r9, r28
/* 807A6548  39 40 00 FF */	li r10, 0xff
/* 807A654C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807A6550  4B 8A 65 41 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807A6554  7C 79 1B 79 */	or. r25, r3, r3
/* 807A6558  41 82 00 FC */	beq lbl_807A6654
/* 807A655C  38 61 00 40 */	addi r3, r1, 0x40
/* 807A6560  4B BA 0B D9 */	bl PSVECSquareMag
/* 807A6564  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A6568  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A656C  40 81 00 58 */	ble lbl_807A65C4
/* 807A6570  FC 00 08 34 */	frsqrte f0, f1
/* 807A6574  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807A6578  FC 44 00 32 */	fmul f2, f4, f0
/* 807A657C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807A6580  FC 00 00 32 */	fmul f0, f0, f0
/* 807A6584  FC 01 00 32 */	fmul f0, f1, f0
/* 807A6588  FC 03 00 28 */	fsub f0, f3, f0
/* 807A658C  FC 02 00 32 */	fmul f0, f2, f0
/* 807A6590  FC 44 00 32 */	fmul f2, f4, f0
/* 807A6594  FC 00 00 32 */	fmul f0, f0, f0
/* 807A6598  FC 01 00 32 */	fmul f0, f1, f0
/* 807A659C  FC 03 00 28 */	fsub f0, f3, f0
/* 807A65A0  FC 02 00 32 */	fmul f0, f2, f0
/* 807A65A4  FC 44 00 32 */	fmul f2, f4, f0
/* 807A65A8  FC 00 00 32 */	fmul f0, f0, f0
/* 807A65AC  FC 01 00 32 */	fmul f0, f1, f0
/* 807A65B0  FC 03 00 28 */	fsub f0, f3, f0
/* 807A65B4  FC 02 00 32 */	fmul f0, f2, f0
/* 807A65B8  FC 21 00 32 */	fmul f1, f1, f0
/* 807A65BC  FC 20 08 18 */	frsp f1, f1
/* 807A65C0  48 00 00 88 */	b lbl_807A6648
lbl_807A65C4:
/* 807A65C4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807A65C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A65CC  40 80 00 10 */	bge lbl_807A65DC
/* 807A65D0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807A65D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807A65D8  48 00 00 70 */	b lbl_807A6648
lbl_807A65DC:
/* 807A65DC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807A65E0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 807A65E4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807A65E8  3C 00 7F 80 */	lis r0, 0x7f80
/* 807A65EC  7C 03 00 00 */	cmpw r3, r0
/* 807A65F0  41 82 00 14 */	beq lbl_807A6604
/* 807A65F4  40 80 00 40 */	bge lbl_807A6634
/* 807A65F8  2C 03 00 00 */	cmpwi r3, 0
/* 807A65FC  41 82 00 20 */	beq lbl_807A661C
/* 807A6600  48 00 00 34 */	b lbl_807A6634
lbl_807A6604:
/* 807A6604  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A6608  41 82 00 0C */	beq lbl_807A6614
/* 807A660C  38 00 00 01 */	li r0, 1
/* 807A6610  48 00 00 28 */	b lbl_807A6638
lbl_807A6614:
/* 807A6614  38 00 00 02 */	li r0, 2
/* 807A6618  48 00 00 20 */	b lbl_807A6638
lbl_807A661C:
/* 807A661C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A6620  41 82 00 0C */	beq lbl_807A662C
/* 807A6624  38 00 00 05 */	li r0, 5
/* 807A6628  48 00 00 10 */	b lbl_807A6638
lbl_807A662C:
/* 807A662C  38 00 00 03 */	li r0, 3
/* 807A6630  48 00 00 08 */	b lbl_807A6638
lbl_807A6634:
/* 807A6634  38 00 00 04 */	li r0, 4
lbl_807A6638:
/* 807A6638  2C 00 00 01 */	cmpwi r0, 1
/* 807A663C  40 82 00 0C */	bne lbl_807A6648
/* 807A6640  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807A6644  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807A6648:
/* 807A6648  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807A664C  EC 00 00 72 */	fmuls f0, f0, f1
/* 807A6650  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_807A6654:
/* 807A6654  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807A6658  7C 04 07 74 */	extsb r4, r0
/* 807A665C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807A6660  38 00 00 00 */	li r0, 0
/* 807A6664  90 01 00 08 */	stw r0, 8(r1)
/* 807A6668  90 81 00 0C */	stw r4, 0xc(r1)
/* 807A666C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807A6670  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807A6674  90 01 00 18 */	stw r0, 0x18(r1)
/* 807A6678  38 80 00 00 */	li r4, 0
/* 807A667C  38 A0 02 9C */	li r5, 0x29c
/* 807A6680  7F 66 DB 78 */	mr r6, r27
/* 807A6684  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807A6688  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807A668C  7F 89 E3 78 */	mr r9, r28
/* 807A6690  39 40 00 FF */	li r10, 0xff
/* 807A6694  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807A6698  4B 8A 63 F9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807A669C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 807A66A0  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 807A66A4  90 01 00 28 */	stw r0, 0x28(r1)
/* 807A66A8  7F 43 D3 78 */	mr r3, r26
/* 807A66AC  38 81 00 28 */	addi r4, r1, 0x28
/* 807A66B0  38 A0 00 00 */	li r5, 0
/* 807A66B4  38 C0 FF FF */	li r6, -1
/* 807A66B8  81 9A 00 00 */	lwz r12, 0(r26)
/* 807A66BC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807A66C0  7D 89 03 A6 */	mtctr r12
/* 807A66C4  4E 80 04 21 */	bctrl 
lbl_807A66C8:
/* 807A66C8  3A A0 00 00 */	li r21, 0
/* 807A66CC  3A C0 00 00 */	li r22, 0
/* 807A66D0  3A 80 00 00 */	li r20, 0
/* 807A66D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A66D8  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A66DC  57 A0 10 3A */	slwi r0, r29, 2
/* 807A66E0  3B 17 00 28 */	addi r24, r23, 0x28
/* 807A66E4  7F 18 02 14 */	add r24, r24, r0
/* 807A66E8  3B B7 00 20 */	addi r29, r23, 0x20
/* 807A66EC  7F BD 02 14 */	add r29, r29, r0
/* 807A66F0  3A 77 00 30 */	addi r19, r23, 0x30
lbl_807A66F4:
/* 807A66F4  3A F4 05 9C */	addi r23, r20, 0x59c
/* 807A66F8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807A66FC  7C 05 07 74 */	extsb r5, r0
/* 807A6700  7C 9E B8 2E */	lwzx r4, r30, r23
/* 807A6704  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807A6708  38 00 00 FF */	li r0, 0xff
/* 807A670C  90 01 00 08 */	stw r0, 8(r1)
/* 807A6710  38 00 00 00 */	li r0, 0
/* 807A6714  90 01 00 0C */	stw r0, 0xc(r1)
/* 807A6718  90 A1 00 10 */	stw r5, 0x10(r1)
/* 807A671C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 807A6720  93 01 00 18 */	stw r24, 0x18(r1)
/* 807A6724  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807A6728  38 A0 00 00 */	li r5, 0
/* 807A672C  7C D3 B2 2E */	lhzx r6, r19, r22
/* 807A6730  7F 67 DB 78 */	mr r7, r27
/* 807A6734  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807A6738  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807A673C  7F 8A E3 78 */	mr r10, r28
/* 807A6740  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807A6744  4B 8A 6D 89 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807A6748  7C 7E B9 2E */	stwx r3, r30, r23
/* 807A674C  3A B5 00 01 */	addi r21, r21, 1
/* 807A6750  2C 15 00 03 */	cmpwi r21, 3
/* 807A6754  3A D6 00 02 */	addi r22, r22, 2
/* 807A6758  3A 94 00 04 */	addi r20, r20, 4
/* 807A675C  41 80 FF 98 */	blt lbl_807A66F4
/* 807A6760  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 807A6764  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 807A6768  90 01 00 24 */	stw r0, 0x24(r1)
/* 807A676C  7F 43 D3 78 */	mr r3, r26
/* 807A6770  38 81 00 24 */	addi r4, r1, 0x24
/* 807A6774  38 A0 00 00 */	li r5, 0
/* 807A6778  38 C0 FF FF */	li r6, -1
/* 807A677C  81 9A 00 00 */	lwz r12, 0(r26)
/* 807A6780  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807A6784  7D 89 03 A6 */	mtctr r12
/* 807A6788  4E 80 04 21 */	bctrl 
/* 807A678C  38 60 00 01 */	li r3, 1
/* 807A6790  48 00 00 10 */	b lbl_807A67A0
lbl_807A6794:
/* 807A6794  38 00 00 00 */	li r0, 0
/* 807A6798  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807A679C  38 60 00 00 */	li r3, 0
lbl_807A67A0:
/* 807A67A0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807A67A4  4B BB BA 5D */	bl _restgpr_19
/* 807A67A8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807A67AC  7C 08 03 A6 */	mtlr r0
/* 807A67B0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807A67B4  4E 80 00 20 */	blr 
