lbl_807958A0:
/* 807958A0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807958A4  7C 08 02 A6 */	mflr r0
/* 807958A8  90 01 00 94 */	stw r0, 0x94(r1)
/* 807958AC  39 61 00 90 */	addi r11, r1, 0x90
/* 807958B0  4B BC C9 28 */	b _savegpr_28
/* 807958B4  7C 7D 1B 78 */	mr r29, r3
/* 807958B8  3C 60 80 7A */	lis r3, lit_3920@ha
/* 807958BC  3B C3 85 E0 */	addi r30, r3, lit_3920@l
/* 807958C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807958C4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 807958C8  A8 1D 06 D6 */	lha r0, 0x6d6(r29)
/* 807958CC  2C 00 00 00 */	cmpwi r0, 0
/* 807958D0  40 81 00 1C */	ble lbl_807958EC
/* 807958D4  38 7D 0E C8 */	addi r3, r29, 0xec8
/* 807958D8  81 9D 0F 04 */	lwz r12, 0xf04(r29)
/* 807958DC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 807958E0  7D 89 03 A6 */	mtctr r12
/* 807958E4  4E 80 04 21 */	bctrl 
/* 807958E8  48 00 05 64 */	b lbl_80795E4C
lbl_807958EC:
/* 807958EC  38 7D 0E A8 */	addi r3, r29, 0xea8
/* 807958F0  4B 8E DF 40 */	b Move__10dCcD_GSttsFv
/* 807958F4  38 7D 0E 6C */	addi r3, r29, 0xe6c
/* 807958F8  4B 8E DF 38 */	b Move__10dCcD_GSttsFv
/* 807958FC  38 7D 0E C8 */	addi r3, r29, 0xec8
/* 80795900  4B 8E EB 60 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80795904  28 03 00 00 */	cmplwi r3, 0
/* 80795908  41 82 04 E8 */	beq lbl_80795DF0
/* 8079590C  38 7D 0E 50 */	addi r3, r29, 0xe50
/* 80795910  4B AC E0 4C */	b ClrCcMove__9cCcD_SttsFv
/* 80795914  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80795918  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8079591C  38 00 00 0A */	li r0, 0xa
/* 80795920  B0 1D 06 D6 */	sth r0, 0x6d6(r29)
/* 80795924  38 00 00 04 */	li r0, 4
/* 80795928  B0 1D 06 B6 */	sth r0, 0x6b6(r29)
/* 8079592C  3C 60 80 7A */	lis r3, data_807989E4@ha
/* 80795930  38 63 89 E4 */	addi r3, r3, data_807989E4@l
/* 80795934  A8 63 00 00 */	lha r3, 0(r3)
/* 80795938  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8079593C  7C 03 00 50 */	subf r0, r3, r0
/* 80795940  7C 00 07 34 */	extsh r0, r0
/* 80795944  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80795948  41 81 00 0C */	bgt lbl_80795954
/* 8079594C  2C 00 C0 00 */	cmpwi r0, -16384
/* 80795950  40 80 00 20 */	bge lbl_80795970
lbl_80795954:
/* 80795954  7F A3 EB 78 */	mr r3, r29
/* 80795958  38 80 00 09 */	li r4, 9
/* 8079595C  38 A0 00 00 */	li r5, 0
/* 80795960  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80795964  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 80795968  4B FF C8 F9 */	bl SetAnm__8daE_SM_cFiiff
/* 8079596C  48 00 00 48 */	b lbl_807959B4
lbl_80795970:
/* 80795970  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80795974  41 81 00 28 */	bgt lbl_8079599C
/* 80795978  7C 00 07 35 */	extsh. r0, r0
/* 8079597C  41 80 00 20 */	blt lbl_8079599C
/* 80795980  7F A3 EB 78 */	mr r3, r29
/* 80795984  38 80 00 0A */	li r4, 0xa
/* 80795988  38 A0 00 00 */	li r5, 0
/* 8079598C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80795990  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 80795994  4B FF C8 CD */	bl SetAnm__8daE_SM_cFiiff
/* 80795998  48 00 00 1C */	b lbl_807959B4
lbl_8079599C:
/* 8079599C  7F A3 EB 78 */	mr r3, r29
/* 807959A0  38 80 00 0B */	li r4, 0xb
/* 807959A4  38 A0 00 00 */	li r5, 0
/* 807959A8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807959AC  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 807959B0  4B FF C8 B1 */	bl SetAnm__8daE_SM_cFiiff
lbl_807959B4:
/* 807959B4  38 7D 0E C8 */	addi r3, r29, 0xec8
/* 807959B8  4B 8E EB 40 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 807959BC  90 7D 11 38 */	stw r3, 0x1138(r29)
/* 807959C0  38 00 00 1E */	li r0, 0x1e
/* 807959C4  90 1D 11 50 */	stw r0, 0x1150(r29)
/* 807959C8  7F A3 EB 78 */	mr r3, r29
/* 807959CC  38 9D 11 38 */	addi r4, r29, 0x1138
/* 807959D0  4B 8F 22 34 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 807959D4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807959D8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807959DC  80 7D 11 38 */	lwz r3, 0x1138(r29)
/* 807959E0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 807959E4  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 807959E8  41 82 01 F8 */	beq lbl_80795BE0
/* 807959EC  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 807959F0  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 807959F4  90 1D 0E F0 */	stw r0, 0xef0(r29)
/* 807959F8  A8 1D 06 B0 */	lha r0, 0x6b0(r29)
/* 807959FC  2C 00 00 00 */	cmpwi r0, 0
/* 80795A00  40 82 00 10 */	bne lbl_80795A10
/* 80795A04  38 00 00 01 */	li r0, 1
/* 80795A08  98 1D 06 8C */	stb r0, 0x68c(r29)
/* 80795A0C  48 00 00 0C */	b lbl_80795A18
lbl_80795A10:
/* 80795A10  38 00 00 00 */	li r0, 0
/* 80795A14  98 1D 06 8C */	stb r0, 0x68c(r29)
lbl_80795A18:
/* 80795A18  7F A3 EB 78 */	mr r3, r29
/* 80795A1C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80795A20  4B 88 4C F0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80795A24  7C 65 1B 78 */	mr r5, r3
/* 80795A28  38 61 00 48 */	addi r3, r1, 0x48
/* 80795A2C  38 80 00 00 */	li r4, 0
/* 80795A30  38 C0 00 00 */	li r6, 0
/* 80795A34  4B AD 19 C0 */	b __ct__5csXyzFsss
/* 80795A38  A8 1D 06 B0 */	lha r0, 0x6b0(r29)
/* 80795A3C  2C 00 00 03 */	cmpwi r0, 3
/* 80795A40  41 82 01 28 */	beq lbl_80795B68
/* 80795A44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80795A48  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80795A4C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80795A50  38 80 00 00 */	li r4, 0
/* 80795A54  90 81 00 08 */	stw r4, 8(r1)
/* 80795A58  38 00 FF FF */	li r0, -1
/* 80795A5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80795A60  90 81 00 10 */	stw r4, 0x10(r1)
/* 80795A64  90 81 00 14 */	stw r4, 0x14(r1)
/* 80795A68  90 81 00 18 */	stw r4, 0x18(r1)
/* 80795A6C  38 80 00 00 */	li r4, 0
/* 80795A70  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000877E@ha */
/* 80795A74  38 A5 87 7E */	addi r5, r5, 0x877E /* 0x0000877E@l */
/* 80795A78  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80795A7C  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80795A80  39 01 00 48 */	addi r8, r1, 0x48
/* 80795A84  39 3D 04 EC */	addi r9, r29, 0x4ec
/* 80795A88  39 40 00 FF */	li r10, 0xff
/* 80795A8C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80795A90  4B 8B 70 00 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80795A94  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80795A98  38 80 00 00 */	li r4, 0
/* 80795A9C  90 81 00 08 */	stw r4, 8(r1)
/* 80795AA0  38 00 FF FF */	li r0, -1
/* 80795AA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80795AA8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80795AAC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80795AB0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80795AB4  38 80 00 00 */	li r4, 0
/* 80795AB8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000877F@ha */
/* 80795ABC  38 A5 87 7F */	addi r5, r5, 0x877F /* 0x0000877F@l */
/* 80795AC0  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80795AC4  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80795AC8  39 01 00 48 */	addi r8, r1, 0x48
/* 80795ACC  39 3D 04 EC */	addi r9, r29, 0x4ec
/* 80795AD0  39 40 00 FF */	li r10, 0xff
/* 80795AD4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80795AD8  4B 8B 6F B8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80795ADC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80795AE0  38 80 00 00 */	li r4, 0
/* 80795AE4  90 81 00 08 */	stw r4, 8(r1)
/* 80795AE8  38 00 FF FF */	li r0, -1
/* 80795AEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80795AF0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80795AF4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80795AF8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80795AFC  38 80 00 00 */	li r4, 0
/* 80795B00  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008780@ha */
/* 80795B04  38 A5 87 80 */	addi r5, r5, 0x8780 /* 0x00008780@l */
/* 80795B08  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80795B0C  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80795B10  39 01 00 48 */	addi r8, r1, 0x48
/* 80795B14  39 3D 04 EC */	addi r9, r29, 0x4ec
/* 80795B18  39 40 00 FF */	li r10, 0xff
/* 80795B1C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80795B20  4B 8B 6F 70 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80795B24  38 00 00 01 */	li r0, 1
/* 80795B28  98 1D 06 AC */	stb r0, 0x6ac(r29)
/* 80795B2C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80795B30  D0 1D 06 DC */	stfs f0, 0x6dc(r29)
/* 80795B34  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 80795B38  D0 1D 09 78 */	stfs f0, 0x978(r29)
/* 80795B3C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80795B40  D0 1D 06 DC */	stfs f0, 0x6dc(r29)
/* 80795B44  38 00 00 32 */	li r0, 0x32
/* 80795B48  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 80795B4C  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80795B50  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 80795B54  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 80795B58  D0 1D 06 E8 */	stfs f0, 0x6e8(r29)
/* 80795B5C  38 00 00 02 */	li r0, 2
/* 80795B60  B0 1D 09 88 */	sth r0, 0x988(r29)
/* 80795B64  48 00 00 0C */	b lbl_80795B70
lbl_80795B68:
/* 80795B68  38 00 00 00 */	li r0, 0
/* 80795B6C  98 1D 06 AC */	stb r0, 0x6ac(r29)
lbl_80795B70:
/* 80795B70  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702D2@ha */
/* 80795B74  38 03 02 D2 */	addi r0, r3, 0x02D2 /* 0x000702D2@l */
/* 80795B78  90 01 00 38 */	stw r0, 0x38(r1)
/* 80795B7C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80795B80  38 81 00 38 */	addi r4, r1, 0x38
/* 80795B84  38 A0 FF FF */	li r5, -1
/* 80795B88  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 80795B8C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80795B90  7D 89 03 A6 */	mtctr r12
/* 80795B94  4E 80 04 21 */	bctrl 
/* 80795B98  38 00 00 0A */	li r0, 0xa
/* 80795B9C  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 80795BA0  80 1D 0F 64 */	lwz r0, 0xf64(r29)
/* 80795BA4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80795BA8  90 1D 0F 64 */	stw r0, 0xf64(r29)
/* 80795BAC  38 00 00 05 */	li r0, 5
/* 80795BB0  B0 1D 06 B0 */	sth r0, 0x6b0(r29)
/* 80795BB4  7F A3 EB 78 */	mr r3, r29
/* 80795BB8  38 80 00 10 */	li r4, 0x10
/* 80795BBC  38 A0 00 02 */	li r5, 2
/* 80795BC0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80795BC4  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 80795BC8  4B FF C6 99 */	bl SetAnm__8daE_SM_cFiiff
/* 80795BCC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80795BD0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80795BD4  38 00 00 FE */	li r0, 0xfe
/* 80795BD8  98 1D 0E A0 */	stb r0, 0xea0(r29)
/* 80795BDC  48 00 01 F8 */	b lbl_80795DD4
lbl_80795BE0:
/* 80795BE0  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 80795BE4  41 82 01 48 */	beq lbl_80795D2C
/* 80795BE8  A8 1D 06 B0 */	lha r0, 0x6b0(r29)
/* 80795BEC  2C 00 00 03 */	cmpwi r0, 3
/* 80795BF0  41 82 00 FC */	beq lbl_80795CEC
/* 80795BF4  38 00 00 04 */	li r0, 4
/* 80795BF8  B0 1D 06 B0 */	sth r0, 0x6b0(r29)
/* 80795BFC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702CB@ha */
/* 80795C00  38 03 02 CB */	addi r0, r3, 0x02CB /* 0x000702CB@l */
/* 80795C04  90 01 00 34 */	stw r0, 0x34(r1)
/* 80795C08  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80795C0C  38 81 00 34 */	addi r4, r1, 0x34
/* 80795C10  38 A0 FF FF */	li r5, -1
/* 80795C14  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 80795C18  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80795C1C  7D 89 03 A6 */	mtctr r12
/* 80795C20  4E 80 04 21 */	bctrl 
/* 80795C24  38 00 00 01 */	li r0, 1
/* 80795C28  B0 1D 06 B2 */	sth r0, 0x6b2(r29)
/* 80795C2C  38 00 00 00 */	li r0, 0
/* 80795C30  B0 1D 06 B4 */	sth r0, 0x6b4(r29)
/* 80795C34  38 00 00 03 */	li r0, 3
/* 80795C38  B0 1D 09 88 */	sth r0, 0x988(r29)
/* 80795C3C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80795C40  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80795C44  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80795C48  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80795C4C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80795C50  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80795C54  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80795C58  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80795C5C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80795C60  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80795C64  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80795C68  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80795C6C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80795C70  80 1D 04 DC */	lwz r0, 0x4dc(r29)
/* 80795C74  90 01 00 40 */	stw r0, 0x40(r1)
/* 80795C78  A0 1D 04 E0 */	lhz r0, 0x4e0(r29)
/* 80795C7C  B0 01 00 44 */	sth r0, 0x44(r1)
/* 80795C80  7F A3 EB 78 */	mr r3, r29
/* 80795C84  3C 80 00 01 */	lis r4, 0x0001 /* 0x000085BF@ha */
/* 80795C88  38 84 85 BF */	addi r4, r4, 0x85BF /* 0x000085BF@l */
/* 80795C8C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80795C90  38 C1 00 50 */	addi r6, r1, 0x50
/* 80795C94  38 E1 00 40 */	addi r7, r1, 0x40
/* 80795C98  4B FF CC 0D */	bl Particle_Set__8daE_SM_cFUs4cXyz4cXyz5csXyz
/* 80795C9C  3B E0 00 01 */	li r31, 1
/* 80795CA0  9B FD 06 84 */	stb r31, 0x684(r29)
/* 80795CA4  3B 80 00 00 */	li r28, 0
/* 80795CA8  3B C0 00 00 */	li r30, 0
lbl_80795CAC:
/* 80795CAC  9B FD 06 82 */	stb r31, 0x682(r29)
/* 80795CB0  38 1E 07 18 */	addi r0, r30, 0x718
/* 80795CB4  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80795CB8  38 81 00 3C */	addi r4, r1, 0x3c
/* 80795CBC  4B 88 3D 00 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80795CC0  2C 03 00 00 */	cmpwi r3, 0
/* 80795CC4  41 82 00 14 */	beq lbl_80795CD8
/* 80795CC8  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80795CCC  28 03 00 00 */	cmplwi r3, 0
/* 80795CD0  41 82 00 08 */	beq lbl_80795CD8
/* 80795CD4  9B E3 09 3F */	stb r31, 0x93f(r3)
lbl_80795CD8:
/* 80795CD8  3B 9C 00 01 */	addi r28, r28, 1
/* 80795CDC  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 80795CE0  3B DE 00 04 */	addi r30, r30, 4
/* 80795CE4  41 80 FF C8 */	blt lbl_80795CAC
/* 80795CE8  48 00 00 EC */	b lbl_80795DD4
lbl_80795CEC:
/* 80795CEC  38 00 00 04 */	li r0, 4
/* 80795CF0  B0 1D 06 B0 */	sth r0, 0x6b0(r29)
/* 80795CF4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702CB@ha */
/* 80795CF8  38 03 02 CB */	addi r0, r3, 0x02CB /* 0x000702CB@l */
/* 80795CFC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80795D00  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80795D04  38 81 00 30 */	addi r4, r1, 0x30
/* 80795D08  38 A0 FF FF */	li r5, -1
/* 80795D0C  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 80795D10  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80795D14  7D 89 03 A6 */	mtctr r12
/* 80795D18  4E 80 04 21 */	bctrl 
/* 80795D1C  38 00 00 00 */	li r0, 0
/* 80795D20  B0 1D 06 B2 */	sth r0, 0x6b2(r29)
/* 80795D24  B0 1D 06 B4 */	sth r0, 0x6b4(r29)
/* 80795D28  48 00 00 AC */	b lbl_80795DD4
lbl_80795D2C:
/* 80795D2C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80795D30  41 82 00 30 */	beq lbl_80795D60
/* 80795D34  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702CA@ha */
/* 80795D38  38 03 02 CA */	addi r0, r3, 0x02CA /* 0x000702CA@l */
/* 80795D3C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80795D40  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80795D44  38 81 00 2C */	addi r4, r1, 0x2c
/* 80795D48  38 A0 FF FF */	li r5, -1
/* 80795D4C  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 80795D50  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80795D54  7D 89 03 A6 */	mtctr r12
/* 80795D58  4E 80 04 21 */	bctrl 
/* 80795D5C  48 00 00 78 */	b lbl_80795DD4
lbl_80795D60:
/* 80795D60  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80795D64  41 82 00 30 */	beq lbl_80795D94
/* 80795D68  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702CA@ha */
/* 80795D6C  38 03 02 CA */	addi r0, r3, 0x02CA /* 0x000702CA@l */
/* 80795D70  90 01 00 28 */	stw r0, 0x28(r1)
/* 80795D74  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80795D78  38 81 00 28 */	addi r4, r1, 0x28
/* 80795D7C  38 A0 FF FF */	li r5, -1
/* 80795D80  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 80795D84  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80795D88  7D 89 03 A6 */	mtctr r12
/* 80795D8C  4E 80 04 21 */	bctrl 
/* 80795D90  48 00 00 44 */	b lbl_80795DD4
lbl_80795D94:
/* 80795D94  80 7D 09 84 */	lwz r3, 0x984(r29)
/* 80795D98  38 03 FF FF */	addi r0, r3, -1
/* 80795D9C  90 1D 09 84 */	stw r0, 0x984(r29)
/* 80795DA0  80 1D 09 84 */	lwz r0, 0x984(r29)
/* 80795DA4  2C 00 00 00 */	cmpwi r0, 0
/* 80795DA8  40 81 00 2C */	ble lbl_80795DD4
/* 80795DAC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702CA@ha */
/* 80795DB0  38 03 02 CA */	addi r0, r3, 0x02CA /* 0x000702CA@l */
/* 80795DB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80795DB8  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80795DBC  38 81 00 24 */	addi r4, r1, 0x24
/* 80795DC0  38 A0 FF FF */	li r5, -1
/* 80795DC4  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 80795DC8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80795DCC  7D 89 03 A6 */	mtctr r12
/* 80795DD0  4E 80 04 21 */	bctrl 
lbl_80795DD4:
/* 80795DD4  38 7D 0E 6C */	addi r3, r29, 0xe6c
/* 80795DD8  4B 8E DA 58 */	b Move__10dCcD_GSttsFv
/* 80795DDC  38 7D 0E C8 */	addi r3, r29, 0xec8
/* 80795DE0  81 9D 0F 04 */	lwz r12, 0xf04(r29)
/* 80795DE4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80795DE8  7D 89 03 A6 */	mtctr r12
/* 80795DEC  4E 80 04 21 */	bctrl 
lbl_80795DF0:
/* 80795DF0  80 1D 09 84 */	lwz r0, 0x984(r29)
/* 80795DF4  2C 00 00 00 */	cmpwi r0, 0
/* 80795DF8  40 81 00 10 */	ble lbl_80795E08
/* 80795DFC  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 80795E00  2C 00 00 00 */	cmpwi r0, 0
/* 80795E04  41 81 00 48 */	bgt lbl_80795E4C
lbl_80795E08:
/* 80795E08  38 00 00 00 */	li r0, 0
/* 80795E0C  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80795E10  38 00 00 04 */	li r0, 4
/* 80795E14  B0 1D 06 B0 */	sth r0, 0x6b0(r29)
/* 80795E18  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702CB@ha */
/* 80795E1C  38 03 02 CB */	addi r0, r3, 0x02CB /* 0x000702CB@l */
/* 80795E20  90 01 00 20 */	stw r0, 0x20(r1)
/* 80795E24  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80795E28  38 81 00 20 */	addi r4, r1, 0x20
/* 80795E2C  38 A0 FF FF */	li r5, -1
/* 80795E30  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 80795E34  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80795E38  7D 89 03 A6 */	mtctr r12
/* 80795E3C  4E 80 04 21 */	bctrl 
/* 80795E40  38 00 00 00 */	li r0, 0
/* 80795E44  B0 1D 06 B2 */	sth r0, 0x6b2(r29)
/* 80795E48  B0 1D 06 B4 */	sth r0, 0x6b4(r29)
lbl_80795E4C:
/* 80795E4C  39 61 00 90 */	addi r11, r1, 0x90
/* 80795E50  4B BC C3 D4 */	b _restgpr_28
/* 80795E54  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80795E58  7C 08 03 A6 */	mtlr r0
/* 80795E5C  38 21 00 90 */	addi r1, r1, 0x90
/* 80795E60  4E 80 00 20 */	blr 
