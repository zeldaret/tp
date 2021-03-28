lbl_802CB100:
/* 802CB100  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802CB104  7C 08 02 A6 */	mflr r0
/* 802CB108  90 01 00 34 */	stw r0, 0x34(r1)
/* 802CB10C  39 61 00 30 */	addi r11, r1, 0x30
/* 802CB110  48 09 70 CD */	bl _savegpr_29
/* 802CB114  7C 7F 1B 78 */	mr r31, r3
/* 802CB118  7C 86 07 74 */	extsb r6, r4
/* 802CB11C  88 03 00 8E */	lbz r0, 0x8e(r3)
/* 802CB120  7C 00 07 74 */	extsb r0, r0
/* 802CB124  7C 06 00 00 */	cmpw r6, r0
/* 802CB128  41 82 01 E0 */	beq lbl_802CB308
/* 802CB12C  2C 06 FF FF */	cmpwi r6, -1
/* 802CB130  40 82 00 18 */	bne lbl_802CB148
/* 802CB134  38 00 FF FF */	li r0, -1
/* 802CB138  98 1F 00 8E */	stb r0, 0x8e(r31)
/* 802CB13C  38 00 00 00 */	li r0, 0
/* 802CB140  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802CB144  48 00 01 C4 */	b lbl_802CB308
lbl_802CB148:
/* 802CB148  28 05 00 00 */	cmplwi r5, 0
/* 802CB14C  40 82 00 2C */	bne lbl_802CB178
/* 802CB150  2C 06 00 09 */	cmpwi r6, 9
/* 802CB154  41 80 00 18 */	blt lbl_802CB16C
/* 802CB158  38 00 FF FF */	li r0, -1
/* 802CB15C  98 1F 00 8E */	stb r0, 0x8e(r31)
/* 802CB160  38 00 00 00 */	li r0, 0
/* 802CB164  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802CB168  48 00 01 A0 */	b lbl_802CB308
lbl_802CB16C:
/* 802CB16C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802CB170  54 C0 18 38 */	slwi r0, r6, 3
/* 802CB174  7C A3 02 14 */	add r5, r3, r0
lbl_802CB178:
/* 802CB178  98 9F 00 8E */	stb r4, 0x8e(r31)
/* 802CB17C  90 BF 00 0C */	stw r5, 0xc(r31)
/* 802CB180  7C 80 07 74 */	extsb r0, r4
/* 802CB184  2C 00 00 06 */	cmpwi r0, 6
/* 802CB188  41 82 00 68 */	beq lbl_802CB1F0
/* 802CB18C  40 80 00 1C */	bge lbl_802CB1A8
/* 802CB190  2C 00 00 04 */	cmpwi r0, 4
/* 802CB194  41 82 00 40 */	beq lbl_802CB1D4
/* 802CB198  40 80 00 A8 */	bge lbl_802CB240
/* 802CB19C  2C 00 00 03 */	cmpwi r0, 3
/* 802CB1A0  40 80 00 18 */	bge lbl_802CB1B8
/* 802CB1A4  48 00 00 9C */	b lbl_802CB240
lbl_802CB1A8:
/* 802CB1A8  2C 00 00 08 */	cmpwi r0, 8
/* 802CB1AC  41 82 00 78 */	beq lbl_802CB224
/* 802CB1B0  40 80 00 90 */	bge lbl_802CB240
/* 802CB1B4  48 00 00 54 */	b lbl_802CB208
lbl_802CB1B8:
/* 802CB1B8  C0 02 C4 80 */	lfs f0, lit_3711(r2)
/* 802CB1BC  D0 0D 83 08 */	stfs f0, cPitchUp(r13)
/* 802CB1C0  C0 02 C4 84 */	lfs f0, lit_3712(r2)
/* 802CB1C4  D0 0D 83 04 */	stfs f0, cPitchCenter(r13)
/* 802CB1C8  C0 02 C4 88 */	lfs f0, lit_3713(r2)
/* 802CB1CC  D0 0D 83 00 */	stfs f0, cPitchDown(r13)
/* 802CB1D0  48 00 00 88 */	b lbl_802CB258
lbl_802CB1D4:
/* 802CB1D4  C0 02 C4 8C */	lfs f0, lit_3714(r2)
/* 802CB1D8  D0 0D 83 08 */	stfs f0, cPitchUp(r13)
/* 802CB1DC  C0 02 C4 90 */	lfs f0, lit_3715(r2)
/* 802CB1E0  D0 0D 83 04 */	stfs f0, cPitchCenter(r13)
/* 802CB1E4  C0 02 C4 94 */	lfs f0, lit_3716(r2)
/* 802CB1E8  D0 0D 83 00 */	stfs f0, cPitchDown(r13)
/* 802CB1EC  48 00 00 6C */	b lbl_802CB258
lbl_802CB1F0:
/* 802CB1F0  C0 02 C4 98 */	lfs f0, lit_3717(r2)
/* 802CB1F4  D0 0D 83 08 */	stfs f0, cPitchUp(r13)
/* 802CB1F8  C0 02 C4 9C */	lfs f0, lit_3718(r2)
/* 802CB1FC  D0 0D 83 04 */	stfs f0, cPitchCenter(r13)
/* 802CB200  D0 0D 83 00 */	stfs f0, cPitchDown(r13)
/* 802CB204  48 00 00 54 */	b lbl_802CB258
lbl_802CB208:
/* 802CB208  C0 02 C4 8C */	lfs f0, lit_3714(r2)
/* 802CB20C  D0 0D 83 08 */	stfs f0, cPitchUp(r13)
/* 802CB210  C0 02 C4 90 */	lfs f0, lit_3715(r2)
/* 802CB214  D0 0D 83 04 */	stfs f0, cPitchCenter(r13)
/* 802CB218  C0 02 C4 9C */	lfs f0, lit_3718(r2)
/* 802CB21C  D0 0D 83 00 */	stfs f0, cPitchDown(r13)
/* 802CB220  48 00 00 38 */	b lbl_802CB258
lbl_802CB224:
/* 802CB224  C0 02 C4 80 */	lfs f0, lit_3711(r2)
/* 802CB228  D0 0D 83 08 */	stfs f0, cPitchUp(r13)
/* 802CB22C  C0 02 C4 90 */	lfs f0, lit_3715(r2)
/* 802CB230  D0 0D 83 04 */	stfs f0, cPitchCenter(r13)
/* 802CB234  C0 02 C4 A0 */	lfs f0, lit_3719(r2)
/* 802CB238  D0 0D 83 00 */	stfs f0, cPitchDown(r13)
/* 802CB23C  48 00 00 1C */	b lbl_802CB258
lbl_802CB240:
/* 802CB240  C0 02 C4 A4 */	lfs f0, lit_3720(r2)
/* 802CB244  D0 0D 83 08 */	stfs f0, cPitchUp(r13)
/* 802CB248  C0 02 C4 64 */	lfs f0, lit_3486(r2)
/* 802CB24C  D0 0D 83 04 */	stfs f0, cPitchCenter(r13)
/* 802CB250  C0 02 C4 9C */	lfs f0, lit_3718(r2)
/* 802CB254  D0 0D 83 00 */	stfs f0, cPitchDown(r13)
lbl_802CB258:
/* 802CB258  38 00 00 00 */	li r0, 0
/* 802CB25C  B0 1F 00 BE */	sth r0, 0xbe(r31)
/* 802CB260  3B C0 00 00 */	li r30, 0
/* 802CB264  3B A0 00 00 */	li r29, 0
/* 802CB268  48 00 00 78 */	b lbl_802CB2E0
lbl_802CB26C:
/* 802CB26C  7F E3 FB 78 */	mr r3, r31
/* 802CB270  7F A4 EB 78 */	mr r4, r29
/* 802CB274  48 00 00 AD */	bl getCorrectLine__13Z2WolfHowlMgrFUc
/* 802CB278  54 60 84 3E */	srwi r0, r3, 0x10
/* 802CB27C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 802CB280  88 01 00 11 */	lbz r0, 0x11(r1)
/* 802CB284  7F DE 02 14 */	add r30, r30, r0
/* 802CB288  7F E3 FB 78 */	mr r3, r31
/* 802CB28C  7F A4 EB 78 */	mr r4, r29
/* 802CB290  48 00 00 91 */	bl getCorrectLine__13Z2WolfHowlMgrFUc
/* 802CB294  54 60 84 3E */	srwi r0, r3, 0x10
/* 802CB298  B0 01 00 0C */	sth r0, 0xc(r1)
/* 802CB29C  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802CB2A0  28 00 00 00 */	cmplwi r0, 0
/* 802CB2A4  41 82 00 38 */	beq lbl_802CB2DC
/* 802CB2A8  A0 7F 00 BE */	lhz r3, 0xbe(r31)
/* 802CB2AC  88 0D 83 15 */	lbz r0, struct_80450894+0x1(r13)
/* 802CB2B0  7C 03 02 14 */	add r0, r3, r0
/* 802CB2B4  B0 1F 00 BE */	sth r0, 0xbe(r31)
/* 802CB2B8  7F E3 FB 78 */	mr r3, r31
/* 802CB2BC  7F A4 EB 78 */	mr r4, r29
/* 802CB2C0  48 00 00 61 */	bl getCorrectLine__13Z2WolfHowlMgrFUc
/* 802CB2C4  54 60 84 3E */	srwi r0, r3, 0x10
/* 802CB2C8  B0 01 00 08 */	sth r0, 8(r1)
/* 802CB2CC  A0 7F 00 BE */	lhz r3, 0xbe(r31)
/* 802CB2D0  88 01 00 09 */	lbz r0, 9(r1)
/* 802CB2D4  7C 03 02 14 */	add r0, r3, r0
/* 802CB2D8  B0 1F 00 BE */	sth r0, 0xbe(r31)
lbl_802CB2DC:
/* 802CB2DC  3B BD 00 01 */	addi r29, r29, 1
lbl_802CB2E0:
/* 802CB2E0  7F E3 FB 78 */	mr r3, r31
/* 802CB2E4  48 00 00 8D */	bl getCorrectLineNum__13Z2WolfHowlMgrFv
/* 802CB2E8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 802CB2EC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802CB2F0  7C 00 18 40 */	cmplw r0, r3
/* 802CB2F4  41 80 FF 78 */	blt lbl_802CB26C
/* 802CB2F8  57 C3 F0 BE */	srwi r3, r30, 2
/* 802CB2FC  A0 1F 00 BE */	lhz r0, 0xbe(r31)
/* 802CB300  7C 03 00 50 */	subf r0, r3, r0
/* 802CB304  B0 1F 00 BE */	sth r0, 0xbe(r31)
lbl_802CB308:
/* 802CB308  39 61 00 30 */	addi r11, r1, 0x30
/* 802CB30C  48 09 6F 1D */	bl _restgpr_29
/* 802CB310  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802CB314  7C 08 03 A6 */	mtlr r0
/* 802CB318  38 21 00 30 */	addi r1, r1, 0x30
/* 802CB31C  4E 80 00 20 */	blr 
