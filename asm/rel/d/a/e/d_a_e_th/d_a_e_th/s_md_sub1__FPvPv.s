lbl_807B03C4:
/* 807B03C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B03C8  7C 08 02 A6 */	mflr r0
/* 807B03CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B03D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B03D4  7C 7F 1B 78 */	mr r31, r3
/* 807B03D8  4B 86 89 08 */	b fopAc_IsActor__FPv
/* 807B03DC  2C 03 00 00 */	cmpwi r3, 0
/* 807B03E0  41 82 00 3C */	beq lbl_807B041C
/* 807B03E4  A8 1F 00 08 */	lha r0, 8(r31)
/* 807B03E8  2C 00 01 BC */	cmpwi r0, 0x1bc
/* 807B03EC  40 82 00 30 */	bne lbl_807B041C
/* 807B03F0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807B03F4  54 00 04 2E */	rlwinm r0, r0, 0, 0x10, 0x17
/* 807B03F8  28 00 FF 00 */	cmplwi r0, 0xff00
/* 807B03FC  40 82 00 20 */	bne lbl_807B041C
/* 807B0400  3C 60 80 7B */	lis r3, lit_3942@ha
/* 807B0404  C0 23 44 D0 */	lfs f1, lit_3942@l(r3)
/* 807B0408  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807B040C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807B0410  40 82 00 0C */	bne lbl_807B041C
/* 807B0414  7F E3 FB 78 */	mr r3, r31
/* 807B0418  4B 86 98 64 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_807B041C:
/* 807B041C  38 60 00 00 */	li r3, 0
/* 807B0420  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B0424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B0428  7C 08 03 A6 */	mtlr r0
/* 807B042C  38 21 00 10 */	addi r1, r1, 0x10
/* 807B0430  4E 80 00 20 */	blr 
