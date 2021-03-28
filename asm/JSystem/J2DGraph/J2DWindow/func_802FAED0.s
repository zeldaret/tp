lbl_802FAED0:
/* 802FAED0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802FAED4  7C 08 02 A6 */	mflr r0
/* 802FAED8  90 01 00 64 */	stw r0, 0x64(r1)
/* 802FAEDC  39 61 00 60 */	addi r11, r1, 0x60
/* 802FAEE0  48 06 72 FD */	bl _savegpr_29
/* 802FAEE4  7C 7D 1B 78 */	mr r29, r3
/* 802FAEE8  7C 9E 23 78 */	mr r30, r4
/* 802FAEEC  7C BF 2B 78 */	mr r31, r5
/* 802FAEF0  C0 04 00 08 */	lfs f0, 8(r4)
/* 802FAEF4  C0 24 00 00 */	lfs f1, 0(r4)
/* 802FAEF8  EC 40 08 28 */	fsubs f2, f0, f1
/* 802FAEFC  A8 03 01 40 */	lha r0, 0x140(r3)
/* 802FAF00  C8 82 C8 40 */	lfd f4, lit_1971(r2)
/* 802FAF04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FAF08  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802FAF0C  3C 80 43 30 */	lis r4, 0x4330
/* 802FAF10  90 81 00 48 */	stw r4, 0x48(r1)
/* 802FAF14  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 802FAF18  EC 00 20 28 */	fsubs f0, f0, f4
/* 802FAF1C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802FAF20  4C 41 13 82 */	cror 2, 1, 2
/* 802FAF24  40 82 00 C4 */	bne lbl_802FAFE8
/* 802FAF28  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 802FAF2C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 802FAF30  EC 60 10 28 */	fsubs f3, f0, f2
/* 802FAF34  A8 1D 01 42 */	lha r0, 0x142(r29)
/* 802FAF38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FAF3C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802FAF40  90 81 00 48 */	stw r4, 0x48(r1)
/* 802FAF44  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 802FAF48  EC 00 20 28 */	fsubs f0, f0, f4
/* 802FAF4C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802FAF50  4C 41 13 82 */	cror 2, 1, 2
/* 802FAF54  40 82 00 94 */	bne lbl_802FAFE8
/* 802FAF58  88 1D 00 B0 */	lbz r0, 0xb0(r29)
/* 802FAF5C  28 00 00 00 */	cmplwi r0, 0
/* 802FAF60  41 82 00 88 */	beq lbl_802FAFE8
/* 802FAF64  C0 62 C8 50 */	lfs f3, lit_2156(r2)
/* 802FAF68  FC 80 18 90 */	fmr f4, f3
/* 802FAF6C  81 83 00 00 */	lwz r12, 0(r3)
/* 802FAF70  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802FAF74  7D 89 03 A6 */	mtctr r12
/* 802FAF78  4E 80 04 21 */	bctrl 
/* 802FAF7C  38 7D 00 50 */	addi r3, r29, 0x50
/* 802FAF80  38 80 00 00 */	li r4, 0
/* 802FAF84  48 06 52 C9 */	bl GXLoadPosMtxImm
/* 802FAF88  38 60 00 00 */	li r3, 0
/* 802FAF8C  48 06 53 61 */	bl GXSetCurrentMtx
/* 802FAF90  88 1D 00 B2 */	lbz r0, 0xb2(r29)
/* 802FAF94  98 1D 00 B3 */	stb r0, 0xb3(r29)
/* 802FAF98  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 802FAF9C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802FAFA0  EC 41 00 28 */	fsubs f2, f1, f0
/* 802FAFA4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 802FAFA8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 802FAFAC  EC 21 00 28 */	fsubs f1, f1, f0
/* 802FAFB0  C0 02 C8 50 */	lfs f0, lit_2156(r2)
/* 802FAFB4  D0 01 00 08 */	stfs f0, 8(r1)
/* 802FAFB8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802FAFBC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802FAFC0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 802FAFC4  7F A3 EB 78 */	mr r3, r29
/* 802FAFC8  38 81 00 08 */	addi r4, r1, 8
/* 802FAFCC  7F E5 FB 78 */	mr r5, r31
/* 802FAFD0  4B FF FA 8D */	bl func_802FAA5C
/* 802FAFD4  38 61 00 18 */	addi r3, r1, 0x18
/* 802FAFD8  48 04 B4 AD */	bl PSMTXIdentity
/* 802FAFDC  38 61 00 18 */	addi r3, r1, 0x18
/* 802FAFE0  38 80 00 00 */	li r4, 0
/* 802FAFE4  48 06 52 69 */	bl GXLoadPosMtxImm
lbl_802FAFE8:
/* 802FAFE8  39 61 00 60 */	addi r11, r1, 0x60
/* 802FAFEC  48 06 72 3D */	bl _restgpr_29
/* 802FAFF0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802FAFF4  7C 08 03 A6 */	mtlr r0
/* 802FAFF8  38 21 00 60 */	addi r1, r1, 0x60
/* 802FAFFC  4E 80 00 20 */	blr 
