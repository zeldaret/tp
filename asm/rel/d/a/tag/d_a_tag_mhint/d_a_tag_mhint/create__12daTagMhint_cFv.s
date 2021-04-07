lbl_805A56B8:
/* 805A56B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A56BC  7C 08 02 A6 */	mflr r0
/* 805A56C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A56C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805A56C8  4B DB CB 15 */	bl _savegpr_29
/* 805A56CC  7C 7E 1B 78 */	mr r30, r3
/* 805A56D0  3C 80 80 5A */	lis r4, lit_3741@ha /* 0x805A6034@ha */
/* 805A56D4  3B E4 60 34 */	addi r31, r4, lit_3741@l /* 0x805A6034@l */
/* 805A56D8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805A56DC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805A56E0  40 82 00 28 */	bne lbl_805A5708
/* 805A56E4  7F C0 F3 79 */	or. r0, r30, r30
/* 805A56E8  41 82 00 14 */	beq lbl_805A56FC
/* 805A56EC  7C 1D 03 78 */	mr r29, r0
/* 805A56F0  4B A7 34 75 */	bl __ct__10fopAc_ac_cFv
/* 805A56F4  38 7D 05 80 */	addi r3, r29, 0x580
/* 805A56F8  4B CA 48 09 */	bl __ct__10dMsgFlow_cFv
lbl_805A56FC:
/* 805A56FC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 805A5700  60 00 00 08 */	ori r0, r0, 8
/* 805A5704  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_805A5708:
/* 805A5708  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805A570C  54 00 05 BE */	clrlwi r0, r0, 0x16
/* 805A5710  B0 1E 05 74 */	sth r0, 0x574(r30)
/* 805A5714  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805A5718  54 00 B5 BE */	rlwinm r0, r0, 0x16, 0x16, 0x1f
/* 805A571C  B0 1E 05 7C */	sth r0, 0x57c(r30)
/* 805A5720  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805A5724  54 00 65 FE */	rlwinm r0, r0, 0xc, 0x17, 0x1f
/* 805A5728  B0 1E 05 78 */	sth r0, 0x578(r30)
/* 805A572C  A0 1E 05 78 */	lhz r0, 0x578(r30)
/* 805A5730  B0 1E 05 7A */	sth r0, 0x57a(r30)
/* 805A5734  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805A5738  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 805A573C  41 82 00 10 */	beq lbl_805A574C
/* 805A5740  38 00 00 01 */	li r0, 1
/* 805A5744  98 1E 05 6A */	stb r0, 0x56a(r30)
/* 805A5748  48 00 00 0C */	b lbl_805A5754
lbl_805A574C:
/* 805A574C  38 00 00 00 */	li r0, 0
/* 805A5750  98 1E 05 6A */	stb r0, 0x56a(r30)
lbl_805A5754:
/* 805A5754  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805A5758  54 00 1F FE */	rlwinm r0, r0, 3, 0x1f, 0x1f
/* 805A575C  98 1E 05 6B */	stb r0, 0x56b(r30)
/* 805A5760  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A5764  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A5768  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 805A576C  28 04 00 00 */	cmplwi r4, 0
/* 805A5770  41 82 00 2C */	beq lbl_805A579C
/* 805A5774  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 805A5778  41 82 00 0C */	beq lbl_805A5784
/* 805A577C  80 04 00 04 */	lwz r0, 4(r4)
/* 805A5780  48 00 00 08 */	b lbl_805A5788
lbl_805A5784:
/* 805A5784  38 00 FF FF */	li r0, -1
lbl_805A5788:
/* 805A5788  7C 03 00 50 */	subf r0, r3, r0
/* 805A578C  7C 00 00 34 */	cntlzw r0, r0
/* 805A5790  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 805A5794  98 1E 05 72 */	stb r0, 0x572(r30)
/* 805A5798  48 00 00 0C */	b lbl_805A57A4
lbl_805A579C:
/* 805A579C  38 00 00 00 */	li r0, 0
/* 805A57A0  98 1E 05 72 */	stb r0, 0x572(r30)
lbl_805A57A4:
/* 805A57A4  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 805A57A8  98 1E 05 68 */	stb r0, 0x568(r30)
/* 805A57AC  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 805A57B0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 805A57B4  98 1E 05 69 */	stb r0, 0x569(r30)
/* 805A57B8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 805A57BC  98 1E 05 6D */	stb r0, 0x56d(r30)
/* 805A57C0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 805A57C4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 805A57C8  98 1E 05 6C */	stb r0, 0x56c(r30)
/* 805A57CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A57D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A57D4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 805A57D8  7F C4 F3 78 */	mr r4, r30
/* 805A57DC  88 BE 05 6C */	lbz r5, 0x56c(r30)
/* 805A57E0  4B AA 1E B9 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 805A57E4  B0 7E 05 76 */	sth r3, 0x576(r30)
/* 805A57E8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805A57EC  54 00 17 FF */	rlwinm. r0, r0, 2, 0x1f, 0x1f
/* 805A57F0  41 82 00 20 */	beq lbl_805A5810
/* 805A57F4  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 805A57F8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805A57FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A5800  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 805A5804  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 805A5808  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A580C  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
lbl_805A5810:
/* 805A5810  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 805A5814  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805A5818  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A581C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A5820  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 805A5824  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 805A5828  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805A582C  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 805A5830  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A5834  EC 02 00 2A */	fadds f0, f2, f0
/* 805A5838  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 805A583C  8B FE 05 6D */	lbz r31, 0x56d(r30)
/* 805A5840  28 1F 00 FF */	cmplwi r31, 0xff
/* 805A5844  41 82 00 68 */	beq lbl_805A58AC
/* 805A5848  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805A584C  7C 1D 07 74 */	extsb r29, r0
/* 805A5850  7F A3 EB 78 */	mr r3, r29
/* 805A5854  4B A8 7A 09 */	bl dComIfGp_getRoomCamera__Fi
/* 805A5858  80 63 00 04 */	lwz r3, 4(r3)
/* 805A585C  1C 1F 00 18 */	mulli r0, r31, 0x18
/* 805A5860  7C 63 02 14 */	add r3, r3, r0
/* 805A5864  88 03 00 10 */	lbz r0, 0x10(r3)
/* 805A5868  1F E0 00 14 */	mulli r31, r0, 0x14
/* 805A586C  7F A3 EB 78 */	mr r3, r29
/* 805A5870  4B A8 7A 3D */	bl dComIfGp_getRoomArrow__Fi
/* 805A5874  80 03 00 04 */	lwz r0, 4(r3)
/* 805A5878  7C 60 FA 14 */	add r3, r0, r31
/* 805A587C  C0 43 00 08 */	lfs f2, 8(r3)
/* 805A5880  C0 23 00 04 */	lfs f1, 4(r3)
/* 805A5884  C0 03 00 00 */	lfs f0, 0(r3)
/* 805A5888  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 805A588C  D0 3E 05 3C */	stfs f1, 0x53c(r30)
/* 805A5890  D0 5E 05 40 */	stfs f2, 0x540(r30)
/* 805A5894  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 805A5898  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 805A589C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 805A58A0  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 805A58A4  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 805A58A8  D0 1E 05 58 */	stfs f0, 0x558(r30)
lbl_805A58AC:
/* 805A58AC  38 60 00 04 */	li r3, 4
/* 805A58B0  39 61 00 20 */	addi r11, r1, 0x20
/* 805A58B4  4B DB C9 75 */	bl _restgpr_29
/* 805A58B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A58BC  7C 08 03 A6 */	mtlr r0
/* 805A58C0  38 21 00 20 */	addi r1, r1, 0x20
/* 805A58C4  4E 80 00 20 */	blr 
