lbl_80C81154:
/* 80C81154  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C81158  7C 08 02 A6 */	mflr r0
/* 80C8115C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C81160  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C81164  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C81168  7C 7E 1B 78 */	mr r30, r3
/* 80C8116C  3C 60 80 C8 */	lis r3, l_eye_offset@ha /* 0x80C81C2C@ha */
/* 80C81170  3B E3 1C 2C */	addi r31, r3, l_eye_offset@l /* 0x80C81C2C@l */
/* 80C81174  88 1E 0A 16 */	lbz r0, 0xa16(r30)
/* 80C81178  28 00 00 06 */	cmplwi r0, 6
/* 80C8117C  41 81 02 4C */	bgt lbl_80C813C8
/* 80C81180  3C 60 80 C8 */	lis r3, lit_5281@ha /* 0x80C81EFC@ha */
/* 80C81184  38 63 1E FC */	addi r3, r3, lit_5281@l /* 0x80C81EFC@l */
/* 80C81188  54 00 10 3A */	slwi r0, r0, 2
/* 80C8118C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C81190  7C 09 03 A6 */	mtctr r0
/* 80C81194  4E 80 04 20 */	bctr 
lbl_80C81198:
/* 80C81198  38 7E 0A 11 */	addi r3, r30, 0xa11
/* 80C8119C  48 00 0A 31 */	bl func_80C81BCC
/* 80C811A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C811A4  40 82 02 24 */	bne lbl_80C813C8
/* 80C811A8  38 00 00 01 */	li r0, 1
/* 80C811AC  98 1E 0A 16 */	stb r0, 0xa16(r30)
/* 80C811B0  48 00 02 18 */	b lbl_80C813C8
lbl_80C811B4:
/* 80C811B4  38 00 01 F4 */	li r0, 0x1f4
/* 80C811B8  B0 1E 09 D8 */	sth r0, 0x9d8(r30)
/* 80C811BC  80 7E 0A 50 */	lwz r3, 0xa50(r30)
/* 80C811C0  28 03 00 00 */	cmplwi r3, 0
/* 80C811C4  41 82 00 30 */	beq lbl_80C811F4
/* 80C811C8  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80C811CC  60 00 00 01 */	ori r0, r0, 1
/* 80C811D0  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80C811D4  38 00 00 01 */	li r0, 1
/* 80C811D8  90 03 00 24 */	stw r0, 0x24(r3)
/* 80C811DC  80 7E 0A 50 */	lwz r3, 0xa50(r30)
/* 80C811E0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80C811E4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80C811E8  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80C811EC  38 00 00 00 */	li r0, 0
/* 80C811F0  90 1E 0A 50 */	stw r0, 0xa50(r30)
lbl_80C811F4:
/* 80C811F4  80 7E 0A 54 */	lwz r3, 0xa54(r30)
/* 80C811F8  28 03 00 00 */	cmplwi r3, 0
/* 80C811FC  41 82 00 30 */	beq lbl_80C8122C
/* 80C81200  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80C81204  60 00 00 01 */	ori r0, r0, 1
/* 80C81208  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80C8120C  38 00 00 01 */	li r0, 1
/* 80C81210  90 03 00 24 */	stw r0, 0x24(r3)
/* 80C81214  80 7E 0A 54 */	lwz r3, 0xa54(r30)
/* 80C81218  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80C8121C  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80C81220  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80C81224  38 00 00 00 */	li r0, 0
/* 80C81228  90 1E 0A 54 */	stw r0, 0xa54(r30)
lbl_80C8122C:
/* 80C8122C  38 00 00 02 */	li r0, 2
/* 80C81230  98 1E 0A 16 */	stb r0, 0xa16(r30)
/* 80C81234  48 00 01 94 */	b lbl_80C813C8
lbl_80C81238:
/* 80C81238  38 7E 09 D8 */	addi r3, r30, 0x9d8
/* 80C8123C  38 80 00 00 */	li r4, 0
/* 80C81240  38 A0 00 5A */	li r5, 0x5a
/* 80C81244  38 C0 00 0A */	li r6, 0xa
/* 80C81248  38 E0 00 05 */	li r7, 5
/* 80C8124C  4B 5E F2 F5 */	bl cLib_addCalcAngleS__FPsssss
/* 80C81250  A8 7E 09 C2 */	lha r3, 0x9c2(r30)
/* 80C81254  A8 1E 09 C4 */	lha r0, 0x9c4(r30)
/* 80C81258  7C 03 00 00 */	cmpw r3, r0
/* 80C8125C  40 82 01 6C */	bne lbl_80C813C8
/* 80C81260  38 00 00 00 */	li r0, 0
/* 80C81264  B0 1E 09 D8 */	sth r0, 0x9d8(r30)
/* 80C81268  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C8126C  D0 1E 0A 28 */	stfs f0, 0xa28(r30)
/* 80C81270  38 00 00 03 */	li r0, 3
/* 80C81274  98 1E 0A 16 */	stb r0, 0xa16(r30)
/* 80C81278  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C8127C  7C 03 07 74 */	extsb r3, r0
/* 80C81280  4B 3A BD ED */	bl dComIfGp_getReverb__Fi
/* 80C81284  7C 67 1B 78 */	mr r7, r3
/* 80C81288  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070228@ha */
/* 80C8128C  38 03 02 28 */	addi r0, r3, 0x0228 /* 0x00070228@l */
/* 80C81290  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C81294  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C81298  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C8129C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C812A0  38 81 00 0C */	addi r4, r1, 0xc
/* 80C812A4  38 BE 05 38 */	addi r5, r30, 0x538
/* 80C812A8  38 C0 00 00 */	li r6, 0
/* 80C812AC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C812B0  FC 40 08 90 */	fmr f2, f1
/* 80C812B4  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80C812B8  FC 80 18 90 */	fmr f4, f3
/* 80C812BC  39 00 00 00 */	li r8, 0
/* 80C812C0  4B 62 A6 C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C812C4  48 00 01 04 */	b lbl_80C813C8
lbl_80C812C8:
/* 80C812C8  38 00 00 14 */	li r0, 0x14
/* 80C812CC  98 1E 0A 11 */	stb r0, 0xa11(r30)
/* 80C812D0  38 00 00 04 */	li r0, 4
/* 80C812D4  98 1E 0A 16 */	stb r0, 0xa16(r30)
/* 80C812D8  48 00 00 F0 */	b lbl_80C813C8
lbl_80C812DC:
/* 80C812DC  38 7E 0A 11 */	addi r3, r30, 0xa11
/* 80C812E0  48 00 08 ED */	bl func_80C81BCC
/* 80C812E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C812E8  40 82 00 E0 */	bne lbl_80C813C8
/* 80C812EC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80C812F0  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80C812F4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C812F8  38 00 00 05 */	li r0, 5
/* 80C812FC  98 1E 0A 16 */	stb r0, 0xa16(r30)
/* 80C81300  48 00 00 C8 */	b lbl_80C813C8
lbl_80C81304:
/* 80C81304  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80C81308  A8 03 00 08 */	lha r0, 8(r3)
/* 80C8130C  C8 3F 00 20 */	lfd f1, 0x20(r31)
/* 80C81310  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C81314  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C81318  3C 00 43 30 */	lis r0, 0x4330
/* 80C8131C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C81320  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C81324  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C81328  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 80C8132C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80C81330  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C81334  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80C81338  40 82 00 50 */	bne lbl_80C81388
/* 80C8133C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C81340  7C 03 07 74 */	extsb r3, r0
/* 80C81344  4B 3A BD 29 */	bl dComIfGp_getReverb__Fi
/* 80C81348  7C 67 1B 78 */	mr r7, r3
/* 80C8134C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701DD@ha */
/* 80C81350  38 03 01 DD */	addi r0, r3, 0x01DD /* 0x000701DD@l */
/* 80C81354  90 01 00 08 */	stw r0, 8(r1)
/* 80C81358  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C8135C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C81360  80 63 00 00 */	lwz r3, 0(r3)
/* 80C81364  38 81 00 08 */	addi r4, r1, 8
/* 80C81368  38 BE 05 38 */	addi r5, r30, 0x538
/* 80C8136C  38 C0 00 00 */	li r6, 0
/* 80C81370  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C81374  FC 40 08 90 */	fmr f2, f1
/* 80C81378  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80C8137C  FC 80 18 90 */	fmr f4, f3
/* 80C81380  39 00 00 00 */	li r8, 0
/* 80C81384  4B 62 A6 01 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C81388:
/* 80C81388  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80C8138C  38 80 00 01 */	li r4, 1
/* 80C81390  88 03 00 05 */	lbz r0, 5(r3)
/* 80C81394  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C81398  40 82 00 18 */	bne lbl_80C813B0
/* 80C8139C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C813A0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C813A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C813A8  41 82 00 08 */	beq lbl_80C813B0
/* 80C813AC  38 80 00 00 */	li r4, 0
lbl_80C813B0:
/* 80C813B0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C813B4  41 82 00 14 */	beq lbl_80C813C8
/* 80C813B8  38 00 00 0A */	li r0, 0xa
/* 80C813BC  98 1E 0A 11 */	stb r0, 0xa11(r30)
/* 80C813C0  38 00 00 06 */	li r0, 6
/* 80C813C4  98 1E 0A 16 */	stb r0, 0xa16(r30)
lbl_80C813C8:
/* 80C813C8  A8 1E 09 D8 */	lha r0, 0x9d8(r30)
/* 80C813CC  B0 1E 09 DC */	sth r0, 0x9dc(r30)
/* 80C813D0  A8 7E 09 DA */	lha r3, 0x9da(r30)
/* 80C813D4  A8 1E 09 C6 */	lha r0, 0x9c6(r30)
/* 80C813D8  7C 03 00 50 */	subf r0, r3, r0
/* 80C813DC  B0 1E 09 C8 */	sth r0, 0x9c8(r30)
/* 80C813E0  A8 7E 09 CA */	lha r3, 0x9ca(r30)
/* 80C813E4  A8 1E 09 DA */	lha r0, 0x9da(r30)
/* 80C813E8  7C 03 02 14 */	add r0, r3, r0
/* 80C813EC  B0 1E 09 CC */	sth r0, 0x9cc(r30)
/* 80C813F0  A8 7E 09 CE */	lha r3, 0x9ce(r30)
/* 80C813F4  A8 1E 09 DA */	lha r0, 0x9da(r30)
/* 80C813F8  7C 03 02 14 */	add r0, r3, r0
/* 80C813FC  B0 1E 09 D0 */	sth r0, 0x9d0(r30)
/* 80C81400  A8 7E 09 D2 */	lha r3, 0x9d2(r30)
/* 80C81404  A8 1E 09 DA */	lha r0, 0x9da(r30)
/* 80C81408  7C 03 02 14 */	add r0, r3, r0
/* 80C8140C  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 80C81410  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C81414  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C81418  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8141C  7C 08 03 A6 */	mtlr r0
/* 80C81420  38 21 00 20 */	addi r1, r1, 0x20
/* 80C81424  4E 80 00 20 */	blr 
