lbl_801C0E4C:
/* 801C0E4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C0E50  7C 08 02 A6 */	mflr r0
/* 801C0E54  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C0E58  39 61 00 30 */	addi r11, r1, 0x30
/* 801C0E5C  48 1A 12 E5 */	bl _savefpr_28
/* 801C0E60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C0E64  93 C1 00 08 */	stw r30, 8(r1)
/* 801C0E68  7C 7E 1B 78 */	mr r30, r3
/* 801C0E6C  7C 86 23 78 */	mr r6, r4
/* 801C0E70  7C BF 2B 78 */	mr r31, r5
/* 801C0E74  FF 80 08 90 */	fmr f28, f1
/* 801C0E78  FF A0 10 90 */	fmr f29, f2
/* 801C0E7C  FF C0 18 90 */	fmr f30, f3
/* 801C0E80  FF E0 20 90 */	fmr f31, f4
/* 801C0E84  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 801C0E88  7C 04 07 74 */	extsb r4, r0
/* 801C0E8C  D3 E3 00 38 */	stfs f31, 0x38(r3)
/* 801C0E90  38 7E 00 04 */	addi r3, r30, 4
/* 801C0E94  7C C5 07 74 */	extsb r5, r6
/* 801C0E98  4B E7 EE 71 */	bl entry__16renderingDAmap_cFfffiSc
/* 801C0E9C  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 801C0EA0  7C 04 07 74 */	extsb r4, r0
/* 801C0EA4  D3 FE 00 70 */	stfs f31, 0x70(r30)
/* 801C0EA8  38 7E 00 3C */	addi r3, r30, 0x3c
/* 801C0EAC  FC 20 E0 90 */	fmr f1, f28
/* 801C0EB0  FC 40 E8 90 */	fmr f2, f29
/* 801C0EB4  FC 60 F0 90 */	fmr f3, f30
/* 801C0EB8  7F E5 07 74 */	extsb r5, r31
/* 801C0EBC  4B E7 EE 4D */	bl entry__16renderingDAmap_cFfffiSc
/* 801C0EC0  39 61 00 30 */	addi r11, r1, 0x30
/* 801C0EC4  48 1A 12 C9 */	bl _restfpr_28
/* 801C0EC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C0ECC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C0ED0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C0ED4  7C 08 03 A6 */	mtlr r0
/* 801C0ED8  38 21 00 30 */	addi r1, r1, 0x30
/* 801C0EDC  4E 80 00 20 */	blr 
