lbl_804BA1F4:
/* 804BA1F4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804BA1F8  7C 08 02 A6 */	mflr r0
/* 804BA1FC  90 01 00 64 */	stw r0, 0x64(r1)
/* 804BA200  39 61 00 60 */	addi r11, r1, 0x60
/* 804BA204  4B EA 7F B4 */	b _savegpr_20
/* 804BA208  7C 7E 1B 78 */	mr r30, r3
/* 804BA20C  3C 60 80 4C */	lis r3, cNullVec__6Z2Calc@ha
/* 804BA210  3B 63 B8 50 */	addi r27, r3, cNullVec__6Z2Calc@l
/* 804BA214  3C 60 80 4C */	lis r3, lit_3879@ha
/* 804BA218  3B 43 B5 34 */	addi r26, r3, lit_3879@l
/* 804BA21C  A8 1E 0F 7C */	lha r0, 0xf7c(r30)
/* 804BA220  2C 00 00 00 */	cmpwi r0, 0
/* 804BA224  40 82 04 08 */	bne lbl_804BA62C
/* 804BA228  38 7E 0F 40 */	addi r3, r30, 0xf40
/* 804BA22C  38 80 00 01 */	li r4, 1
/* 804BA230  38 A0 00 6A */	li r5, 0x6a
/* 804BA234  38 C0 00 01 */	li r6, 1
/* 804BA238  4B B5 83 A8 */	b init__19mDoExt_3DlineMat0_cFUsUsi
/* 804BA23C  2C 03 00 00 */	cmpwi r3, 0
/* 804BA240  40 82 00 0C */	bne lbl_804BA24C
/* 804BA244  38 60 00 00 */	li r3, 0
/* 804BA248  48 00 05 DC */	b lbl_804BA824
lbl_804BA24C:
/* 804BA24C  80 7E 0F 58 */	lwz r3, 0xf58(r30)
/* 804BA250  80 63 00 04 */	lwz r3, 4(r3)
/* 804BA254  C0 1A 00 78 */	lfs f0, 0x78(r26)
/* 804BA258  38 00 00 6A */	li r0, 0x6a
/* 804BA25C  7C 09 03 A6 */	mtctr r0
lbl_804BA260:
/* 804BA260  D0 03 00 00 */	stfs f0, 0(r3)
/* 804BA264  38 63 00 04 */	addi r3, r3, 4
/* 804BA268  42 00 FF F8 */	bdnz lbl_804BA260
/* 804BA26C  3B 20 00 00 */	li r25, 0
/* 804BA270  3B 00 00 00 */	li r24, 0
/* 804BA274  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BA278  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BA27C  3F E3 00 02 */	addis r31, r3, 2
/* 804BA280  3B FF C2 F8 */	addi r31, r31, -15624
/* 804BA284  3B 7B 01 F8 */	addi r27, r27, 0x1f8
/* 804BA288  3F 80 00 08 */	lis r28, 8
/* 804BA28C  3F A0 11 00 */	lis r29, 0x1100
lbl_804BA290:
/* 804BA290  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 804BA294  7C 9B C0 2E */	lwzx r4, r27, r24
/* 804BA298  7F E5 FB 78 */	mr r5, r31
/* 804BA29C  38 C0 00 80 */	li r6, 0x80
/* 804BA2A0  4B B8 20 4C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804BA2A4  38 19 FF FC */	addi r0, r25, -4
/* 804BA2A8  30 00 FF FF */	addic r0, r0, -1
/* 804BA2AC  7C 00 01 10 */	subfe r0, r0, r0
/* 804BA2B0  7F 84 00 78 */	andc r4, r28, r0
/* 804BA2B4  38 BD 00 84 */	addi r5, r29, 0x84
/* 804BA2B8  4B B5 A9 9C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804BA2BC  38 18 0F 84 */	addi r0, r24, 0xf84
/* 804BA2C0  7C 7E 01 2E */	stwx r3, r30, r0
/* 804BA2C4  7C 7E 00 2E */	lwzx r3, r30, r0
/* 804BA2C8  28 03 00 00 */	cmplwi r3, 0
/* 804BA2CC  40 82 00 0C */	bne lbl_804BA2D8
/* 804BA2D0  38 60 00 00 */	li r3, 0
/* 804BA2D4  48 00 05 50 */	b lbl_804BA824
lbl_804BA2D8:
/* 804BA2D8  2C 19 00 00 */	cmpwi r25, 0
/* 804BA2DC  40 82 00 54 */	bne lbl_804BA330
/* 804BA2E0  93 C3 00 14 */	stw r30, 0x14(r3)
/* 804BA2E4  38 E0 00 00 */	li r7, 0
/* 804BA2E8  3C 60 80 4B */	lis r3, frog_nodeCallBack__FP8J3DJointi@ha
/* 804BA2EC  38 A3 96 4C */	addi r5, r3, frog_nodeCallBack__FP8J3DJointi@l
/* 804BA2F0  48 00 00 24 */	b lbl_804BA314
lbl_804BA2F4:
/* 804BA2F4  54 E3 04 3E */	clrlwi r3, r7, 0x10
/* 804BA2F8  28 03 00 01 */	cmplwi r3, 1
/* 804BA2FC  40 82 00 14 */	bne lbl_804BA310
/* 804BA300  80 86 00 28 */	lwz r4, 0x28(r6)
/* 804BA304  54 E3 13 BA */	rlwinm r3, r7, 2, 0xe, 0x1d
/* 804BA308  7C 64 18 2E */	lwzx r3, r4, r3
/* 804BA30C  90 A3 00 04 */	stw r5, 4(r3)
lbl_804BA310:
/* 804BA310  38 E7 00 01 */	addi r7, r7, 1
lbl_804BA314:
/* 804BA314  7C 7E 00 2E */	lwzx r3, r30, r0
/* 804BA318  80 C3 00 04 */	lwz r6, 4(r3)
/* 804BA31C  A0 86 00 2C */	lhz r4, 0x2c(r6)
/* 804BA320  54 E3 04 3E */	clrlwi r3, r7, 0x10
/* 804BA324  7C 03 20 40 */	cmplw r3, r4
/* 804BA328  41 80 FF CC */	blt lbl_804BA2F4
/* 804BA32C  48 00 01 2C */	b lbl_804BA458
lbl_804BA330:
/* 804BA330  2C 19 00 03 */	cmpwi r25, 3
/* 804BA334  40 82 00 88 */	bne lbl_804BA3BC
/* 804BA338  93 C3 00 14 */	stw r30, 0x14(r3)
/* 804BA33C  38 E0 00 00 */	li r7, 0
/* 804BA340  3C 60 80 4B */	lis r3, ws_nodeCallBack__FP8J3DJointi@ha
/* 804BA344  38 A3 97 34 */	addi r5, r3, ws_nodeCallBack__FP8J3DJointi@l
/* 804BA348  48 00 00 2C */	b lbl_804BA374
lbl_804BA34C:
/* 804BA34C  54 E3 04 3E */	clrlwi r3, r7, 0x10
/* 804BA350  28 03 00 01 */	cmplwi r3, 1
/* 804BA354  41 82 00 0C */	beq lbl_804BA360
/* 804BA358  28 03 00 02 */	cmplwi r3, 2
/* 804BA35C  40 82 00 14 */	bne lbl_804BA370
lbl_804BA360:
/* 804BA360  80 86 00 28 */	lwz r4, 0x28(r6)
/* 804BA364  54 E3 13 BA */	rlwinm r3, r7, 2, 0xe, 0x1d
/* 804BA368  7C 64 18 2E */	lwzx r3, r4, r3
/* 804BA36C  90 A3 00 04 */	stw r5, 4(r3)
lbl_804BA370:
/* 804BA370  38 E7 00 01 */	addi r7, r7, 1
lbl_804BA374:
/* 804BA374  7C 7E 00 2E */	lwzx r3, r30, r0
/* 804BA378  80 C3 00 04 */	lwz r6, 4(r3)
/* 804BA37C  A0 86 00 2C */	lhz r4, 0x2c(r6)
/* 804BA380  54 E3 04 3E */	clrlwi r3, r7, 0x10
/* 804BA384  7C 03 20 40 */	cmplw r3, r4
/* 804BA388  41 80 FF C4 */	blt lbl_804BA34C
/* 804BA38C  C0 3A 02 F4 */	lfs f1, 0x2f4(r26)
/* 804BA390  4B DA D5 C4 */	b cM_rndF__Ff
/* 804BA394  FC 00 08 1E */	fctiwz f0, f1
/* 804BA398  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804BA39C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804BA3A0  B0 1E 10 1C */	sth r0, 0x101c(r30)
/* 804BA3A4  C0 3A 02 F4 */	lfs f1, 0x2f4(r26)
/* 804BA3A8  4B DA D5 AC */	b cM_rndF__Ff
/* 804BA3AC  FC 00 08 1E */	fctiwz f0, f1
/* 804BA3B0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804BA3B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BA3B8  B0 1E 10 1E */	sth r0, 0x101e(r30)
lbl_804BA3BC:
/* 804BA3BC  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 804BA3C0  38 80 00 05 */	li r4, 5
/* 804BA3C4  7F E5 FB 78 */	mr r5, r31
/* 804BA3C8  38 C0 00 80 */	li r6, 0x80
/* 804BA3CC  4B B8 1F 20 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804BA3D0  7C 75 1B 78 */	mr r21, r3
/* 804BA3D4  3A 80 00 00 */	li r20, 0
/* 804BA3D8  3A E0 00 00 */	li r23, 0
/* 804BA3DC  3E C0 11 00 */	lis r22, 0x1100 /* 0x11000084@ha */
lbl_804BA3E0:
/* 804BA3E0  7E A3 AB 78 */	mr r3, r21
/* 804BA3E4  3C 80 00 08 */	lis r4, 8
/* 804BA3E8  38 B6 00 84 */	addi r5, r22, 0x0084 /* 0x11000084@l */
/* 804BA3EC  4B B5 A8 68 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804BA3F0  38 17 0F 98 */	addi r0, r23, 0xf98
/* 804BA3F4  7C 7E 01 2E */	stwx r3, r30, r0
/* 804BA3F8  7C 1E 00 2E */	lwzx r0, r30, r0
/* 804BA3FC  28 00 00 00 */	cmplwi r0, 0
/* 804BA400  40 82 00 0C */	bne lbl_804BA40C
/* 804BA404  38 60 00 00 */	li r3, 0
/* 804BA408  48 00 04 1C */	b lbl_804BA824
lbl_804BA40C:
/* 804BA40C  3A 94 00 01 */	addi r20, r20, 1
/* 804BA410  2C 14 00 02 */	cmpwi r20, 2
/* 804BA414  3A F7 00 04 */	addi r23, r23, 4
/* 804BA418  41 80 FF C8 */	blt lbl_804BA3E0
/* 804BA41C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 804BA420  38 80 00 09 */	li r4, 9
/* 804BA424  7F E5 FB 78 */	mr r5, r31
/* 804BA428  38 C0 00 80 */	li r6, 0x80
/* 804BA42C  4B B8 1E C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804BA430  3C 80 00 08 */	lis r4, 8
/* 804BA434  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804BA438  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804BA43C  4B B5 A8 18 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804BA440  90 7E 0F A0 */	stw r3, 0xfa0(r30)
/* 804BA444  80 1E 0F A0 */	lwz r0, 0xfa0(r30)
/* 804BA448  28 00 00 00 */	cmplwi r0, 0
/* 804BA44C  40 82 00 0C */	bne lbl_804BA458
/* 804BA450  38 60 00 00 */	li r3, 0
/* 804BA454  48 00 03 D0 */	b lbl_804BA824
lbl_804BA458:
/* 804BA458  3B 39 00 01 */	addi r25, r25, 1
/* 804BA45C  2C 19 00 05 */	cmpwi r25, 5
/* 804BA460  3B 18 00 04 */	addi r24, r24, 4
/* 804BA464  41 80 FE 2C */	blt lbl_804BA290
/* 804BA468  38 60 00 54 */	li r3, 0x54
/* 804BA46C  4B E1 47 E0 */	b __nw__FUl
/* 804BA470  7C 75 1B 79 */	or. r21, r3, r3
/* 804BA474  41 82 00 68 */	beq lbl_804BA4DC
/* 804BA478  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 804BA47C  38 80 00 04 */	li r4, 4
/* 804BA480  7F E5 FB 78 */	mr r5, r31
/* 804BA484  38 C0 00 80 */	li r6, 0x80
/* 804BA488  4B B8 1E 64 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804BA48C  7C 64 1B 78 */	mr r4, r3
/* 804BA490  38 00 00 01 */	li r0, 1
/* 804BA494  90 01 00 08 */	stw r0, 8(r1)
/* 804BA498  38 00 00 00 */	li r0, 0
/* 804BA49C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BA4A0  3C 00 00 08 */	lis r0, 8
/* 804BA4A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BA4A8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 804BA4AC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 804BA4B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BA4B4  7E A3 AB 78 */	mr r3, r21
/* 804BA4B8  38 A0 00 00 */	li r5, 0
/* 804BA4BC  38 C0 00 00 */	li r6, 0
/* 804BA4C0  38 E0 00 00 */	li r7, 0
/* 804BA4C4  39 00 00 00 */	li r8, 0
/* 804BA4C8  C0 3A 00 0C */	lfs f1, 0xc(r26)
/* 804BA4CC  39 20 00 00 */	li r9, 0
/* 804BA4D0  39 40 FF FF */	li r10, -1
/* 804BA4D4  4B B5 57 78 */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 804BA4D8  7C 75 1B 78 */	mr r21, r3
lbl_804BA4DC:
/* 804BA4DC  92 BE 07 00 */	stw r21, 0x700(r30)
/* 804BA4E0  80 7E 07 00 */	lwz r3, 0x700(r30)
/* 804BA4E4  28 03 00 00 */	cmplwi r3, 0
/* 804BA4E8  41 82 00 10 */	beq lbl_804BA4F8
/* 804BA4EC  80 A3 00 04 */	lwz r5, 4(r3)
/* 804BA4F0  28 05 00 00 */	cmplwi r5, 0
/* 804BA4F4  40 82 00 0C */	bne lbl_804BA500
lbl_804BA4F8:
/* 804BA4F8  38 60 00 00 */	li r3, 0
/* 804BA4FC  48 00 03 28 */	b lbl_804BA824
lbl_804BA500:
/* 804BA500  93 C5 00 14 */	stw r30, 0x14(r5)
/* 804BA504  38 E0 00 00 */	li r7, 0
/* 804BA508  3C 60 80 4B */	lis r3, Reel_CallBack__FP8J3DJointi@ha
/* 804BA50C  38 83 97 F8 */	addi r4, r3, Reel_CallBack__FP8J3DJointi@l
/* 804BA510  48 00 00 2C */	b lbl_804BA53C
lbl_804BA514:
/* 804BA514  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 804BA518  28 00 00 01 */	cmplwi r0, 1
/* 804BA51C  41 82 00 0C */	beq lbl_804BA528
/* 804BA520  28 00 00 03 */	cmplwi r0, 3
/* 804BA524  40 82 00 14 */	bne lbl_804BA538
lbl_804BA528:
/* 804BA528  80 66 00 28 */	lwz r3, 0x28(r6)
/* 804BA52C  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 804BA530  7C 63 00 2E */	lwzx r3, r3, r0
/* 804BA534  90 83 00 04 */	stw r4, 4(r3)
lbl_804BA538:
/* 804BA538  38 E7 00 01 */	addi r7, r7, 1
lbl_804BA53C:
/* 804BA53C  80 C5 00 04 */	lwz r6, 4(r5)
/* 804BA540  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 804BA544  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 804BA548  7C 00 18 40 */	cmplw r0, r3
/* 804BA54C  41 80 FF C8 */	blt lbl_804BA514
/* 804BA550  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 804BA554  38 80 00 09 */	li r4, 9
/* 804BA558  7F E5 FB 78 */	mr r5, r31
/* 804BA55C  38 C0 00 80 */	li r6, 0x80
/* 804BA560  4B B8 1D 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804BA564  7C 75 1B 78 */	mr r21, r3
/* 804BA568  3A 80 00 00 */	li r20, 0
/* 804BA56C  3B 20 00 00 */	li r25, 0
/* 804BA570  3E E0 11 00 */	lis r23, 0x1100 /* 0x11000084@ha */
lbl_804BA574:
/* 804BA574  7E A3 AB 78 */	mr r3, r21
/* 804BA578  3C 80 00 08 */	lis r4, 8
/* 804BA57C  38 B7 00 84 */	addi r5, r23, 0x0084 /* 0x11000084@l */
/* 804BA580  4B B5 A6 D4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804BA584  38 19 07 04 */	addi r0, r25, 0x704
/* 804BA588  7C 7E 01 2E */	stwx r3, r30, r0
/* 804BA58C  7C 1E 00 2E */	lwzx r0, r30, r0
/* 804BA590  28 00 00 00 */	cmplwi r0, 0
/* 804BA594  40 82 00 0C */	bne lbl_804BA5A0
/* 804BA598  38 60 00 00 */	li r3, 0
/* 804BA59C  48 00 02 88 */	b lbl_804BA824
lbl_804BA5A0:
/* 804BA5A0  3A 94 00 01 */	addi r20, r20, 1
/* 804BA5A4  2C 14 00 06 */	cmpwi r20, 6
/* 804BA5A8  3B 39 00 04 */	addi r25, r25, 4
/* 804BA5AC  41 80 FF C8 */	blt lbl_804BA574
/* 804BA5B0  3A 80 00 00 */	li r20, 0
/* 804BA5B4  3B 20 00 00 */	li r25, 0
/* 804BA5B8  3C 60 80 4C */	lis r3, stringBase0@ha
/* 804BA5BC  3B 03 B8 30 */	addi r24, r3, stringBase0@l
/* 804BA5C0  3E E0 11 00 */	lis r23, 0x1100
lbl_804BA5C4:
/* 804BA5C4  56 80 07 FF */	clrlwi. r0, r20, 0x1f
/* 804BA5C8  40 82 00 0C */	bne lbl_804BA5D4
/* 804BA5CC  2C 14 00 02 */	cmpwi r20, 2
/* 804BA5D0  40 82 00 0C */	bne lbl_804BA5DC
lbl_804BA5D4:
/* 804BA5D4  38 80 00 29 */	li r4, 0x29
/* 804BA5D8  48 00 00 08 */	b lbl_804BA5E0
lbl_804BA5DC:
/* 804BA5DC  38 80 00 2A */	li r4, 0x2a
lbl_804BA5E0:
/* 804BA5E0  38 78 00 08 */	addi r3, r24, 8
/* 804BA5E4  7F E5 FB 78 */	mr r5, r31
/* 804BA5E8  38 C0 00 80 */	li r6, 0x80
/* 804BA5EC  4B B8 1D 00 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804BA5F0  3C 80 00 08 */	lis r4, 8
/* 804BA5F4  38 B7 00 84 */	addi r5, r23, 0x84
/* 804BA5F8  4B B5 A6 5C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804BA5FC  38 19 06 64 */	addi r0, r25, 0x664
/* 804BA600  7C 7E 01 2E */	stwx r3, r30, r0
/* 804BA604  7C 1E 00 2E */	lwzx r0, r30, r0
/* 804BA608  28 00 00 00 */	cmplwi r0, 0
/* 804BA60C  40 82 00 0C */	bne lbl_804BA618
/* 804BA610  38 60 00 00 */	li r3, 0
/* 804BA614  48 00 02 10 */	b lbl_804BA824
lbl_804BA618:
/* 804BA618  3A 94 00 01 */	addi r20, r20, 1
/* 804BA61C  2C 14 00 0F */	cmpwi r20, 0xf
/* 804BA620  3B 39 00 04 */	addi r25, r25, 4
/* 804BA624  41 80 FF A0 */	blt lbl_804BA5C4
/* 804BA628  48 00 01 F8 */	b lbl_804BA820
lbl_804BA62C:
/* 804BA62C  38 7E 0F 40 */	addi r3, r30, 0xf40
/* 804BA630  38 80 00 01 */	li r4, 1
/* 804BA634  38 A0 00 64 */	li r5, 0x64
/* 804BA638  38 C0 00 01 */	li r6, 1
/* 804BA63C  4B B5 7F A4 */	b init__19mDoExt_3DlineMat0_cFUsUsi
/* 804BA640  2C 03 00 00 */	cmpwi r3, 0
/* 804BA644  40 82 00 0C */	bne lbl_804BA650
/* 804BA648  38 60 00 00 */	li r3, 0
/* 804BA64C  48 00 01 D8 */	b lbl_804BA824
lbl_804BA650:
/* 804BA650  80 7E 0F 58 */	lwz r3, 0xf58(r30)
/* 804BA654  80 63 00 04 */	lwz r3, 4(r3)
/* 804BA658  C0 1A 00 78 */	lfs f0, 0x78(r26)
/* 804BA65C  38 00 00 64 */	li r0, 0x64
/* 804BA660  7C 09 03 A6 */	mtctr r0
lbl_804BA664:
/* 804BA664  D0 03 00 00 */	stfs f0, 0(r3)
/* 804BA668  38 63 00 04 */	addi r3, r3, 4
/* 804BA66C  42 00 FF F8 */	bdnz lbl_804BA664
/* 804BA670  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 804BA674  38 80 00 2D */	li r4, 0x2d
/* 804BA678  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804BA67C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804BA680  3E A5 00 02 */	addis r21, r5, 2
/* 804BA684  3A B5 C2 F8 */	addi r21, r21, -15624
/* 804BA688  7E A5 AB 78 */	mr r5, r21
/* 804BA68C  38 C0 00 80 */	li r6, 0x80
/* 804BA690  4B B8 1C 5C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804BA694  3C 80 00 08 */	lis r4, 8
/* 804BA698  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804BA69C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804BA6A0  4B B5 A5 B4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804BA6A4  90 7E 10 24 */	stw r3, 0x1024(r30)
/* 804BA6A8  80 1E 10 24 */	lwz r0, 0x1024(r30)
/* 804BA6AC  28 00 00 00 */	cmplwi r0, 0
/* 804BA6B0  40 82 00 0C */	bne lbl_804BA6BC
/* 804BA6B4  38 60 00 00 */	li r3, 0
/* 804BA6B8  48 00 01 6C */	b lbl_804BA824
lbl_804BA6BC:
/* 804BA6BC  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 804BA6C0  38 80 00 2E */	li r4, 0x2e
/* 804BA6C4  7E A5 AB 78 */	mr r5, r21
/* 804BA6C8  38 C0 00 80 */	li r6, 0x80
/* 804BA6CC  4B B8 1C 20 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804BA6D0  3C 80 00 08 */	lis r4, 8
/* 804BA6D4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804BA6D8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804BA6DC  4B B5 A5 78 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804BA6E0  90 7E 10 28 */	stw r3, 0x1028(r30)
/* 804BA6E4  80 1E 10 28 */	lwz r0, 0x1028(r30)
/* 804BA6E8  28 00 00 00 */	cmplwi r0, 0
/* 804BA6EC  40 82 00 0C */	bne lbl_804BA6F8
/* 804BA6F0  38 60 00 00 */	li r3, 0
/* 804BA6F4  48 00 01 30 */	b lbl_804BA824
lbl_804BA6F8:
/* 804BA6F8  3A 80 00 00 */	li r20, 0
/* 804BA6FC  3B 20 00 00 */	li r25, 0
/* 804BA700  3B 5B 02 0C */	addi r26, r27, 0x20c
/* 804BA704  3F 00 11 00 */	lis r24, 0x1100
/* 804BA708  3A FB 02 14 */	addi r23, r27, 0x214
lbl_804BA70C:
/* 804BA70C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 804BA710  7C 9A C8 2E */	lwzx r4, r26, r25
/* 804BA714  7E A5 AB 78 */	mr r5, r21
/* 804BA718  38 C0 00 80 */	li r6, 0x80
/* 804BA71C  4B B8 1B D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804BA720  3C 80 00 08 */	lis r4, 8
/* 804BA724  38 B8 00 84 */	addi r5, r24, 0x84
/* 804BA728  4B B5 A5 2C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804BA72C  7E DE CA 14 */	add r22, r30, r25
/* 804BA730  90 76 0F 98 */	stw r3, 0xf98(r22)
/* 804BA734  80 16 0F 98 */	lwz r0, 0xf98(r22)
/* 804BA738  28 00 00 00 */	cmplwi r0, 0
/* 804BA73C  40 82 00 0C */	bne lbl_804BA748
/* 804BA740  38 60 00 00 */	li r3, 0
/* 804BA744  48 00 00 E0 */	b lbl_804BA824
lbl_804BA748:
/* 804BA748  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 804BA74C  7C 97 C8 2E */	lwzx r4, r23, r25
/* 804BA750  7E A5 AB 78 */	mr r5, r21
/* 804BA754  38 C0 00 80 */	li r6, 0x80
/* 804BA758  4B B8 1B 94 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804BA75C  3C 80 00 08 */	lis r4, 8
/* 804BA760  38 B8 00 84 */	addi r5, r24, 0x84
/* 804BA764  4B B5 A4 F0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804BA768  90 76 10 30 */	stw r3, 0x1030(r22)
/* 804BA76C  80 16 10 30 */	lwz r0, 0x1030(r22)
/* 804BA770  28 00 00 00 */	cmplwi r0, 0
/* 804BA774  40 82 00 0C */	bne lbl_804BA780
/* 804BA778  38 60 00 00 */	li r3, 0
/* 804BA77C  48 00 00 A8 */	b lbl_804BA824
lbl_804BA780:
/* 804BA780  3A 94 00 01 */	addi r20, r20, 1
/* 804BA784  2C 14 00 02 */	cmpwi r20, 2
/* 804BA788  3B 39 00 04 */	addi r25, r25, 4
/* 804BA78C  41 80 FF 80 */	blt lbl_804BA70C
/* 804BA790  3A 80 00 28 */	li r20, 0x28
/* 804BA794  3A C0 00 00 */	li r22, 0
/* 804BA798  3B 20 00 00 */	li r25, 0
/* 804BA79C  3E E0 11 00 */	lis r23, 0x1100
lbl_804BA7A0:
/* 804BA7A0  2C 16 00 00 */	cmpwi r22, 0
/* 804BA7A4  40 81 00 30 */	ble lbl_804BA7D4
/* 804BA7A8  2C 16 00 03 */	cmpwi r22, 3
/* 804BA7AC  41 82 00 1C */	beq lbl_804BA7C8
/* 804BA7B0  2C 16 00 06 */	cmpwi r22, 6
/* 804BA7B4  41 82 00 14 */	beq lbl_804BA7C8
/* 804BA7B8  2C 16 00 09 */	cmpwi r22, 9
/* 804BA7BC  41 82 00 0C */	beq lbl_804BA7C8
/* 804BA7C0  2C 16 00 0C */	cmpwi r22, 0xc
/* 804BA7C4  41 80 00 0C */	blt lbl_804BA7D0
lbl_804BA7C8:
/* 804BA7C8  3A 80 00 2A */	li r20, 0x2a
/* 804BA7CC  48 00 00 08 */	b lbl_804BA7D4
lbl_804BA7D0:
/* 804BA7D0  3A 80 00 29 */	li r20, 0x29
lbl_804BA7D4:
/* 804BA7D4  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 804BA7D8  7E 84 A3 78 */	mr r4, r20
/* 804BA7DC  7E A5 AB 78 */	mr r5, r21
/* 804BA7E0  38 C0 00 80 */	li r6, 0x80
/* 804BA7E4  4B B8 1B 08 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804BA7E8  3C 80 00 08 */	lis r4, 8
/* 804BA7EC  38 B7 00 84 */	addi r5, r23, 0x84
/* 804BA7F0  4B B5 A4 64 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804BA7F4  38 19 06 64 */	addi r0, r25, 0x664
/* 804BA7F8  7C 7E 01 2E */	stwx r3, r30, r0
/* 804BA7FC  7C 1E 00 2E */	lwzx r0, r30, r0
/* 804BA800  28 00 00 00 */	cmplwi r0, 0
/* 804BA804  40 82 00 0C */	bne lbl_804BA810
/* 804BA808  38 60 00 00 */	li r3, 0
/* 804BA80C  48 00 00 18 */	b lbl_804BA824
lbl_804BA810:
/* 804BA810  3A D6 00 01 */	addi r22, r22, 1
/* 804BA814  2C 16 00 0F */	cmpwi r22, 0xf
/* 804BA818  3B 39 00 04 */	addi r25, r25, 4
/* 804BA81C  41 80 FF 84 */	blt lbl_804BA7A0
lbl_804BA820:
/* 804BA820  38 60 00 01 */	li r3, 1
lbl_804BA824:
/* 804BA824  39 61 00 60 */	addi r11, r1, 0x60
/* 804BA828  4B EA 79 DC */	b _restgpr_20
/* 804BA82C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804BA830  7C 08 03 A6 */	mtlr r0
/* 804BA834  38 21 00 60 */	addi r1, r1, 0x60
/* 804BA838  4E 80 00 20 */	blr 
