lbl_80B1BD64:
/* 80B1BD64  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B1BD68  7C 08 02 A6 */	mflr r0
/* 80B1BD6C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B1BD70  39 61 00 40 */	addi r11, r1, 0x40
/* 80B1BD74  4B 84 64 58 */	b _savegpr_25
/* 80B1BD78  7C 7A 1B 78 */	mr r26, r3
/* 80B1BD7C  3C 60 80 B2 */	lis r3, m__16daNpcTks_Param_c@ha
/* 80B1BD80  3B A3 DD 58 */	addi r29, r3, m__16daNpcTks_Param_c@l
/* 80B1BD84  A0 1A 13 88 */	lhz r0, 0x1388(r26)
/* 80B1BD88  2C 00 00 02 */	cmpwi r0, 2
/* 80B1BD8C  41 82 01 B0 */	beq lbl_80B1BF3C
/* 80B1BD90  40 80 06 20 */	bge lbl_80B1C3B0
/* 80B1BD94  2C 00 00 00 */	cmpwi r0, 0
/* 80B1BD98  41 82 00 0C */	beq lbl_80B1BDA4
/* 80B1BD9C  48 00 06 14 */	b lbl_80B1C3B0
/* 80B1BDA0  48 00 06 10 */	b lbl_80B1C3B0
lbl_80B1BDA4:
/* 80B1BDA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1BDA8  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80B1BDAC  3B 9B 4E 00 */	addi r28, r27, 0x4e00
/* 80B1BDB0  7F 83 E3 78 */	mr r3, r28
/* 80B1BDB4  3C 80 80 B2 */	lis r4, stringBase0@ha
/* 80B1BDB8  38 84 E0 48 */	addi r4, r4, stringBase0@l
/* 80B1BDBC  38 84 00 8B */	addi r4, r4, 0x8b
/* 80B1BDC0  4B 84 CB D4 */	b strcmp
/* 80B1BDC4  2C 03 00 00 */	cmpwi r3, 0
/* 80B1BDC8  40 82 00 2C */	bne lbl_80B1BDF4
/* 80B1BDCC  C0 1D 02 C8 */	lfs f0, 0x2c8(r29)
/* 80B1BDD0  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80B1BDD4  C0 1D 02 CC */	lfs f0, 0x2cc(r29)
/* 80B1BDD8  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80B1BDDC  C0 1D 02 D0 */	lfs f0, 0x2d0(r29)
/* 80B1BDE0  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80B1BDE4  7F 43 D3 78 */	mr r3, r26
/* 80B1BDE8  38 80 00 00 */	li r4, 0
/* 80B1BDEC  4B 63 84 64 */	b setAngle__8daNpcF_cFs
/* 80B1BDF0  48 00 00 44 */	b lbl_80B1BE34
lbl_80B1BDF4:
/* 80B1BDF4  7F 83 E3 78 */	mr r3, r28
/* 80B1BDF8  3C 80 80 B2 */	lis r4, stringBase0@ha
/* 80B1BDFC  38 84 E0 48 */	addi r4, r4, stringBase0@l
/* 80B1BE00  38 84 00 92 */	addi r4, r4, 0x92
/* 80B1BE04  4B 84 CB 90 */	b strcmp
/* 80B1BE08  2C 03 00 00 */	cmpwi r3, 0
/* 80B1BE0C  40 82 00 28 */	bne lbl_80B1BE34
/* 80B1BE10  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1BE14  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80B1BE18  C0 1D 02 D4 */	lfs f0, 0x2d4(r29)
/* 80B1BE1C  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80B1BE20  C0 1D 02 D8 */	lfs f0, 0x2d8(r29)
/* 80B1BE24  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80B1BE28  7F 43 D3 78 */	mr r3, r26
/* 80B1BE2C  38 80 00 00 */	li r4, 0
/* 80B1BE30  4B 63 84 20 */	b setAngle__8daNpcF_cFs
lbl_80B1BE34:
/* 80B1BE34  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80B1BE38  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80B1BE3C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80B1BE40  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80B1BE44  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80B1BE48  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80B1BE4C  7F 43 D3 78 */	mr r3, r26
/* 80B1BE50  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B1BE54  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B1BE58  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B1BE5C  4B 4F E9 84 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B1BE60  C0 1D 01 D8 */	lfs f0, 0x1d8(r29)
/* 80B1BE64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B1BE68  4C 40 13 82 */	cror 2, 0, 2
/* 80B1BE6C  40 82 00 5C */	bne lbl_80B1BEC8
/* 80B1BE70  3C 60 80 B2 */	lis r3, l_arcName@ha
/* 80B1BE74  80 03 E2 08 */	lwz r0, l_arcName@l(r3)
/* 80B1BE78  90 1A 01 00 */	stw r0, 0x100(r26)
/* 80B1BE7C  38 7B 4F F8 */	addi r3, r27, 0x4ff8
/* 80B1BE80  7F 44 D3 78 */	mr r4, r26
/* 80B1BE84  3C A0 80 B2 */	lis r5, stringBase0@ha
/* 80B1BE88  38 A5 E0 48 */	addi r5, r5, stringBase0@l
/* 80B1BE8C  38 A5 00 77 */	addi r5, r5, 0x77
/* 80B1BE90  38 C0 00 FF */	li r6, 0xff
/* 80B1BE94  4B 52 B8 C4 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80B1BE98  B0 7A 09 D4 */	sth r3, 0x9d4(r26)
/* 80B1BE9C  7F 43 D3 78 */	mr r3, r26
/* 80B1BEA0  A8 9A 09 D4 */	lha r4, 0x9d4(r26)
/* 80B1BEA4  38 A0 00 FF */	li r5, 0xff
/* 80B1BEA8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B1BEAC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B1BEB0  38 E0 00 04 */	li r7, 4
/* 80B1BEB4  39 00 00 01 */	li r8, 1
/* 80B1BEB8  4B 4F F7 C4 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80B1BEBC  38 00 00 02 */	li r0, 2
/* 80B1BEC0  B0 1A 13 88 */	sth r0, 0x1388(r26)
/* 80B1BEC4  48 00 00 78 */	b lbl_80B1BF3C
lbl_80B1BEC8:
/* 80B1BEC8  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 80B1BECC  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B1BED0  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 80B1BED4  7F 43 D3 78 */	mr r3, r26
/* 80B1BED8  38 80 00 01 */	li r4, 1
/* 80B1BEDC  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1BEE0  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1BEE4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B1BEE8  7D 89 03 A6 */	mtctr r12
/* 80B1BEEC  4E 80 04 21 */	bctrl 
/* 80B1BEF0  7F 43 D3 78 */	mr r3, r26
/* 80B1BEF4  38 80 00 00 */	li r4, 0
/* 80B1BEF8  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1BEFC  38 A0 00 00 */	li r5, 0
/* 80B1BF00  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1BF04  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1BF08  7D 89 03 A6 */	mtctr r12
/* 80B1BF0C  4E 80 04 21 */	bctrl 
/* 80B1BF10  A8 1A 13 86 */	lha r0, 0x1386(r26)
/* 80B1BF14  2C 00 00 02 */	cmpwi r0, 2
/* 80B1BF18  40 82 00 10 */	bne lbl_80B1BF28
/* 80B1BF1C  80 1A 12 08 */	lwz r0, 0x1208(r26)
/* 80B1BF20  28 00 00 00 */	cmplwi r0, 0
/* 80B1BF24  41 82 04 8C */	beq lbl_80B1C3B0
lbl_80B1BF28:
/* 80B1BF28  38 00 00 02 */	li r0, 2
/* 80B1BF2C  B0 1A 13 86 */	sth r0, 0x1386(r26)
/* 80B1BF30  38 00 00 00 */	li r0, 0
/* 80B1BF34  90 1A 12 08 */	stw r0, 0x1208(r26)
/* 80B1BF38  48 00 04 78 */	b lbl_80B1C3B0
lbl_80B1BF3C:
/* 80B1BF3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1BF40  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80B1BF44  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80B1BF48  28 00 00 00 */	cmplwi r0, 0
/* 80B1BF4C  41 82 04 64 */	beq lbl_80B1C3B0
/* 80B1BF50  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80B1BF54  28 00 00 01 */	cmplwi r0, 1
/* 80B1BF58  41 82 04 58 */	beq lbl_80B1C3B0
/* 80B1BF5C  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80B1BF60  7F 83 E3 78 */	mr r3, r28
/* 80B1BF64  3C 80 80 B2 */	lis r4, l_myName@ha
/* 80B1BF68  38 84 E2 0C */	addi r4, r4, l_myName@l
/* 80B1BF6C  80 84 00 00 */	lwz r4, 0(r4)
/* 80B1BF70  38 A0 00 00 */	li r5, 0
/* 80B1BF74  38 C0 00 00 */	li r6, 0
/* 80B1BF78  4B 52 BB A4 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B1BF7C  7C 7B 1B 78 */	mr r27, r3
/* 80B1BF80  2C 1B FF FF */	cmpwi r27, -1
/* 80B1BF84  41 82 04 2C */	beq lbl_80B1C3B0
/* 80B1BF88  7F 83 E3 78 */	mr r3, r28
/* 80B1BF8C  7F 64 DB 78 */	mr r4, r27
/* 80B1BF90  4B 52 BF CC */	b getMyNowCutName__16dEvent_manager_cFi
/* 80B1BF94  7C 7F 1B 78 */	mr r31, r3
/* 80B1BF98  7F 83 E3 78 */	mr r3, r28
/* 80B1BF9C  7F 64 DB 78 */	mr r4, r27
/* 80B1BFA0  4B 52 BD AC */	b getIsAddvance__16dEvent_manager_cFi
/* 80B1BFA4  2C 03 00 00 */	cmpwi r3, 0
/* 80B1BFA8  41 82 00 E0 */	beq lbl_80B1C088
/* 80B1BFAC  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B1BFB0  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B1BFB4  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B1BFB8  7C 04 00 00 */	cmpw r4, r0
/* 80B1BFBC  41 82 00 3C */	beq lbl_80B1BFF8
/* 80B1BFC0  40 80 00 14 */	bge lbl_80B1BFD4
/* 80B1BFC4  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B1BFC8  7C 04 00 00 */	cmpw r4, r0
/* 80B1BFCC  40 80 00 18 */	bge lbl_80B1BFE4
/* 80B1BFD0  48 00 00 B8 */	b lbl_80B1C088
lbl_80B1BFD4:
/* 80B1BFD4  38 03 30 34 */	addi r0, r3, 0x3034
/* 80B1BFD8  7C 04 00 00 */	cmpw r4, r0
/* 80B1BFDC  40 80 00 AC */	bge lbl_80B1C088
/* 80B1BFE0  48 00 00 60 */	b lbl_80B1C040
lbl_80B1BFE4:
/* 80B1BFE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1BFE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B1BFEC  38 00 FF FF */	li r0, -1
/* 80B1BFF0  98 03 00 98 */	stb r0, 0x98(r3)
/* 80B1BFF4  48 00 00 94 */	b lbl_80B1C088
lbl_80B1BFF8:
/* 80B1BFF8  7F 43 D3 78 */	mr r3, r26
/* 80B1BFFC  38 80 00 03 */	li r4, 3
/* 80B1C000  38 A0 00 00 */	li r5, 0
/* 80B1C004  4B 63 7D 18 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B1C008  38 00 00 00 */	li r0, 0
/* 80B1C00C  90 1A 09 50 */	stw r0, 0x950(r26)
/* 80B1C010  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B1C014  A8 1A 13 86 */	lha r0, 0x1386(r26)
/* 80B1C018  2C 00 00 03 */	cmpwi r0, 3
/* 80B1C01C  40 82 00 10 */	bne lbl_80B1C02C
/* 80B1C020  80 1A 12 08 */	lwz r0, 0x1208(r26)
/* 80B1C024  28 00 00 00 */	cmplwi r0, 0
/* 80B1C028  41 82 00 60 */	beq lbl_80B1C088
lbl_80B1C02C:
/* 80B1C02C  38 00 00 03 */	li r0, 3
/* 80B1C030  B0 1A 13 86 */	sth r0, 0x1386(r26)
/* 80B1C034  38 00 00 00 */	li r0, 0
/* 80B1C038  90 1A 12 08 */	stw r0, 0x1208(r26)
/* 80B1C03C  48 00 00 4C */	b lbl_80B1C088
lbl_80B1C040:
/* 80B1C040  80 1A 12 3C */	lwz r0, 0x123c(r26)
/* 80B1C044  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B1C048  90 1A 12 3C */	stw r0, 0x123c(r26)
/* 80B1C04C  7F 43 D3 78 */	mr r3, r26
/* 80B1C050  38 80 00 04 */	li r4, 4
/* 80B1C054  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1C058  38 A0 00 00 */	li r5, 0
/* 80B1C05C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1C060  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1C064  7D 89 03 A6 */	mtctr r12
/* 80B1C068  4E 80 04 21 */	bctrl 
/* 80B1C06C  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1C070  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B1C074  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1C078  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 80B1C07C  D0 1A 04 EC */	stfs f0, 0x4ec(r26)
/* 80B1C080  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80B1C084  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
lbl_80B1C088:
/* 80B1C088  83 3A 09 50 */	lwz r25, 0x950(r26)
/* 80B1C08C  7F 43 D3 78 */	mr r3, r26
/* 80B1C090  38 81 00 10 */	addi r4, r1, 0x10
/* 80B1C094  38 A1 00 0C */	addi r5, r1, 0xc
/* 80B1C098  7F 46 D3 78 */	mr r6, r26
/* 80B1C09C  38 E0 00 01 */	li r7, 1
/* 80B1C0A0  4B 63 76 78 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80B1C0A4  2C 03 00 00 */	cmpwi r3, 0
/* 80B1C0A8  41 82 00 44 */	beq lbl_80B1C0EC
/* 80B1C0AC  7F 43 D3 78 */	mr r3, r26
/* 80B1C0B0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B1C0B4  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1C0B8  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1C0BC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B1C0C0  7D 89 03 A6 */	mtctr r12
/* 80B1C0C4  4E 80 04 21 */	bctrl 
/* 80B1C0C8  7F 43 D3 78 */	mr r3, r26
/* 80B1C0CC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B1C0D0  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1C0D4  38 A0 00 00 */	li r5, 0
/* 80B1C0D8  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1C0DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B1C0E0  7D 89 03 A6 */	mtctr r12
/* 80B1C0E4  4E 80 04 21 */	bctrl 
/* 80B1C0E8  48 00 00 34 */	b lbl_80B1C11C
lbl_80B1C0EC:
/* 80B1C0EC  2C 19 00 00 */	cmpwi r25, 0
/* 80B1C0F0  41 82 00 2C */	beq lbl_80B1C11C
/* 80B1C0F4  80 1A 09 50 */	lwz r0, 0x950(r26)
/* 80B1C0F8  2C 00 00 00 */	cmpwi r0, 0
/* 80B1C0FC  40 82 00 20 */	bne lbl_80B1C11C
/* 80B1C100  7F 43 D3 78 */	mr r3, r26
/* 80B1C104  38 80 00 01 */	li r4, 1
/* 80B1C108  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80B1C10C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80B1C110  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B1C114  7D 89 03 A6 */	mtctr r12
/* 80B1C118  4E 80 04 21 */	bctrl 
lbl_80B1C11C:
/* 80B1C11C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B1C120  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B1C124  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B1C128  7C 04 00 00 */	cmpw r4, r0
/* 80B1C12C  41 82 00 38 */	beq lbl_80B1C164
/* 80B1C130  40 80 00 14 */	bge lbl_80B1C144
/* 80B1C134  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B1C138  7C 04 00 00 */	cmpw r4, r0
/* 80B1C13C  40 80 00 18 */	bge lbl_80B1C154
/* 80B1C140  48 00 02 24 */	b lbl_80B1C364
lbl_80B1C144:
/* 80B1C144  38 03 30 34 */	addi r0, r3, 0x3034
/* 80B1C148  7C 04 00 00 */	cmpw r4, r0
/* 80B1C14C  40 80 02 18 */	bge lbl_80B1C364
/* 80B1C150  48 00 01 38 */	b lbl_80B1C288
lbl_80B1C154:
/* 80B1C154  7F 83 E3 78 */	mr r3, r28
/* 80B1C158  7F 64 DB 78 */	mr r4, r27
/* 80B1C15C  4B 52 C0 20 */	b cutEnd__16dEvent_manager_cFi
/* 80B1C160  48 00 02 04 */	b lbl_80B1C364
lbl_80B1C164:
/* 80B1C164  7F 43 D3 78 */	mr r3, r26
/* 80B1C168  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B1C16C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80B1C170  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B1C174  4B 4F E5 9C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B1C178  A8 9A 08 F2 */	lha r4, 0x8f2(r26)
/* 80B1C17C  7C 60 07 34 */	extsh r0, r3
/* 80B1C180  7C 04 00 00 */	cmpw r4, r0
/* 80B1C184  40 82 00 30 */	bne lbl_80B1C1B4
/* 80B1C188  7F 43 D3 78 */	mr r3, r26
/* 80B1C18C  38 80 00 00 */	li r4, 0
/* 80B1C190  38 A0 00 01 */	li r5, 1
/* 80B1C194  38 C0 00 00 */	li r6, 0
/* 80B1C198  4B 63 7B EC */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B1C19C  2C 03 00 00 */	cmpwi r3, 0
/* 80B1C1A0  41 82 01 C4 */	beq lbl_80B1C364
/* 80B1C1A4  7F 83 E3 78 */	mr r3, r28
/* 80B1C1A8  7F 64 DB 78 */	mr r4, r27
/* 80B1C1AC  4B 52 BF D0 */	b cutEnd__16dEvent_manager_cFi
/* 80B1C1B0  48 00 01 B4 */	b lbl_80B1C364
lbl_80B1C1B4:
/* 80B1C1B4  7F 43 D3 78 */	mr r3, r26
/* 80B1C1B8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B1C1BC  4B 4F E5 54 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B1C1C0  80 1A 09 6C */	lwz r0, 0x96c(r26)
/* 80B1C1C4  2C 00 00 00 */	cmpwi r0, 0
/* 80B1C1C8  40 82 00 4C */	bne lbl_80B1C214
/* 80B1C1CC  B0 7A 09 96 */	sth r3, 0x996(r26)
/* 80B1C1D0  38 00 00 00 */	li r0, 0
/* 80B1C1D4  90 1A 09 68 */	stw r0, 0x968(r26)
/* 80B1C1D8  A8 7A 08 F2 */	lha r3, 0x8f2(r26)
/* 80B1C1DC  A8 1A 09 96 */	lha r0, 0x996(r26)
/* 80B1C1E0  7C 03 00 00 */	cmpw r3, r0
/* 80B1C1E4  40 82 00 10 */	bne lbl_80B1C1F4
/* 80B1C1E8  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B1C1EC  38 03 00 01 */	addi r0, r3, 1
/* 80B1C1F0  90 1A 09 6C */	stw r0, 0x96c(r26)
lbl_80B1C1F4:
/* 80B1C1F4  A8 1A 08 F2 */	lha r0, 0x8f2(r26)
/* 80B1C1F8  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 80B1C1FC  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1C200  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B1C204  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B1C208  38 03 00 01 */	addi r0, r3, 1
/* 80B1C20C  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B1C210  48 00 00 60 */	b lbl_80B1C270
lbl_80B1C214:
/* 80B1C214  2C 00 00 01 */	cmpwi r0, 1
/* 80B1C218  40 82 00 58 */	bne lbl_80B1C270
/* 80B1C21C  7F 43 D3 78 */	mr r3, r26
/* 80B1C220  A8 9A 09 96 */	lha r4, 0x996(r26)
/* 80B1C224  C0 3D 01 E4 */	lfs f1, 0x1e4(r29)
/* 80B1C228  38 A0 00 00 */	li r5, 0
/* 80B1C22C  4B 63 7C C8 */	b turn__8daNpcF_cFsfi
/* 80B1C230  2C 03 00 00 */	cmpwi r3, 0
/* 80B1C234  41 82 00 2C */	beq lbl_80B1C260
/* 80B1C238  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1C23C  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B1C240  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1C244  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
/* 80B1C248  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1C24C  B0 1A 08 F8 */	sth r0, 0x8f8(r26)
/* 80B1C250  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80B1C254  38 03 00 01 */	addi r0, r3, 1
/* 80B1C258  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B1C25C  48 00 00 14 */	b lbl_80B1C270
lbl_80B1C260:
/* 80B1C260  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1C264  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80B1C268  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80B1C26C  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
lbl_80B1C270:
/* 80B1C270  80 1A 09 6C */	lwz r0, 0x96c(r26)
/* 80B1C274  2C 00 00 01 */	cmpwi r0, 1
/* 80B1C278  40 81 00 EC */	ble lbl_80B1C364
/* 80B1C27C  38 00 00 00 */	li r0, 0
/* 80B1C280  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80B1C284  48 00 00 E0 */	b lbl_80B1C364
lbl_80B1C288:
/* 80B1C288  A8 1A 09 DA */	lha r0, 0x9da(r26)
/* 80B1C28C  2C 00 00 00 */	cmpwi r0, 0
/* 80B1C290  40 82 00 74 */	bne lbl_80B1C304
/* 80B1C294  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 80B1C298  38 63 00 0C */	addi r3, r3, 0xc
/* 80B1C29C  C0 3D 02 30 */	lfs f1, 0x230(r29)
/* 80B1C2A0  4B 80 C1 8C */	b checkPass__12J3DFrameCtrlFf
/* 80B1C2A4  2C 03 00 00 */	cmpwi r3, 0
/* 80B1C2A8  41 82 00 5C */	beq lbl_80B1C304
/* 80B1C2AC  C0 1D 02 DC */	lfs f0, 0x2dc(r29)
/* 80B1C2B0  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B1C2B4  C0 1D 02 E0 */	lfs f0, 0x2e0(r29)
/* 80B1C2B8  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1C2BC  C0 3D 01 D8 */	lfs f1, 0x1d8(r29)
/* 80B1C2C0  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 80B1C2C4  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B1C2C8  FC 00 00 1E */	fctiwz f0, f0
/* 80B1C2CC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B1C2D0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B1C2D4  90 1A 13 70 */	stw r0, 0x1370(r26)
/* 80B1C2D8  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005002F@ha */
/* 80B1C2DC  38 03 00 2F */	addi r0, r3, 0x002F /* 0x0005002F@l */
/* 80B1C2E0  90 01 00 08 */	stw r0, 8(r1)
/* 80B1C2E4  38 7A 0B 48 */	addi r3, r26, 0xb48
/* 80B1C2E8  38 81 00 08 */	addi r4, r1, 8
/* 80B1C2EC  38 A0 00 00 */	li r5, 0
/* 80B1C2F0  38 C0 FF FF */	li r6, -1
/* 80B1C2F4  81 9A 0B 48 */	lwz r12, 0xb48(r26)
/* 80B1C2F8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B1C2FC  7D 89 03 A6 */	mtctr r12
/* 80B1C300  4E 80 04 21 */	bctrl 
lbl_80B1C304:
/* 80B1C304  C0 7A 05 2C */	lfs f3, 0x52c(r26)
/* 80B1C308  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1C30C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B1C310  40 81 00 54 */	ble lbl_80B1C364
/* 80B1C314  38 7A 04 EC */	addi r3, r26, 0x4ec
/* 80B1C318  C0 3D 02 60 */	lfs f1, 0x260(r29)
/* 80B1C31C  C0 5D 02 64 */	lfs f2, 0x264(r29)
/* 80B1C320  C0 1D 01 D8 */	lfs f0, 0x1d8(r29)
/* 80B1C324  EC 00 18 24 */	fdivs f0, f0, f3
/* 80B1C328  EC 42 00 24 */	fdivs f2, f2, f0
/* 80B1C32C  4B 75 44 14 */	b cLib_chaseF__FPfff
/* 80B1C330  C0 1A 04 EC */	lfs f0, 0x4ec(r26)
/* 80B1C334  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80B1C338  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
/* 80B1C33C  38 7A 13 70 */	addi r3, r26, 0x1370
/* 80B1C340  48 00 10 29 */	bl func_80B1D368
/* 80B1C344  2C 03 00 00 */	cmpwi r3, 0
/* 80B1C348  40 82 00 1C */	bne lbl_80B1C364
/* 80B1C34C  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80B1C350  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B1C354  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B1C358  7F 83 E3 78 */	mr r3, r28
/* 80B1C35C  7F 64 DB 78 */	mr r4, r27
/* 80B1C360  4B 52 BE 1C */	b cutEnd__16dEvent_manager_cFi
lbl_80B1C364:
/* 80B1C364  A0 1A 00 F8 */	lhz r0, 0xf8(r26)
/* 80B1C368  28 00 00 02 */	cmplwi r0, 2
/* 80B1C36C  40 82 00 44 */	bne lbl_80B1C3B0
/* 80B1C370  A8 9A 09 D4 */	lha r4, 0x9d4(r26)
/* 80B1C374  2C 04 FF FF */	cmpwi r4, -1
/* 80B1C378  41 82 00 38 */	beq lbl_80B1C3B0
/* 80B1C37C  7F 83 E3 78 */	mr r3, r28
/* 80B1C380  4B 52 B6 F8 */	b endCheck__16dEvent_manager_cFs
/* 80B1C384  2C 03 00 00 */	cmpwi r3, 0
/* 80B1C388  41 82 00 28 */	beq lbl_80B1C3B0
/* 80B1C38C  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80B1C390  4B 52 60 D8 */	b reset__14dEvt_control_cFv
/* 80B1C394  38 00 FF FF */	li r0, -1
/* 80B1C398  B0 1A 09 D4 */	sth r0, 0x9d4(r26)
/* 80B1C39C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80B1C3A0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80B1C3A4  4B 70 06 60 */	b warpInProc__13dMeter2Info_cFv
/* 80B1C3A8  7F 43 D3 78 */	mr r3, r26
/* 80B1C3AC  4B 4F D8 D0 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80B1C3B0:
/* 80B1C3B0  39 61 00 40 */	addi r11, r1, 0x40
/* 80B1C3B4  4B 84 5E 64 */	b _restgpr_25
/* 80B1C3B8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B1C3BC  7C 08 03 A6 */	mtlr r0
/* 80B1C3C0  38 21 00 40 */	addi r1, r1, 0x40
/* 80B1C3C4  4E 80 00 20 */	blr 
