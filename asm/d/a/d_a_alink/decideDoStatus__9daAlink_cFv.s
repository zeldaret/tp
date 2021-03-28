lbl_800B5284:
/* 800B5284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B5288  7C 08 02 A6 */	mflr r0
/* 800B528C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B5290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B5294  93 C1 00 08 */	stw r30, 8(r1)
/* 800B5298  7C 7E 1B 78 */	mr r30, r3
/* 800B529C  38 60 00 00 */	li r3, 0
/* 800B52A0  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800B52A4  28 00 00 62 */	cmplwi r0, 0x62
/* 800B52A8  41 82 00 10 */	beq lbl_800B52B8
/* 800B52AC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800B52B0  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800B52B4  40 82 00 08 */	bne lbl_800B52BC
lbl_800B52B8:
/* 800B52B8  38 60 00 01 */	li r3, 1
lbl_800B52BC:
/* 800B52BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B52C0  40 82 06 14 */	bne lbl_800B58D4
/* 800B52C4  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800B52C8  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 800B52CC  41 82 00 10 */	beq lbl_800B52DC
/* 800B52D0  7F C3 F3 78 */	mr r3, r30
/* 800B52D4  38 80 00 62 */	li r4, 0x62
/* 800B52D8  4B FF DF 91 */	bl setDoStatusEmphasys__9daAlink_cFUc
lbl_800B52DC:
/* 800B52DC  80 1E 27 EC */	lwz r0, 0x27ec(r30)
/* 800B52E0  28 00 00 00 */	cmplwi r0, 0
/* 800B52E4  40 82 00 60 */	bne lbl_800B5344
/* 800B52E8  80 1E 27 E4 */	lwz r0, 0x27e4(r30)
/* 800B52EC  28 00 00 00 */	cmplwi r0, 0
/* 800B52F0  40 82 00 54 */	bne lbl_800B5344
/* 800B52F4  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800B52F8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800B52FC  41 82 00 48 */	beq lbl_800B5344
/* 800B5300  7F C3 F3 78 */	mr r3, r30
/* 800B5304  38 80 00 15 */	li r4, 0x15
/* 800B5308  38 A0 00 02 */	li r5, 2
/* 800B530C  48 03 2B C5 */	bl setWallGrabStatus__9daAlink_cFUcUc
/* 800B5310  88 1E 2F 91 */	lbz r0, 0x2f91(r30)
/* 800B5314  28 00 00 07 */	cmplwi r0, 7
/* 800B5318  41 82 00 1C */	beq lbl_800B5334
/* 800B531C  28 00 00 08 */	cmplwi r0, 8
/* 800B5320  41 82 00 14 */	beq lbl_800B5334
/* 800B5324  28 00 00 06 */	cmplwi r0, 6
/* 800B5328  41 82 00 0C */	beq lbl_800B5334
/* 800B532C  28 00 00 09 */	cmplwi r0, 9
/* 800B5330  40 82 05 A4 */	bne lbl_800B58D4
lbl_800B5334:
/* 800B5334  7F C3 F3 78 */	mr r3, r30
/* 800B5338  38 80 00 20 */	li r4, 0x20
/* 800B533C  4B FF DF 15 */	bl setDoStatus__9daAlink_cFUc
/* 800B5340  48 00 05 94 */	b lbl_800B58D4
lbl_800B5344:
/* 800B5344  7F C3 F3 78 */	mr r3, r30
/* 800B5348  48 03 26 B1 */	bl searchFmChainPos__9daAlink_cFv
/* 800B534C  2C 03 00 00 */	cmpwi r3, 0
/* 800B5350  41 82 00 18 */	beq lbl_800B5368
/* 800B5354  7F C3 F3 78 */	mr r3, r30
/* 800B5358  38 80 00 96 */	li r4, 0x96
/* 800B535C  38 A0 00 02 */	li r5, 2
/* 800B5360  48 03 2B 71 */	bl setWallGrabStatus__9daAlink_cFUcUc
/* 800B5364  48 00 05 68 */	b lbl_800B58CC
lbl_800B5368:
/* 800B5368  80 9E 27 E4 */	lwz r4, 0x27e4(r30)
/* 800B536C  28 04 00 00 */	cmplwi r4, 0
/* 800B5370  41 82 05 5C */	beq lbl_800B58CC
/* 800B5374  80 7E 27 F4 */	lwz r3, 0x27f4(r30)
/* 800B5378  AB E3 00 08 */	lha r31, 8(r3)
/* 800B537C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800B5380  28 00 00 05 */	cmplwi r0, 5
/* 800B5384  41 82 00 30 */	beq lbl_800B53B4
/* 800B5388  28 00 00 06 */	cmplwi r0, 6
/* 800B538C  40 82 00 38 */	bne lbl_800B53C4
/* 800B5390  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800B5394  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B5398  41 82 00 1C */	beq lbl_800B53B4
/* 800B539C  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 800B53A0  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800B53A4  7D 89 03 A6 */	mtctr r12
/* 800B53A8  4E 80 04 21 */	bctrl 
/* 800B53AC  2C 03 00 00 */	cmpwi r3, 0
/* 800B53B0  41 82 00 14 */	beq lbl_800B53C4
lbl_800B53B4:
/* 800B53B4  7F C3 F3 78 */	mr r3, r30
/* 800B53B8  38 80 00 06 */	li r4, 6
/* 800B53BC  4B FF DE 95 */	bl setDoStatus__9daAlink_cFUc
/* 800B53C0  48 00 05 0C */	b lbl_800B58CC
lbl_800B53C4:
/* 800B53C4  80 7E 27 E4 */	lwz r3, 0x27e4(r30)
/* 800B53C8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800B53CC  28 03 00 07 */	cmplwi r3, 7
/* 800B53D0  40 82 00 1C */	bne lbl_800B53EC
/* 800B53D4  2C 1F 02 AF */	cmpwi r31, 0x2af
/* 800B53D8  40 82 00 14 */	bne lbl_800B53EC
/* 800B53DC  7F C3 F3 78 */	mr r3, r30
/* 800B53E0  38 80 00 89 */	li r4, 0x89
/* 800B53E4  4B FF DE 6D */	bl setDoStatus__9daAlink_cFUc
/* 800B53E8  48 00 04 E4 */	b lbl_800B58CC
lbl_800B53EC:
/* 800B53EC  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800B53F0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B53F4  41 82 02 98 */	beq lbl_800B568C
/* 800B53F8  28 03 00 04 */	cmplwi r3, 4
/* 800B53FC  40 82 00 C0 */	bne lbl_800B54BC
/* 800B5400  80 9E 27 F4 */	lwz r4, 0x27f4(r30)
/* 800B5404  80 04 04 9C */	lwz r0, 0x49c(r4)
/* 800B5408  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800B540C  40 82 00 B0 */	bne lbl_800B54BC
/* 800B5410  88 04 04 9A */	lbz r0, 0x49a(r4)
/* 800B5414  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B5418  41 82 00 A4 */	beq lbl_800B54BC
/* 800B541C  2C 1F 02 16 */	cmpwi r31, 0x216
/* 800B5420  40 82 00 14 */	bne lbl_800B5434
/* 800B5424  7F C3 F3 78 */	mr r3, r30
/* 800B5428  38 80 00 91 */	li r4, 0x91
/* 800B542C  4B FF DE 25 */	bl setDoStatus__9daAlink_cFUc
/* 800B5430  48 00 04 9C */	b lbl_800B58CC
lbl_800B5434:
/* 800B5434  2C 1F 01 4D */	cmpwi r31, 0x14d
/* 800B5438  40 82 00 14 */	bne lbl_800B544C
/* 800B543C  7F C3 F3 78 */	mr r3, r30
/* 800B5440  38 80 00 05 */	li r4, 5
/* 800B5444  4B FF DE 25 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B5448  48 00 04 84 */	b lbl_800B58CC
lbl_800B544C:
/* 800B544C  2C 1F 02 FD */	cmpwi r31, 0x2fd
/* 800B5450  40 82 00 14 */	bne lbl_800B5464
/* 800B5454  7F C3 F3 78 */	mr r3, r30
/* 800B5458  38 80 00 47 */	li r4, 0x47
/* 800B545C  4B FF DD F5 */	bl setDoStatus__9daAlink_cFUc
/* 800B5460  48 00 04 6C */	b lbl_800B58CC
lbl_800B5464:
/* 800B5464  2C 1F 02 1F */	cmpwi r31, 0x21f
/* 800B5468  41 82 00 14 */	beq lbl_800B547C
/* 800B546C  2C 1F 01 AC */	cmpwi r31, 0x1ac
/* 800B5470  41 82 00 0C */	beq lbl_800B547C
/* 800B5474  2C 1F 02 19 */	cmpwi r31, 0x219
/* 800B5478  40 82 00 14 */	bne lbl_800B548C
lbl_800B547C:
/* 800B547C  7F C3 F3 78 */	mr r3, r30
/* 800B5480  38 80 00 39 */	li r4, 0x39
/* 800B5484  4B FF DD E5 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B5488  48 00 04 44 */	b lbl_800B58CC
lbl_800B548C:
/* 800B548C  7F C3 F3 78 */	mr r3, r30
/* 800B5490  48 03 2E 21 */	bl checkGoatCatchActor__9daAlink_cFP10fopAc_ac_c
/* 800B5494  2C 03 00 00 */	cmpwi r3, 0
/* 800B5498  40 82 04 34 */	bne lbl_800B58CC
/* 800B549C  7F C3 F3 78 */	mr r3, r30
/* 800B54A0  48 02 E4 4D */	bl checkGrabLineCheck__9daAlink_cFv
/* 800B54A4  2C 03 00 00 */	cmpwi r3, 0
/* 800B54A8  40 82 04 24 */	bne lbl_800B58CC
/* 800B54AC  7F C3 F3 78 */	mr r3, r30
/* 800B54B0  38 80 00 0C */	li r4, 0xc
/* 800B54B4  4B FF DD B5 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B54B8  48 00 04 14 */	b lbl_800B58CC
lbl_800B54BC:
/* 800B54BC  80 7E 27 EC */	lwz r3, 0x27ec(r30)
/* 800B54C0  28 03 00 00 */	cmplwi r3, 0
/* 800B54C4  41 82 00 5C */	beq lbl_800B5520
/* 800B54C8  A8 03 00 08 */	lha r0, 8(r3)
/* 800B54CC  2C 00 02 16 */	cmpwi r0, 0x216
/* 800B54D0  40 82 00 50 */	bne lbl_800B5520
/* 800B54D4  80 7E 27 E0 */	lwz r3, 0x27e0(r30)
/* 800B54D8  4B FB B3 A9 */	bl getActionBtnB__12dAttention_cFv
/* 800B54DC  28 03 00 00 */	cmplwi r3, 0
/* 800B54E0  41 82 00 40 */	beq lbl_800B5520
/* 800B54E4  80 7E 27 E0 */	lwz r3, 0x27e0(r30)
/* 800B54E8  4B FB B3 99 */	bl getActionBtnB__12dAttention_cFv
/* 800B54EC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800B54F0  28 00 00 04 */	cmplwi r0, 4
/* 800B54F4  40 82 00 2C */	bne lbl_800B5520
/* 800B54F8  80 7E 27 E0 */	lwz r3, 0x27e0(r30)
/* 800B54FC  4B FB B3 85 */	bl getActionBtnB__12dAttention_cFv
/* 800B5500  4B FB E3 65 */	bl getActor__10dAttList_cFv
/* 800B5504  80 1E 27 EC */	lwz r0, 0x27ec(r30)
/* 800B5508  7C 03 00 40 */	cmplw r3, r0
/* 800B550C  40 82 00 14 */	bne lbl_800B5520
/* 800B5510  7F C3 F3 78 */	mr r3, r30
/* 800B5514  38 80 00 91 */	li r4, 0x91
/* 800B5518  4B FF DD 39 */	bl setDoStatus__9daAlink_cFUc
/* 800B551C  48 00 03 B0 */	b lbl_800B58CC
lbl_800B5520:
/* 800B5520  80 7E 27 EC */	lwz r3, 0x27ec(r30)
/* 800B5524  28 03 00 00 */	cmplwi r3, 0
/* 800B5528  41 82 00 74 */	beq lbl_800B559C
/* 800B552C  A8 03 00 08 */	lha r0, 8(r3)
/* 800B5530  2C 00 01 F4 */	cmpwi r0, 0x1f4
/* 800B5534  40 82 00 68 */	bne lbl_800B559C
/* 800B5538  80 7E 27 E0 */	lwz r3, 0x27e0(r30)
/* 800B553C  4B FB B3 45 */	bl getActionBtnB__12dAttention_cFv
/* 800B5540  28 03 00 00 */	cmplwi r3, 0
/* 800B5544  41 82 00 58 */	beq lbl_800B559C
/* 800B5548  80 7E 27 E0 */	lwz r3, 0x27e0(r30)
/* 800B554C  4B FB B3 35 */	bl getActionBtnB__12dAttention_cFv
/* 800B5550  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800B5554  28 00 00 07 */	cmplwi r0, 7
/* 800B5558  40 82 00 44 */	bne lbl_800B559C
/* 800B555C  80 7E 27 E0 */	lwz r3, 0x27e0(r30)
/* 800B5560  4B FB B3 21 */	bl getActionBtnB__12dAttention_cFv
/* 800B5564  4B FB E3 01 */	bl getActor__10dAttList_cFv
/* 800B5568  80 1E 27 EC */	lwz r0, 0x27ec(r30)
/* 800B556C  7C 03 00 40 */	cmplw r3, r0
/* 800B5570  40 82 00 2C */	bne lbl_800B559C
/* 800B5574  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 800B5578  64 00 00 10 */	oris r0, r0, 0x10
/* 800B557C  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 800B5580  A8 1E 30 AC */	lha r0, 0x30ac(r30)
/* 800B5584  2C 00 00 00 */	cmpwi r0, 0
/* 800B5588  41 82 03 44 */	beq lbl_800B58CC
/* 800B558C  7F C3 F3 78 */	mr r3, r30
/* 800B5590  38 80 00 02 */	li r4, 2
/* 800B5594  48 07 27 BD */	bl setWolfDigStatus__9daAlink_cFUc
/* 800B5598  48 00 03 34 */	b lbl_800B58CC
lbl_800B559C:
/* 800B559C  80 7E 27 E4 */	lwz r3, 0x27e4(r30)
/* 800B55A0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800B55A4  28 00 00 07 */	cmplwi r0, 7
/* 800B55A8  40 82 00 A8 */	bne lbl_800B5650
/* 800B55AC  80 1E 27 F4 */	lwz r0, 0x27f4(r30)
/* 800B55B0  28 00 00 00 */	cmplwi r0, 0
/* 800B55B4  41 82 00 9C */	beq lbl_800B5650
/* 800B55B8  38 1F FF AE */	addi r0, r31, -82
/* 800B55BC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800B55C0  28 00 00 01 */	cmplwi r0, 1
/* 800B55C4  40 81 00 1C */	ble lbl_800B55E0
/* 800B55C8  2C 1F 00 90 */	cmpwi r31, 0x90
/* 800B55CC  41 82 00 14 */	beq lbl_800B55E0
/* 800B55D0  2C 1F 00 A9 */	cmpwi r31, 0xa9
/* 800B55D4  41 82 00 0C */	beq lbl_800B55E0
/* 800B55D8  2C 1F 01 F4 */	cmpwi r31, 0x1f4
/* 800B55DC  40 82 00 2C */	bne lbl_800B5608
lbl_800B55E0:
/* 800B55E0  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 800B55E4  64 00 00 10 */	oris r0, r0, 0x10
/* 800B55E8  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 800B55EC  A8 1E 30 AC */	lha r0, 0x30ac(r30)
/* 800B55F0  2C 00 00 00 */	cmpwi r0, 0
/* 800B55F4  41 82 02 D8 */	beq lbl_800B58CC
/* 800B55F8  7F C3 F3 78 */	mr r3, r30
/* 800B55FC  38 80 00 02 */	li r4, 2
/* 800B5600  48 07 27 51 */	bl setWolfDigStatus__9daAlink_cFUc
/* 800B5604  48 00 02 C8 */	b lbl_800B58CC
lbl_800B5608:
/* 800B5608  2C 1F 02 D4 */	cmpwi r31, 0x2d4
/* 800B560C  41 82 00 1C */	beq lbl_800B5628
/* 800B5610  2C 1F 01 8A */	cmpwi r31, 0x18a
/* 800B5614  41 82 00 14 */	beq lbl_800B5628
/* 800B5618  2C 1F 01 8D */	cmpwi r31, 0x18d
/* 800B561C  41 82 00 0C */	beq lbl_800B5628
/* 800B5620  2C 1F 01 8B */	cmpwi r31, 0x18b
/* 800B5624  40 82 00 14 */	bne lbl_800B5638
lbl_800B5628:
/* 800B5628  7F C3 F3 78 */	mr r3, r30
/* 800B562C  38 80 00 05 */	li r4, 5
/* 800B5630  4B FF DC 39 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B5634  48 00 02 98 */	b lbl_800B58CC
lbl_800B5638:
/* 800B5638  2C 1F 02 AD */	cmpwi r31, 0x2ad
/* 800B563C  40 82 02 90 */	bne lbl_800B58CC
/* 800B5640  7F C3 F3 78 */	mr r3, r30
/* 800B5644  38 80 00 45 */	li r4, 0x45
/* 800B5648  4B FF DC 21 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B564C  48 00 02 80 */	b lbl_800B58CC
lbl_800B5650:
/* 800B5650  80 7E 27 EC */	lwz r3, 0x27ec(r30)
/* 800B5654  28 03 00 00 */	cmplwi r3, 0
/* 800B5658  41 82 00 28 */	beq lbl_800B5680
/* 800B565C  80 1E 27 F4 */	lwz r0, 0x27f4(r30)
/* 800B5660  7C 00 18 40 */	cmplw r0, r3
/* 800B5664  40 82 00 1C */	bne lbl_800B5680
/* 800B5668  2C 1F 01 59 */	cmpwi r31, 0x159
/* 800B566C  40 82 00 14 */	bne lbl_800B5680
/* 800B5670  7F C3 F3 78 */	mr r3, r30
/* 800B5674  38 80 00 7B */	li r4, 0x7b
/* 800B5678  4B FF DB F1 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B567C  48 00 02 50 */	b lbl_800B58CC
lbl_800B5680:
/* 800B5680  7F C3 F3 78 */	mr r3, r30
/* 800B5684  4B FF F3 85 */	bl setTalkStatus__9daAlink_cFv
/* 800B5688  48 00 02 44 */	b lbl_800B58CC
lbl_800B568C:
/* 800B568C  28 03 00 07 */	cmplwi r3, 7
/* 800B5690  40 82 00 E4 */	bne lbl_800B5774
/* 800B5694  7F C3 F3 78 */	mr r3, r30
/* 800B5698  48 00 5D 71 */	bl checkMagicArmorHeavy__9daAlink_cCFv
/* 800B569C  2C 03 00 00 */	cmpwi r3, 0
/* 800B56A0  40 82 00 24 */	bne lbl_800B56C4
/* 800B56A4  2C 1F 00 EE */	cmpwi r31, 0xee
/* 800B56A8  41 82 00 0C */	beq lbl_800B56B4
/* 800B56AC  2C 1F 00 EF */	cmpwi r31, 0xef
/* 800B56B0  40 82 00 14 */	bne lbl_800B56C4
lbl_800B56B4:
/* 800B56B4  7F C3 F3 78 */	mr r3, r30
/* 800B56B8  48 03 72 41 */	bl checkReinRideBgCheck__9daAlink_cFv
/* 800B56BC  2C 03 00 00 */	cmpwi r3, 0
/* 800B56C0  40 82 00 14 */	bne lbl_800B56D4
lbl_800B56C4:
/* 800B56C4  2C 1F 00 ED */	cmpwi r31, 0xed
/* 800B56C8  41 82 00 0C */	beq lbl_800B56D4
/* 800B56CC  2C 1F 01 87 */	cmpwi r31, 0x187
/* 800B56D0  40 82 00 14 */	bne lbl_800B56E4
lbl_800B56D4:
/* 800B56D4  7F C3 F3 78 */	mr r3, r30
/* 800B56D8  38 80 00 17 */	li r4, 0x17
/* 800B56DC  4B FF DB 75 */	bl setDoStatus__9daAlink_cFUc
/* 800B56E0  48 00 01 EC */	b lbl_800B58CC
lbl_800B56E4:
/* 800B56E4  2C 1F 01 06 */	cmpwi r31, 0x106
/* 800B56E8  40 82 00 14 */	bne lbl_800B56FC
/* 800B56EC  7F C3 F3 78 */	mr r3, r30
/* 800B56F0  38 80 00 38 */	li r4, 0x38
/* 800B56F4  4B FF DB 5D */	bl setDoStatus__9daAlink_cFUc
/* 800B56F8  48 00 01 D4 */	b lbl_800B58CC
lbl_800B56FC:
/* 800B56FC  2C 1F 00 CC */	cmpwi r31, 0xcc
/* 800B5700  40 82 00 14 */	bne lbl_800B5714
/* 800B5704  7F C3 F3 78 */	mr r3, r30
/* 800B5708  38 80 00 99 */	li r4, 0x99
/* 800B570C  4B FF DB 5D */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B5710  48 00 01 BC */	b lbl_800B58CC
lbl_800B5714:
/* 800B5714  2C 1F 02 C9 */	cmpwi r31, 0x2c9
/* 800B5718  41 82 00 30 */	beq lbl_800B5748
/* 800B571C  2C 1F 02 EB */	cmpwi r31, 0x2eb
/* 800B5720  40 82 01 AC */	bne lbl_800B58CC
/* 800B5724  80 7E 27 F4 */	lwz r3, 0x27f4(r30)
/* 800B5728  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 800B572C  54 03 46 3E */	srwi r3, r0, 0x18
/* 800B5730  38 03 FF 01 */	addi r0, r3, -255
/* 800B5734  30 00 FF FF */	addic r0, r0, -1
/* 800B5738  7C 00 01 10 */	subfe r0, r0, r0
/* 800B573C  7C 60 00 78 */	andc r0, r3, r0
/* 800B5740  2C 00 00 03 */	cmpwi r0, 3
/* 800B5744  40 82 01 88 */	bne lbl_800B58CC
lbl_800B5748:
/* 800B5748  7F C3 F3 78 */	mr r3, r30
/* 800B574C  48 00 3B F5 */	bl checkEquipAnime__9daAlink_cCFv
/* 800B5750  2C 03 00 00 */	cmpwi r3, 0
/* 800B5754  40 82 01 78 */	bne lbl_800B58CC
/* 800B5758  48 0A 9C 41 */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 800B575C  2C 03 00 00 */	cmpwi r3, 0
/* 800B5760  41 82 01 6C */	beq lbl_800B58CC
/* 800B5764  7F C3 F3 78 */	mr r3, r30
/* 800B5768  38 80 00 63 */	li r4, 0x63
/* 800B576C  4B FF DA E5 */	bl setDoStatus__9daAlink_cFUc
/* 800B5770  48 00 01 5C */	b lbl_800B58CC
lbl_800B5774:
/* 800B5774  80 9E 27 EC */	lwz r4, 0x27ec(r30)
/* 800B5778  28 04 00 00 */	cmplwi r4, 0
/* 800B577C  41 82 00 60 */	beq lbl_800B57DC
/* 800B5780  7F C3 F3 78 */	mr r3, r30
/* 800B5784  48 03 2B 2D */	bl checkGoatCatchActor__9daAlink_cFP10fopAc_ac_c
/* 800B5788  2C 03 00 00 */	cmpwi r3, 0
/* 800B578C  41 82 00 50 */	beq lbl_800B57DC
/* 800B5790  80 7E 27 E0 */	lwz r3, 0x27e0(r30)
/* 800B5794  4B FB B0 ED */	bl getActionBtnB__12dAttention_cFv
/* 800B5798  28 03 00 00 */	cmplwi r3, 0
/* 800B579C  41 82 00 40 */	beq lbl_800B57DC
/* 800B57A0  80 7E 27 E0 */	lwz r3, 0x27e0(r30)
/* 800B57A4  4B FB B0 DD */	bl getActionBtnB__12dAttention_cFv
/* 800B57A8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800B57AC  28 00 00 04 */	cmplwi r0, 4
/* 800B57B0  40 82 00 2C */	bne lbl_800B57DC
/* 800B57B4  80 7E 27 E0 */	lwz r3, 0x27e0(r30)
/* 800B57B8  4B FB B0 C9 */	bl getActionBtnB__12dAttention_cFv
/* 800B57BC  4B FB E0 A9 */	bl getActor__10dAttList_cFv
/* 800B57C0  80 1E 27 EC */	lwz r0, 0x27ec(r30)
/* 800B57C4  7C 03 00 40 */	cmplw r3, r0
/* 800B57C8  40 82 00 14 */	bne lbl_800B57DC
/* 800B57CC  7F C3 F3 78 */	mr r3, r30
/* 800B57D0  38 80 00 91 */	li r4, 0x91
/* 800B57D4  4B FF DA 7D */	bl setDoStatus__9daAlink_cFUc
/* 800B57D8  48 00 00 F4 */	b lbl_800B58CC
lbl_800B57DC:
/* 800B57DC  80 7E 27 E4 */	lwz r3, 0x27e4(r30)
/* 800B57E0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800B57E4  28 00 00 04 */	cmplwi r0, 4
/* 800B57E8  40 82 00 DC */	bne lbl_800B58C4
/* 800B57EC  80 9E 27 F4 */	lwz r4, 0x27f4(r30)
/* 800B57F0  80 04 04 9C */	lwz r0, 0x49c(r4)
/* 800B57F4  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800B57F8  40 82 00 D4 */	bne lbl_800B58CC
/* 800B57FC  7F C3 F3 78 */	mr r3, r30
/* 800B5800  48 03 2A B1 */	bl checkGoatCatchActor__9daAlink_cFP10fopAc_ac_c
/* 800B5804  2C 03 00 00 */	cmpwi r3, 0
/* 800B5808  41 82 00 14 */	beq lbl_800B581C
/* 800B580C  7F C3 F3 78 */	mr r3, r30
/* 800B5810  38 80 00 91 */	li r4, 0x91
/* 800B5814  4B FF DA 3D */	bl setDoStatus__9daAlink_cFUc
/* 800B5818  48 00 00 B4 */	b lbl_800B58CC
lbl_800B581C:
/* 800B581C  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800B5820  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B5824  40 82 00 A8 */	bne lbl_800B58CC
/* 800B5828  7F C3 F3 78 */	mr r3, r30
/* 800B582C  80 9E 27 F4 */	lwz r4, 0x27f4(r30)
/* 800B5830  48 03 18 91 */	bl checkInsectActorName__9daAlink_cFP10fopAc_ac_c
/* 800B5834  2C 03 00 00 */	cmpwi r3, 0
/* 800B5838  41 82 00 14 */	beq lbl_800B584C
/* 800B583C  7F C3 F3 78 */	mr r3, r30
/* 800B5840  38 80 00 98 */	li r4, 0x98
/* 800B5844  4B FF DA 25 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B5848  48 00 00 84 */	b lbl_800B58CC
lbl_800B584C:
/* 800B584C  2C 1F 02 19 */	cmpwi r31, 0x219
/* 800B5850  40 82 00 14 */	bne lbl_800B5864
/* 800B5854  7F C3 F3 78 */	mr r3, r30
/* 800B5858  38 80 00 39 */	li r4, 0x39
/* 800B585C  4B FF DA 0D */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B5860  48 00 00 6C */	b lbl_800B58CC
lbl_800B5864:
/* 800B5864  7F C3 F3 78 */	mr r3, r30
/* 800B5868  48 02 E0 85 */	bl checkGrabLineCheck__9daAlink_cFv
/* 800B586C  2C 03 00 00 */	cmpwi r3, 0
/* 800B5870  40 82 00 5C */	bne lbl_800B58CC
/* 800B5874  2C 1F 01 4D */	cmpwi r31, 0x14d
/* 800B5878  40 82 00 14 */	bne lbl_800B588C
/* 800B587C  7F C3 F3 78 */	mr r3, r30
/* 800B5880  38 80 00 2B */	li r4, 0x2b
/* 800B5884  4B FF D9 CD */	bl setDoStatus__9daAlink_cFUc
/* 800B5888  48 00 00 44 */	b lbl_800B58CC
lbl_800B588C:
/* 800B588C  80 7E 27 F4 */	lwz r3, 0x27f4(r30)
/* 800B5890  88 03 04 9A */	lbz r0, 0x49a(r3)
/* 800B5894  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800B5898  41 82 00 14 */	beq lbl_800B58AC
/* 800B589C  7F C3 F3 78 */	mr r3, r30
/* 800B58A0  38 80 00 34 */	li r4, 0x34
/* 800B58A4  4B FF D9 C5 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B58A8  48 00 00 24 */	b lbl_800B58CC
lbl_800B58AC:
/* 800B58AC  2C 1F 02 16 */	cmpwi r31, 0x216
/* 800B58B0  41 82 00 1C */	beq lbl_800B58CC
/* 800B58B4  7F C3 F3 78 */	mr r3, r30
/* 800B58B8  38 80 00 1F */	li r4, 0x1f
/* 800B58BC  4B FF D9 AD */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B58C0  48 00 00 0C */	b lbl_800B58CC
lbl_800B58C4:
/* 800B58C4  7F C3 F3 78 */	mr r3, r30
/* 800B58C8  4B FF F1 41 */	bl setTalkStatus__9daAlink_cFv
lbl_800B58CC:
/* 800B58CC  7F C3 F3 78 */	mr r3, r30
/* 800B58D0  4B FF F2 AD */	bl decideCommonDoStatus__9daAlink_cFv
lbl_800B58D4:
/* 800B58D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B58D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B58DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B58E0  7C 08 03 A6 */	mtlr r0
/* 800B58E4  38 21 00 10 */	addi r1, r1, 0x10
/* 800B58E8  4E 80 00 20 */	blr 
