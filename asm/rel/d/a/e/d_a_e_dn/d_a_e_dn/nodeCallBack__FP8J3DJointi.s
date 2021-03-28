lbl_804E537C:
/* 804E537C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E5380  7C 08 02 A6 */	mflr r0
/* 804E5384  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E5388  39 61 00 20 */	addi r11, r1, 0x20
/* 804E538C  4B E7 CE 48 */	b _savegpr_27
/* 804E5390  2C 04 00 00 */	cmpwi r4, 0
/* 804E5394  40 82 04 88 */	bne lbl_804E581C
/* 804E5398  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 804E539C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 804E53A0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 804E53A4  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 804E53A8  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 804E53AC  28 1C 00 00 */	cmplwi r28, 0
/* 804E53B0  41 82 04 6C */	beq lbl_804E581C
/* 804E53B4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 804E53B8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804E53BC  1F BF 00 30 */	mulli r29, r31, 0x30
/* 804E53C0  7C 60 EA 14 */	add r3, r0, r29
/* 804E53C4  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804E53C8  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804E53CC  80 84 00 00 */	lwz r4, 0(r4)
/* 804E53D0  4B E6 10 E0 */	b PSMTXCopy
/* 804E53D4  2C 1F 00 00 */	cmpwi r31, 0
/* 804E53D8  41 82 02 8C */	beq lbl_804E5664
/* 804E53DC  2C 1F 00 16 */	cmpwi r31, 0x16
/* 804E53E0  40 82 00 44 */	bne lbl_804E5424
/* 804E53E4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E53E8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E53EC  80 63 00 00 */	lwz r3, 0(r3)
/* 804E53F0  A8 9C 08 32 */	lha r4, 0x832(r28)
/* 804E53F4  4B B2 70 40 */	b mDoMtx_YrotM__FPA4_fs
/* 804E53F8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E53FC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E5400  80 63 00 00 */	lwz r3, 0(r3)
/* 804E5404  A8 BC 07 F0 */	lha r5, 0x7f0(r28)
/* 804E5408  A8 9C 07 6E */	lha r4, 0x76e(r28)
/* 804E540C  A8 1C 08 30 */	lha r0, 0x830(r28)
/* 804E5410  7C 04 00 50 */	subf r0, r4, r0
/* 804E5414  7C 05 02 14 */	add r0, r5, r0
/* 804E5418  7C 04 07 34 */	extsh r4, r0
/* 804E541C  4B B2 70 B0 */	b mDoMtx_ZrotM__FPA4_fs
/* 804E5420  48 00 02 44 */	b lbl_804E5664
lbl_804E5424:
/* 804E5424  2C 1F 00 17 */	cmpwi r31, 0x17
/* 804E5428  40 82 00 1C */	bne lbl_804E5444
/* 804E542C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E5430  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E5434  80 63 00 00 */	lwz r3, 0(r3)
/* 804E5438  A8 9C 07 FA */	lha r4, 0x7fa(r28)
/* 804E543C  4B B2 6F F8 */	b mDoMtx_YrotM__FPA4_fs
/* 804E5440  48 00 02 24 */	b lbl_804E5664
lbl_804E5444:
/* 804E5444  2C 1F 00 18 */	cmpwi r31, 0x18
/* 804E5448  40 82 00 1C */	bne lbl_804E5464
/* 804E544C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E5450  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E5454  80 63 00 00 */	lwz r3, 0(r3)
/* 804E5458  A8 9C 07 FC */	lha r4, 0x7fc(r28)
/* 804E545C  4B B2 70 70 */	b mDoMtx_ZrotM__FPA4_fs
/* 804E5460  48 00 02 04 */	b lbl_804E5664
lbl_804E5464:
/* 804E5464  2C 1F 00 1B */	cmpwi r31, 0x1b
/* 804E5468  40 82 00 1C */	bne lbl_804E5484
/* 804E546C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E5470  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E5474  80 63 00 00 */	lwz r3, 0(r3)
/* 804E5478  A8 9C 07 FE */	lha r4, 0x7fe(r28)
/* 804E547C  4B B2 6F B8 */	b mDoMtx_YrotM__FPA4_fs
/* 804E5480  48 00 01 E4 */	b lbl_804E5664
lbl_804E5484:
/* 804E5484  2C 1F 00 1C */	cmpwi r31, 0x1c
/* 804E5488  40 82 00 1C */	bne lbl_804E54A4
/* 804E548C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E5490  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E5494  80 63 00 00 */	lwz r3, 0(r3)
/* 804E5498  A8 9C 08 00 */	lha r4, 0x800(r28)
/* 804E549C  4B B2 70 30 */	b mDoMtx_ZrotM__FPA4_fs
/* 804E54A0  48 00 01 C4 */	b lbl_804E5664
lbl_804E54A4:
/* 804E54A4  2C 1F 00 02 */	cmpwi r31, 2
/* 804E54A8  40 82 00 58 */	bne lbl_804E5500
/* 804E54AC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E54B0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E54B4  80 63 00 00 */	lwz r3, 0(r3)
/* 804E54B8  A8 1C 06 FA */	lha r0, 0x6fa(r28)
/* 804E54BC  7C 00 0E 70 */	srawi r0, r0, 1
/* 804E54C0  7C A0 01 94 */	addze r5, r0
/* 804E54C4  A8 9C 06 F6 */	lha r4, 0x6f6(r28)
/* 804E54C8  A8 1C 07 6A */	lha r0, 0x76a(r28)
/* 804E54CC  7C 04 00 50 */	subf r0, r4, r0
/* 804E54D0  7C 05 02 14 */	add r0, r5, r0
/* 804E54D4  7C 04 07 34 */	extsh r4, r0
/* 804E54D8  4B B2 6F 5C */	b mDoMtx_YrotM__FPA4_fs
/* 804E54DC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E54E0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E54E4  80 63 00 00 */	lwz r3, 0(r3)
/* 804E54E8  A8 9C 07 68 */	lha r4, 0x768(r28)
/* 804E54EC  A8 1C 07 EE */	lha r0, 0x7ee(r28)
/* 804E54F0  7C 04 02 14 */	add r0, r4, r0
/* 804E54F4  7C 04 07 34 */	extsh r4, r0
/* 804E54F8  4B B2 6F D4 */	b mDoMtx_ZrotM__FPA4_fs
/* 804E54FC  48 00 01 68 */	b lbl_804E5664
lbl_804E5500:
/* 804E5500  2C 1F 00 03 */	cmpwi r31, 3
/* 804E5504  41 82 00 0C */	beq lbl_804E5510
/* 804E5508  2C 1F 00 04 */	cmpwi r31, 4
/* 804E550C  40 82 00 58 */	bne lbl_804E5564
lbl_804E5510:
/* 804E5510  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E5514  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E5518  80 63 00 00 */	lwz r3, 0(r3)
/* 804E551C  A8 BC 07 64 */	lha r5, 0x764(r28)
/* 804E5520  A8 9C 06 F6 */	lha r4, 0x6f6(r28)
/* 804E5524  A8 1C 06 FA */	lha r0, 0x6fa(r28)
/* 804E5528  7C 04 00 50 */	subf r0, r4, r0
/* 804E552C  7C 05 02 14 */	add r0, r5, r0
/* 804E5530  7C 04 07 34 */	extsh r4, r0
/* 804E5534  4B B2 6F 00 */	b mDoMtx_YrotM__FPA4_fs
/* 804E5538  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E553C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E5540  80 63 00 00 */	lwz r3, 0(r3)
/* 804E5544  A8 BC 07 EC */	lha r5, 0x7ec(r28)
/* 804E5548  A8 9C 06 F8 */	lha r4, 0x6f8(r28)
/* 804E554C  A8 1C 07 62 */	lha r0, 0x762(r28)
/* 804E5550  7C 04 00 50 */	subf r0, r4, r0
/* 804E5554  7C 05 02 14 */	add r0, r5, r0
/* 804E5558  7C 04 07 34 */	extsh r4, r0
/* 804E555C  4B B2 6F 70 */	b mDoMtx_ZrotM__FPA4_fs
/* 804E5560  48 00 01 04 */	b lbl_804E5664
lbl_804E5564:
/* 804E5564  2C 1F 00 0B */	cmpwi r31, 0xb
/* 804E5568  40 82 00 28 */	bne lbl_804E5590
/* 804E556C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E5570  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E5574  80 63 00 00 */	lwz r3, 0(r3)
/* 804E5578  A8 9C 07 76 */	lha r4, 0x776(r28)
/* 804E557C  A8 1C 07 F2 */	lha r0, 0x7f2(r28)
/* 804E5580  7C 04 02 14 */	add r0, r4, r0
/* 804E5584  7C 04 07 34 */	extsh r4, r0
/* 804E5588  4B B2 6F 44 */	b mDoMtx_ZrotM__FPA4_fs
/* 804E558C  48 00 00 D8 */	b lbl_804E5664
lbl_804E5590:
/* 804E5590  2C 1F 00 0C */	cmpwi r31, 0xc
/* 804E5594  40 82 00 28 */	bne lbl_804E55BC
/* 804E5598  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E559C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E55A0  80 63 00 00 */	lwz r3, 0(r3)
/* 804E55A4  A8 9C 07 7C */	lha r4, 0x77c(r28)
/* 804E55A8  A8 1C 07 F4 */	lha r0, 0x7f4(r28)
/* 804E55AC  7C 04 02 14 */	add r0, r4, r0
/* 804E55B0  7C 04 07 34 */	extsh r4, r0
/* 804E55B4  4B B2 6F 18 */	b mDoMtx_ZrotM__FPA4_fs
/* 804E55B8  48 00 00 AC */	b lbl_804E5664
lbl_804E55BC:
/* 804E55BC  2C 1F 00 11 */	cmpwi r31, 0x11
/* 804E55C0  40 82 00 28 */	bne lbl_804E55E8
/* 804E55C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E55C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E55CC  80 63 00 00 */	lwz r3, 0(r3)
/* 804E55D0  A8 9C 07 82 */	lha r4, 0x782(r28)
/* 804E55D4  A8 1C 07 F6 */	lha r0, 0x7f6(r28)
/* 804E55D8  7C 04 02 14 */	add r0, r4, r0
/* 804E55DC  7C 04 07 34 */	extsh r4, r0
/* 804E55E0  4B B2 6E EC */	b mDoMtx_ZrotM__FPA4_fs
/* 804E55E4  48 00 00 80 */	b lbl_804E5664
lbl_804E55E8:
/* 804E55E8  2C 1F 00 12 */	cmpwi r31, 0x12
/* 804E55EC  40 82 00 28 */	bne lbl_804E5614
/* 804E55F0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E55F4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E55F8  80 63 00 00 */	lwz r3, 0(r3)
/* 804E55FC  A8 9C 07 88 */	lha r4, 0x788(r28)
/* 804E5600  A8 1C 07 F8 */	lha r0, 0x7f8(r28)
/* 804E5604  7C 04 02 14 */	add r0, r4, r0
/* 804E5608  7C 04 07 34 */	extsh r4, r0
/* 804E560C  4B B2 6E C0 */	b mDoMtx_ZrotM__FPA4_fs
/* 804E5610  48 00 00 54 */	b lbl_804E5664
lbl_804E5614:
/* 804E5614  2C 1F 00 1F */	cmpwi r31, 0x1f
/* 804E5618  41 80 00 4C */	blt lbl_804E5664
/* 804E561C  2C 1F 00 22 */	cmpwi r31, 0x22
/* 804E5620  41 81 00 44 */	bgt lbl_804E5664
/* 804E5624  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E5628  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E562C  80 63 00 00 */	lwz r3, 0(r3)
/* 804E5630  1F 7F 00 06 */	mulli r27, r31, 6
/* 804E5634  7C 9C DA 14 */	add r4, r28, r27
/* 804E5638  A8 84 07 56 */	lha r4, 0x756(r4)
/* 804E563C  A8 1C 08 26 */	lha r0, 0x826(r28)
/* 804E5640  7C 04 02 14 */	add r0, r4, r0
/* 804E5644  7C 04 07 34 */	extsh r4, r0
/* 804E5648  4B B2 6D EC */	b mDoMtx_YrotM__FPA4_fs
/* 804E564C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E5650  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E5654  80 63 00 00 */	lwz r3, 0(r3)
/* 804E5658  7C 9C DA 14 */	add r4, r28, r27
/* 804E565C  A8 84 07 54 */	lha r4, 0x754(r4)
/* 804E5660  4B B2 6E 6C */	b mDoMtx_ZrotM__FPA4_fs
lbl_804E5664:
/* 804E5664  A8 9C 08 0A */	lha r4, 0x80a(r28)
/* 804E5668  7C 80 07 35 */	extsh. r0, r4
/* 804E566C  41 82 00 54 */	beq lbl_804E56C0
/* 804E5670  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 804E5674  41 82 00 18 */	beq lbl_804E568C
/* 804E5678  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E567C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E5680  80 63 00 00 */	lwz r3, 0(r3)
/* 804E5684  4B B2 6D B0 */	b mDoMtx_YrotM__FPA4_fs
/* 804E5688  48 00 00 38 */	b lbl_804E56C0
lbl_804E568C:
/* 804E568C  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 804E5690  41 82 00 18 */	beq lbl_804E56A8
/* 804E5694  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E5698  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E569C  80 63 00 00 */	lwz r3, 0(r3)
/* 804E56A0  4B B2 6C FC */	b mDoMtx_XrotM__FPA4_fs
/* 804E56A4  48 00 00 1C */	b lbl_804E56C0
lbl_804E56A8:
/* 804E56A8  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 804E56AC  41 82 00 14 */	beq lbl_804E56C0
/* 804E56B0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E56B4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E56B8  80 63 00 00 */	lwz r3, 0(r3)
/* 804E56BC  4B B2 6E 10 */	b mDoMtx_ZrotM__FPA4_fs
lbl_804E56C0:
/* 804E56C0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E56C4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E56C8  80 63 00 00 */	lwz r3, 0(r3)
/* 804E56CC  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 804E56D0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 804E56D4  7C 80 EA 14 */	add r4, r0, r29
/* 804E56D8  4B E6 0D D8 */	b PSMTXCopy
/* 804E56DC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E56E0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E56E4  80 63 00 00 */	lwz r3, 0(r3)
/* 804E56E8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 804E56EC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 804E56F0  4B E6 0D C0 */	b PSMTXCopy
/* 804E56F4  2C 1F 00 00 */	cmpwi r31, 0
/* 804E56F8  40 82 00 90 */	bne lbl_804E5788
/* 804E56FC  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 804E5700  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804E5704  7C 60 EA 14 */	add r3, r0, r29
/* 804E5708  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804E570C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804E5710  80 84 00 00 */	lwz r4, 0(r4)
/* 804E5714  4B E6 0D 9C */	b PSMTXCopy
/* 804E5718  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E571C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E5720  80 63 00 00 */	lwz r3, 0(r3)
/* 804E5724  38 80 00 00 */	li r4, 0
/* 804E5728  4B B2 6D 0C */	b mDoMtx_YrotM__FPA4_fs
/* 804E572C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E5730  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E5734  80 63 00 00 */	lwz r3, 0(r3)
/* 804E5738  38 80 00 00 */	li r4, 0
/* 804E573C  4B B2 6C 60 */	b mDoMtx_XrotM__FPA4_fs
/* 804E5740  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E5744  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E5748  80 63 00 00 */	lwz r3, 0(r3)
/* 804E574C  38 80 00 00 */	li r4, 0
/* 804E5750  4B B2 6D 7C */	b mDoMtx_ZrotM__FPA4_fs
/* 804E5754  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E5758  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E575C  80 63 00 00 */	lwz r3, 0(r3)
/* 804E5760  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 804E5764  80 04 00 0C */	lwz r0, 0xc(r4)
/* 804E5768  7C 80 EA 14 */	add r4, r0, r29
/* 804E576C  4B E6 0D 44 */	b PSMTXCopy
/* 804E5770  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E5774  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E5778  80 63 00 00 */	lwz r3, 0(r3)
/* 804E577C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 804E5780  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 804E5784  4B E6 0D 2C */	b PSMTXCopy
lbl_804E5788:
/* 804E5788  2C 1F 00 00 */	cmpwi r31, 0
/* 804E578C  40 82 00 90 */	bne lbl_804E581C
/* 804E5790  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 804E5794  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804E5798  7C 60 EA 14 */	add r3, r0, r29
/* 804E579C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804E57A0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804E57A4  80 84 00 00 */	lwz r4, 0(r4)
/* 804E57A8  4B E6 0D 08 */	b PSMTXCopy
/* 804E57AC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E57B0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E57B4  80 63 00 00 */	lwz r3, 0(r3)
/* 804E57B8  38 80 00 00 */	li r4, 0
/* 804E57BC  4B B2 6C 78 */	b mDoMtx_YrotM__FPA4_fs
/* 804E57C0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E57C4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E57C8  80 63 00 00 */	lwz r3, 0(r3)
/* 804E57CC  38 80 00 00 */	li r4, 0
/* 804E57D0  4B B2 6B CC */	b mDoMtx_XrotM__FPA4_fs
/* 804E57D4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E57D8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E57DC  80 63 00 00 */	lwz r3, 0(r3)
/* 804E57E0  38 80 00 00 */	li r4, 0
/* 804E57E4  4B B2 6C E8 */	b mDoMtx_ZrotM__FPA4_fs
/* 804E57E8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E57EC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E57F0  80 63 00 00 */	lwz r3, 0(r3)
/* 804E57F4  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 804E57F8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 804E57FC  7C 80 EA 14 */	add r4, r0, r29
/* 804E5800  4B E6 0C B0 */	b PSMTXCopy
/* 804E5804  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E5808  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E580C  80 63 00 00 */	lwz r3, 0(r3)
/* 804E5810  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 804E5814  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 804E5818  4B E6 0C 98 */	b PSMTXCopy
lbl_804E581C:
/* 804E581C  38 60 00 01 */	li r3, 1
/* 804E5820  39 61 00 20 */	addi r11, r1, 0x20
/* 804E5824  4B E7 C9 FC */	b _restgpr_27
/* 804E5828  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E582C  7C 08 03 A6 */	mtlr r0
/* 804E5830  38 21 00 20 */	addi r1, r1, 0x20
/* 804E5834  4E 80 00 20 */	blr 
