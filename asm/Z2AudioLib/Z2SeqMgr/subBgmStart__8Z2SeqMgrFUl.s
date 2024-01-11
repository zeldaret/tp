lbl_802AF49C:
/* 802AF49C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802AF4A0  7C 08 02 A6 */	mflr r0
/* 802AF4A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802AF4A8  39 61 00 30 */	addi r11, r1, 0x30
/* 802AF4AC  48 0B 2D 2D */	bl _savegpr_28
/* 802AF4B0  7C 7D 1B 78 */	mr r29, r3
/* 802AF4B4  7C 9E 23 78 */	mr r30, r4
/* 802AF4B8  3C 1E 00 01 */	addis r0, r30, 1
/* 802AF4BC  28 00 FF FF */	cmplwi r0, 0xffff
/* 802AF4C0  41 82 03 AC */	beq lbl_802AF86C
/* 802AF4C4  3C BE FF 00 */	addis r5, r30, 0xff00
/* 802AF4C8  38 A5 FF FC */	addi r5, r5, -4
/* 802AF4CC  28 05 00 A4 */	cmplwi r5, 0xa4
/* 802AF4D0  41 81 01 58 */	bgt lbl_802AF628
/* 802AF4D4  3C 80 80 3D */	lis r4, lit_3900@ha /* 0x803C9DF8@ha */
/* 802AF4D8  38 84 9D F8 */	addi r4, r4, lit_3900@l /* 0x803C9DF8@l */
/* 802AF4DC  54 A5 10 3A */	slwi r5, r5, 2
/* 802AF4E0  7C 04 28 2E */	lwzx r0, r4, r5
/* 802AF4E4  7C 09 03 A6 */	mtctr r0
/* 802AF4E8  4E 80 04 20 */	bctr 
/* 802AF4EC  80 7D 00 04 */	lwz r3, 4(r29)
/* 802AF4F0  28 03 00 00 */	cmplwi r3, 0
/* 802AF4F4  41 82 00 10 */	beq lbl_802AF504
/* 802AF4F8  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802AF4FC  90 61 00 0C */	stw r3, 0xc(r1)
/* 802AF500  48 00 00 08 */	b lbl_802AF508
lbl_802AF504:
/* 802AF504  38 60 FF FF */	li r3, -1
lbl_802AF508:
/* 802AF508  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802AF50C  28 00 00 6D */	cmplwi r0, 0x6d
/* 802AF510  40 82 00 0C */	bne lbl_802AF51C
/* 802AF514  7F A3 EB 78 */	mr r3, r29
/* 802AF518  48 00 03 6D */	bl subBgmStop__8Z2SeqMgrFv
lbl_802AF51C:
/* 802AF51C  93 C1 00 14 */	stw r30, 0x14(r1)
/* 802AF520  93 DD 00 10 */	stw r30, 0x10(r29)
/* 802AF524  48 00 03 48 */	b lbl_802AF86C
/* 802AF528  3B 80 00 00 */	li r28, 0
/* 802AF52C  3B E0 FF FF */	li r31, -1
/* 802AF530  48 00 01 00 */	b lbl_802AF630
/* 802AF534  80 6D 85 FC */	lwz r3, __OSReport_disable-0x1C(r13)
/* 802AF538  3C 80 80 3A */	lis r4, Z2SeqMgr__stringBase0@ha /* 0x8039BA08@ha */
/* 802AF53C  38 84 BA 08 */	addi r4, r4, Z2SeqMgr__stringBase0@l /* 0x8039BA08@l */
/* 802AF540  38 84 02 6A */	addi r4, r4, 0x26a
/* 802AF544  48 00 6C A5 */	bl setDemoName__11Z2StatusMgrFPc
/* 802AF548  3B 80 00 00 */	li r28, 0
/* 802AF54C  8B ED 82 E2 */	lbz r31, struct_80450862+0x0(r13)
/* 802AF550  48 00 00 E0 */	b lbl_802AF630
/* 802AF554  3B 80 00 00 */	li r28, 0
/* 802AF558  3B E0 00 78 */	li r31, 0x78
/* 802AF55C  38 80 00 00 */	li r4, 0
/* 802AF560  38 A0 00 00 */	li r5, 0
/* 802AF564  4B FF FE A5 */	bl bgmStop__8Z2SeqMgrFUll
/* 802AF568  48 00 00 C8 */	b lbl_802AF630
/* 802AF56C  80 7D 00 04 */	lwz r3, 4(r29)
/* 802AF570  28 03 00 00 */	cmplwi r3, 0
/* 802AF574  41 82 00 0C */	beq lbl_802AF580
/* 802AF578  38 80 00 00 */	li r4, 0
/* 802AF57C  4B FF 2F 61 */	bl stop__8JAISoundFUl
lbl_802AF580:
/* 802AF580  7F A3 EB 78 */	mr r3, r29
/* 802AF584  38 80 00 01 */	li r4, 1
/* 802AF588  48 00 4B DD */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 802AF58C  3B 80 00 00 */	li r28, 0
/* 802AF590  3B E0 00 01 */	li r31, 1
/* 802AF594  48 00 00 9C */	b lbl_802AF630
/* 802AF598  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802AF59C  D0 1D 00 74 */	stfs f0, 0x74(r29)
/* 802AF5A0  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802AF5A4  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 802AF5A8  38 00 00 00 */	li r0, 0
/* 802AF5AC  90 1D 00 80 */	stw r0, 0x80(r29)
/* 802AF5B0  D0 1D 00 7C */	stfs f0, 0x7c(r29)
/* 802AF5B4  3B 80 00 00 */	li r28, 0
/* 802AF5B8  3B E0 00 01 */	li r31, 1
/* 802AF5BC  48 00 00 74 */	b lbl_802AF630
/* 802AF5C0  80 7D 00 04 */	lwz r3, 4(r29)
/* 802AF5C4  28 03 00 00 */	cmplwi r3, 0
/* 802AF5C8  41 82 00 0C */	beq lbl_802AF5D4
/* 802AF5CC  38 80 00 00 */	li r4, 0
/* 802AF5D0  4B FF 2F 0D */	bl stop__8JAISoundFUl
lbl_802AF5D4:
/* 802AF5D4  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802AF5D8  28 03 00 00 */	cmplwi r3, 0
/* 802AF5DC  41 82 00 0C */	beq lbl_802AF5E8
/* 802AF5E0  38 80 00 00 */	li r4, 0
/* 802AF5E4  4B FF 2E F9 */	bl stop__8JAISoundFUl
lbl_802AF5E8:
/* 802AF5E8  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802AF5EC  D0 1D 00 64 */	stfs f0, 0x64(r29)
/* 802AF5F0  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802AF5F4  D0 1D 00 68 */	stfs f0, 0x68(r29)
/* 802AF5F8  38 00 00 00 */	li r0, 0
/* 802AF5FC  90 1D 00 70 */	stw r0, 0x70(r29)
/* 802AF600  D0 1D 00 6C */	stfs f0, 0x6c(r29)
/* 802AF604  3B 80 00 00 */	li r28, 0
/* 802AF608  3B E0 00 01 */	li r31, 1
/* 802AF60C  48 00 00 24 */	b lbl_802AF630
/* 802AF610  3B 80 00 00 */	li r28, 0
/* 802AF614  3B E0 00 14 */	li r31, 0x14
/* 802AF618  48 00 00 18 */	b lbl_802AF630
/* 802AF61C  3B 80 00 00 */	li r28, 0
/* 802AF620  8B ED 82 E2 */	lbz r31, struct_80450862+0x0(r13)
/* 802AF624  48 00 00 0C */	b lbl_802AF630
lbl_802AF628:
/* 802AF628  8B 8D 82 E1 */	lbz r28, struct_80450861+0x0(r13)
/* 802AF62C  8B ED 82 E2 */	lbz r31, struct_80450862+0x0(r13)
lbl_802AF630:
/* 802AF630  80 7D 00 04 */	lwz r3, 4(r29)
/* 802AF634  28 03 00 00 */	cmplwi r3, 0
/* 802AF638  41 82 00 10 */	beq lbl_802AF648
/* 802AF63C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802AF640  90 01 00 08 */	stw r0, 8(r1)
/* 802AF644  48 00 00 08 */	b lbl_802AF64C
lbl_802AF648:
/* 802AF648  38 00 FF FF */	li r0, -1
lbl_802AF64C:
/* 802AF64C  7C 1E 00 40 */	cmplw r30, r0
/* 802AF650  40 82 00 38 */	bne lbl_802AF688
/* 802AF654  3C 1E FF 00 */	addis r0, r30, 0xff00
/* 802AF658  28 00 00 24 */	cmplwi r0, 0x24
/* 802AF65C  41 82 00 0C */	beq lbl_802AF668
/* 802AF660  28 00 00 06 */	cmplwi r0, 6
/* 802AF664  40 82 00 18 */	bne lbl_802AF67C
lbl_802AF668:
/* 802AF668  38 80 00 00 */	li r4, 0
/* 802AF66C  4B FF 2E 71 */	bl stop__8JAISoundFUl
/* 802AF670  38 7D 00 04 */	addi r3, r29, 4
/* 802AF674  4B FF 2B 11 */	bl releaseSound__14JAISoundHandleFv
/* 802AF678  48 00 00 28 */	b lbl_802AF6A0
lbl_802AF67C:
/* 802AF67C  38 00 FF FF */	li r0, -1
/* 802AF680  B0 1D 00 B8 */	sth r0, 0xb8(r29)
/* 802AF684  48 00 01 E8 */	b lbl_802AF86C
lbl_802AF688:
/* 802AF688  28 03 00 00 */	cmplwi r3, 0
/* 802AF68C  41 82 00 14 */	beq lbl_802AF6A0
/* 802AF690  7F A3 EB 78 */	mr r3, r29
/* 802AF694  48 00 01 F1 */	bl subBgmStop__8Z2SeqMgrFv
/* 802AF698  7F A3 EB 78 */	mr r3, r29
/* 802AF69C  48 00 03 35 */	bl subBgmStopInner__8Z2SeqMgrFv
lbl_802AF6A0:
/* 802AF6A0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802AF6A4  80 6D 85 E0 */	lwz r3, __OSReport_disable-0x38(r13)
/* 802AF6A8  38 81 00 10 */	addi r4, r1, 0x10
/* 802AF6AC  38 BD 00 04 */	addi r5, r29, 4
/* 802AF6B0  38 C0 00 00 */	li r6, 0
/* 802AF6B4  81 83 00 00 */	lwz r12, 0(r3)
/* 802AF6B8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AF6BC  7D 89 03 A6 */	mtctr r12
/* 802AF6C0  4E 80 04 21 */	bctrl 
/* 802AF6C4  38 00 00 FF */	li r0, 0xff
/* 802AF6C8  98 1D 00 BD */	stb r0, 0xbd(r29)
/* 802AF6CC  3C 60 01 00 */	lis r3, 0x0100 /* 0x0100006C@ha */
/* 802AF6D0  38 03 00 6C */	addi r0, r3, 0x006C /* 0x0100006C@l */
/* 802AF6D4  7C 1E 00 00 */	cmpw r30, r0
/* 802AF6D8  41 82 00 68 */	beq lbl_802AF740
/* 802AF6DC  40 80 00 34 */	bge lbl_802AF710
/* 802AF6E0  38 03 00 29 */	addi r0, r3, 0x29
/* 802AF6E4  7C 1E 00 00 */	cmpw r30, r0
/* 802AF6E8  41 82 00 80 */	beq lbl_802AF768
/* 802AF6EC  40 80 00 14 */	bge lbl_802AF700
/* 802AF6F0  38 03 00 04 */	addi r0, r3, 4
/* 802AF6F4  7C 1E 00 00 */	cmpw r30, r0
/* 802AF6F8  41 82 00 38 */	beq lbl_802AF730
/* 802AF6FC  48 00 00 78 */	b lbl_802AF774
lbl_802AF700:
/* 802AF700  38 03 00 39 */	addi r0, r3, 0x39
/* 802AF704  7C 1E 00 00 */	cmpw r30, r0
/* 802AF708  41 82 00 38 */	beq lbl_802AF740
/* 802AF70C  48 00 00 68 */	b lbl_802AF774
lbl_802AF710:
/* 802AF710  38 03 00 A8 */	addi r0, r3, 0xa8
/* 802AF714  7C 1E 00 00 */	cmpw r30, r0
/* 802AF718  41 82 00 34 */	beq lbl_802AF74C
/* 802AF71C  40 80 00 58 */	bge lbl_802AF774
/* 802AF720  38 03 00 96 */	addi r0, r3, 0x96
/* 802AF724  7C 1E 00 00 */	cmpw r30, r0
/* 802AF728  41 82 00 08 */	beq lbl_802AF730
/* 802AF72C  48 00 00 48 */	b lbl_802AF774
lbl_802AF730:
/* 802AF730  7F A3 EB 78 */	mr r3, r29
/* 802AF734  38 80 00 00 */	li r4, 0
/* 802AF738  48 00 26 BD */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 802AF73C  48 00 00 38 */	b lbl_802AF774
lbl_802AF740:
/* 802AF740  7F A3 EB 78 */	mr r3, r29
/* 802AF744  38 80 00 00 */	li r4, 0
/* 802AF748  48 00 07 95 */	bl bgmStreamStop__8Z2SeqMgrFUl
lbl_802AF74C:
/* 802AF74C  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802AF750  D0 1D 00 64 */	stfs f0, 0x64(r29)
/* 802AF754  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802AF758  D0 1D 00 68 */	stfs f0, 0x68(r29)
/* 802AF75C  38 00 00 00 */	li r0, 0
/* 802AF760  90 1D 00 70 */	stw r0, 0x70(r29)
/* 802AF764  D0 1D 00 6C */	stfs f0, 0x6c(r29)
lbl_802AF768:
/* 802AF768  7F A3 EB 78 */	mr r3, r29
/* 802AF76C  38 80 00 01 */	li r4, 1
/* 802AF770  48 00 26 85 */	bl changeSubBgmStatus__8Z2SeqMgrFl
lbl_802AF774:
/* 802AF774  2C 1C 00 00 */	cmpwi r28, 0
/* 802AF778  41 82 00 6C */	beq lbl_802AF7E4
/* 802AF77C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802AF780  D0 3D 00 24 */	stfs f1, 0x24(r29)
/* 802AF784  28 1C 00 00 */	cmplwi r28, 0
/* 802AF788  41 82 00 40 */	beq lbl_802AF7C8
/* 802AF78C  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 802AF790  93 9D 00 30 */	stw r28, 0x30(r29)
/* 802AF794  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802AF798  EC 43 00 28 */	fsubs f2, f3, f0
/* 802AF79C  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 802AF7A0  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802AF7A4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802AF7A8  3C 00 43 30 */	lis r0, 0x4330
/* 802AF7AC  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AF7B0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802AF7B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 802AF7B8  EC 02 00 24 */	fdivs f0, f2, f0
/* 802AF7BC  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 802AF7C0  D0 7D 00 2C */	stfs f3, 0x2c(r29)
/* 802AF7C4  48 00 00 3C */	b lbl_802AF800
lbl_802AF7C8:
/* 802AF7C8  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802AF7CC  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 802AF7D0  D0 3D 00 28 */	stfs f1, 0x28(r29)
/* 802AF7D4  38 00 00 00 */	li r0, 0
/* 802AF7D8  90 1D 00 30 */	stw r0, 0x30(r29)
/* 802AF7DC  D0 3D 00 2C */	stfs f1, 0x2c(r29)
/* 802AF7E0  48 00 00 20 */	b lbl_802AF800
lbl_802AF7E4:
/* 802AF7E4  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802AF7E8  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 802AF7EC  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802AF7F0  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 802AF7F4  38 00 00 00 */	li r0, 0
/* 802AF7F8  90 1D 00 30 */	stw r0, 0x30(r29)
/* 802AF7FC  D0 1D 00 2C */	stfs f0, 0x2c(r29)
lbl_802AF800:
/* 802AF800  2C 1F 00 00 */	cmpwi r31, 0
/* 802AF804  41 80 00 60 */	blt lbl_802AF864
/* 802AF808  28 1F 00 00 */	cmplwi r31, 0
/* 802AF80C  41 82 00 40 */	beq lbl_802AF84C
/* 802AF810  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 802AF814  93 FD 00 20 */	stw r31, 0x20(r29)
/* 802AF818  C0 62 BF 9C */	lfs f3, lit_3373(r2)
/* 802AF81C  EC 43 00 28 */	fsubs f2, f3, f0
/* 802AF820  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 802AF824  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802AF828  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802AF82C  3C 00 43 30 */	lis r0, 0x4330
/* 802AF830  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AF834  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802AF838  EC 00 08 28 */	fsubs f0, f0, f1
/* 802AF83C  EC 02 00 24 */	fdivs f0, f2, f0
/* 802AF840  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 802AF844  D0 7D 00 1C */	stfs f3, 0x1c(r29)
/* 802AF848  48 00 00 1C */	b lbl_802AF864
lbl_802AF84C:
/* 802AF84C  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802AF850  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 802AF854  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 802AF858  38 00 00 00 */	li r0, 0
/* 802AF85C  90 1D 00 20 */	stw r0, 0x20(r29)
/* 802AF860  D0 1D 00 1C */	stfs f0, 0x1c(r29)
lbl_802AF864:
/* 802AF864  38 00 FF FF */	li r0, -1
/* 802AF868  B0 1D 00 B8 */	sth r0, 0xb8(r29)
lbl_802AF86C:
/* 802AF86C  39 61 00 30 */	addi r11, r1, 0x30
/* 802AF870  48 0B 29 B5 */	bl _restgpr_28
/* 802AF874  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802AF878  7C 08 03 A6 */	mtlr r0
/* 802AF87C  38 21 00 30 */	addi r1, r1, 0x30
/* 802AF880  4E 80 00 20 */	blr 
