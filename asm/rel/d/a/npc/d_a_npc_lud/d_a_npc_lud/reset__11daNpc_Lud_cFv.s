lbl_80A6B954:
/* 80A6B954  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A6B958  7C 08 02 A6 */	mflr r0
/* 80A6B95C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A6B960  39 61 00 30 */	addi r11, r1, 0x30
/* 80A6B964  4B 8F 68 74 */	b _savegpr_28
/* 80A6B968  7C 7F 1B 78 */	mr r31, r3
/* 80A6B96C  3C 60 80 A7 */	lis r3, m__17daNpc_Lud_Param_c@ha
/* 80A6B970  3B C3 FD 7C */	addi r30, r3, m__17daNpc_Lud_Param_c@l
/* 80A6B974  38 7F 0F A8 */	addi r3, r31, 0xfa8
/* 80A6B978  38 1F 0F D8 */	addi r0, r31, 0xfd8
/* 80A6B97C  7F A3 00 50 */	subf r29, r3, r0
/* 80A6B980  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A6B984  28 03 00 00 */	cmplwi r3, 0
/* 80A6B988  41 82 00 08 */	beq lbl_80A6B990
/* 80A6B98C  4B 6D 9D D8 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80A6B990:
/* 80A6B990  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A6B994  38 80 00 00 */	li r4, 0
/* 80A6B998  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A6B99C  7C A3 00 50 */	subf r5, r3, r0
/* 80A6B9A0  4B 59 7A B8 */	b memset
/* 80A6B9A4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A6B9A8  4B 6D 9E F0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6B9AC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A6B9B0  4B 6D 9E E8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6B9B4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A6B9B8  4B 6D 9D 1C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A6B9BC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A6B9C0  4B 6D 9D 14 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A6B9C4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A6B9C8  4B 6D B2 D0 */	b initialize__15daNpcT_JntAnm_cFv
/* 80A6B9CC  38 A0 00 00 */	li r5, 0
/* 80A6B9D0  38 60 00 00 */	li r3, 0
/* 80A6B9D4  7C A4 2B 78 */	mr r4, r5
/* 80A6B9D8  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80A6B9DC  38 00 00 02 */	li r0, 2
/* 80A6B9E0  7C 09 03 A6 */	mtctr r0
lbl_80A6B9E4:
/* 80A6B9E4  7C DF 22 14 */	add r6, r31, r4
/* 80A6B9E8  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A6B9EC  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A6B9F0  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A6B9F4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A6B9F8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A6B9FC  38 63 00 04 */	addi r3, r3, 4
/* 80A6BA00  38 84 00 06 */	addi r4, r4, 6
/* 80A6BA04  42 00 FF E0 */	bdnz lbl_80A6B9E4
/* 80A6BA08  38 00 00 00 */	li r0, 0
/* 80A6BA0C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A6BA10  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A6BA14  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A6BA18  38 00 FF FF */	li r0, -1
/* 80A6BA1C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A6BA20  38 00 00 01 */	li r0, 1
/* 80A6BA24  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A6BA28  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80A6BA2C  4B 7F BF 28 */	b cM_rndF__Ff
/* 80A6BA30  FC 00 08 1E */	fctiwz f0, f1
/* 80A6BA34  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A6BA38  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A6BA3C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A6BA40  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80A6BA44  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A6BA48  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A6BA4C  3B 80 00 00 */	li r28, 0
/* 80A6BA50  3B C0 00 00 */	li r30, 0
lbl_80A6BA54:
/* 80A6BA54  38 7E 0F 90 */	addi r3, r30, 0xf90
/* 80A6BA58  7C 7F 1A 14 */	add r3, r31, r3
/* 80A6BA5C  4B 6D 9C 78 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A6BA60  3B 9C 00 01 */	addi r28, r28, 1
/* 80A6BA64  2C 1C 00 03 */	cmpwi r28, 3
/* 80A6BA68  3B DE 00 08 */	addi r30, r30, 8
/* 80A6BA6C  41 80 FF E8 */	blt lbl_80A6BA54
/* 80A6BA70  38 7F 0F A8 */	addi r3, r31, 0xfa8
/* 80A6BA74  38 80 00 00 */	li r4, 0
/* 80A6BA78  7F A5 EB 78 */	mr r5, r29
/* 80A6BA7C  4B 59 79 DC */	b memset
/* 80A6BA80  38 00 00 00 */	li r0, 0
/* 80A6BA84  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80A6BA88  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80A6BA8C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80A6BA90  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80A6BA94  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80A6BA98  88 1F 0F 8C */	lbz r0, 0xf8c(r31)
/* 80A6BA9C  2C 00 00 05 */	cmpwi r0, 5
/* 80A6BAA0  41 82 00 30 */	beq lbl_80A6BAD0
/* 80A6BAA4  40 80 00 10 */	bge lbl_80A6BAB4
/* 80A6BAA8  2C 00 00 04 */	cmpwi r0, 4
/* 80A6BAAC  40 80 00 18 */	bge lbl_80A6BAC4
/* 80A6BAB0  48 00 00 38 */	b lbl_80A6BAE8
lbl_80A6BAB4:
/* 80A6BAB4  2C 00 00 07 */	cmpwi r0, 7
/* 80A6BAB8  41 82 00 30 */	beq lbl_80A6BAE8
/* 80A6BABC  40 80 00 2C */	bge lbl_80A6BAE8
/* 80A6BAC0  48 00 00 20 */	b lbl_80A6BAE0
lbl_80A6BAC4:
/* 80A6BAC4  38 00 00 01 */	li r0, 1
/* 80A6BAC8  98 1F 0F D2 */	stb r0, 0xfd2(r31)
/* 80A6BACC  48 00 00 1C */	b lbl_80A6BAE8
lbl_80A6BAD0:
/* 80A6BAD0  38 00 00 01 */	li r0, 1
/* 80A6BAD4  98 1F 0F D3 */	stb r0, 0xfd3(r31)
/* 80A6BAD8  98 1F 0F D4 */	stb r0, 0xfd4(r31)
/* 80A6BADC  48 00 00 0C */	b lbl_80A6BAE8
lbl_80A6BAE0:
/* 80A6BAE0  38 00 00 01 */	li r0, 1
/* 80A6BAE4  98 1F 0F D2 */	stb r0, 0xfd2(r31)
lbl_80A6BAE8:
/* 80A6BAE8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A6BAEC  90 01 00 08 */	stw r0, 8(r1)
/* 80A6BAF0  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80A6BAF4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80A6BAF8  7F E3 FB 78 */	mr r3, r31
/* 80A6BAFC  38 81 00 08 */	addi r4, r1, 8
/* 80A6BB00  4B 6D EE 9C */	b setAngle__8daNpcT_cF5csXyz
/* 80A6BB04  39 61 00 30 */	addi r11, r1, 0x30
/* 80A6BB08  4B 8F 67 1C */	b _restgpr_28
/* 80A6BB0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A6BB10  7C 08 03 A6 */	mtlr r0
/* 80A6BB14  38 21 00 30 */	addi r1, r1, 0x30
/* 80A6BB18  4E 80 00 20 */	blr 
