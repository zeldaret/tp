lbl_80CEB35C:
/* 80CEB35C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CEB360  7C 08 02 A6 */	mflr r0
/* 80CEB364  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CEB368  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CEB36C  7C 7F 1B 78 */	mr r31, r3
/* 80CEB370  80 03 07 F4 */	lwz r0, 0x7f4(r3)
/* 80CEB374  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CEB378  90 03 07 F4 */	stw r0, 0x7f4(r3)
/* 80CEB37C  80 03 07 C8 */	lwz r0, 0x7c8(r3)
/* 80CEB380  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CEB384  90 03 07 C8 */	stw r0, 0x7c8(r3)
/* 80CEB388  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80CEB38C  90 03 05 24 */	stw r0, 0x524(r3)
/* 80CEB390  38 00 00 00 */	li r0, 0
/* 80CEB394  90 03 09 0C */	stw r0, 0x90c(r3)
/* 80CEB398  88 03 09 07 */	lbz r0, 0x907(r3)
/* 80CEB39C  98 03 09 50 */	stb r0, 0x950(r3)
/* 80CEB3A0  88 03 09 4E */	lbz r0, 0x94e(r3)
/* 80CEB3A4  28 00 00 00 */	cmplwi r0, 0
/* 80CEB3A8  40 82 00 BC */	bne lbl_80CEB464
/* 80CEB3AC  88 1F 09 06 */	lbz r0, 0x906(r31)
/* 80CEB3B0  28 00 00 01 */	cmplwi r0, 1
/* 80CEB3B4  40 82 00 5C */	bne lbl_80CEB410
/* 80CEB3B8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEB3BC  7C 03 07 74 */	extsb r3, r0
/* 80CEB3C0  4B 34 1C AC */	b dComIfGp_getReverb__Fi
/* 80CEB3C4  7C 67 1B 78 */	mr r7, r3
/* 80CEB3C8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008022C@ha */
/* 80CEB3CC  38 03 02 2C */	addi r0, r3, 0x022C /* 0x0008022C@l */
/* 80CEB3D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CEB3D4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CEB3D8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CEB3DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEB3E0  38 81 00 0C */	addi r4, r1, 0xc
/* 80CEB3E4  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEB3E8  38 C0 00 00 */	li r6, 0
/* 80CEB3EC  3D 00 80 CF */	lis r8, lit_3845@ha
/* 80CEB3F0  C0 28 CB B8 */	lfs f1, lit_3845@l(r8)
/* 80CEB3F4  FC 40 08 90 */	fmr f2, f1
/* 80CEB3F8  3D 00 80 CF */	lis r8, lit_4640@ha
/* 80CEB3FC  C0 68 CB E0 */	lfs f3, lit_4640@l(r8)
/* 80CEB400  FC 80 18 90 */	fmr f4, f3
/* 80CEB404  39 00 00 00 */	li r8, 0
/* 80CEB408  4B 5C 05 7C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CEB40C  48 00 00 58 */	b lbl_80CEB464
lbl_80CEB410:
/* 80CEB410  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEB414  7C 03 07 74 */	extsb r3, r0
/* 80CEB418  4B 34 1C 54 */	b dComIfGp_getReverb__Fi
/* 80CEB41C  7C 67 1B 78 */	mr r7, r3
/* 80CEB420  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080224@ha */
/* 80CEB424  38 03 02 24 */	addi r0, r3, 0x0224 /* 0x00080224@l */
/* 80CEB428  90 01 00 08 */	stw r0, 8(r1)
/* 80CEB42C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CEB430  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CEB434  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEB438  38 81 00 08 */	addi r4, r1, 8
/* 80CEB43C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEB440  38 C0 00 00 */	li r6, 0
/* 80CEB444  3D 00 80 CF */	lis r8, lit_3845@ha
/* 80CEB448  C0 28 CB B8 */	lfs f1, lit_3845@l(r8)
/* 80CEB44C  FC 40 08 90 */	fmr f2, f1
/* 80CEB450  3D 00 80 CF */	lis r8, lit_4640@ha
/* 80CEB454  C0 68 CB E0 */	lfs f3, lit_4640@l(r8)
/* 80CEB458  FC 80 18 90 */	fmr f4, f3
/* 80CEB45C  39 00 00 00 */	li r8, 0
/* 80CEB460  4B 5C 05 24 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CEB464:
/* 80CEB464  38 00 00 02 */	li r0, 2
/* 80CEB468  98 1F 09 07 */	stb r0, 0x907(r31)
/* 80CEB46C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CEB470  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CEB474  7C 08 03 A6 */	mtlr r0
/* 80CEB478  38 21 00 20 */	addi r1, r1, 0x20
/* 80CEB47C  4E 80 00 20 */	blr 
