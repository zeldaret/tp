lbl_80C83998:
/* 80C83998  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C8399C  7C 08 02 A6 */	mflr r0
/* 80C839A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C839A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C839A8  4B 6D E8 34 */	b _savegpr_29
/* 80C839AC  7C 7E 1B 78 */	mr r30, r3
/* 80C839B0  7C DF 33 78 */	mr r31, r6
/* 80C839B4  54 DD 07 BF */	clrlwi. r29, r6, 0x1e
/* 80C839B8  41 82 00 C4 */	beq lbl_80C83A7C
/* 80C839BC  38 61 00 08 */	addi r3, r1, 8
/* 80C839C0  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80C839C4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C839C8  4B 5E 31 6C */	b __mi__4cXyzCFRC3Vec
/* 80C839CC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C839D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C839D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C839D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C839DC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C839E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C839E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C839E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C839EC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80C839F0  7C 00 00 D0 */	neg r0, r0
/* 80C839F4  7C 04 07 34 */	extsh r4, r0
/* 80C839F8  4B 38 89 E4 */	b mDoMtx_YrotS__FPA4_fs
/* 80C839FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C83A00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C83A04  38 81 00 14 */	addi r4, r1, 0x14
/* 80C83A08  7C 85 23 78 */	mr r5, r4
/* 80C83A0C  4B 6C 33 60 */	b PSMTXMultVec
/* 80C83A10  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80C83A14  3C 60 80 C8 */	lis r3, lit_3695@ha
/* 80C83A18  C0 03 46 A4 */	lfs f0, lit_3695@l(r3)
/* 80C83A1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C83A20  40 81 00 10 */	ble lbl_80C83A30
/* 80C83A24  57 A0 FF FE */	rlwinm r0, r29, 0x1f, 0x1f, 0x1f
/* 80C83A28  68 06 00 01 */	xori r6, r0, 1
/* 80C83A2C  48 00 00 08 */	b lbl_80C83A34
lbl_80C83A30:
/* 80C83A30  57 A6 FF FE */	rlwinm r6, r29, 0x1f, 0x1f, 0x1f
lbl_80C83A34:
/* 80C83A34  38 E0 00 00 */	li r7, 0
/* 80C83A38  38 60 00 00 */	li r3, 0
/* 80C83A3C  38 00 00 02 */	li r0, 2
/* 80C83A40  7C 09 03 A6 */	mtctr r0
lbl_80C83A44:
/* 80C83A44  7C 07 30 00 */	cmpw r7, r6
/* 80C83A48  40 82 00 18 */	bne lbl_80C83A60
/* 80C83A4C  38 A7 05 AE */	addi r5, r7, 0x5ae
/* 80C83A50  7C 9E 28 AE */	lbzx r4, r30, r5
/* 80C83A54  38 04 00 01 */	addi r0, r4, 1
/* 80C83A58  7C 1E 29 AE */	stbx r0, r30, r5
/* 80C83A5C  48 00 00 0C */	b lbl_80C83A68
lbl_80C83A60:
/* 80C83A60  38 07 05 AE */	addi r0, r7, 0x5ae
/* 80C83A64  7C 7E 01 AE */	stbx r3, r30, r0
lbl_80C83A68:
/* 80C83A68  38 E7 00 01 */	addi r7, r7, 1
/* 80C83A6C  42 00 FF D8 */	bdnz lbl_80C83A44
/* 80C83A70  38 00 00 01 */	li r0, 1
/* 80C83A74  98 1E 05 AD */	stb r0, 0x5ad(r30)
/* 80C83A78  93 FE 05 C4 */	stw r31, 0x5c4(r30)
lbl_80C83A7C:
/* 80C83A7C  7F C3 F3 78 */	mr r3, r30
/* 80C83A80  39 61 00 30 */	addi r11, r1, 0x30
/* 80C83A84  4B 6D E7 A4 */	b _restgpr_29
/* 80C83A88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C83A8C  7C 08 03 A6 */	mtlr r0
/* 80C83A90  38 21 00 30 */	addi r1, r1, 0x30
/* 80C83A94  4E 80 00 20 */	blr 
