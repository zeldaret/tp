lbl_80B9DA44:
/* 80B9DA44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9DA48  7C 08 02 A6 */	mflr r0
/* 80B9DA4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9DA50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B9DA54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B9DA58  7C 7E 1B 78 */	mr r30, r3
/* 80B9DA5C  3C 80 80 BA */	lis r4, lit_3661@ha
/* 80B9DA60  3B E4 E8 F4 */	addi r31, r4, lit_3661@l
/* 80B9DA64  3C 80 80 BA */	lis r4, l_HIO@ha
/* 80B9DA68  38 84 EB A4 */	addi r4, r4, l_HIO@l
/* 80B9DA6C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80B9DA70  FC 00 00 50 */	fneg f0, f0
/* 80B9DA74  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80B9DA78  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80B9DA7C  FC 00 00 50 */	fneg f0, f0
/* 80B9DA80  D0 03 05 34 */	stfs f0, 0x534(r3)
/* 80B9DA84  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80B9DA88  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80B9DA8C  88 03 09 84 */	lbz r0, 0x984(r3)
/* 80B9DA90  54 00 10 3A */	slwi r0, r0, 2
/* 80B9DA94  7C 9E 02 14 */	add r4, r30, r0
/* 80B9DA98  80 84 05 C0 */	lwz r4, 0x5c0(r4)
/* 80B9DA9C  38 04 00 24 */	addi r0, r4, 0x24
/* 80B9DAA0  90 03 05 04 */	stw r0, 0x504(r3)
/* 80B9DAA4  88 03 09 84 */	lbz r0, 0x984(r3)
/* 80B9DAA8  54 00 10 3A */	slwi r0, r0, 2
/* 80B9DAAC  7C 9E 02 14 */	add r4, r30, r0
/* 80B9DAB0  80 84 05 C0 */	lwz r4, 0x5c0(r4)
/* 80B9DAB4  80 84 00 04 */	lwz r4, 4(r4)
/* 80B9DAB8  4B 47 CA C0 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80B9DABC  80 1E 06 08 */	lwz r0, 0x608(r30)
/* 80B9DAC0  60 00 00 01 */	ori r0, r0, 1
/* 80B9DAC4  90 1E 06 08 */	stw r0, 0x608(r30)
/* 80B9DAC8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B9DACC  88 03 00 91 */	lbz r0, 0x91(r3)
/* 80B9DAD0  60 00 00 04 */	ori r0, r0, 4
/* 80B9DAD4  98 03 00 91 */	stb r0, 0x91(r3)
/* 80B9DAD8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80B9DADC  7C 03 07 74 */	extsb r3, r0
/* 80B9DAE0  4B 48 F5 8C */	b dComIfGp_getReverb__Fi
/* 80B9DAE4  7C 67 1B 78 */	mr r7, r3
/* 80B9DAE8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802AB@ha */
/* 80B9DAEC  38 03 02 AB */	addi r0, r3, 0x02AB /* 0x000802AB@l */
/* 80B9DAF0  90 01 00 08 */	stw r0, 8(r1)
/* 80B9DAF4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B9DAF8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B9DAFC  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9DB00  38 81 00 08 */	addi r4, r1, 8
/* 80B9DB04  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B9DB08  38 C0 00 00 */	li r6, 0
/* 80B9DB0C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80B9DB10  FC 40 08 90 */	fmr f2, f1
/* 80B9DB14  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80B9DB18  FC 80 18 90 */	fmr f4, f3
/* 80B9DB1C  39 00 00 00 */	li r8, 0
/* 80B9DB20  4B 70 DE 64 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B9DB24  38 00 00 02 */	li r0, 2
/* 80B9DB28  98 1E 05 C8 */	stb r0, 0x5c8(r30)
/* 80B9DB2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B9DB30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B9DB34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9DB38  7C 08 03 A6 */	mtlr r0
/* 80B9DB3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B9DB40  4E 80 00 20 */	blr 
