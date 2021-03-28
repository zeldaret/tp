lbl_807B0434:
/* 807B0434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B0438  7C 08 02 A6 */	mflr r0
/* 807B043C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B0440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B0444  7C 7F 1B 78 */	mr r31, r3
/* 807B0448  4B 86 88 98 */	b fopAc_IsActor__FPv
/* 807B044C  2C 03 00 00 */	cmpwi r3, 0
/* 807B0450  41 82 00 3C */	beq lbl_807B048C
/* 807B0454  A8 1F 00 08 */	lha r0, 8(r31)
/* 807B0458  2C 00 01 BC */	cmpwi r0, 0x1bc
/* 807B045C  40 82 00 30 */	bne lbl_807B048C
/* 807B0460  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807B0464  54 00 04 2E */	rlwinm r0, r0, 0, 0x10, 0x17
/* 807B0468  28 00 FF 00 */	cmplwi r0, 0xff00
/* 807B046C  41 82 00 20 */	beq lbl_807B048C
/* 807B0470  3C 60 80 7B */	lis r3, lit_3956@ha
/* 807B0474  C0 23 44 D4 */	lfs f1, lit_3956@l(r3)
/* 807B0478  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807B047C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807B0480  40 82 00 0C */	bne lbl_807B048C
/* 807B0484  7F E3 FB 78 */	mr r3, r31
/* 807B0488  4B 86 97 F4 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_807B048C:
/* 807B048C  38 60 00 00 */	li r3, 0
/* 807B0490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B0494  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B0498  7C 08 03 A6 */	mtlr r0
/* 807B049C  38 21 00 10 */	addi r1, r1, 0x10
/* 807B04A0  4E 80 00 20 */	blr 
