lbl_805A06A4:
/* 805A06A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A06A8  7C 08 02 A6 */	mflr r0
/* 805A06AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A06B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A06B4  7C 7F 1B 78 */	mr r31, r3
/* 805A06B8  A8 03 06 20 */	lha r0, 0x620(r3)
/* 805A06BC  2C 00 00 00 */	cmpwi r0, 0
/* 805A06C0  41 82 00 48 */	beq lbl_805A0708
/* 805A06C4  38 00 00 0A */	li r0, 0xa
/* 805A06C8  B0 1F 06 08 */	sth r0, 0x608(r31)
/* 805A06CC  38 7F 06 24 */	addi r3, r31, 0x624
/* 805A06D0  7F E4 FB 78 */	mr r4, r31
/* 805A06D4  38 A0 00 00 */	li r5, 0
/* 805A06D8  38 C0 00 00 */	li r6, 0
/* 805A06DC  4B CA 9B FD */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 805A06E0  2C 03 00 00 */	cmpwi r3, 0
/* 805A06E4  41 82 00 1C */	beq lbl_805A0700
/* 805A06E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A06EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A06F0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805A06F4  4B AA 1D 75 */	bl reset__14dEvt_control_cFv
/* 805A06F8  38 00 00 00 */	li r0, 0
/* 805A06FC  B0 1F 06 20 */	sth r0, 0x620(r31)
lbl_805A0700:
/* 805A0700  38 60 00 01 */	li r3, 1
/* 805A0704  48 00 00 B0 */	b lbl_805A07B4
lbl_805A0708:
/* 805A0708  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A070C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A0710  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805A0714  28 00 00 00 */	cmplwi r0, 0
/* 805A0718  41 82 00 30 */	beq lbl_805A0748
/* 805A071C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 805A0720  28 00 00 01 */	cmplwi r0, 1
/* 805A0724  40 82 00 24 */	bne lbl_805A0748
/* 805A0728  38 7F 06 24 */	addi r3, r31, 0x624
/* 805A072C  7F E4 FB 78 */	mr r4, r31
/* 805A0730  A8 BF 06 22 */	lha r5, 0x622(r31)
/* 805A0734  38 C0 00 00 */	li r6, 0
/* 805A0738  38 E0 00 00 */	li r7, 0
/* 805A073C  4B CA 98 55 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 805A0740  38 00 00 01 */	li r0, 1
/* 805A0744  B0 1F 06 20 */	sth r0, 0x620(r31)
lbl_805A0748:
/* 805A0748  88 1F 06 1E */	lbz r0, 0x61e(r31)
/* 805A074C  2C 00 00 02 */	cmpwi r0, 2
/* 805A0750  40 82 00 44 */	bne lbl_805A0794
/* 805A0754  A8 1F 06 22 */	lha r0, 0x622(r31)
/* 805A0758  2C 00 FF FF */	cmpwi r0, -1
/* 805A075C  41 82 00 38 */	beq lbl_805A0794
/* 805A0760  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A0764  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A0768  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 805A076C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805A0770  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805A0774  41 82 00 20 */	beq lbl_805A0794
/* 805A0778  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 805A077C  60 00 00 0A */	ori r0, r0, 0xa
/* 805A0780  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 805A0784  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 805A0788  60 00 00 01 */	ori r0, r0, 1
/* 805A078C  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 805A0790  48 00 00 20 */	b lbl_805A07B0
lbl_805A0794:
/* 805A0794  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 805A0798  54 00 00 3E */	slwi r0, r0, 0
/* 805A079C  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 805A07A0  80 7F 05 5C */	lwz r3, 0x55c(r31)
/* 805A07A4  38 00 FF F5 */	li r0, -11
/* 805A07A8  7C 60 00 38 */	and r0, r3, r0
/* 805A07AC  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_805A07B0:
/* 805A07B0  38 60 00 00 */	li r3, 0
lbl_805A07B4:
/* 805A07B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A07B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A07BC  7C 08 03 A6 */	mtlr r0
/* 805A07C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A07C4  4E 80 00 20 */	blr 
