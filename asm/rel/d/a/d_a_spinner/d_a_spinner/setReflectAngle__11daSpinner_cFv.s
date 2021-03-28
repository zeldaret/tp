lbl_804D3090:
/* 804D3090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D3094  7C 08 02 A6 */	mflr r0
/* 804D3098  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D309C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D30A0  93 C1 00 08 */	stw r30, 8(r1)
/* 804D30A4  7C 7F 1B 78 */	mr r31, r3
/* 804D30A8  80 03 0A 64 */	lwz r0, 0xa64(r3)
/* 804D30AC  28 00 00 00 */	cmplwi r0, 0
/* 804D30B0  41 82 00 40 */	beq lbl_804D30F0
/* 804D30B4  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 804D30B8  3C 84 00 01 */	addis r4, r4, 1
/* 804D30BC  38 04 80 00 */	addi r0, r4, -32768
/* 804D30C0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 804D30C4  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 804D30C8  1C 00 FF FF */	mulli r0, r0, -1
/* 804D30CC  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 804D30D0  48 00 05 49 */	bl setNextPathNum__11daSpinner_cFv
/* 804D30D4  88 1F 0A 73 */	lbz r0, 0xa73(r31)
/* 804D30D8  1C 00 FF FF */	mulli r0, r0, -1
/* 804D30DC  98 1F 0A 73 */	stb r0, 0xa73(r31)
/* 804D30E0  88 1F 0A 76 */	lbz r0, 0xa76(r31)
/* 804D30E4  1C 00 FF FF */	mulli r0, r0, -1
/* 804D30E8  98 1F 0A 76 */	stb r0, 0xa76(r31)
/* 804D30EC  48 00 00 70 */	b lbl_804D315C
lbl_804D30F0:
/* 804D30F0  A8 7F 0A 80 */	lha r3, 0xa80(r31)
/* 804D30F4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 804D30F8  7C 03 00 50 */	subf r0, r3, r0
/* 804D30FC  7C 1E 07 34 */	extsh r30, r0
/* 804D3100  7F C3 F3 78 */	mr r3, r30
/* 804D3104  4B E9 1F CC */	b abs
/* 804D3108  2C 03 48 00 */	cmpwi r3, 0x4800
/* 804D310C  40 81 00 24 */	ble lbl_804D3130
/* 804D3110  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 804D3114  3C 63 00 01 */	addis r3, r3, 1
/* 804D3118  38 63 80 00 */	addi r3, r3, -32768
/* 804D311C  A8 1F 0A 80 */	lha r0, 0xa80(r31)
/* 804D3120  54 00 08 3C */	slwi r0, r0, 1
/* 804D3124  7C 03 00 50 */	subf r0, r3, r0
/* 804D3128  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 804D312C  48 00 00 30 */	b lbl_804D315C
lbl_804D3130:
/* 804D3130  2C 1E 38 00 */	cmpwi r30, 0x3800
/* 804D3134  40 81 00 14 */	ble lbl_804D3148
/* 804D3138  A8 7F 0A 80 */	lha r3, 0xa80(r31)
/* 804D313C  38 03 38 00 */	addi r0, r3, 0x3800
/* 804D3140  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 804D3144  48 00 00 18 */	b lbl_804D315C
lbl_804D3148:
/* 804D3148  2C 1E C8 00 */	cmpwi r30, -14336
/* 804D314C  40 80 00 10 */	bge lbl_804D315C
/* 804D3150  A8 7F 0A 80 */	lha r3, 0xa80(r31)
/* 804D3154  38 03 C8 00 */	addi r0, r3, -14336
/* 804D3158  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_804D315C:
/* 804D315C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D3160  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D3164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D3168  7C 08 03 A6 */	mtlr r0
/* 804D316C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D3170  4E 80 00 20 */	blr 
