lbl_809EAE88:
/* 809EAE88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809EAE8C  7C 08 02 A6 */	mflr r0
/* 809EAE90  90 01 00 24 */	stw r0, 0x24(r1)
/* 809EAE94  39 61 00 20 */	addi r11, r1, 0x20
/* 809EAE98  4B 97 73 41 */	bl _savegpr_28
/* 809EAE9C  7C 7E 1B 78 */	mr r30, r3
/* 809EAEA0  3C 80 80 9F */	lis r4, m__17daNpc_Grz_Param_c@ha /* 0x809EF1F4@ha */
/* 809EAEA4  3B E4 F1 F4 */	addi r31, r4, m__17daNpc_Grz_Param_c@l /* 0x809EF1F4@l */
/* 809EAEA8  4B 76 7A 21 */	bl initialize__8daNpcF_cFv
/* 809EAEAC  80 7E 0B D8 */	lwz r3, 0xbd8(r30)
/* 809EAEB0  4B 76 58 89 */	bl initialize__15daNpcF_MatAnm_cFv
/* 809EAEB4  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 809EAEB8  4B 76 5A 49 */	bl initialize__13daNpcF_Path_cFv
/* 809EAEBC  88 1E 1A 7C */	lbz r0, 0x1a7c(r30)
/* 809EAEC0  28 00 00 02 */	cmplwi r0, 2
/* 809EAEC4  40 82 00 30 */	bne lbl_809EAEF4
/* 809EAEC8  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 809EAECC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 809EAED0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 809EAED4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809EAED8  7C 05 07 74 */	extsb r5, r0
/* 809EAEDC  38 C0 00 00 */	li r6, 0
/* 809EAEE0  4B 76 5A 7D */	bl setPathInfo__13daNpcF_Path_cFUcScUc
/* 809EAEE4  2C 03 00 00 */	cmpwi r3, 0
/* 809EAEE8  41 82 00 0C */	beq lbl_809EAEF4
/* 809EAEEC  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809EAEF0  D0 1E 0C 80 */	stfs f0, 0xc80(r30)
lbl_809EAEF4:
/* 809EAEF4  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 809EAEF8  4B 76 61 41 */	bl initialize__15daNpcF_Lookat_cFv
/* 809EAEFC  3B 80 00 00 */	li r28, 0
/* 809EAF00  3B A0 00 00 */	li r29, 0
lbl_809EAF04:
/* 809EAF04  38 7D 12 A8 */	addi r3, r29, 0x12a8
/* 809EAF08  7C 7E 1A 14 */	add r3, r30, r3
/* 809EAF0C  4B 76 57 A5 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809EAF10  3B 9C 00 01 */	addi r28, r28, 1
/* 809EAF14  2C 1C 00 04 */	cmpwi r28, 4
/* 809EAF18  3B BD 00 08 */	addi r29, r29, 8
/* 809EAF1C  41 80 FF E8 */	blt lbl_809EAF04
/* 809EAF20  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809EAF24  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809EAF28  80 64 00 00 */	lwz r3, 0(r4)
/* 809EAF2C  80 04 00 04 */	lwz r0, 4(r4)
/* 809EAF30  90 7E 1A 24 */	stw r3, 0x1a24(r30)
/* 809EAF34  90 1E 1A 28 */	stw r0, 0x1a28(r30)
/* 809EAF38  80 04 00 08 */	lwz r0, 8(r4)
/* 809EAF3C  90 1E 1A 2C */	stw r0, 0x1a2c(r30)
/* 809EAF40  80 64 00 00 */	lwz r3, 0(r4)
/* 809EAF44  80 04 00 04 */	lwz r0, 4(r4)
/* 809EAF48  90 7E 1A 30 */	stw r3, 0x1a30(r30)
/* 809EAF4C  90 1E 1A 34 */	stw r0, 0x1a34(r30)
/* 809EAF50  80 04 00 08 */	lwz r0, 8(r4)
/* 809EAF54  90 1E 1A 38 */	stw r0, 0x1a38(r30)
/* 809EAF58  38 60 00 00 */	li r3, 0
/* 809EAF5C  90 7E 1A 64 */	stw r3, 0x1a64(r30)
/* 809EAF60  90 7E 1A 68 */	stw r3, 0x1a68(r30)
/* 809EAF64  90 7E 1A 6C */	stw r3, 0x1a6c(r30)
/* 809EAF68  90 7E 1A 70 */	stw r3, 0x1a70(r30)
/* 809EAF6C  38 00 FF FF */	li r0, -1
/* 809EAF70  B0 1E 1A 78 */	sth r0, 0x1a78(r30)
/* 809EAF74  B0 7E 1A 7A */	sth r3, 0x1a7a(r30)
/* 809EAF78  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 809EAF7C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 809EAF80  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 809EAF84  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 809EAF88  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 809EAF8C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 809EAF90  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809EAF94  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 809EAF98  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809EAF9C  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 809EAFA0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809EAFA4  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 809EAFA8  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 809EAFAC  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 809EAFB0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 809EAFB4  B0 7E 04 E0 */	sth r3, 0x4e0(r30)
/* 809EAFB8  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 809EAFBC  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 809EAFC0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 809EAFC4  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 809EAFC8  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 809EAFCC  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 809EAFD0  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 809EAFD4  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 809EAFD8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 809EAFDC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 809EAFE0  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 809EAFE4  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 809EAFE8  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 809EAFEC  B0 1E 08 F0 */	sth r0, 0x8f0(r30)
/* 809EAFF0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 809EAFF4  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 809EAFF8  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 809EAFFC  B0 1E 08 F4 */	sth r0, 0x8f4(r30)
/* 809EB000  A8 1E 08 F0 */	lha r0, 0x8f0(r30)
/* 809EB004  B0 1E 08 F6 */	sth r0, 0x8f6(r30)
/* 809EB008  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 809EB00C  B0 1E 08 F8 */	sth r0, 0x8f8(r30)
/* 809EB010  A8 1E 08 F4 */	lha r0, 0x8f4(r30)
/* 809EB014  B0 1E 08 FA */	sth r0, 0x8fa(r30)
/* 809EB018  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 809EB01C  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 809EB020  D0 3E 04 F8 */	stfs f1, 0x4f8(r30)
/* 809EB024  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 809EB028  D0 3E 05 00 */	stfs f1, 0x500(r30)
/* 809EB02C  38 7E 1A D0 */	addi r3, r30, 0x1ad0
/* 809EB030  38 9E 05 D0 */	addi r4, r30, 0x5d0
/* 809EB034  FC 40 08 90 */	fmr f2, f1
/* 809EB038  4B 66 5C 65 */	bl init__7dPaPo_cFP9dBgS_Acchff
/* 809EB03C  88 1E 1A 7C */	lbz r0, 0x1a7c(r30)
/* 809EB040  28 00 00 01 */	cmplwi r0, 1
/* 809EB044  40 82 00 70 */	bne lbl_809EB0B4
/* 809EB048  38 00 00 02 */	li r0, 2
/* 809EB04C  90 1E 1A 84 */	stw r0, 0x1a84(r30)
/* 809EB050  38 00 00 D0 */	li r0, 0xd0
/* 809EB054  90 1E 1A 74 */	stw r0, 0x1a74(r30)
/* 809EB058  38 7F 00 00 */	addi r3, r31, 0
/* 809EB05C  A8 03 00 6E */	lha r0, 0x6e(r3)
/* 809EB060  B0 1E 1A 90 */	sth r0, 0x1a90(r30)
/* 809EB064  A8 03 00 70 */	lha r0, 0x70(r3)
/* 809EB068  B0 1E 1A 92 */	sth r0, 0x1a92(r30)
/* 809EB06C  A8 03 00 72 */	lha r0, 0x72(r3)
/* 809EB070  B0 1E 1A 94 */	sth r0, 0x1a94(r30)
/* 809EB074  7F C3 F3 78 */	mr r3, r30
/* 809EB078  38 80 00 07 */	li r4, 7
/* 809EB07C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 809EB080  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809EB084  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809EB088  7D 89 03 A6 */	mtctr r12
/* 809EB08C  4E 80 04 21 */	bctrl 
/* 809EB090  7F C3 F3 78 */	mr r3, r30
/* 809EB094  38 80 00 0B */	li r4, 0xb
/* 809EB098  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 809EB09C  38 A0 00 00 */	li r5, 0
/* 809EB0A0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809EB0A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809EB0A8  7D 89 03 A6 */	mtctr r12
/* 809EB0AC  4E 80 04 21 */	bctrl 
/* 809EB0B0  48 00 00 54 */	b lbl_809EB104
lbl_809EB0B4:
/* 809EB0B4  38 00 00 00 */	li r0, 0
/* 809EB0B8  90 1E 1A 84 */	stw r0, 0x1a84(r30)
/* 809EB0BC  B0 1E 1A 90 */	sth r0, 0x1a90(r30)
/* 809EB0C0  B0 1E 1A 92 */	sth r0, 0x1a92(r30)
/* 809EB0C4  B0 1E 1A 94 */	sth r0, 0x1a94(r30)
/* 809EB0C8  7F C3 F3 78 */	mr r3, r30
/* 809EB0CC  38 80 00 0A */	li r4, 0xa
/* 809EB0D0  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 809EB0D4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809EB0D8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809EB0DC  7D 89 03 A6 */	mtctr r12
/* 809EB0E0  4E 80 04 21 */	bctrl 
/* 809EB0E4  7F C3 F3 78 */	mr r3, r30
/* 809EB0E8  38 80 00 00 */	li r4, 0
/* 809EB0EC  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 809EB0F0  38 A0 00 00 */	li r5, 0
/* 809EB0F4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809EB0F8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809EB0FC  7D 89 03 A6 */	mtctr r12
/* 809EB100  4E 80 04 21 */	bctrl 
lbl_809EB104:
/* 809EB104  38 00 00 00 */	li r0, 0
/* 809EB108  90 1E 1A 8C */	stw r0, 0x1a8c(r30)
/* 809EB10C  90 1E 1A 88 */	stw r0, 0x1a88(r30)
/* 809EB110  90 1E 1A 9C */	stw r0, 0x1a9c(r30)
/* 809EB114  38 60 00 00 */	li r3, 0
/* 809EB118  38 80 FF FF */	li r4, -1
/* 809EB11C  38 00 00 03 */	li r0, 3
/* 809EB120  7C 09 03 A6 */	mtctr r0
lbl_809EB124:
/* 809EB124  38 03 1A A0 */	addi r0, r3, 0x1aa0
/* 809EB128  7C 9E 01 2E */	stwx r4, r30, r0
/* 809EB12C  38 63 00 04 */	addi r3, r3, 4
/* 809EB130  42 00 FF F4 */	bdnz lbl_809EB124
/* 809EB134  38 00 00 01 */	li r0, 1
/* 809EB138  98 1E 09 EE */	stb r0, 0x9ee(r30)
/* 809EB13C  39 61 00 20 */	addi r11, r1, 0x20
/* 809EB140  4B 97 70 E5 */	bl _restgpr_28
/* 809EB144  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809EB148  7C 08 03 A6 */	mtlr r0
/* 809EB14C  38 21 00 20 */	addi r1, r1, 0x20
/* 809EB150  4E 80 00 20 */	blr 
