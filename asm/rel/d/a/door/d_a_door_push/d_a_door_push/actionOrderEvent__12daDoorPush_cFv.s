lbl_8067877C:
/* 8067877C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80678780  7C 08 02 A6 */	mflr r0
/* 80678784  90 01 00 14 */	stw r0, 0x14(r1)
/* 80678788  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067878C  7C 7F 1B 78 */	mr r31, r3
/* 80678790  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80678794  28 00 00 02 */	cmplwi r0, 2
/* 80678798  40 82 00 14 */	bne lbl_806787AC
/* 8067879C  38 00 00 02 */	li r0, 2
/* 806787A0  98 1F 06 40 */	stb r0, 0x640(r31)
/* 806787A4  48 00 00 75 */	bl demoProc__12daDoorPush_cFv
/* 806787A8  48 00 00 3C */	b lbl_806787E4
lbl_806787AC:
/* 806787AC  88 BF 06 39 */	lbz r5, 0x639(r31)
/* 806787B0  54 A0 08 3C */	slwi r0, r5, 1
/* 806787B4  7C 9F 02 14 */	add r4, r31, r0
/* 806787B8  A8 84 06 3A */	lha r4, 0x63a(r4)
/* 806787BC  7C BF 2A 14 */	add r5, r31, r5
/* 806787C0  88 A5 06 3E */	lbz r5, 0x63e(r5)
/* 806787C4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 806787C8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 806787CC  38 E0 00 00 */	li r7, 0
/* 806787D0  39 00 00 01 */	li r8, 1
/* 806787D4  4B 9A 2E A8 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 806787D8  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 806787DC  60 00 00 02 */	ori r0, r0, 2
/* 806787E0  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_806787E4:
/* 806787E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806787E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806787EC  7C 08 03 A6 */	mtlr r0
/* 806787F0  38 21 00 10 */	addi r1, r1, 0x10
/* 806787F4  4E 80 00 20 */	blr 
