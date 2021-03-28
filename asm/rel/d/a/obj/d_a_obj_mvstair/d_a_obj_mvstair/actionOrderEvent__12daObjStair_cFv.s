lbl_80C9D8EC:
/* 80C9D8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9D8F0  7C 08 02 A6 */	mflr r0
/* 80C9D8F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9D8F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9D8FC  7C 7F 1B 78 */	mr r31, r3
/* 80C9D900  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80C9D904  28 00 00 02 */	cmplwi r0, 2
/* 80C9D908  40 82 00 10 */	bne lbl_80C9D918
/* 80C9D90C  38 00 00 02 */	li r0, 2
/* 80C9D910  98 1F 06 3D */	stb r0, 0x63d(r31)
/* 80C9D914  48 00 00 30 */	b lbl_80C9D944
lbl_80C9D918:
/* 80C9D918  A8 9F 06 40 */	lha r4, 0x640(r31)
/* 80C9D91C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C9D920  54 05 86 3E */	rlwinm r5, r0, 0x10, 0x18, 0x1f
/* 80C9D924  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80C9D928  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80C9D92C  38 E0 00 00 */	li r7, 0
/* 80C9D930  39 00 00 01 */	li r8, 1
/* 80C9D934  4B 37 DD 48 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80C9D938  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80C9D93C  60 00 00 02 */	ori r0, r0, 2
/* 80C9D940  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80C9D944:
/* 80C9D944  38 60 00 01 */	li r3, 1
/* 80C9D948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9D94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9D950  7C 08 03 A6 */	mtlr r0
/* 80C9D954  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9D958  4E 80 00 20 */	blr 
