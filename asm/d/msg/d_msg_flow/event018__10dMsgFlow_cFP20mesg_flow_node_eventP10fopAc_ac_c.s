lbl_8024CBB0:
/* 8024CBB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024CBB4  7C 08 02 A6 */	mflr r0
/* 8024CBB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024CBBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8024CBC0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8024CBC4  7C 7E 1B 78 */	mr r30, r3
/* 8024CBC8  7C 86 23 78 */	mr r6, r4
/* 8024CBCC  7C BF 2B 78 */	mr r31, r5
/* 8024CBD0  38 81 00 08 */	addi r4, r1, 8
/* 8024CBD4  38 A6 00 04 */	addi r5, r6, 4
/* 8024CBD8  4B FF E5 31 */	bl getParam__10dMsgFlow_cFPUcPUc
/* 8024CBDC  38 00 00 01 */	li r0, 1
/* 8024CBE0  98 1E 00 47 */	stb r0, 0x47(r30)
/* 8024CBE4  88 01 00 08 */	lbz r0, 8(r1)
/* 8024CBE8  98 1E 00 42 */	stb r0, 0x42(r30)
/* 8024CBEC  88 01 00 09 */	lbz r0, 9(r1)
/* 8024CBF0  98 1E 00 43 */	stb r0, 0x43(r30)
/* 8024CBF4  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8024CBF8  98 1E 00 44 */	stb r0, 0x44(r30)
/* 8024CBFC  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8024CC00  98 1E 00 45 */	stb r0, 0x45(r30)
/* 8024CC04  28 1F 00 00 */	cmplwi r31, 0
/* 8024CC08  41 82 00 44 */	beq lbl_8024CC4C
/* 8024CC0C  88 6D 87 E4 */	lbz r3, struct_80450D64+0x0(r13)
/* 8024CC10  7C 63 07 75 */	extsb. r3, r3
/* 8024CC14  41 82 00 20 */	beq lbl_8024CC34
/* 8024CC18  4B DE 04 55 */	bl dComIfGp_getReverb__Fi
/* 8024CC1C  7C 66 1B 78 */	mr r6, r3
/* 8024CC20  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024CC24  88 9E 00 45 */	lbz r4, 0x45(r30)
/* 8024CC28  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8024CC2C  48 06 0E E9 */	bl messageSePlay__7Z2SeMgrFUsP3VecSc
/* 8024CC30  48 00 00 58 */	b lbl_8024CC88
lbl_8024CC34:
/* 8024CC34  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024CC38  88 9E 00 45 */	lbz r4, 0x45(r30)
/* 8024CC3C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8024CC40  38 C0 00 00 */	li r6, 0
/* 8024CC44  48 06 0E D1 */	bl messageSePlay__7Z2SeMgrFUsP3VecSc
/* 8024CC48  48 00 00 40 */	b lbl_8024CC88
lbl_8024CC4C:
/* 8024CC4C  88 6D 87 E4 */	lbz r3, struct_80450D64+0x0(r13)
/* 8024CC50  7C 63 07 75 */	extsb. r3, r3
/* 8024CC54  41 82 00 20 */	beq lbl_8024CC74
/* 8024CC58  4B DE 04 15 */	bl dComIfGp_getReverb__Fi
/* 8024CC5C  7C 66 1B 78 */	mr r6, r3
/* 8024CC60  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024CC64  88 9E 00 45 */	lbz r4, 0x45(r30)
/* 8024CC68  38 A0 00 00 */	li r5, 0
/* 8024CC6C  48 06 0E A9 */	bl messageSePlay__7Z2SeMgrFUsP3VecSc
/* 8024CC70  48 00 00 18 */	b lbl_8024CC88
lbl_8024CC74:
/* 8024CC74  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8024CC78  88 9E 00 45 */	lbz r4, 0x45(r30)
/* 8024CC7C  38 A0 00 00 */	li r5, 0
/* 8024CC80  38 C0 00 00 */	li r6, 0
/* 8024CC84  48 06 0E 91 */	bl messageSePlay__7Z2SeMgrFUsP3VecSc
lbl_8024CC88:
/* 8024CC88  38 60 00 01 */	li r3, 1
/* 8024CC8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8024CC90  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8024CC94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024CC98  7C 08 03 A6 */	mtlr r0
/* 8024CC9C  38 21 00 20 */	addi r1, r1, 0x20
/* 8024CCA0  4E 80 00 20 */	blr 
