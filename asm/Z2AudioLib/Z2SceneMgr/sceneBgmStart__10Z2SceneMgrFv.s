lbl_802BA294:
/* 802BA294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BA298  7C 08 02 A6 */	mflr r0
/* 802BA29C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BA2A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BA2A4  7C 7F 1B 78 */	mr r31, r3
/* 802BA2A8  38 00 00 01 */	li r0, 1
/* 802BA2AC  98 03 00 1C */	stb r0, 0x1c(r3)
/* 802BA2B0  38 80 00 01 */	li r4, 1
/* 802BA2B4  4B FF C6 2D */	bl setSceneExist__10Z2SceneMgrFb
/* 802BA2B8  38 00 00 00 */	li r0, 0
/* 802BA2BC  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802BA2C0  98 03 00 0C */	stb r0, 0xc(r3)
/* 802BA2C4  88 1F 00 1A */	lbz r0, 0x1a(r31)
/* 802BA2C8  28 00 00 00 */	cmplwi r0, 0
/* 802BA2CC  40 82 00 18 */	bne lbl_802BA2E4
/* 802BA2D0  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BA2D4  80 9F 00 00 */	lwz r4, 0(r31)
/* 802BA2D8  4B FF 9B D5 */	bl checkBgmIDPlaying__8Z2SeqMgrFUl
/* 802BA2DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BA2E0  40 82 02 78 */	bne lbl_802BA558
lbl_802BA2E4:
/* 802BA2E4  80 9F 00 00 */	lwz r4, 0(r31)
/* 802BA2E8  3C 04 00 01 */	addis r0, r4, 1
/* 802BA2EC  28 00 FF FF */	cmplwi r0, 0xffff
/* 802BA2F0  41 82 02 44 */	beq lbl_802BA534
/* 802BA2F4  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802BA2F8  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802BA2FC  28 00 00 0B */	cmplwi r0, 0xb
/* 802BA300  41 82 02 34 */	beq lbl_802BA534
/* 802BA304  88 1F 00 00 */	lbz r0, 0(r31)
/* 802BA308  2C 00 00 02 */	cmpwi r0, 2
/* 802BA30C  41 82 02 04 */	beq lbl_802BA510
/* 802BA310  40 80 02 24 */	bge lbl_802BA534
/* 802BA314  2C 00 00 01 */	cmpwi r0, 1
/* 802BA318  40 80 00 08 */	bge lbl_802BA320
/* 802BA31C  48 00 02 18 */	b lbl_802BA534
lbl_802BA320:
/* 802BA320  38 E0 00 00 */	li r7, 0
/* 802BA324  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BA328  80 A3 00 04 */	lwz r5, 4(r3)
/* 802BA32C  28 05 00 00 */	cmplwi r5, 0
/* 802BA330  41 82 00 10 */	beq lbl_802BA340
/* 802BA334  80 C5 00 18 */	lwz r6, 0x18(r5)
/* 802BA338  90 C1 00 08 */	stw r6, 8(r1)
/* 802BA33C  48 00 00 08 */	b lbl_802BA344
lbl_802BA340:
/* 802BA340  38 C0 FF FF */	li r6, -1
lbl_802BA344:
/* 802BA344  3C A0 01 00 */	lis r5, 0x0100 /* 0x0100000F@ha */
/* 802BA348  38 05 00 0F */	addi r0, r5, 0x000F /* 0x0100000F@l */
/* 802BA34C  7C 06 00 00 */	cmpw r6, r0
/* 802BA350  41 82 00 28 */	beq lbl_802BA378
/* 802BA354  40 80 00 14 */	bge lbl_802BA368
/* 802BA358  38 05 00 08 */	addi r0, r5, 8
/* 802BA35C  7C 06 00 00 */	cmpw r6, r0
/* 802BA360  41 82 00 18 */	beq lbl_802BA378
/* 802BA364  48 00 00 18 */	b lbl_802BA37C
lbl_802BA368:
/* 802BA368  38 05 00 64 */	addi r0, r5, 0x64
/* 802BA36C  7C 06 00 00 */	cmpw r6, r0
/* 802BA370  41 82 00 08 */	beq lbl_802BA378
/* 802BA374  48 00 00 08 */	b lbl_802BA37C
lbl_802BA378:
/* 802BA378  38 E0 00 01 */	li r7, 1
lbl_802BA37C:
/* 802BA37C  38 A0 00 00 */	li r5, 0
/* 802BA380  54 E6 06 3E */	clrlwi r6, r7, 0x18
/* 802BA384  4B FF 4C 8D */	bl bgmStart__8Z2SeqMgrFUlUll
/* 802BA388  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BA38C  C0 02 C0 3C */	lfs f0, lit_3512(r2)
/* 802BA390  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 802BA394  C0 22 C0 38 */	lfs f1, lit_3511(r2)
/* 802BA398  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 802BA39C  38 A0 00 00 */	li r5, 0
/* 802BA3A0  90 A3 00 40 */	stw r5, 0x40(r3)
/* 802BA3A4  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 802BA3A8  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 802BA3AC  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 802BA3B0  90 A3 00 50 */	stw r5, 0x50(r3)
/* 802BA3B4  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 802BA3B8  80 7F 00 00 */	lwz r3, 0(r31)
/* 802BA3BC  3C 83 FF 00 */	addis r4, r3, 0xff00
/* 802BA3C0  38 84 FF F7 */	addi r4, r4, -9
/* 802BA3C4  28 04 00 56 */	cmplwi r4, 0x56
/* 802BA3C8  41 81 01 6C */	bgt lbl_802BA534
/* 802BA3CC  3C 60 80 3D */	lis r3, lit_5852@ha /* 0x803CA9BC@ha */
/* 802BA3D0  38 63 A9 BC */	addi r3, r3, lit_5852@l /* 0x803CA9BC@l */
/* 802BA3D4  54 84 10 3A */	slwi r4, r4, 2
/* 802BA3D8  7C 03 20 2E */	lwzx r0, r3, r4
/* 802BA3DC  7C 09 03 A6 */	mtctr r0
/* 802BA3E0  4E 80 04 20 */	bctr 
/* 802BA3E4  80 1F 00 04 */	lwz r0, 4(r31)
/* 802BA3E8  2C 00 00 18 */	cmpwi r0, 0x18
/* 802BA3EC  40 82 00 14 */	bne lbl_802BA400
/* 802BA3F0  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BA3F4  38 80 00 05 */	li r4, 5
/* 802BA3F8  4B FF 5B 95 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802BA3FC  48 00 01 38 */	b lbl_802BA534
lbl_802BA400:
/* 802BA400  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BA404  88 9F 00 0C */	lbz r4, 0xc(r31)
/* 802BA408  7C 84 07 74 */	extsb r4, r4
/* 802BA40C  4B FF 5B 81 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802BA410  48 00 01 24 */	b lbl_802BA534
/* 802BA414  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BA418  38 80 00 00 */	li r4, 0
/* 802BA41C  4B FF 5B 71 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802BA420  48 00 01 14 */	b lbl_802BA534
/* 802BA424  80 1F 00 04 */	lwz r0, 4(r31)
/* 802BA428  2C 00 00 0A */	cmpwi r0, 0xa
/* 802BA42C  40 82 01 08 */	bne lbl_802BA534
/* 802BA430  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BA434  C0 02 C0 54 */	lfs f0, lit_5342(r2)
/* 802BA438  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 802BA43C  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 802BA440  90 A3 00 50 */	stw r5, 0x50(r3)
/* 802BA444  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 802BA448  48 00 00 EC */	b lbl_802BA534
/* 802BA44C  80 7F 00 04 */	lwz r3, 4(r31)
/* 802BA450  2C 03 00 17 */	cmpwi r3, 0x17
/* 802BA454  40 82 00 10 */	bne lbl_802BA464
/* 802BA458  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 802BA45C  2C 00 00 05 */	cmpwi r0, 5
/* 802BA460  41 82 00 14 */	beq lbl_802BA474
lbl_802BA464:
/* 802BA464  2C 03 00 18 */	cmpwi r3, 0x18
/* 802BA468  41 82 00 0C */	beq lbl_802BA474
/* 802BA46C  2C 03 00 19 */	cmpwi r3, 0x19
/* 802BA470  40 82 00 C4 */	bne lbl_802BA534
lbl_802BA474:
/* 802BA474  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BA478  C0 02 C0 54 */	lfs f0, lit_5342(r2)
/* 802BA47C  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 802BA480  C0 02 C0 38 */	lfs f0, lit_3511(r2)
/* 802BA484  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802BA488  38 00 00 00 */	li r0, 0
/* 802BA48C  90 03 00 50 */	stw r0, 0x50(r3)
/* 802BA490  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 802BA494  48 00 00 A0 */	b lbl_802BA534
/* 802BA498  80 1F 00 04 */	lwz r0, 4(r31)
/* 802BA49C  2C 00 00 02 */	cmpwi r0, 2
/* 802BA4A0  40 82 00 20 */	bne lbl_802BA4C0
/* 802BA4A4  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 802BA4A8  2C 00 00 02 */	cmpwi r0, 2
/* 802BA4AC  40 82 00 14 */	bne lbl_802BA4C0
/* 802BA4B0  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BA4B4  38 80 00 02 */	li r4, 2
/* 802BA4B8  4B FF 5A D5 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802BA4BC  48 00 00 78 */	b lbl_802BA534
lbl_802BA4C0:
/* 802BA4C0  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BA4C4  38 80 00 00 */	li r4, 0
/* 802BA4C8  4B FF 5A C5 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802BA4CC  48 00 00 68 */	b lbl_802BA534
/* 802BA4D0  80 1F 00 04 */	lwz r0, 4(r31)
/* 802BA4D4  2C 00 00 06 */	cmpwi r0, 6
/* 802BA4D8  41 82 00 18 */	beq lbl_802BA4F0
/* 802BA4DC  2C 00 00 05 */	cmpwi r0, 5
/* 802BA4E0  40 82 00 20 */	bne lbl_802BA500
/* 802BA4E4  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 802BA4E8  2C 00 00 0E */	cmpwi r0, 0xe
/* 802BA4EC  40 82 00 14 */	bne lbl_802BA500
lbl_802BA4F0:
/* 802BA4F0  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BA4F4  38 80 00 02 */	li r4, 2
/* 802BA4F8  4B FF 5A 95 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802BA4FC  48 00 00 38 */	b lbl_802BA534
lbl_802BA500:
/* 802BA500  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BA504  38 80 00 00 */	li r4, 0
/* 802BA508  4B FF 5A 85 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802BA50C  48 00 00 28 */	b lbl_802BA534
lbl_802BA510:
/* 802BA510  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BA514  4B FF 58 D9 */	bl bgmStreamCheckReady__8Z2SeqMgrFv
/* 802BA518  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BA51C  40 82 00 10 */	bne lbl_802BA52C
/* 802BA520  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BA524  80 9F 00 00 */	lwz r4, 0(r31)
/* 802BA528  4B FF 56 6D */	bl bgmStreamPrepare__8Z2SeqMgrFUl
lbl_802BA52C:
/* 802BA52C  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BA530  4B FF 58 E9 */	bl bgmStreamPlay__8Z2SeqMgrFv
lbl_802BA534:
/* 802BA534  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802BA538  C0 02 C0 3C */	lfs f0, lit_3512(r2)
/* 802BA53C  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 802BA540  C0 02 C0 38 */	lfs f0, lit_3511(r2)
/* 802BA544  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 802BA548  38 00 00 00 */	li r0, 0
/* 802BA54C  90 03 00 80 */	stw r0, 0x80(r3)
/* 802BA550  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 802BA554  98 1F 00 1A */	stb r0, 0x1a(r31)
lbl_802BA558:
/* 802BA558  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BA55C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BA560  7C 08 03 A6 */	mtlr r0
/* 802BA564  38 21 00 20 */	addi r1, r1, 0x20
/* 802BA568  4E 80 00 20 */	blr 
