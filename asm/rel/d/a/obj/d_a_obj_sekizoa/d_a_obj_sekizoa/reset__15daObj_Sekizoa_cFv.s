lbl_80CCF138:
/* 80CCF138  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CCF13C  7C 08 02 A6 */	mflr r0
/* 80CCF140  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CCF144  39 61 00 30 */	addi r11, r1, 0x30
/* 80CCF148  4B 69 30 90 */	b _savegpr_28
/* 80CCF14C  7C 7F 1B 78 */	mr r31, r3
/* 80CCF150  3C 60 80 CD */	lis r3, m__21daObj_Sekizoa_Param_c@ha
/* 80CCF154  3B C3 5C FC */	addi r30, r3, m__21daObj_Sekizoa_Param_c@l
/* 80CCF158  38 7F 11 0C */	addi r3, r31, 0x110c
/* 80CCF15C  38 1F 11 7C */	addi r0, r31, 0x117c
/* 80CCF160  7F A3 00 50 */	subf r29, r3, r0
/* 80CCF164  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80CCF168  28 03 00 00 */	cmplwi r3, 0
/* 80CCF16C  41 82 00 08 */	beq lbl_80CCF174
/* 80CCF170  4B 47 65 F4 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80CCF174:
/* 80CCF174  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80CCF178  38 80 00 00 */	li r4, 0
/* 80CCF17C  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80CCF180  7C A3 00 50 */	subf r5, r3, r0
/* 80CCF184  4B 33 42 D4 */	b memset
/* 80CCF188  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80CCF18C  4B 47 67 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CCF190  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CCF194  4B 47 67 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CCF198  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80CCF19C  4B 47 65 38 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80CCF1A0  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80CCF1A4  4B 47 65 30 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80CCF1A8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80CCF1AC  4B 47 7A EC */	b initialize__15daNpcT_JntAnm_cFv
/* 80CCF1B0  38 A0 00 00 */	li r5, 0
/* 80CCF1B4  38 60 00 00 */	li r3, 0
/* 80CCF1B8  7C A4 2B 78 */	mr r4, r5
/* 80CCF1BC  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CCF1C0  38 00 00 02 */	li r0, 2
/* 80CCF1C4  7C 09 03 A6 */	mtctr r0
lbl_80CCF1C8:
/* 80CCF1C8  7C DF 22 14 */	add r6, r31, r4
/* 80CCF1CC  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80CCF1D0  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80CCF1D4  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80CCF1D8  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80CCF1DC  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80CCF1E0  38 63 00 04 */	addi r3, r3, 4
/* 80CCF1E4  38 84 00 06 */	addi r4, r4, 6
/* 80CCF1E8  42 00 FF E0 */	bdnz lbl_80CCF1C8
/* 80CCF1EC  38 00 00 00 */	li r0, 0
/* 80CCF1F0  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80CCF1F4  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80CCF1F8  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80CCF1FC  38 00 FF FF */	li r0, -1
/* 80CCF200  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80CCF204  38 00 00 01 */	li r0, 1
/* 80CCF208  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80CCF20C  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 80CCF210  4B 59 87 44 */	b cM_rndF__Ff
/* 80CCF214  FC 00 08 1E */	fctiwz f0, f1
/* 80CCF218  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80CCF21C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80CCF220  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80CCF224  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80CCF228  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80CCF22C  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80CCF230  3B 80 00 00 */	li r28, 0
/* 80CCF234  3B C0 00 00 */	li r30, 0
lbl_80CCF238:
/* 80CCF238  38 7E 10 CC */	addi r3, r30, 0x10cc
/* 80CCF23C  7C 7F 1A 14 */	add r3, r31, r3
/* 80CCF240  4B 47 64 94 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80CCF244  3B 9C 00 01 */	addi r28, r28, 1
/* 80CCF248  2C 1C 00 08 */	cmpwi r28, 8
/* 80CCF24C  3B DE 00 08 */	addi r30, r30, 8
/* 80CCF250  41 80 FF E8 */	blt lbl_80CCF238
/* 80CCF254  38 7F 11 0C */	addi r3, r31, 0x110c
/* 80CCF258  38 80 00 00 */	li r4, 0
/* 80CCF25C  7F A5 EB 78 */	mr r5, r29
/* 80CCF260  4B 33 41 F8 */	b memset
/* 80CCF264  38 80 00 00 */	li r4, 0
/* 80CCF268  B0 81 00 10 */	sth r4, 0x10(r1)
/* 80CCF26C  B0 81 00 12 */	sth r4, 0x12(r1)
/* 80CCF270  B0 81 00 14 */	sth r4, 0x14(r1)
/* 80CCF274  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80CCF278  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80CCF27C  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CCF280  28 00 00 06 */	cmplwi r0, 6
/* 80CCF284  41 81 00 98 */	bgt lbl_80CCF31C
/* 80CCF288  3C 60 80 CD */	lis r3, lit_4743@ha
/* 80CCF28C  38 63 65 00 */	addi r3, r3, lit_4743@l
/* 80CCF290  54 00 10 3A */	slwi r0, r0, 2
/* 80CCF294  7C 03 00 2E */	lwzx r0, r3, r0
/* 80CCF298  7C 09 03 A6 */	mtctr r0
/* 80CCF29C  4E 80 04 20 */	bctr 
lbl_80CCF2A0:
/* 80CCF2A0  38 60 00 31 */	li r3, 0x31
/* 80CCF2A4  4B 47 D8 C8 */	b daNpcT_chkTmpBit__FUl
/* 80CCF2A8  2C 03 00 00 */	cmpwi r3, 0
/* 80CCF2AC  41 82 00 14 */	beq lbl_80CCF2C0
/* 80CCF2B0  38 60 00 31 */	li r3, 0x31
/* 80CCF2B4  4B 47 D8 78 */	b daNpcT_offTmpBit__FUl
/* 80CCF2B8  38 00 00 01 */	li r0, 1
/* 80CCF2BC  98 1F 11 73 */	stb r0, 0x1173(r31)
lbl_80CCF2C0:
/* 80CCF2C0  38 00 00 00 */	li r0, 0
/* 80CCF2C4  98 1F 00 FF */	stb r0, 0xff(r31)
/* 80CCF2C8  38 00 00 01 */	li r0, 1
/* 80CCF2CC  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 80CCF2D0  48 00 00 4C */	b lbl_80CCF31C
lbl_80CCF2D4:
/* 80CCF2D4  98 9F 00 FF */	stb r4, 0xff(r31)
/* 80CCF2D8  38 00 00 01 */	li r0, 1
/* 80CCF2DC  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 80CCF2E0  48 00 00 3C */	b lbl_80CCF31C
lbl_80CCF2E4:
/* 80CCF2E4  38 00 00 01 */	li r0, 1
/* 80CCF2E8  98 1F 00 FF */	stb r0, 0xff(r31)
/* 80CCF2EC  48 00 00 30 */	b lbl_80CCF31C
lbl_80CCF2F0:
/* 80CCF2F0  38 00 00 01 */	li r0, 1
/* 80CCF2F4  98 1F 00 FF */	stb r0, 0xff(r31)
/* 80CCF2F8  48 00 00 24 */	b lbl_80CCF31C
lbl_80CCF2FC:
/* 80CCF2FC  38 00 00 01 */	li r0, 1
/* 80CCF300  98 1F 00 FF */	stb r0, 0xff(r31)
/* 80CCF304  48 00 00 18 */	b lbl_80CCF31C
lbl_80CCF308:
/* 80CCF308  38 00 00 01 */	li r0, 1
/* 80CCF30C  98 1F 00 FF */	stb r0, 0xff(r31)
/* 80CCF310  48 00 00 0C */	b lbl_80CCF31C
lbl_80CCF314:
/* 80CCF314  38 00 00 02 */	li r0, 2
/* 80CCF318  98 1F 00 FF */	stb r0, 0xff(r31)
lbl_80CCF31C:
/* 80CCF31C  38 00 00 01 */	li r0, 1
/* 80CCF320  98 1F 11 72 */	stb r0, 0x1172(r31)
/* 80CCF324  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80CCF328  90 01 00 08 */	stw r0, 8(r1)
/* 80CCF32C  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80CCF330  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80CCF334  7F E3 FB 78 */	mr r3, r31
/* 80CCF338  38 81 00 08 */	addi r4, r1, 8
/* 80CCF33C  4B 47 B6 60 */	b setAngle__8daNpcT_cF5csXyz
/* 80CCF340  39 61 00 30 */	addi r11, r1, 0x30
/* 80CCF344  4B 69 2E E0 */	b _restgpr_28
/* 80CCF348  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CCF34C  7C 08 03 A6 */	mtlr r0
/* 80CCF350  38 21 00 30 */	addi r1, r1, 0x30
/* 80CCF354  4E 80 00 20 */	blr 
