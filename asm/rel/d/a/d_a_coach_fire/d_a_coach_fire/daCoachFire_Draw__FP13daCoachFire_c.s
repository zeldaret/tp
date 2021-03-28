lbl_80657D9C:
/* 80657D9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80657DA0  7C 08 02 A6 */	mflr r0
/* 80657DA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80657DA8  39 61 00 40 */	addi r11, r1, 0x40
/* 80657DAC  4B D0 A4 30 */	b _savegpr_29
/* 80657DB0  7C 7D 1B 78 */	mr r29, r3
/* 80657DB4  3C 60 80 66 */	lis r3, M_attr__13daCoachFire_c@ha
/* 80657DB8  3B C3 83 E8 */	addi r30, r3, M_attr__13daCoachFire_c@l
/* 80657DBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80657DC0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80657DC4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80657DC8  38 00 00 FF */	li r0, 0xff
/* 80657DCC  90 01 00 08 */	stw r0, 8(r1)
/* 80657DD0  38 80 00 00 */	li r4, 0
/* 80657DD4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80657DD8  38 00 FF FF */	li r0, -1
/* 80657DDC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80657DE0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80657DE4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80657DE8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80657DEC  80 9D 07 0C */	lwz r4, 0x70c(r29)
/* 80657DF0  38 A0 00 00 */	li r5, 0
/* 80657DF4  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008113@ha */
/* 80657DF8  38 C6 81 13 */	addi r6, r6, 0x8113 /* 0x00008113@l */
/* 80657DFC  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 80657E00  39 00 00 00 */	li r8, 0
/* 80657E04  39 20 00 00 */	li r9, 0
/* 80657E08  39 40 00 00 */	li r10, 0
/* 80657E0C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80657E10  4B 9F 56 BC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80657E14  90 7D 07 0C */	stw r3, 0x70c(r29)
/* 80657E18  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80657E1C  38 63 02 10 */	addi r3, r3, 0x210
/* 80657E20  80 9D 07 0C */	lwz r4, 0x70c(r29)
/* 80657E24  4B 9F 3A F4 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80657E28  7C 7F 1B 79 */	or. r31, r3, r3
/* 80657E2C  41 82 00 58 */	beq lbl_80657E84
/* 80657E30  38 61 00 20 */	addi r3, r1, 0x20
/* 80657E34  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80657E38  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80657E3C  4B C0 EC F8 */	b __mi__4cXyzCFRC3Vec
/* 80657E40  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80657E44  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80657E48  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80657E4C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80657E50  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80657E54  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80657E58  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80657E5C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80657E60  38 7D 04 F8 */	addi r3, r29, 0x4f8
/* 80657E64  7C 64 1B 78 */	mr r4, r3
/* 80657E68  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80657E6C  4B CE F2 6C */	b PSVECScale
/* 80657E70  3C 60 80 45 */	lis r3, mParticleTracePCB__13dPa_control_c@ha
/* 80657E74  38 03 0E C8 */	addi r0, r3, mParticleTracePCB__13dPa_control_c@l
/* 80657E78  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 80657E7C  38 1D 04 F8 */	addi r0, r29, 0x4f8
/* 80657E80  90 1F 00 C0 */	stw r0, 0xc0(r31)
lbl_80657E84:
/* 80657E84  38 60 00 01 */	li r3, 1
/* 80657E88  39 61 00 40 */	addi r11, r1, 0x40
/* 80657E8C  4B D0 A3 9C */	b _restgpr_29
/* 80657E90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80657E94  7C 08 03 A6 */	mtlr r0
/* 80657E98  38 21 00 40 */	addi r1, r1, 0x40
/* 80657E9C  4E 80 00 20 */	blr 
