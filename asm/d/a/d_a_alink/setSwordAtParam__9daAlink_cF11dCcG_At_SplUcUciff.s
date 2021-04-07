lbl_800D1688:
/* 800D1688  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800D168C  7C 08 02 A6 */	mflr r0
/* 800D1690  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D1694  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 800D1698  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 800D169C  39 61 00 20 */	addi r11, r1, 0x20
/* 800D16A0  48 29 0B 31 */	bl _savegpr_26
/* 800D16A4  7C 7A 1B 78 */	mr r26, r3
/* 800D16A8  7C 9B 23 78 */	mr r27, r4
/* 800D16AC  7C BC 2B 78 */	mr r28, r5
/* 800D16B0  7C DD 33 78 */	mr r29, r6
/* 800D16B4  7C FE 3B 78 */	mr r30, r7
/* 800D16B8  FF C0 08 90 */	fmr f30, f1
/* 800D16BC  FF E0 10 90 */	fmr f31, f2
/* 800D16C0  3B FA 12 2C */	addi r31, r26, 0x122c
/* 800D16C4  4B FF F8 99 */	bl getSwordAtType__9daAlink_cFv
/* 800D16C8  80 1A 12 84 */	lwz r0, 0x1284(r26)
/* 800D16CC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800D16D0  90 1A 12 84 */	stw r0, 0x1284(r26)
/* 800D16D4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D16D8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D16DC  88 04 00 14 */	lbz r0, 0x14(r4)
/* 800D16E0  28 00 00 3F */	cmplwi r0, 0x3f
/* 800D16E4  40 82 00 24 */	bne lbl_800D1708
/* 800D16E8  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800D16EC  28 00 00 0E */	cmplwi r0, 0xe
/* 800D16F0  41 82 00 14 */	beq lbl_800D1704
/* 800D16F4  28 00 00 01 */	cmplwi r0, 1
/* 800D16F8  41 82 00 0C */	beq lbl_800D1704
/* 800D16FC  28 00 00 10 */	cmplwi r0, 0x10
/* 800D1700  40 82 00 08 */	bne lbl_800D1708
lbl_800D1704:
/* 800D1704  3B A0 00 05 */	li r29, 5
lbl_800D1708:
/* 800D1708  2C 1B 00 00 */	cmpwi r27, 0
/* 800D170C  40 82 00 10 */	bne lbl_800D171C
/* 800D1710  38 00 00 00 */	li r0, 0
/* 800D1714  98 1A 2F D0 */	stb r0, 0x2fd0(r26)
/* 800D1718  48 00 00 0C */	b lbl_800D1724
lbl_800D171C:
/* 800D171C  38 00 00 01 */	li r0, 1
/* 800D1720  98 1A 2F D0 */	stb r0, 0x2fd0(r26)
lbl_800D1724:
/* 800D1724  80 1A 05 7C */	lwz r0, 0x57c(r26)
/* 800D1728  54 00 67 FE */	rlwinm r0, r0, 0xc, 0x1f, 0x1f
/* 800D172C  7C 80 00 D0 */	neg r4, r0
/* 800D1730  38 00 00 04 */	li r0, 4
/* 800D1734  7C 04 20 38 */	and r4, r0, r4
/* 800D1738  38 00 00 03 */	li r0, 3
/* 800D173C  7C 09 03 A6 */	mtctr r0
lbl_800D1740:
/* 800D1740  9B 7F 00 77 */	stb r27, 0x77(r31)
/* 800D1744  9B 9F 00 76 */	stb r28, 0x76(r31)
/* 800D1748  9B DF 00 14 */	stb r30, 0x14(r31)
/* 800D174C  D3 FF 01 40 */	stfs f31, 0x140(r31)
/* 800D1750  9B BF 00 74 */	stb r29, 0x74(r31)
/* 800D1754  98 9F 00 75 */	stb r4, 0x75(r31)
/* 800D1758  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800D175C  3B FF 01 44 */	addi r31, r31, 0x144
/* 800D1760  42 00 FF E0 */	bdnz lbl_800D1740
/* 800D1764  D3 DA 33 D0 */	stfs f30, 0x33d0(r26)
/* 800D1768  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 800D176C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 800D1770  39 61 00 20 */	addi r11, r1, 0x20
/* 800D1774  48 29 0A A9 */	bl _restgpr_26
/* 800D1778  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800D177C  7C 08 03 A6 */	mtlr r0
/* 800D1780  38 21 00 30 */	addi r1, r1, 0x30
/* 800D1784  4E 80 00 20 */	blr 
