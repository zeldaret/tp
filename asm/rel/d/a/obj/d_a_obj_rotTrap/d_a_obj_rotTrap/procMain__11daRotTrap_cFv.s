lbl_80CBFF1C:
/* 80CBFF1C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CBFF20  7C 08 02 A6 */	mflr r0
/* 80CBFF24  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CBFF28  39 61 00 50 */	addi r11, r1, 0x50
/* 80CBFF2C  4B 6A 22 8C */	b _savegpr_20
/* 80CBFF30  7C 7D 1B 78 */	mr r29, r3
/* 80CBFF34  3C 60 80 CC */	lis r3, cNullVec__6Z2Calc@ha
/* 80CBFF38  3B E3 08 60 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80CBFF3C  3C 60 80 CC */	lis r3, data_80CC0AD4@ha
/* 80CBFF40  38 A3 0A D4 */	addi r5, r3, data_80CC0AD4@l
/* 80CBFF44  88 05 00 00 */	lbz r0, 0(r5)
/* 80CBFF48  7C 00 07 75 */	extsb. r0, r0
/* 80CBFF4C  40 82 00 58 */	bne lbl_80CBFFA4
/* 80CBFF50  80 7F 01 44 */	lwz r3, 0x144(r31)
/* 80CBFF54  80 1F 01 48 */	lwz r0, 0x148(r31)
/* 80CBFF58  90 7F 01 68 */	stw r3, 0x168(r31)
/* 80CBFF5C  90 1F 01 6C */	stw r0, 0x16c(r31)
/* 80CBFF60  80 1F 01 4C */	lwz r0, 0x14c(r31)
/* 80CBFF64  90 1F 01 70 */	stw r0, 0x170(r31)
/* 80CBFF68  38 9F 01 68 */	addi r4, r31, 0x168
/* 80CBFF6C  80 7F 01 50 */	lwz r3, 0x150(r31)
/* 80CBFF70  80 1F 01 54 */	lwz r0, 0x154(r31)
/* 80CBFF74  90 64 00 0C */	stw r3, 0xc(r4)
/* 80CBFF78  90 04 00 10 */	stw r0, 0x10(r4)
/* 80CBFF7C  80 1F 01 58 */	lwz r0, 0x158(r31)
/* 80CBFF80  90 04 00 14 */	stw r0, 0x14(r4)
/* 80CBFF84  80 7F 01 5C */	lwz r3, 0x15c(r31)
/* 80CBFF88  80 1F 01 60 */	lwz r0, 0x160(r31)
/* 80CBFF8C  90 64 00 18 */	stw r3, 0x18(r4)
/* 80CBFF90  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80CBFF94  80 1F 01 64 */	lwz r0, 0x164(r31)
/* 80CBFF98  90 04 00 20 */	stw r0, 0x20(r4)
/* 80CBFF9C  38 00 00 01 */	li r0, 1
/* 80CBFFA0  98 05 00 00 */	stb r0, 0(r5)
lbl_80CBFFA4:
/* 80CBFFA4  7F A3 EB 78 */	mr r3, r29
/* 80CBFFA8  88 1D 05 AC */	lbz r0, 0x5ac(r29)
/* 80CBFFAC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CBFFB0  39 9F 01 68 */	addi r12, r31, 0x168
/* 80CBFFB4  7D 8C 02 14 */	add r12, r12, r0
/* 80CBFFB8  4B 6A 20 CC */	b __ptmf_scall
/* 80CBFFBC  60 00 00 00 */	nop 
/* 80CBFFC0  3B C0 00 00 */	li r30, 0
/* 80CBFFC4  3B 80 00 00 */	li r28, 0
/* 80CBFFC8  3B 60 00 00 */	li r27, 0
/* 80CBFFCC  3B 40 00 00 */	li r26, 0
/* 80CBFFD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBFFD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CBFFD8  3A C3 23 3C */	addi r22, r3, 0x233c
/* 80CBFFDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CBFFE0  3A E3 D4 70 */	addi r23, r3, now__14mDoMtx_stack_c@l
/* 80CBFFE4  3B 1F 01 0C */	addi r24, r31, 0x10c
/* 80CBFFE8  3C 60 80 CC */	lis r3, lit_3880@ha
/* 80CBFFEC  3B 23 08 3C */	addi r25, r3, lit_3880@l
lbl_80CBFFF0:
/* 80CBFFF0  7E E3 BB 78 */	mr r3, r23
/* 80CBFFF4  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 80CBFFF8  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 80CBFFFC  A8 DD 04 E8 */	lha r6, 0x4e8(r29)
/* 80CC0000  4B 34 C2 08 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80CC0004  38 7F 00 64 */	addi r3, r31, 0x64
/* 80CC0008  7C 63 D2 14 */	add r3, r3, r26
/* 80CC000C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80CC0010  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CC0014  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CC0018  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CC001C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CC0020  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CC0024  7E E3 BB 78 */	mr r3, r23
/* 80CC0028  38 81 00 08 */	addi r4, r1, 8
/* 80CC002C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CC0030  4B 68 6D 3C */	b PSMTXMultVec
/* 80CC0034  38 61 00 14 */	addi r3, r1, 0x14
/* 80CC0038  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80CC003C  7C 65 1B 78 */	mr r5, r3
/* 80CC0040  4B 68 70 50 */	b PSVECAdd
/* 80CC0044  7E 9D DA 14 */	add r20, r29, r27
/* 80CC0048  3A B4 07 14 */	addi r21, r20, 0x714
/* 80CC004C  7E A3 AB 78 */	mr r3, r21
/* 80CC0050  7C 38 E4 2E */	lfsx f1, r24, r28
/* 80CC0054  4B 5A F1 AC */	b SetR__8cM3dGCylFf
/* 80CC0058  7E A3 AB 78 */	mr r3, r21
/* 80CC005C  C0 39 00 00 */	lfs f1, 0(r25)
/* 80CC0060  4B 5A F1 98 */	b SetH__8cM3dGCylFf
/* 80CC0064  7E A3 AB 78 */	mr r3, r21
/* 80CC0068  38 81 00 14 */	addi r4, r1, 0x14
/* 80CC006C  4B 5A F1 70 */	b SetC__8cM3dGCylFRC4cXyz
/* 80CC0070  7E C3 B3 78 */	mr r3, r22
/* 80CC0074  38 94 05 F0 */	addi r4, r20, 0x5f0
/* 80CC0078  4B 5A 4B 30 */	b Set__4cCcSFP8cCcD_Obj
/* 80CC007C  3B DE 00 01 */	addi r30, r30, 1
/* 80CC0080  2C 1E 00 0E */	cmpwi r30, 0xe
/* 80CC0084  3B 9C 00 04 */	addi r28, r28, 4
/* 80CC0088  3B 7B 01 3C */	addi r27, r27, 0x13c
/* 80CC008C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80CC0090  41 80 FF 60 */	blt lbl_80CBFFF0
/* 80CC0094  39 61 00 50 */	addi r11, r1, 0x50
/* 80CC0098  4B 6A 21 6C */	b _restgpr_20
/* 80CC009C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CC00A0  7C 08 03 A6 */	mtlr r0
/* 80CC00A4  38 21 00 50 */	addi r1, r1, 0x50
/* 80CC00A8  4E 80 00 20 */	blr 
