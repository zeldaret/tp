lbl_80B19DAC:
/* 80B19DAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B19DB0  7C 08 02 A6 */	mflr r0
/* 80B19DB4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B19DB8  39 61 00 40 */	addi r11, r1, 0x40
/* 80B19DBC  4B 84 84 10 */	b _savegpr_25
/* 80B19DC0  7C 7A 1B 78 */	mr r26, r3
/* 80B19DC4  3C 60 80 B2 */	lis r3, m__16daNpcTks_Param_c@ha
/* 80B19DC8  3B A3 DD 58 */	addi r29, r3, m__16daNpcTks_Param_c@l
/* 80B19DCC  A0 1A 13 88 */	lhz r0, 0x1388(r26)
/* 80B19DD0  2C 00 00 02 */	cmpwi r0, 2
/* 80B19DD4  41 82 01 BC */	beq lbl_80B19F90
/* 80B19DD8  40 80 05 1C */	bge lbl_80B1A2F4
/* 80B19DDC  2C 00 00 00 */	cmpwi r0, 0
/* 80B19DE0  41 82 00 0C */	beq lbl_80B19DEC
/* 80B19DE4  48 00 05 10 */	b lbl_80B1A2F4
/* 80B19DE8  48 00 05 0C */	b lbl_80B1A2F4
lbl_80B19DEC:
/* 80B19DEC  3C 60 80 B2 */	lis r3, l_arcName@ha
/* 80B19DF0  80 03 E2 08 */	lwz r0, l_arcName@l(r3)
/* 80B19DF4  90 1A 01 00 */	stw r0, 0x100(r26)
/* 80B19DF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B19DFC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80B19E00  38 7B 4F F8 */	addi r3, r27, 0x4ff8
/* 80B19E04  7F 44 D3 78 */	mr r4, r26
/* 80B19E08  3C A0 80 B2 */	lis r5, stringBase0@ha
/* 80B19E0C  38 A5 E0 48 */	addi r5, r5, stringBase0@l
/* 80B19E10  38 A5 00 77 */	addi r5, r5, 0x77
/* 80B19E14  38 C0 00 FF */	li r6, 0xff
/* 80B19E18  4B 52 D9 40 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80B19E1C  B0 7A 09 D4 */	sth r3, 0x9d4(r26)
/* 80B19E20  7F 43 D3 78 */	mr r3, r26
/* 80B19E24  A8 9A 09 D4 */	lha r4, 0x9d4(r26)
/* 80B19E28  38 A0 00 FF */	li r5, 0xff
/* 80B19E2C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B19E30  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B19E34  38 E0 00 04 */	li r7, 4
/* 80B19E38  39 00 00 01 */	li r8, 1
/* 80B19E3C  4B 50 18 40 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80B19E40  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 80B19E44  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B19E48  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 80B19E4C  7F 43 D3 78 */	mr r3, r26
/* 80B19E50  38 80 00 01 */	li r4, 1
/* 80B19E54  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B19E58  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B19E5C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B19E60  7D 89 03 A6 */	mtctr r12
/* 80B19E64  4E 80 04 21 */	bctrl 
/* 80B19E68  7F 43 D3 78 */	mr r3, r26
/* 80B19E6C  38 80 00 02 */	li r4, 2
/* 80B19E70  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 80B19E74  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B19E78  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B19E7C  7D 89 03 A6 */	mtctr r12
/* 80B19E80  4E 80 04 21 */	bctrl 
/* 80B19E84  A8 1A 13 86 */	lha r0, 0x1386(r26)
/* 80B19E88  2C 00 00 03 */	cmpwi r0, 3
/* 80B19E8C  40 82 00 10 */	bne lbl_80B19E9C
/* 80B19E90  80 1A 12 08 */	lwz r0, 0x1208(r26)
/* 80B19E94  28 00 00 00 */	cmplwi r0, 0
/* 80B19E98  41 82 00 14 */	beq lbl_80B19EAC
lbl_80B19E9C:
/* 80B19E9C  38 00 00 03 */	li r0, 3
/* 80B19EA0  B0 1A 13 86 */	sth r0, 0x1386(r26)
/* 80B19EA4  38 00 00 00 */	li r0, 0
/* 80B19EA8  90 1A 12 08 */	stw r0, 0x1208(r26)
lbl_80B19EAC:
/* 80B19EAC  38 7B 4E 00 */	addi r3, r27, 0x4e00
/* 80B19EB0  3C 80 80 B2 */	lis r4, stringBase0@ha
/* 80B19EB4  38 84 E0 48 */	addi r4, r4, stringBase0@l
/* 80B19EB8  38 84 00 29 */	addi r4, r4, 0x29
/* 80B19EBC  4B 84 EA D8 */	b strcmp
/* 80B19EC0  2C 03 00 00 */	cmpwi r3, 0
/* 80B19EC4  40 82 00 C4 */	bne lbl_80B19F88
/* 80B19EC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B19ECC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B19ED0  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80B19ED4  2C 00 00 03 */	cmpwi r0, 3
/* 80B19ED8  40 82 00 B0 */	bne lbl_80B19F88
/* 80B19EDC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B19EE0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B19EE4  C0 5D 02 38 */	lfs f2, 0x238(r29)
/* 80B19EE8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80B19EEC  4C 41 13 82 */	cror 2, 1, 2
/* 80B19EF0  40 82 00 98 */	bne lbl_80B19F88
/* 80B19EF4  C0 1D 02 3C */	lfs f0, 0x23c(r29)
/* 80B19EF8  C0 63 04 D0 */	lfs f3, 0x4d0(r3)
/* 80B19EFC  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 80B19F00  40 82 00 34 */	bne lbl_80B19F34
/* 80B19F04  C0 3D 02 40 */	lfs f1, 0x240(r29)
/* 80B19F08  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B19F0C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B19F10  40 82 00 24 */	bne lbl_80B19F34
/* 80B19F14  C0 1D 02 44 */	lfs f0, 0x244(r29)
/* 80B19F18  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80B19F1C  D0 5A 04 D4 */	stfs f2, 0x4d4(r26)
/* 80B19F20  D0 3A 04 D8 */	stfs f1, 0x4d8(r26)
/* 80B19F24  7F 43 D3 78 */	mr r3, r26
/* 80B19F28  38 80 40 00 */	li r4, 0x4000
/* 80B19F2C  4B 63 A3 24 */	b setAngle__8daNpcF_cFs
/* 80B19F30  48 00 00 40 */	b lbl_80B19F70
lbl_80B19F34:
/* 80B19F34  C0 5D 02 48 */	lfs f2, 0x248(r29)
/* 80B19F38  FC 02 18 00 */	fcmpu cr0, f2, f3
/* 80B19F3C  40 82 00 34 */	bne lbl_80B19F70
/* 80B19F40  C0 3D 02 4C */	lfs f1, 0x24c(r29)
/* 80B19F44  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B19F48  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B19F4C  40 82 00 24 */	bne lbl_80B19F70
/* 80B19F50  D0 5A 04 D0 */	stfs f2, 0x4d0(r26)
/* 80B19F54  C0 1D 02 38 */	lfs f0, 0x238(r29)
/* 80B19F58  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80B19F5C  C0 1D 02 50 */	lfs f0, 0x250(r29)
/* 80B19F60  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80B19F64  7F 43 D3 78 */	mr r3, r26
/* 80B19F68  38 80 7F FF */	li r4, 0x7fff
/* 80B19F6C  4B 63 A2 E4 */	b setAngle__8daNpcF_cFs
lbl_80B19F70:
/* 80B19F70  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80B19F74  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80B19F78  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80B19F7C  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80B19F80  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80B19F84  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
lbl_80B19F88:
/* 80B19F88  38 00 00 02 */	li r0, 2
/* 80B19F8C  B0 1A 13 88 */	sth r0, 0x1388(r26)
lbl_80B19F90:
/* 80B19F90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B19F94  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80B19F98  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80B19F9C  28 00 00 00 */	cmplwi r0, 0
/* 80B19FA0  41 82 03 54 */	beq lbl_80B1A2F4
/* 80B19FA4  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80B19FA8  28 00 00 01 */	cmplwi r0, 1
/* 80B19FAC  41 82 03 48 */	beq lbl_80B1A2F4
/* 80B19FB0  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80B19FB4  7F 83 E3 78 */	mr r3, r28
/* 80B19FB8  3C 80 80 B2 */	lis r4, l_myName@ha
/* 80B19FBC  38 84 E2 0C */	addi r4, r4, l_myName@l
/* 80B19FC0  80 84 00 00 */	lwz r4, 0(r4)
/* 80B19FC4  38 A0 00 00 */	li r5, 0
/* 80B19FC8  38 C0 00 00 */	li r6, 0
/* 80B19FCC  4B 52 DB 50 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B19FD0  7C 7B 1B 78 */	mr r27, r3
/* 80B19FD4  2C 1B FF FF */	cmpwi r27, -1
/* 80B19FD8  41 82 03 1C */	beq lbl_80B1A2F4
/* 80B19FDC  7F 83 E3 78 */	mr r3, r28
/* 80B19FE0  7F 64 DB 78 */	mr r4, r27
/* 80B19FE4  4B 52 DF 78 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80B19FE8  7C 7F 1B 78 */	mr r31, r3
/* 80B19FEC  7F 83 E3 78 */	mr r3, r28
/* 80B19FF0  7F 64 DB 78 */	mr r4, r27
/* 80B19FF4  4B 52 DD 58 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B19FF8  2C 03 00 00 */	cmpwi r3, 0
/* 80B19FFC  41 82 00 D4 */	beq lbl_80B1A0D0
/* 80B1A000  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B1A004  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B1A008  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B1A00C  7C 04 00 00 */	cmpw r4, r0
/* 80B1A010  41 82 00 3C */	beq lbl_80B1A04C
/* 80B1A014  40 80 00 14 */	bge lbl_80B1A028
/* 80B1A018  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B1A01C  7C 04 00 00 */	cmpw r4, r0
/* 80B1A020  40 80 00 18 */	bge lbl_80B1A038
/* 80B1A024  48 00 00 AC */	b lbl_80B1A0D0
lbl_80B1A028:
/* 80B1A028  38 03 30 34 */	addi r0, r3, 0x3034
/* 80B1A02C  7C 04 00 00 */	cmpw r4, r0
/* 80B1A030  40 80 00 A0 */	bge lbl_80B1A0D0
/* 80B1A034  48 00 00 54 */	b lbl_80B1A088
lbl_80B1A038:
/* 80B1A038  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1A03C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B1A040  38 00 FF FF */	li r0, -1
/* 80B1A044  98 03 00 98 */	stb r0, 0x98(r3)
/* 80B1A048  48 00 00 88 */	b lbl_80B1A0D0
lbl_80B1A04C:
/* 80B1A04C  7F 43 D3 78 */	mr r3, r26
/* 80B1A050  38 80 00 03 */	li r4, 3
/* 80B1A054  38 A0 00 00 */	li r5, 0
/* 80B1A058  4B 63 9C C4 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B1A05C  38 00 00 00 */	li r0, 0
/* 80B1A060  90 1A 09 50 */	stw r0, 0x950(r26)
/* 80B1A064  7F 43 D3 78 */	mr r3, r26
/* 80B1A068  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B1A06C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B1A070  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B1A074  4B 50 06 9C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B1A078  7C 64 1B 78 */	mr r4, r3
/* 80B1A07C  7F 43 D3 78 */	mr r3, r26
/* 80B1A080  4B 63 A1 D0 */	b setAngle__8daNpcF_cFs
/* 80B1A084  48 00 00 4C */	b lbl_80B1A0D0
lbl_80B1A088:
/* 80B1A088  80 1A 12 3C */	lwz r0, 0x123c(r26)
/* 80B1A08C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B1A090  90 1A 12 3C */	stw r0, 0x123c(r26)
/* 80B1A094  7F 43 D3 78 */	mr r3, r26
/* 80B1A098  38 80 00 04 */	li r4, 4
/* 80B1A09C  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1A0A0  38 A0 00 00 */	li r5, 0
/* 80B1A0A4  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1A0A8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1A0AC  7D 89 03 A6 */	mtctr r12
/* 80B1A0B0  4E 80 04 21 */	bctrl 
/* 80B1A0B4  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1A0B8  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B1A0BC  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1A0C0  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 80B1A0C4  D0 1A 04 EC */	stfs f0, 0x4ec(r26)
/* 80B1A0C8  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80B1A0CC  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
lbl_80B1A0D0:
/* 80B1A0D0  83 3A 09 50 */	lwz r25, 0x950(r26)
/* 80B1A0D4  7F 43 D3 78 */	mr r3, r26
/* 80B1A0D8  38 81 00 10 */	addi r4, r1, 0x10
/* 80B1A0DC  38 A1 00 0C */	addi r5, r1, 0xc
/* 80B1A0E0  7F 46 D3 78 */	mr r6, r26
/* 80B1A0E4  38 E0 00 01 */	li r7, 1
/* 80B1A0E8  4B 63 96 30 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B1A0EC  2C 03 00 00 */	cmpwi r3, 0
/* 80B1A0F0  41 82 00 44 */	beq lbl_80B1A134
/* 80B1A0F4  7F 43 D3 78 */	mr r3, r26
/* 80B1A0F8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B1A0FC  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1A100  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1A104  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B1A108  7D 89 03 A6 */	mtctr r12
/* 80B1A10C  4E 80 04 21 */	bctrl 
/* 80B1A110  7F 43 D3 78 */	mr r3, r26
/* 80B1A114  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B1A118  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1A11C  38 A0 00 00 */	li r5, 0
/* 80B1A120  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1A124  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1A128  7D 89 03 A6 */	mtctr r12
/* 80B1A12C  4E 80 04 21 */	bctrl 
/* 80B1A130  48 00 00 34 */	b lbl_80B1A164
lbl_80B1A134:
/* 80B1A134  2C 19 00 00 */	cmpwi r25, 0
/* 80B1A138  41 82 00 2C */	beq lbl_80B1A164
/* 80B1A13C  80 1A 09 50 */	lwz r0, 0x950(r26)
/* 80B1A140  2C 00 00 00 */	cmpwi r0, 0
/* 80B1A144  40 82 00 20 */	bne lbl_80B1A164
/* 80B1A148  7F 43 D3 78 */	mr r3, r26
/* 80B1A14C  38 80 00 01 */	li r4, 1
/* 80B1A150  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1A154  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1A158  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B1A15C  7D 89 03 A6 */	mtctr r12
/* 80B1A160  4E 80 04 21 */	bctrl 
lbl_80B1A164:
/* 80B1A164  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B1A168  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B1A16C  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B1A170  7C 04 00 00 */	cmpw r4, r0
/* 80B1A174  41 82 00 38 */	beq lbl_80B1A1AC
/* 80B1A178  40 80 00 14 */	bge lbl_80B1A18C
/* 80B1A17C  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B1A180  7C 04 00 00 */	cmpw r4, r0
/* 80B1A184  40 80 00 18 */	bge lbl_80B1A19C
/* 80B1A188  48 00 01 2C */	b lbl_80B1A2B4
lbl_80B1A18C:
/* 80B1A18C  38 03 30 34 */	addi r0, r3, 0x3034
/* 80B1A190  7C 04 00 00 */	cmpw r4, r0
/* 80B1A194  40 80 01 20 */	bge lbl_80B1A2B4
/* 80B1A198  48 00 00 40 */	b lbl_80B1A1D8
lbl_80B1A19C:
/* 80B1A19C  7F 83 E3 78 */	mr r3, r28
/* 80B1A1A0  7F 64 DB 78 */	mr r4, r27
/* 80B1A1A4  4B 52 DF D8 */	b cutEnd__16dEvent_manager_cFi
/* 80B1A1A8  48 00 01 0C */	b lbl_80B1A2B4
lbl_80B1A1AC:
/* 80B1A1AC  7F 43 D3 78 */	mr r3, r26
/* 80B1A1B0  38 80 00 00 */	li r4, 0
/* 80B1A1B4  38 A0 00 01 */	li r5, 1
/* 80B1A1B8  38 C0 00 00 */	li r6, 0
/* 80B1A1BC  4B 63 9B C8 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B1A1C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B1A1C4  41 82 00 F0 */	beq lbl_80B1A2B4
/* 80B1A1C8  7F 83 E3 78 */	mr r3, r28
/* 80B1A1CC  7F 64 DB 78 */	mr r4, r27
/* 80B1A1D0  4B 52 DF AC */	b cutEnd__16dEvent_manager_cFi
/* 80B1A1D4  48 00 00 E0 */	b lbl_80B1A2B4
lbl_80B1A1D8:
/* 80B1A1D8  A8 1A 09 DA */	lha r0, 0x9da(r26)
/* 80B1A1DC  2C 00 00 00 */	cmpwi r0, 0
/* 80B1A1E0  40 82 00 74 */	bne lbl_80B1A254
/* 80B1A1E4  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80B1A1E8  38 63 00 0C */	addi r3, r3, 0xc
/* 80B1A1EC  C0 3D 02 30 */	lfs f1, 0x230(r29)
/* 80B1A1F0  4B 80 E2 3C */	b checkPass__12J3DFrameCtrlFf
/* 80B1A1F4  2C 03 00 00 */	cmpwi r3, 0
/* 80B1A1F8  41 82 00 5C */	beq lbl_80B1A254
/* 80B1A1FC  C0 1D 02 54 */	lfs f0, 0x254(r29)
/* 80B1A200  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B1A204  C0 1D 02 58 */	lfs f0, 0x258(r29)
/* 80B1A208  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1A20C  C0 3D 02 5C */	lfs f1, 0x25c(r29)
/* 80B1A210  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 80B1A214  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B1A218  FC 00 00 1E */	fctiwz f0, f0
/* 80B1A21C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B1A220  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B1A224  90 1A 13 70 */	stw r0, 0x1370(r26)
/* 80B1A228  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005002F@ha */
/* 80B1A22C  38 03 00 2F */	addi r0, r3, 0x002F /* 0x0005002F@l */
/* 80B1A230  90 01 00 08 */	stw r0, 8(r1)
/* 80B1A234  38 7A 0B 48 */	addi r3, r26, 0xb48
/* 80B1A238  38 81 00 08 */	addi r4, r1, 8
/* 80B1A23C  38 A0 00 00 */	li r5, 0
/* 80B1A240  38 C0 FF FF */	li r6, -1
/* 80B1A244  81 9A 0B 48 */	lwz r12, 0xb48(r26)
/* 80B1A248  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B1A24C  7D 89 03 A6 */	mtctr r12
/* 80B1A250  4E 80 04 21 */	bctrl 
lbl_80B1A254:
/* 80B1A254  C0 7A 05 2C */	lfs f3, 0x52c(r26)
/* 80B1A258  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1A25C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B1A260  40 81 00 54 */	ble lbl_80B1A2B4
/* 80B1A264  38 7A 04 EC */	addi r3, r26, 0x4ec
/* 80B1A268  C0 3D 02 60 */	lfs f1, 0x260(r29)
/* 80B1A26C  C0 5D 02 64 */	lfs f2, 0x264(r29)
/* 80B1A270  C0 1D 02 5C */	lfs f0, 0x25c(r29)
/* 80B1A274  EC 00 18 24 */	fdivs f0, f0, f3
/* 80B1A278  EC 42 00 24 */	fdivs f2, f2, f0
/* 80B1A27C  4B 75 64 C4 */	b cLib_chaseF__FPfff
/* 80B1A280  C0 1A 04 EC */	lfs f0, 0x4ec(r26)
/* 80B1A284  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80B1A288  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
/* 80B1A28C  38 7A 13 70 */	addi r3, r26, 0x1370
/* 80B1A290  48 00 30 D9 */	bl func_80B1D368
/* 80B1A294  2C 03 00 00 */	cmpwi r3, 0
/* 80B1A298  40 82 00 1C */	bne lbl_80B1A2B4
/* 80B1A29C  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1A2A0  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B1A2A4  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1A2A8  7F 83 E3 78 */	mr r3, r28
/* 80B1A2AC  7F 64 DB 78 */	mr r4, r27
/* 80B1A2B0  4B 52 DE CC */	b cutEnd__16dEvent_manager_cFi
lbl_80B1A2B4:
/* 80B1A2B4  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80B1A2B8  28 00 00 02 */	cmplwi r0, 2
/* 80B1A2BC  40 82 00 38 */	bne lbl_80B1A2F4
/* 80B1A2C0  A8 9A 09 D4 */	lha r4, 0x9d4(r26)
/* 80B1A2C4  2C 04 FF FF */	cmpwi r4, -1
/* 80B1A2C8  41 82 00 2C */	beq lbl_80B1A2F4
/* 80B1A2CC  7F 83 E3 78 */	mr r3, r28
/* 80B1A2D0  4B 52 D7 A8 */	b endCheck__16dEvent_manager_cFs
/* 80B1A2D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B1A2D8  41 82 00 1C */	beq lbl_80B1A2F4
/* 80B1A2DC  38 00 FF FF */	li r0, -1
/* 80B1A2E0  B0 1A 09 D4 */	sth r0, 0x9d4(r26)
/* 80B1A2E4  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80B1A2E8  4B 52 81 80 */	b reset__14dEvt_control_cFv
/* 80B1A2EC  7F 43 D3 78 */	mr r3, r26
/* 80B1A2F0  4B 4F F9 8C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80B1A2F4:
/* 80B1A2F4  39 61 00 40 */	addi r11, r1, 0x40
/* 80B1A2F8  4B 84 7F 20 */	b _restgpr_25
/* 80B1A2FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B1A300  7C 08 03 A6 */	mtlr r0
/* 80B1A304  38 21 00 40 */	addi r1, r1, 0x40
/* 80B1A308  4E 80 00 20 */	blr 
