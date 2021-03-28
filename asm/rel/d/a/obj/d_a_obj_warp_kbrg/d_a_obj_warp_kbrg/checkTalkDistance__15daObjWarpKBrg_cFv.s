lbl_80D28AE0:
/* 80D28AE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D28AE4  7C 08 02 A6 */	mflr r0
/* 80D28AE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D28AEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D28AF0  7C 7F 1B 78 */	mr r31, r3
/* 80D28AF4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D28AF8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D28AFC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80D28B00  4B 2F 1E 64 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D28B04  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D28B08  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80D28B0C  28 04 00 FF */	cmplwi r4, 0xff
/* 80D28B10  41 82 00 34 */	beq lbl_80D28B44
/* 80D28B14  3C 60 80 D3 */	lis r3, lit_4576@ha
/* 80D28B18  C0 63 96 70 */	lfs f3, lit_4576@l(r3)
/* 80D28B1C  3C 60 80 D3 */	lis r3, lit_4579@ha
/* 80D28B20  C8 43 96 7C */	lfd f2, lit_4579@l(r3)
/* 80D28B24  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D28B28  3C 00 43 30 */	lis r0, 0x4330
/* 80D28B2C  90 01 00 08 */	stw r0, 8(r1)
/* 80D28B30  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D28B34  EC 00 10 28 */	fsubs f0, f0, f2
/* 80D28B38  EC 03 00 32 */	fmuls f0, f3, f0
/* 80D28B3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D28B40  41 80 00 1C */	blt lbl_80D28B5C
lbl_80D28B44:
/* 80D28B44  28 04 00 FF */	cmplwi r4, 0xff
/* 80D28B48  40 82 00 1C */	bne lbl_80D28B64
/* 80D28B4C  3C 60 80 D3 */	lis r3, lit_4577@ha
/* 80D28B50  C0 03 96 74 */	lfs f0, lit_4577@l(r3)
/* 80D28B54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D28B58  40 80 00 0C */	bge lbl_80D28B64
lbl_80D28B5C:
/* 80D28B5C  38 60 00 01 */	li r3, 1
/* 80D28B60  48 00 00 08 */	b lbl_80D28B68
lbl_80D28B64:
/* 80D28B64  38 60 00 00 */	li r3, 0
lbl_80D28B68:
/* 80D28B68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D28B6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D28B70  7C 08 03 A6 */	mtlr r0
/* 80D28B74  38 21 00 20 */	addi r1, r1, 0x20
/* 80D28B78  4E 80 00 20 */	blr 
