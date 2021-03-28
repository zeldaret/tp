lbl_8024F634:
/* 8024F634  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024F638  7C 08 02 A6 */	mflr r0
/* 8024F63C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024F640  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8024F644  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8024F648  7C 7E 1B 78 */	mr r30, r3
/* 8024F64C  7C 9F 23 78 */	mr r31, r4
/* 8024F650  88 03 02 B1 */	lbz r0, 0x2b1(r3)
/* 8024F654  28 00 00 08 */	cmplwi r0, 8
/* 8024F658  41 82 00 10 */	beq lbl_8024F668
/* 8024F65C  4B FF F5 B5 */	bl nameCheck__7dName_cFv
/* 8024F660  2C 03 00 08 */	cmpwi r3, 8
/* 8024F664  40 82 00 3C */	bne lbl_8024F6A0
lbl_8024F668:
/* 8024F668  38 00 00 4A */	li r0, 0x4a
/* 8024F66C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8024F670  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024F674  38 81 00 0C */	addi r4, r1, 0xc
/* 8024F678  38 A0 00 00 */	li r5, 0
/* 8024F67C  38 C0 00 00 */	li r6, 0
/* 8024F680  38 E0 00 00 */	li r7, 0
/* 8024F684  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024F688  FC 40 08 90 */	fmr f2, f1
/* 8024F68C  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024F690  FC 80 18 90 */	fmr f4, f3
/* 8024F694  39 00 00 00 */	li r8, 0
/* 8024F698  48 05 C2 ED */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024F69C  48 00 01 D8 */	b lbl_8024F874
lbl_8024F6A0:
/* 8024F6A0  38 00 00 B1 */	li r0, 0xb1
/* 8024F6A4  90 01 00 08 */	stw r0, 8(r1)
/* 8024F6A8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024F6AC  38 81 00 08 */	addi r4, r1, 8
/* 8024F6B0  38 A0 00 00 */	li r5, 0
/* 8024F6B4  38 C0 00 00 */	li r6, 0
/* 8024F6B8  38 E0 00 00 */	li r7, 0
/* 8024F6BC  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8024F6C0  FC 40 08 90 */	fmr f2, f1
/* 8024F6C4  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 8024F6C8  FC 80 18 90 */	fmr f4, f3
/* 8024F6CC  39 00 00 00 */	li r8, 0
/* 8024F6D0  48 05 C2 B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8024F6D4  38 80 00 00 */	li r4, 0
/* 8024F6D8  88 BE 02 B1 */	lbz r5, 0x2b1(r30)
/* 8024F6DC  54 A3 18 38 */	slwi r3, r5, 3
/* 8024F6E0  20 05 00 08 */	subfic r0, r5, 8
/* 8024F6E4  7C 09 03 A6 */	mtctr r0
/* 8024F6E8  2C 05 00 08 */	cmpwi r5, 8
/* 8024F6EC  40 80 00 24 */	bge lbl_8024F710
lbl_8024F6F0:
/* 8024F6F0  38 03 02 D0 */	addi r0, r3, 0x2d0
/* 8024F6F4  7C 1E 00 2E */	lwzx r0, r30, r0
/* 8024F6F8  2C 00 00 20 */	cmpwi r0, 0x20
/* 8024F6FC  41 82 00 0C */	beq lbl_8024F708
/* 8024F700  38 80 00 01 */	li r4, 1
/* 8024F704  48 00 00 0C */	b lbl_8024F710
lbl_8024F708:
/* 8024F708  38 63 00 08 */	addi r3, r3, 8
/* 8024F70C  42 00 FF E4 */	bdnz lbl_8024F6F0
lbl_8024F710:
/* 8024F710  2C 04 00 00 */	cmpwi r4, 0
/* 8024F714  41 82 00 E0 */	beq lbl_8024F7F4
/* 8024F718  80 1E 03 08 */	lwz r0, 0x308(r30)
/* 8024F71C  2C 00 00 20 */	cmpwi r0, 0x20
/* 8024F720  40 82 01 54 */	bne lbl_8024F874
/* 8024F724  38 A0 00 06 */	li r5, 6
/* 8024F728  38 60 00 30 */	li r3, 0x30
/* 8024F72C  48 00 00 38 */	b lbl_8024F764
lbl_8024F730:
/* 8024F730  7C 9E 1A 14 */	add r4, r30, r3
/* 8024F734  88 04 02 CC */	lbz r0, 0x2cc(r4)
/* 8024F738  98 04 02 D4 */	stb r0, 0x2d4(r4)
/* 8024F73C  88 04 02 CD */	lbz r0, 0x2cd(r4)
/* 8024F740  98 04 02 D5 */	stb r0, 0x2d5(r4)
/* 8024F744  88 04 02 CE */	lbz r0, 0x2ce(r4)
/* 8024F748  98 04 02 D6 */	stb r0, 0x2d6(r4)
/* 8024F74C  88 04 02 CF */	lbz r0, 0x2cf(r4)
/* 8024F750  98 04 02 D7 */	stb r0, 0x2d7(r4)
/* 8024F754  80 04 02 D0 */	lwz r0, 0x2d0(r4)
/* 8024F758  90 04 02 D8 */	stw r0, 0x2d8(r4)
/* 8024F75C  38 A5 FF FF */	addi r5, r5, -1
/* 8024F760  38 63 FF F8 */	addi r3, r3, -8
lbl_8024F764:
/* 8024F764  88 1E 02 B1 */	lbz r0, 0x2b1(r30)
/* 8024F768  7C 05 00 00 */	cmpw r5, r0
/* 8024F76C  40 80 FF C4 */	bge lbl_8024F730
/* 8024F770  88 9E 02 A5 */	lbz r4, 0x2a5(r30)
/* 8024F774  54 00 1D 78 */	rlwinm r0, r0, 3, 0x15, 0x1c
/* 8024F778  7C 7E 02 14 */	add r3, r30, r0
/* 8024F77C  98 83 02 CC */	stb r4, 0x2cc(r3)
/* 8024F780  88 9E 02 A7 */	lbz r4, 0x2a7(r30)
/* 8024F784  88 1E 02 B1 */	lbz r0, 0x2b1(r30)
/* 8024F788  54 00 18 38 */	slwi r0, r0, 3
/* 8024F78C  7C 7E 02 14 */	add r3, r30, r0
/* 8024F790  98 83 02 CD */	stb r4, 0x2cd(r3)
/* 8024F794  88 9E 02 A9 */	lbz r4, 0x2a9(r30)
/* 8024F798  88 1E 02 B1 */	lbz r0, 0x2b1(r30)
/* 8024F79C  54 00 18 38 */	slwi r0, r0, 3
/* 8024F7A0  7C 7E 02 14 */	add r3, r30, r0
/* 8024F7A4  98 83 02 CE */	stb r4, 0x2ce(r3)
/* 8024F7A8  38 80 00 01 */	li r4, 1
/* 8024F7AC  88 1E 02 B1 */	lbz r0, 0x2b1(r30)
/* 8024F7B0  54 00 18 38 */	slwi r0, r0, 3
/* 8024F7B4  7C 7E 02 14 */	add r3, r30, r0
/* 8024F7B8  98 83 02 CF */	stb r4, 0x2cf(r3)
/* 8024F7BC  88 1E 02 B1 */	lbz r0, 0x2b1(r30)
/* 8024F7C0  54 00 18 38 */	slwi r0, r0, 3
/* 8024F7C4  7C 7E 02 14 */	add r3, r30, r0
/* 8024F7C8  93 E3 02 D0 */	stw r31, 0x2d0(r3)
/* 8024F7CC  88 1E 02 B1 */	lbz r0, 0x2b1(r30)
/* 8024F7D0  28 00 00 08 */	cmplwi r0, 8
/* 8024F7D4  41 82 00 A0 */	beq lbl_8024F874
/* 8024F7D8  98 1E 02 B2 */	stb r0, 0x2b2(r30)
/* 8024F7DC  88 7E 02 B1 */	lbz r3, 0x2b1(r30)
/* 8024F7E0  38 03 00 01 */	addi r0, r3, 1
/* 8024F7E4  98 1E 02 B1 */	stb r0, 0x2b1(r30)
/* 8024F7E8  7F C3 F3 78 */	mr r3, r30
/* 8024F7EC  48 00 01 29 */	bl nameCursorMove__7dName_cFv
/* 8024F7F0  48 00 00 84 */	b lbl_8024F874
lbl_8024F7F4:
/* 8024F7F4  88 9E 02 A5 */	lbz r4, 0x2a5(r30)
/* 8024F7F8  54 A0 1D 78 */	rlwinm r0, r5, 3, 0x15, 0x1c
/* 8024F7FC  7C 7E 02 14 */	add r3, r30, r0
/* 8024F800  98 83 02 CC */	stb r4, 0x2cc(r3)
/* 8024F804  88 9E 02 A7 */	lbz r4, 0x2a7(r30)
/* 8024F808  88 1E 02 B1 */	lbz r0, 0x2b1(r30)
/* 8024F80C  54 00 18 38 */	slwi r0, r0, 3
/* 8024F810  7C 7E 02 14 */	add r3, r30, r0
/* 8024F814  98 83 02 CD */	stb r4, 0x2cd(r3)
/* 8024F818  88 9E 02 A9 */	lbz r4, 0x2a9(r30)
/* 8024F81C  88 1E 02 B1 */	lbz r0, 0x2b1(r30)
/* 8024F820  54 00 18 38 */	slwi r0, r0, 3
/* 8024F824  7C 7E 02 14 */	add r3, r30, r0
/* 8024F828  98 83 02 CE */	stb r4, 0x2ce(r3)
/* 8024F82C  38 80 00 01 */	li r4, 1
/* 8024F830  88 1E 02 B1 */	lbz r0, 0x2b1(r30)
/* 8024F834  54 00 18 38 */	slwi r0, r0, 3
/* 8024F838  7C 7E 02 14 */	add r3, r30, r0
/* 8024F83C  98 83 02 CF */	stb r4, 0x2cf(r3)
/* 8024F840  88 1E 02 B1 */	lbz r0, 0x2b1(r30)
/* 8024F844  54 00 18 38 */	slwi r0, r0, 3
/* 8024F848  7C 7E 02 14 */	add r3, r30, r0
/* 8024F84C  93 E3 02 D0 */	stw r31, 0x2d0(r3)
/* 8024F850  88 1E 02 B1 */	lbz r0, 0x2b1(r30)
/* 8024F854  28 00 00 08 */	cmplwi r0, 8
/* 8024F858  41 82 00 1C */	beq lbl_8024F874
/* 8024F85C  98 1E 02 B2 */	stb r0, 0x2b2(r30)
/* 8024F860  88 7E 02 B1 */	lbz r3, 0x2b1(r30)
/* 8024F864  38 03 00 01 */	addi r0, r3, 1
/* 8024F868  98 1E 02 B1 */	stb r0, 0x2b1(r30)
/* 8024F86C  7F C3 F3 78 */	mr r3, r30
/* 8024F870  48 00 00 A5 */	bl nameCursorMove__7dName_cFv
lbl_8024F874:
/* 8024F874  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8024F878  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8024F87C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024F880  7C 08 03 A6 */	mtlr r0
/* 8024F884  38 21 00 20 */	addi r1, r1, 0x20
/* 8024F888  4E 80 00 20 */	blr 
