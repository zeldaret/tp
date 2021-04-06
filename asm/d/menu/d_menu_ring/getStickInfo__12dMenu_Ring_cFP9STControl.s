lbl_801EB624:
/* 801EB624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EB628  7C 08 02 A6 */	mflr r0
/* 801EB62C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EB630  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801EB634  93 C1 00 08 */	stw r30, 8(r1)
/* 801EB638  7C 7F 1B 78 */	mr r31, r3
/* 801EB63C  7C 9E 23 78 */	mr r30, r4
/* 801EB640  38 00 00 FF */	li r0, 0xff
/* 801EB644  98 03 06 C2 */	stb r0, 0x6c2(r3)
/* 801EB648  7F C3 F3 78 */	mr r3, r30
/* 801EB64C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801EB650  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EB654  7D 89 03 A6 */	mtctr r12
/* 801EB658  4E 80 04 21 */	bctrl 
/* 801EB65C  C0 02 A9 D0 */	lfs f0, lit_4739(r2)
/* 801EB660  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801EB664  4C 41 13 82 */	cror 2, 1, 2
/* 801EB668  40 82 02 18 */	bne lbl_801EB880
/* 801EB66C  7F C3 F3 78 */	mr r3, r30
/* 801EB670  81 9E 00 00 */	lwz r12, 0(r30)
/* 801EB674  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801EB678  7D 89 03 A6 */	mtctr r12
/* 801EB67C  4E 80 04 21 */	bctrl 
/* 801EB680  3C 83 00 01 */	addis r4, r3, 1
/* 801EB684  38 04 80 00 */	addi r0, r4, -32768
/* 801EB688  7C 04 07 34 */	extsh r4, r0
/* 801EB68C  3C A4 00 01 */	addis r5, r4, 1
/* 801EB690  88 DF 06 AE */	lbz r6, 0x6ae(r31)
/* 801EB694  54 C8 FE 7E */	rlwinm r8, r6, 0x1f, 0x19, 0x1f
/* 801EB698  7D 09 43 78 */	mr r9, r8
/* 801EB69C  54 C4 0F FE */	srwi r4, r6, 0x1f
/* 801EB6A0  54 C0 07 FE */	clrlwi r0, r6, 0x1f
/* 801EB6A4  7C 00 22 78 */	xor r0, r0, r4
/* 801EB6A8  7C 04 00 51 */	subf. r0, r4, r0
/* 801EB6AC  38 A5 80 00 */	addi r5, r5, -32768
/* 801EB6B0  41 82 00 0C */	beq lbl_801EB6BC
/* 801EB6B4  80 FF 06 34 */	lwz r7, 0x634(r31)
/* 801EB6B8  48 00 00 18 */	b lbl_801EB6D0
lbl_801EB6BC:
/* 801EB6BC  80 1F 06 34 */	lwz r0, 0x634(r31)
/* 801EB6C0  7C 00 0E 70 */	srawi r0, r0, 1
/* 801EB6C4  7C 00 01 94 */	addze r0, r0
/* 801EB6C8  7C 00 07 34 */	extsh r0, r0
/* 801EB6CC  7C 07 03 78 */	mr r7, r0
lbl_801EB6D0:
/* 801EB6D0  38 06 FF FF */	addi r0, r6, -1
/* 801EB6D4  7C C9 03 A6 */	mtctr r6
/* 801EB6D8  2C 06 00 00 */	cmpwi r6, 0
/* 801EB6DC  40 81 00 30 */	ble lbl_801EB70C
lbl_801EB6E0:
/* 801EB6E0  7C 05 38 00 */	cmpw r5, r7
/* 801EB6E4  41 80 00 28 */	blt lbl_801EB70C
/* 801EB6E8  80 9F 06 34 */	lwz r4, 0x634(r31)
/* 801EB6EC  7C E7 22 14 */	add r7, r7, r4
/* 801EB6F0  55 24 06 3F */	clrlwi. r4, r9, 0x18
/* 801EB6F4  38 84 FF FF */	addi r4, r4, -1
/* 801EB6F8  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 801EB6FC  40 82 00 08 */	bne lbl_801EB704
/* 801EB700  54 04 06 3E */	clrlwi r4, r0, 0x18
lbl_801EB704:
/* 801EB704  7C 89 23 78 */	mr r9, r4
/* 801EB708  42 00 FF D8 */	bdnz lbl_801EB6E0
lbl_801EB70C:
/* 801EB70C  88 FF 06 A8 */	lbz r7, 0x6a8(r31)
/* 801EB710  55 25 06 3E */	clrlwi r5, r9, 0x18
/* 801EB714  7C 07 28 40 */	cmplw r7, r5
/* 801EB718  41 82 01 8C */	beq lbl_801EB8A4
/* 801EB71C  3C 80 80 3E */	lis r4, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801EB720  38 84 D2 E8 */	addi r4, r4, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801EB724  80 04 00 30 */	lwz r0, 0x30(r4)
/* 801EB728  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 801EB72C  41 82 00 38 */	beq lbl_801EB764
/* 801EB730  54 E0 15 BA */	rlwinm r0, r7, 2, 0x16, 0x1d
/* 801EB734  7C 9F 02 14 */	add r4, r31, r0
/* 801EB738  C0 04 03 8C */	lfs f0, 0x38c(r4)
/* 801EB73C  D0 1F 03 80 */	stfs f0, 0x380(r31)
/* 801EB740  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 801EB744  54 00 10 3A */	slwi r0, r0, 2
/* 801EB748  7C 9F 02 14 */	add r4, r31, r0
/* 801EB74C  C0 04 03 EC */	lfs f0, 0x3ec(r4)
/* 801EB750  D0 1F 03 88 */	stfs f0, 0x388(r31)
/* 801EB754  99 3F 06 A8 */	stb r9, 0x6a8(r31)
/* 801EB758  38 00 00 01 */	li r0, 1
/* 801EB75C  98 1F 06 CE */	stb r0, 0x6ce(r31)
/* 801EB760  48 00 00 D0 */	b lbl_801EB830
lbl_801EB764:
/* 801EB764  7C 07 40 40 */	cmplw r7, r8
/* 801EB768  41 80 00 68 */	blt lbl_801EB7D0
/* 801EB76C  7C 08 38 50 */	subf r0, r8, r7
/* 801EB770  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801EB774  7C 05 00 40 */	cmplw r5, r0
/* 801EB778  41 80 00 2C */	blt lbl_801EB7A4
/* 801EB77C  7C 05 38 40 */	cmplw r5, r7
/* 801EB780  40 80 00 24 */	bge lbl_801EB7A4
/* 801EB784  28 07 00 00 */	cmplwi r7, 0
/* 801EB788  40 82 00 10 */	bne lbl_801EB798
/* 801EB78C  38 06 FF FF */	addi r0, r6, -1
/* 801EB790  98 1F 06 A8 */	stb r0, 0x6a8(r31)
/* 801EB794  48 00 00 9C */	b lbl_801EB830
lbl_801EB798:
/* 801EB798  38 07 FF FF */	addi r0, r7, -1
/* 801EB79C  98 1F 06 A8 */	stb r0, 0x6a8(r31)
/* 801EB7A0  48 00 00 90 */	b lbl_801EB830
lbl_801EB7A4:
/* 801EB7A4  38 06 FF FF */	addi r0, r6, -1
/* 801EB7A8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801EB7AC  7C 07 00 40 */	cmplw r7, r0
/* 801EB7B0  40 82 00 10 */	bne lbl_801EB7C0
/* 801EB7B4  38 00 00 00 */	li r0, 0
/* 801EB7B8  98 1F 06 A8 */	stb r0, 0x6a8(r31)
/* 801EB7BC  48 00 00 74 */	b lbl_801EB830
lbl_801EB7C0:
/* 801EB7C0  88 9F 06 A8 */	lbz r4, 0x6a8(r31)
/* 801EB7C4  38 04 00 01 */	addi r0, r4, 1
/* 801EB7C8  98 1F 06 A8 */	stb r0, 0x6a8(r31)
/* 801EB7CC  48 00 00 64 */	b lbl_801EB830
lbl_801EB7D0:
/* 801EB7D0  7C 07 42 14 */	add r0, r7, r8
/* 801EB7D4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801EB7D8  7C 05 38 40 */	cmplw r5, r7
/* 801EB7DC  40 81 00 34 */	ble lbl_801EB810
/* 801EB7E0  7C 05 00 40 */	cmplw r5, r0
/* 801EB7E4  41 81 00 2C */	bgt lbl_801EB810
/* 801EB7E8  38 06 FF FF */	addi r0, r6, -1
/* 801EB7EC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801EB7F0  7C 07 00 40 */	cmplw r7, r0
/* 801EB7F4  40 82 00 10 */	bne lbl_801EB804
/* 801EB7F8  38 00 00 00 */	li r0, 0
/* 801EB7FC  98 1F 06 A8 */	stb r0, 0x6a8(r31)
/* 801EB800  48 00 00 30 */	b lbl_801EB830
lbl_801EB804:
/* 801EB804  38 07 00 01 */	addi r0, r7, 1
/* 801EB808  98 1F 06 A8 */	stb r0, 0x6a8(r31)
/* 801EB80C  48 00 00 24 */	b lbl_801EB830
lbl_801EB810:
/* 801EB810  28 07 00 00 */	cmplwi r7, 0
/* 801EB814  40 82 00 10 */	bne lbl_801EB824
/* 801EB818  38 06 FF FF */	addi r0, r6, -1
/* 801EB81C  98 1F 06 A8 */	stb r0, 0x6a8(r31)
/* 801EB820  48 00 00 10 */	b lbl_801EB830
lbl_801EB824:
/* 801EB824  88 9F 06 A8 */	lbz r4, 0x6a8(r31)
/* 801EB828  38 04 FF FF */	addi r0, r4, -1
/* 801EB82C  98 1F 06 A8 */	stb r0, 0x6a8(r31)
lbl_801EB830:
/* 801EB830  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 801EB834  54 00 08 3C */	slwi r0, r0, 1
/* 801EB838  7C 9F 02 14 */	add r4, r31, r0
/* 801EB83C  A8 04 06 3E */	lha r0, 0x63e(r4)
/* 801EB840  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 801EB844  88 1F 06 AE */	lbz r0, 0x6ae(r31)
/* 801EB848  28 00 00 02 */	cmplwi r0, 2
/* 801EB84C  40 82 00 2C */	bne lbl_801EB878
/* 801EB850  7C 60 07 35 */	extsh. r0, r3
/* 801EB854  40 80 00 24 */	bge lbl_801EB878
/* 801EB858  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 801EB85C  28 00 00 00 */	cmplwi r0, 0
/* 801EB860  40 82 00 10 */	bne lbl_801EB870
/* 801EB864  38 00 00 00 */	li r0, 0
/* 801EB868  98 1F 06 D3 */	stb r0, 0x6d3(r31)
/* 801EB86C  48 00 00 0C */	b lbl_801EB878
lbl_801EB870:
/* 801EB870  38 00 00 01 */	li r0, 1
/* 801EB874  98 1F 06 D3 */	stb r0, 0x6d3(r31)
lbl_801EB878:
/* 801EB878  38 60 00 01 */	li r3, 1
/* 801EB87C  48 00 00 2C */	b lbl_801EB8A8
lbl_801EB880:
/* 801EB880  38 00 00 00 */	li r0, 0
/* 801EB884  B0 1F 06 80 */	sth r0, 0x680(r31)
/* 801EB888  7F E3 FB 78 */	mr r3, r31
/* 801EB88C  48 00 3B F9 */	bl dpdMove__12dMenu_Ring_cFv
/* 801EB890  88 1F 06 C2 */	lbz r0, 0x6c2(r31)
/* 801EB894  28 00 00 FF */	cmplwi r0, 0xff
/* 801EB898  41 82 00 0C */	beq lbl_801EB8A4
/* 801EB89C  38 60 00 00 */	li r3, 0
/* 801EB8A0  48 00 00 08 */	b lbl_801EB8A8
lbl_801EB8A4:
/* 801EB8A4  38 60 00 00 */	li r3, 0
lbl_801EB8A8:
/* 801EB8A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801EB8AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801EB8B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EB8B4  7C 08 03 A6 */	mtlr r0
/* 801EB8B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801EB8BC  4E 80 00 20 */	blr 
