lbl_80AA9828:
/* 80AA9828  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AA982C  7C 08 02 A6 */	mflr r0
/* 80AA9830  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AA9834  39 61 00 30 */	addi r11, r1, 0x30
/* 80AA9838  4B 8B 89 A0 */	b _savegpr_28
/* 80AA983C  7C 7F 1B 78 */	mr r31, r3
/* 80AA9840  3C 60 80 AB */	lis r3, m__18daNpc_Post_Param_c@ha
/* 80AA9844  3B C3 D1 EC */	addi r30, r3, m__18daNpc_Post_Param_c@l
/* 80AA9848  38 7F 0F D8 */	addi r3, r31, 0xfd8
/* 80AA984C  38 1F 10 14 */	addi r0, r31, 0x1014
/* 80AA9850  7F A3 00 50 */	subf r29, r3, r0
/* 80AA9854  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80AA9858  28 03 00 00 */	cmplwi r3, 0
/* 80AA985C  41 82 00 08 */	beq lbl_80AA9864
/* 80AA9860  4B 69 BF 04 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80AA9864:
/* 80AA9864  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AA9868  38 80 00 00 */	li r4, 0
/* 80AA986C  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AA9870  7C A3 00 50 */	subf r5, r3, r0
/* 80AA9874  4B 55 9B E4 */	b memset
/* 80AA9878  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AA987C  4B 69 C0 1C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AA9880  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AA9884  4B 69 C0 14 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AA9888  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AA988C  4B 69 BE 48 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AA9890  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AA9894  4B 69 BE 40 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AA9898  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AA989C  4B 69 D3 FC */	b initialize__15daNpcT_JntAnm_cFv
/* 80AA98A0  38 A0 00 00 */	li r5, 0
/* 80AA98A4  38 60 00 00 */	li r3, 0
/* 80AA98A8  7C A4 2B 78 */	mr r4, r5
/* 80AA98AC  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AA98B0  38 00 00 02 */	li r0, 2
/* 80AA98B4  7C 09 03 A6 */	mtctr r0
lbl_80AA98B8:
/* 80AA98B8  7C DF 22 14 */	add r6, r31, r4
/* 80AA98BC  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AA98C0  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AA98C4  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AA98C8  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AA98CC  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AA98D0  38 63 00 04 */	addi r3, r3, 4
/* 80AA98D4  38 84 00 06 */	addi r4, r4, 6
/* 80AA98D8  42 00 FF E0 */	bdnz lbl_80AA98B8
/* 80AA98DC  38 00 00 00 */	li r0, 0
/* 80AA98E0  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AA98E4  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AA98E8  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AA98EC  38 00 FF FF */	li r0, -1
/* 80AA98F0  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AA98F4  38 00 00 01 */	li r0, 1
/* 80AA98F8  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AA98FC  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 80AA9900  4B 7B E0 54 */	b cM_rndF__Ff
/* 80AA9904  FC 00 08 1E */	fctiwz f0, f1
/* 80AA9908  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80AA990C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80AA9910  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AA9914  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80AA9918  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AA991C  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AA9920  3B 80 00 00 */	li r28, 0
/* 80AA9924  3B C0 00 00 */	li r30, 0
lbl_80AA9928:
/* 80AA9928  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80AA992C  7C 7F 1A 14 */	add r3, r31, r3
/* 80AA9930  4B 69 BD A4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AA9934  3B 9C 00 01 */	addi r28, r28, 1
/* 80AA9938  2C 1C 00 04 */	cmpwi r28, 4
/* 80AA993C  3B DE 00 08 */	addi r30, r30, 8
/* 80AA9940  41 80 FF E8 */	blt lbl_80AA9928
/* 80AA9944  38 7F 0F D8 */	addi r3, r31, 0xfd8
/* 80AA9948  38 80 00 00 */	li r4, 0
/* 80AA994C  7F A5 EB 78 */	mr r5, r29
/* 80AA9950  4B 55 9B 08 */	b memset
/* 80AA9954  4B 77 4E 00 */	b dMeter2Info_getNewLetterNum__Fv
/* 80AA9958  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA995C  41 82 00 0C */	beq lbl_80AA9968
/* 80AA9960  38 00 00 01 */	li r0, 1
/* 80AA9964  98 1F 10 12 */	stb r0, 0x1012(r31)
lbl_80AA9968:
/* 80AA9968  38 60 00 00 */	li r3, 0
/* 80AA996C  B0 61 00 10 */	sth r3, 0x10(r1)
/* 80AA9970  B0 61 00 12 */	sth r3, 0x12(r1)
/* 80AA9974  B0 61 00 14 */	sth r3, 0x14(r1)
/* 80AA9978  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80AA997C  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80AA9980  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80AA9984  2C 00 00 01 */	cmpwi r0, 1
/* 80AA9988  41 82 00 18 */	beq lbl_80AA99A0
/* 80AA998C  40 80 00 08 */	bge lbl_80AA9994
/* 80AA9990  48 00 00 2C */	b lbl_80AA99BC
lbl_80AA9994:
/* 80AA9994  2C 00 00 03 */	cmpwi r0, 3
/* 80AA9998  40 80 00 24 */	bge lbl_80AA99BC
/* 80AA999C  48 00 00 10 */	b lbl_80AA99AC
lbl_80AA99A0:
/* 80AA99A0  38 00 00 01 */	li r0, 1
/* 80AA99A4  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 80AA99A8  48 00 00 14 */	b lbl_80AA99BC
lbl_80AA99AC:
/* 80AA99AC  38 00 00 01 */	li r0, 1
/* 80AA99B0  98 1F 10 11 */	stb r0, 0x1011(r31)
/* 80AA99B4  98 7F 10 12 */	stb r3, 0x1012(r31)
/* 80AA99B8  98 1F 10 13 */	stb r0, 0x1013(r31)
lbl_80AA99BC:
/* 80AA99BC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80AA99C0  90 01 00 08 */	stw r0, 8(r1)
/* 80AA99C4  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80AA99C8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80AA99CC  7F E3 FB 78 */	mr r3, r31
/* 80AA99D0  38 81 00 08 */	addi r4, r1, 8
/* 80AA99D4  4B 6A 0F C8 */	b setAngle__8daNpcT_cF5csXyz
/* 80AA99D8  39 61 00 30 */	addi r11, r1, 0x30
/* 80AA99DC  4B 8B 88 48 */	b _restgpr_28
/* 80AA99E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AA99E4  7C 08 03 A6 */	mtlr r0
/* 80AA99E8  38 21 00 30 */	addi r1, r1, 0x30
/* 80AA99EC  4E 80 00 20 */	blr 
