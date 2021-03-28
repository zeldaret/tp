lbl_800E21FC:
/* 800E21FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E2200  7C 08 02 A6 */	mflr r0
/* 800E2204  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E2208  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E220C  93 C1 00 08 */	stw r30, 8(r1)
/* 800E2210  7C 7E 1B 78 */	mr r30, r3
/* 800E2214  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800E2218  38 00 00 00 */	li r0, 0
/* 800E221C  B0 03 30 0C */	sth r0, 0x300c(r3)
/* 800E2220  7F E3 FB 78 */	mr r3, r31
/* 800E2224  48 07 C2 A9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E2228  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E222C  41 82 00 1C */	beq lbl_800E2248
/* 800E2230  7F C3 F3 78 */	mr r3, r30
/* 800E2234  4B FF F3 59 */	bl setCopyRodControllAnime__9daAlink_cFv
/* 800E2238  7F C3 F3 78 */	mr r3, r30
/* 800E223C  38 80 00 00 */	li r4, 0
/* 800E2240  4B FD 7E 91 */	bl checkNextAction__9daAlink_cFi
/* 800E2244  48 00 00 A8 */	b lbl_800E22EC
lbl_800E2248:
/* 800E2248  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800E224C  C0 1E 34 80 */	lfs f0, 0x3480(r30)
/* 800E2250  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E2254  40 81 00 30 */	ble lbl_800E2284
/* 800E2258  7F C3 F3 78 */	mr r3, r30
/* 800E225C  38 80 00 01 */	li r4, 1
/* 800E2260  4B FD 7E 71 */	bl checkNextAction__9daAlink_cFi
/* 800E2264  2C 03 00 00 */	cmpwi r3, 0
/* 800E2268  41 82 00 1C */	beq lbl_800E2284
/* 800E226C  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800E2270  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800E2274  41 82 00 78 */	beq lbl_800E22EC
/* 800E2278  7F C3 F3 78 */	mr r3, r30
/* 800E227C  4B FF F3 11 */	bl setCopyRodControllAnime__9daAlink_cFv
/* 800E2280  48 00 00 6C */	b lbl_800E22EC
lbl_800E2284:
/* 800E2284  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800E2288  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 800E228C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E2290  4C 41 13 82 */	cror 2, 1, 2
/* 800E2294  40 82 00 50 */	bne lbl_800E22E4
/* 800E2298  C0 1E 34 7C */	lfs f0, 0x347c(r30)
/* 800E229C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E22A0  40 80 00 44 */	bge lbl_800E22E4
/* 800E22A4  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800E22A8  2C 00 00 00 */	cmpwi r0, 0
/* 800E22AC  40 82 00 14 */	bne lbl_800E22C0
/* 800E22B0  7F C3 F3 78 */	mr r3, r30
/* 800E22B4  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002006A@ha */
/* 800E22B8  38 84 00 6A */	addi r4, r4, 0x006A /* 0x0002006A@l */
/* 800E22BC  4B FD CE 31 */	bl seStartSwordCut__9daAlink_cFUl
lbl_800E22C0:
/* 800E22C0  38 00 00 01 */	li r0, 1
/* 800E22C4  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 800E22C8  7F C3 F3 78 */	mr r3, r30
/* 800E22CC  38 80 00 6F */	li r4, 0x6f
/* 800E22D0  4B FE F6 F9 */	bl changeCutReverseProc__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800E22D4  2C 03 00 00 */	cmpwi r3, 0
/* 800E22D8  41 82 00 14 */	beq lbl_800E22EC
/* 800E22DC  38 60 00 01 */	li r3, 1
/* 800E22E0  48 00 00 10 */	b lbl_800E22F0
lbl_800E22E4:
/* 800E22E4  38 00 00 00 */	li r0, 0
/* 800E22E8  B0 1E 30 0E */	sth r0, 0x300e(r30)
lbl_800E22EC:
/* 800E22EC  38 60 00 01 */	li r3, 1
lbl_800E22F0:
/* 800E22F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E22F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E22F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E22FC  7C 08 03 A6 */	mtlr r0
/* 800E2300  38 21 00 10 */	addi r1, r1, 0x10
/* 800E2304  4E 80 00 20 */	blr 
