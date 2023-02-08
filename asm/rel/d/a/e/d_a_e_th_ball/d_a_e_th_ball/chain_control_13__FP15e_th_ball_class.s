lbl_807B5B38:
/* 807B5B38  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807B5B3C  7C 08 02 A6 */	mflr r0
/* 807B5B40  90 01 00 74 */	stw r0, 0x74(r1)
/* 807B5B44  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 807B5B48  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 807B5B4C  39 61 00 60 */	addi r11, r1, 0x60
/* 807B5B50  4B BA C6 85 */	bl _savegpr_27
/* 807B5B54  7C 7B 1B 78 */	mr r27, r3
/* 807B5B58  3B DB 0D EC */	addi r30, r27, 0xdec
/* 807B5B5C  80 03 0D E8 */	lwz r0, 0xde8(r3)
/* 807B5B60  1C 00 00 0C */	mulli r0, r0, 0xc
/* 807B5B64  7C BE 02 14 */	add r5, r30, r0
/* 807B5B68  38 61 00 14 */	addi r3, r1, 0x14
/* 807B5B6C  38 85 01 40 */	addi r4, r5, 0x140
/* 807B5B70  38 A5 00 50 */	addi r5, r5, 0x50
/* 807B5B74  4B AB 0F C1 */	bl __mi__4cXyzCFRC3Vec
/* 807B5B78  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807B5B7C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807B5B80  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807B5B84  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B5B88  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807B5B8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807B5B90  80 1B 0D E8 */	lwz r0, 0xde8(r27)
/* 807B5B94  1C 60 00 0C */	mulli r3, r0, 0xc
/* 807B5B98  3B A3 00 50 */	addi r29, r3, 0x50
/* 807B5B9C  7F BE EA 14 */	add r29, r30, r29
/* 807B5BA0  23 80 00 14 */	subfic r28, r0, 0x14
/* 807B5BA4  3B 60 00 00 */	li r27, 0
/* 807B5BA8  3C 60 80 7B */	lis r3, lit_4027@ha /* 0x807B7F10@ha */
/* 807B5BAC  CB E3 7F 10 */	lfd f31, lit_4027@l(r3)  /* 0x807B7F10@l */
/* 807B5BB0  3F C0 43 30 */	lis r30, 0x4330
/* 807B5BB4  6F 9F 80 00 */	xoris r31, r28, 0x8000
/* 807B5BB8  48 00 00 54 */	b lbl_807B5C0C
lbl_807B5BBC:
/* 807B5BBC  38 61 00 08 */	addi r3, r1, 8
/* 807B5BC0  38 81 00 20 */	addi r4, r1, 0x20
/* 807B5BC4  7C 1B E0 50 */	subf r0, r27, r28
/* 807B5BC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807B5BCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 807B5BD0  93 C1 00 30 */	stw r30, 0x30(r1)
/* 807B5BD4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 807B5BD8  EC 20 F8 28 */	fsubs f1, f0, f31
/* 807B5BDC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807B5BE0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 807B5BE4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 807B5BE8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 807B5BEC  EC 21 00 24 */	fdivs f1, f1, f0
/* 807B5BF0  4B AB 0F 95 */	bl __ml__4cXyzCFf
/* 807B5BF4  7F A3 EB 78 */	mr r3, r29
/* 807B5BF8  38 81 00 08 */	addi r4, r1, 8
/* 807B5BFC  7F A5 EB 78 */	mr r5, r29
/* 807B5C00  4B B9 14 91 */	bl PSVECAdd
/* 807B5C04  3B 7B 00 01 */	addi r27, r27, 1
/* 807B5C08  3B BD 00 0C */	addi r29, r29, 0xc
lbl_807B5C0C:
/* 807B5C0C  7C 1B E0 00 */	cmpw r27, r28
/* 807B5C10  41 80 FF AC */	blt lbl_807B5BBC
/* 807B5C14  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 807B5C18  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 807B5C1C  39 61 00 60 */	addi r11, r1, 0x60
/* 807B5C20  4B BA C6 01 */	bl _restgpr_27
/* 807B5C24  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807B5C28  7C 08 03 A6 */	mtlr r0
/* 807B5C2C  38 21 00 70 */	addi r1, r1, 0x70
/* 807B5C30  4E 80 00 20 */	blr 
