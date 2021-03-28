lbl_80AE821C:
/* 80AE821C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE8220  7C 08 02 A6 */	mflr r0
/* 80AE8224  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE8228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE822C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE8230  7C 7F 1B 78 */	mr r31, r3
/* 80AE8234  88 03 0E 1B */	lbz r0, 0xe1b(r3)
/* 80AE8238  28 00 00 00 */	cmplwi r0, 0
/* 80AE823C  41 82 00 14 */	beq lbl_80AE8250
/* 80AE8240  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80AE8244  64 00 08 00 */	oris r0, r0, 0x800
/* 80AE8248  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80AE824C  48 00 00 10 */	b lbl_80AE825C
lbl_80AE8250:
/* 80AE8250  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80AE8254  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80AE8258  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80AE825C:
/* 80AE825C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80AE8260  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80AE8264  41 82 00 74 */	beq lbl_80AE82D8
/* 80AE8268  4B 6C 43 14 */	b dKy_darkworld_check__Fv
/* 80AE826C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AE8270  41 82 00 10 */	beq lbl_80AE8280
/* 80AE8274  4B 6B 78 BC */	b dKy_getDarktime_minute__Fv
/* 80AE8278  7C 7E 1B 78 */	mr r30, r3
/* 80AE827C  48 00 00 0C */	b lbl_80AE8288
lbl_80AE8280:
/* 80AE8280  4B 6B 77 BC */	b dKy_getdaytime_minute__Fv
/* 80AE8284  7C 7E 1B 78 */	mr r30, r3
lbl_80AE8288:
/* 80AE8288  4B 6C 42 F4 */	b dKy_darkworld_check__Fv
/* 80AE828C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AE8290  41 82 00 0C */	beq lbl_80AE829C
/* 80AE8294  4B 6B 78 60 */	b dKy_getDarktime_hour__Fv
/* 80AE8298  48 00 00 08 */	b lbl_80AE82A0
lbl_80AE829C:
/* 80AE829C  4B 6B 77 74 */	b dKy_getdaytime_hour__Fv
lbl_80AE82A0:
/* 80AE82A0  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 80AE82A4  7C 7E 02 14 */	add r3, r30, r0
/* 80AE82A8  A0 1F 0E 12 */	lhz r0, 0xe12(r31)
/* 80AE82AC  7C 03 00 00 */	cmpw r3, r0
/* 80AE82B0  41 80 00 1C */	blt lbl_80AE82CC
/* 80AE82B4  A0 1F 0E 14 */	lhz r0, 0xe14(r31)
/* 80AE82B8  7C 03 00 00 */	cmpw r3, r0
/* 80AE82BC  40 80 00 10 */	bge lbl_80AE82CC
/* 80AE82C0  38 00 00 01 */	li r0, 1
/* 80AE82C4  98 1F 0E 1B */	stb r0, 0xe1b(r31)
/* 80AE82C8  48 00 00 24 */	b lbl_80AE82EC
lbl_80AE82CC:
/* 80AE82CC  38 00 00 00 */	li r0, 0
/* 80AE82D0  98 1F 0E 1B */	stb r0, 0xe1b(r31)
/* 80AE82D4  48 00 00 18 */	b lbl_80AE82EC
lbl_80AE82D8:
/* 80AE82D8  88 1F 0E 1B */	lbz r0, 0xe1b(r31)
/* 80AE82DC  28 00 00 00 */	cmplwi r0, 0
/* 80AE82E0  41 82 00 0C */	beq lbl_80AE82EC
/* 80AE82E4  7F E3 FB 78 */	mr r3, r31
/* 80AE82E8  4B 66 9D 2C */	b execute__8daNpcF_cFv
lbl_80AE82EC:
/* 80AE82EC  38 60 00 01 */	li r3, 1
/* 80AE82F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE82F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE82F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE82FC  7C 08 03 A6 */	mtlr r0
/* 80AE8300  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE8304  4E 80 00 20 */	blr 
