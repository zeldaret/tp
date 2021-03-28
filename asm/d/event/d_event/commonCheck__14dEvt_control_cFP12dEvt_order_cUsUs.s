lbl_800419A8:
/* 800419A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800419AC  7C 08 02 A6 */	mflr r0
/* 800419B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800419B4  80 E4 00 08 */	lwz r7, 8(r4)
/* 800419B8  81 04 00 0C */	lwz r8, 0xc(r4)
/* 800419BC  28 07 00 00 */	cmplwi r7, 0
/* 800419C0  41 82 00 4C */	beq lbl_80041A0C
/* 800419C4  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 800419C8  A0 07 00 FA */	lhz r0, 0xfa(r7)
/* 800419CC  7C A0 00 38 */	and r0, r5, r0
/* 800419D0  7C 05 00 50 */	subf r0, r5, r0
/* 800419D4  7C 00 00 34 */	cntlzw r0, r0
/* 800419D8  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 800419DC  41 82 00 30 */	beq lbl_80041A0C
/* 800419E0  28 08 00 00 */	cmplwi r8, 0
/* 800419E4  41 82 00 28 */	beq lbl_80041A0C
/* 800419E8  A0 08 00 FA */	lhz r0, 0xfa(r8)
/* 800419EC  7C A0 00 38 */	and r0, r5, r0
/* 800419F0  7C 05 00 00 */	cmpw r5, r0
/* 800419F4  40 82 00 18 */	bne lbl_80041A0C
/* 800419F8  B0 C7 00 F8 */	sth r6, 0xf8(r7)
/* 800419FC  B0 C8 00 F8 */	sth r6, 0xf8(r8)
/* 80041A00  4B FF FE 05 */	bl setParam__14dEvt_control_cFP12dEvt_order_c
/* 80041A04  38 60 00 01 */	li r3, 1
/* 80041A08  48 00 00 08 */	b lbl_80041A10
lbl_80041A0C:
/* 80041A0C  38 60 00 00 */	li r3, 0
lbl_80041A10:
/* 80041A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80041A14  7C 08 03 A6 */	mtlr r0
/* 80041A18  38 21 00 10 */	addi r1, r1, 0x10
/* 80041A1C  4E 80 00 20 */	blr 
