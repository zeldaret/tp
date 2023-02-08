lbl_800E6A9C:
/* 800E6A9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E6AA0  7C 08 02 A6 */	mflr r0
/* 800E6AA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E6AA8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800E6AAC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800E6AB0  39 61 00 20 */	addi r11, r1, 0x20
/* 800E6AB4  48 27 B7 25 */	bl _savegpr_28
/* 800E6AB8  7C 7F 1B 78 */	mr r31, r3
/* 800E6ABC  80 03 05 90 */	lwz r0, 0x590(r3)
/* 800E6AC0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800E6AC4  41 82 00 10 */	beq lbl_800E6AD4
/* 800E6AC8  38 80 00 01 */	li r4, 1
/* 800E6ACC  48 00 02 A1 */	bl procGrabReboundInit__9daAlink_cFi
/* 800E6AD0  48 00 01 44 */	b lbl_800E6C14
lbl_800E6AD4:
/* 800E6AD4  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800E6AD8  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 800E6ADC  40 82 00 18 */	bne lbl_800E6AF4
/* 800E6AE0  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800E6AE4  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800E6AE8  41 82 00 0C */	beq lbl_800E6AF4
/* 800E6AEC  3B 80 00 01 */	li r28, 1
/* 800E6AF0  48 00 00 08 */	b lbl_800E6AF8
lbl_800E6AF4:
/* 800E6AF4  3B 80 00 00 */	li r28, 0
lbl_800E6AF8:
/* 800E6AF8  7F E3 FB 78 */	mr r3, r31
/* 800E6AFC  38 80 00 71 */	li r4, 0x71
/* 800E6B00  4B FD C2 A5 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E6B04  2C 03 00 00 */	cmpwi r3, 0
/* 800E6B08  40 82 00 0C */	bne lbl_800E6B14
/* 800E6B0C  38 60 00 00 */	li r3, 0
/* 800E6B10  48 00 01 04 */	b lbl_800E6C14
lbl_800E6B14:
/* 800E6B14  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800E6B18  3B C3 D6 64 */	addi r30, r3, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800E6B1C  C3 FE 00 18 */	lfs f31, 0x18(r30)
/* 800E6B20  7F E3 FB 78 */	mr r3, r31
/* 800E6B24  4B FF D1 49 */	bl checkGrabAnime__9daAlink_cCFv
/* 800E6B28  2C 03 00 00 */	cmpwi r3, 0
/* 800E6B2C  40 82 00 14 */	bne lbl_800E6B40
/* 800E6B30  7F E3 FB 78 */	mr r3, r31
/* 800E6B34  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800E6B38  4B FF D2 85 */	bl setGrabUpperAnime__9daAlink_cFf
/* 800E6B3C  48 00 00 14 */	b lbl_800E6B50
lbl_800E6B40:
/* 800E6B40  7F E3 FB 78 */	mr r3, r31
/* 800E6B44  38 9F 20 48 */	addi r4, r31, 0x2048
/* 800E6B48  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800E6B4C  48 01 B1 A9 */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
lbl_800E6B50:
/* 800E6B50  2C 1C 00 00 */	cmpwi r28, 0
/* 800E6B54  41 82 00 48 */	beq lbl_800E6B9C
/* 800E6B58  7F E3 FB 78 */	mr r3, r31
/* 800E6B5C  4B FD 92 55 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800E6B60  2C 03 00 00 */	cmpwi r3, 0
/* 800E6B64  41 82 00 20 */	beq lbl_800E6B84
/* 800E6B68  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800E6B6C  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha /* 0x8038E7F4@ha */
/* 800E6B70  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l /* 0x8038E7F4@l */
/* 800E6B74  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 800E6B78  EC 01 00 24 */	fdivs f0, f1, f0
/* 800E6B7C  EF FF 00 32 */	fmuls f31, f31, f0
/* 800E6B80  48 00 00 1C */	b lbl_800E6B9C
lbl_800E6B84:
/* 800E6B84  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800E6B88  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha /* 0x8038E7F4@ha */
/* 800E6B8C  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l /* 0x8038E7F4@l */
/* 800E6B90  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 800E6B94  EC 01 00 24 */	fdivs f0, f1, f0
/* 800E6B98  EF FF 00 32 */	fmuls f31, f31, f0
lbl_800E6B9C:
/* 800E6B9C  83 BF 27 E0 */	lwz r29, 0x27e0(r31)
/* 800E6BA0  3B 80 00 01 */	li r28, 1
/* 800E6BA4  7F A3 EB 78 */	mr r3, r29
/* 800E6BA8  4B F8 CC 3D */	bl LockonTruth__12dAttention_cFv
/* 800E6BAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E6BB0  40 82 00 14 */	bne lbl_800E6BC4
/* 800E6BB4  80 1D 03 34 */	lwz r0, 0x334(r29)
/* 800E6BB8  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800E6BBC  40 82 00 08 */	bne lbl_800E6BC4
/* 800E6BC0  3B 80 00 00 */	li r28, 0
lbl_800E6BC4:
/* 800E6BC4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 800E6BC8  41 82 00 2C */	beq lbl_800E6BF4
/* 800E6BCC  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800E6BD0  28 00 01 6C */	cmplwi r0, 0x16c
/* 800E6BD4  41 82 00 10 */	beq lbl_800E6BE4
/* 800E6BD8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800E6BDC  28 00 00 50 */	cmplwi r0, 0x50
/* 800E6BE0  40 82 00 14 */	bne lbl_800E6BF4
lbl_800E6BE4:
/* 800E6BE4  7F E3 FB 78 */	mr r3, r31
/* 800E6BE8  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 800E6BEC  4B FC 7E 85 */	bl setBlendAtnMoveAnime__9daAlink_cFf
/* 800E6BF0  48 00 00 10 */	b lbl_800E6C00
lbl_800E6BF4:
/* 800E6BF4  7F E3 FB 78 */	mr r3, r31
/* 800E6BF8  FC 20 F8 90 */	fmr f1, f31
/* 800E6BFC  4B FC 72 19 */	bl setBlendMoveAnime__9daAlink_cFf
lbl_800E6C00:
/* 800E6C00  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800E6C04  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800E6C08  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E6C0C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800E6C10  38 60 00 01 */	li r3, 1
lbl_800E6C14:
/* 800E6C14  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800E6C18  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800E6C1C  39 61 00 20 */	addi r11, r1, 0x20
/* 800E6C20  48 27 B6 05 */	bl _restgpr_28
/* 800E6C24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E6C28  7C 08 03 A6 */	mtlr r0
/* 800E6C2C  38 21 00 30 */	addi r1, r1, 0x30
/* 800E6C30  4E 80 00 20 */	blr 
