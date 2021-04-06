lbl_80A23350:
/* 80A23350  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A23354  7C 08 02 A6 */	mflr r0
/* 80A23358  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A2335C  39 61 00 60 */	addi r11, r1, 0x60
/* 80A23360  4B 93 EE 79 */	bl _savegpr_28
/* 80A23364  7C 7C 1B 78 */	mr r28, r3
/* 80A23368  3C 60 80 A2 */	lis r3, m__20daNpcKasiKyu_Param_c@ha /* 0x80A258B8@ha */
/* 80A2336C  38 83 58 B8 */	addi r4, r3, m__20daNpcKasiKyu_Param_c@l /* 0x80A258B8@l */
/* 80A23370  38 A0 00 00 */	li r5, 0
/* 80A23374  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80A23378  83 E3 00 04 */	lwz r31, 4(r3)
/* 80A2337C  3B C0 00 00 */	li r30, 0
/* 80A23380  38 64 00 00 */	addi r3, r4, 0
/* 80A23384  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80A23388  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80A2338C  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 80A23390  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 80A23394  C0 C3 00 34 */	lfs f6, 0x34(r3)
/* 80A23398  C0 E3 00 30 */	lfs f7, 0x30(r3)
/* 80A2339C  C1 03 00 3C */	lfs f8, 0x3c(r3)
/* 80A233A0  C1 23 00 38 */	lfs f9, 0x38(r3)
/* 80A233A4  A8 7C 08 F8 */	lha r3, 0x8f8(r28)
/* 80A233A8  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80A233AC  7C 03 00 50 */	subf r0, r3, r0
/* 80A233B0  7C 1D 07 34 */	extsh r29, r0
/* 80A233B4  C0 1C 08 54 */	lfs f0, 0x854(r28)
/* 80A233B8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A233BC  C0 1C 08 58 */	lfs f0, 0x858(r28)
/* 80A233C0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A233C4  C0 1C 08 5C */	lfs f0, 0x85c(r28)
/* 80A233C8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A233CC  C0 1C 08 60 */	lfs f0, 0x860(r28)
/* 80A233D0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A233D4  C0 1C 08 64 */	lfs f0, 0x864(r28)
/* 80A233D8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A233DC  C0 1C 08 68 */	lfs f0, 0x868(r28)
/* 80A233E0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A233E4  C0 1C 08 6C */	lfs f0, 0x86c(r28)
/* 80A233E8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A233EC  C0 1C 08 70 */	lfs f0, 0x870(r28)
/* 80A233F0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A233F4  C0 1C 08 74 */	lfs f0, 0x874(r28)
/* 80A233F8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A233FC  80 64 02 0C */	lwz r3, 0x20c(r4)
/* 80A23400  80 04 02 10 */	lwz r0, 0x210(r4)
/* 80A23404  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A23408  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A2340C  80 04 02 14 */	lwz r0, 0x214(r4)
/* 80A23410  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A23414  38 1C 09 1A */	addi r0, r28, 0x91a
/* 80A23418  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A2341C  38 1C 09 20 */	addi r0, r28, 0x920
/* 80A23420  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A23424  38 1C 09 26 */	addi r0, r28, 0x926
/* 80A23428  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A2342C  A8 1C 14 3C */	lha r0, 0x143c(r28)
/* 80A23430  2C 00 00 01 */	cmpwi r0, 1
/* 80A23434  41 82 00 18 */	beq lbl_80A2344C
/* 80A23438  40 80 00 08 */	bge lbl_80A23440
/* 80A2343C  48 00 00 34 */	b lbl_80A23470
lbl_80A23440:
/* 80A23440  2C 00 00 04 */	cmpwi r0, 4
/* 80A23444  40 80 00 2C */	bge lbl_80A23470
/* 80A23448  48 00 00 0C */	b lbl_80A23454
lbl_80A2344C:
/* 80A2344C  3B C0 00 01 */	li r30, 1
/* 80A23450  48 00 00 20 */	b lbl_80A23470
lbl_80A23454:
/* 80A23454  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A23458  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2345C  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80A23460  2C 00 00 03 */	cmpwi r0, 3
/* 80A23464  40 82 00 0C */	bne lbl_80A23470
/* 80A23468  C1 04 02 18 */	lfs f8, 0x218(r4)
/* 80A2346C  C1 24 02 1C */	lfs f9, 0x21c(r4)
lbl_80A23470:
/* 80A23470  28 05 00 00 */	cmplwi r5, 0
/* 80A23474  41 82 00 4C */	beq lbl_80A234C0
/* 80A23478  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 80A2347C  D0 1C 08 78 */	stfs f0, 0x878(r28)
/* 80A23480  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 80A23484  D0 1C 08 7C */	stfs f0, 0x87c(r28)
/* 80A23488  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 80A2348C  D0 1C 08 80 */	stfs f0, 0x880(r28)
/* 80A23490  A8 1C 14 3C */	lha r0, 0x143c(r28)
/* 80A23494  2C 00 00 02 */	cmpwi r0, 2
/* 80A23498  41 82 00 1C */	beq lbl_80A234B4
/* 80A2349C  2C 00 00 03 */	cmpwi r0, 3
/* 80A234A0  41 82 00 14 */	beq lbl_80A234B4
/* 80A234A4  C0 BC 08 7C */	lfs f5, 0x87c(r28)
/* 80A234A8  C0 04 02 20 */	lfs f0, 0x220(r4)
/* 80A234AC  EC 05 00 28 */	fsubs f0, f5, f0
/* 80A234B0  D0 1C 08 7C */	stfs f0, 0x87c(r28)
lbl_80A234B4:
/* 80A234B4  38 1C 08 78 */	addi r0, r28, 0x878
/* 80A234B8  90 1C 0C 20 */	stw r0, 0xc20(r28)
/* 80A234BC  48 00 00 0C */	b lbl_80A234C8
lbl_80A234C0:
/* 80A234C0  38 00 00 00 */	li r0, 0
/* 80A234C4  90 1C 0C 20 */	stw r0, 0xc20(r28)
lbl_80A234C8:
/* 80A234C8  D0 C1 00 08 */	stfs f6, 8(r1)
/* 80A234CC  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 80A234D0  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 80A234D4  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 80A234D8  38 7C 0B F0 */	addi r3, r28, 0xbf0
/* 80A234DC  C0 A4 00 A4 */	lfs f5, 0xa4(r4)
/* 80A234E0  FC C0 28 90 */	fmr f6, f5
/* 80A234E4  FC E0 28 90 */	fmr f7, f5
/* 80A234E8  FD 00 28 90 */	fmr f8, f5
/* 80A234EC  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80A234F0  38 A1 00 24 */	addi r5, r1, 0x24
/* 80A234F4  4B 72 DB C5 */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80A234F8  38 7C 0B F0 */	addi r3, r28, 0xbf0
/* 80A234FC  7F 84 E3 78 */	mr r4, r28
/* 80A23500  38 BF 00 24 */	addi r5, r31, 0x24
/* 80A23504  38 C1 00 18 */	addi r6, r1, 0x18
/* 80A23508  7F C7 F3 78 */	mr r7, r30
/* 80A2350C  7F A8 EB 78 */	mr r8, r29
/* 80A23510  39 20 00 00 */	li r9, 0
/* 80A23514  4B 72 DE 3D */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80A23518  39 61 00 60 */	addi r11, r1, 0x60
/* 80A2351C  4B 93 ED 09 */	bl _restgpr_28
/* 80A23520  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A23524  7C 08 03 A6 */	mtlr r0
/* 80A23528  38 21 00 60 */	addi r1, r1, 0x60
/* 80A2352C  4E 80 00 20 */	blr 
