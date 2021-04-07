lbl_80950B30:
/* 80950B30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80950B34  7C 08 02 A6 */	mflr r0
/* 80950B38  90 01 00 44 */	stw r0, 0x44(r1)
/* 80950B3C  39 61 00 40 */	addi r11, r1, 0x40
/* 80950B40  4B A1 16 99 */	bl _savegpr_28
/* 80950B44  7C 7E 1B 78 */	mr r30, r3
/* 80950B48  3C 80 80 95 */	lis r4, lit_3958@ha /* 0x809511C0@ha */
/* 80950B4C  3B E4 11 C0 */	addi r31, r4, lit_3958@l /* 0x809511C0@l */
/* 80950B50  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80950B54  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80950B58  40 82 00 F0 */	bne lbl_80950C48
/* 80950B5C  7F C0 F3 79 */	or. r0, r30, r30
/* 80950B60  41 82 00 DC */	beq lbl_80950C3C
/* 80950B64  7C 1D 03 78 */	mr r29, r0
/* 80950B68  4B 6C 7F FD */	bl __ct__10fopAc_ac_cFv
/* 80950B6C  38 7D 06 30 */	addi r3, r29, 0x630
/* 80950B70  4B 72 53 3D */	bl __ct__12dBgS_AcchCirFv
/* 80950B74  3B 9D 06 70 */	addi r28, r29, 0x670
/* 80950B78  7F 83 E3 78 */	mr r3, r28
/* 80950B7C  4B 72 55 25 */	bl __ct__9dBgS_AcchFv
/* 80950B80  3C 60 80 95 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8095150C@ha */
/* 80950B84  38 63 15 0C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8095150C@l */
/* 80950B88  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80950B8C  38 03 00 0C */	addi r0, r3, 0xc
/* 80950B90  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80950B94  38 03 00 18 */	addi r0, r3, 0x18
/* 80950B98  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80950B9C  38 7C 00 14 */	addi r3, r28, 0x14
/* 80950BA0  4B 72 82 C9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80950BA4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80950BA8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80950BAC  90 1D 08 64 */	stw r0, 0x864(r29)
/* 80950BB0  38 7D 08 68 */	addi r3, r29, 0x868
/* 80950BB4  4B 73 2B AD */	bl __ct__10dCcD_GSttsFv
/* 80950BB8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80950BBC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80950BC0  90 7D 08 64 */	stw r3, 0x864(r29)
/* 80950BC4  38 03 00 20 */	addi r0, r3, 0x20
/* 80950BC8  90 1D 08 68 */	stw r0, 0x868(r29)
/* 80950BCC  3B 9D 08 88 */	addi r28, r29, 0x888
/* 80950BD0  7F 83 E3 78 */	mr r3, r28
/* 80950BD4  4B 73 2E 55 */	bl __ct__12dCcD_GObjInfFv
/* 80950BD8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80950BDC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80950BE0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80950BE4  3C 60 80 95 */	lis r3, __vt__8cM3dGAab@ha /* 0x80951500@ha */
/* 80950BE8  38 03 15 00 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80951500@l */
/* 80950BEC  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80950BF0  3C 60 80 95 */	lis r3, __vt__8cM3dGSph@ha /* 0x809514F4@ha */
/* 80950BF4  38 03 14 F4 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x809514F4@l */
/* 80950BF8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80950BFC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80950C00  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80950C04  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80950C08  38 03 00 58 */	addi r0, r3, 0x58
/* 80950C0C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80950C10  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80950C14  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80950C18  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80950C1C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80950C20  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80950C24  38 03 00 84 */	addi r0, r3, 0x84
/* 80950C28  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80950C2C  38 7D 0A 28 */	addi r3, r29, 0xa28
/* 80950C30  4B 96 DC 15 */	bl __ct__16Z2SoundObjSimpleFv
/* 80950C34  38 7D 0A 58 */	addi r3, r29, 0xa58
/* 80950C38  4B 8F 92 C9 */	bl __ct__10dMsgFlow_cFv
lbl_80950C3C:
/* 80950C3C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80950C40  60 00 00 08 */	ori r0, r0, 8
/* 80950C44  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80950C48:
/* 80950C48  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80950C4C  3C 80 80 95 */	lis r4, d_a_ni__stringBase0@ha /* 0x8095131C@ha */
/* 80950C50  38 84 13 1C */	addi r4, r4, d_a_ni__stringBase0@l /* 0x8095131C@l */
/* 80950C54  4B 6D C2 69 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80950C58  7C 7D 1B 78 */	mr r29, r3
/* 80950C5C  2C 1D 00 04 */	cmpwi r29, 4
/* 80950C60  40 82 02 88 */	bne lbl_80950EE8
/* 80950C64  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80950C68  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 80950C6C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80950C70  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80950C74  98 1E 05 B5 */	stb r0, 0x5b5(r30)
/* 80950C78  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 80950C7C  28 00 00 FF */	cmplwi r0, 0xff
/* 80950C80  40 82 00 20 */	bne lbl_80950CA0
/* 80950C84  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 80950C88  4B 91 6C CD */	bl cM_rndF__Ff
/* 80950C8C  FC 00 08 1E */	fctiwz f0, f1
/* 80950C90  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80950C94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80950C98  98 1E 05 F0 */	stb r0, 0x5f0(r30)
/* 80950C9C  48 00 00 20 */	b lbl_80950CBC
lbl_80950CA0:
/* 80950CA0  98 1E 05 F0 */	stb r0, 0x5f0(r30)
/* 80950CA4  88 1E 05 F0 */	lbz r0, 0x5f0(r30)
/* 80950CA8  7C 00 07 74 */	extsb r0, r0
/* 80950CAC  2C 00 00 03 */	cmpwi r0, 3
/* 80950CB0  40 81 00 0C */	ble lbl_80950CBC
/* 80950CB4  38 00 00 03 */	li r0, 3
/* 80950CB8  98 1E 05 F0 */	stb r0, 0x5f0(r30)
lbl_80950CBC:
/* 80950CBC  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 80950CC0  54 63 06 1E */	rlwinm r3, r3, 0, 0x18, 0xf
/* 80950CC4  88 1E 05 F0 */	lbz r0, 0x5f0(r30)
/* 80950CC8  7C 00 07 74 */	extsb r0, r0
/* 80950CCC  54 00 40 2E */	slwi r0, r0, 8
/* 80950CD0  7C 63 03 78 */	or r3, r3, r0
/* 80950CD4  90 7E 00 B0 */	stw r3, 0xb0(r30)
/* 80950CD8  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80950CDC  B0 1E 0A 54 */	sth r0, 0xa54(r30)
/* 80950CE0  38 00 00 00 */	li r0, 0
/* 80950CE4  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80950CE8  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80950CEC  7F C3 F3 78 */	mr r3, r30
/* 80950CF0  3C 80 80 95 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x809508E0@ha */
/* 80950CF4  38 84 08 E0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x809508E0@l */
/* 80950CF8  38 A0 0D E0 */	li r5, 0xde0
/* 80950CFC  4B 6C 97 B5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80950D00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80950D04  40 82 00 0C */	bne lbl_80950D10
/* 80950D08  38 60 00 05 */	li r3, 5
/* 80950D0C  48 00 01 E0 */	b lbl_80950EEC
lbl_80950D10:
/* 80950D10  3C 60 80 95 */	lis r3, struct_8095158C+0x1@ha /* 0x8095158D@ha */
/* 80950D14  8C 03 15 8D */	lbzu r0, struct_8095158C+0x1@l(r3)  /* 0x8095158D@l */
/* 80950D18  28 00 00 00 */	cmplwi r0, 0
/* 80950D1C  40 82 00 20 */	bne lbl_80950D3C
/* 80950D20  38 00 00 01 */	li r0, 1
/* 80950D24  98 1E 0B 09 */	stb r0, 0xb09(r30)
/* 80950D28  98 03 00 00 */	stb r0, 0(r3)
/* 80950D2C  38 00 FF FF */	li r0, -1
/* 80950D30  3C 60 80 95 */	lis r3, l_HIO@ha /* 0x8095159C@ha */
/* 80950D34  38 63 15 9C */	addi r3, r3, l_HIO@l /* 0x8095159C@l */
/* 80950D38  98 03 00 04 */	stb r0, 4(r3)
lbl_80950D3C:
/* 80950D3C  38 00 00 00 */	li r0, 0
/* 80950D40  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80950D44  B0 1E 05 FA */	sth r0, 0x5fa(r30)
/* 80950D48  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80950D4C  80 63 00 04 */	lwz r3, 4(r3)
/* 80950D50  38 63 00 24 */	addi r3, r3, 0x24
/* 80950D54  90 7E 05 04 */	stw r3, 0x504(r30)
/* 80950D58  90 01 00 08 */	stw r0, 8(r1)
/* 80950D5C  38 7E 06 70 */	addi r3, r30, 0x670
/* 80950D60  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80950D64  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80950D68  7F C6 F3 78 */	mr r6, r30
/* 80950D6C  38 E0 00 01 */	li r7, 1
/* 80950D70  39 1E 06 30 */	addi r8, r30, 0x630
/* 80950D74  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80950D78  39 40 00 00 */	li r10, 0
/* 80950D7C  4B 72 54 CD */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80950D80  38 7E 06 30 */	addi r3, r30, 0x630
/* 80950D84  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80950D88  C0 5F 01 54 */	lfs f2, 0x154(r31)
/* 80950D8C  4B 72 51 CD */	bl SetWall__12dBgS_AcchCirFff
/* 80950D90  38 00 00 00 */	li r0, 0
/* 80950D94  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 80950D98  38 00 00 0A */	li r0, 0xa
/* 80950D9C  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80950DA0  38 7E 08 4C */	addi r3, r30, 0x84c
/* 80950DA4  38 80 00 0A */	li r4, 0xa
/* 80950DA8  38 A0 00 00 */	li r5, 0
/* 80950DAC  7F C6 F3 78 */	mr r6, r30
/* 80950DB0  4B 73 2A B1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80950DB4  38 7E 08 88 */	addi r3, r30, 0x888
/* 80950DB8  3C 80 80 95 */	lis r4, cc_sph_src@ha /* 0x80951440@ha */
/* 80950DBC  38 84 14 40 */	addi r4, r4, cc_sph_src@l /* 0x80951440@l */
/* 80950DC0  4B 73 3C 75 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80950DC4  38 1E 08 4C */	addi r0, r30, 0x84c
/* 80950DC8  90 1E 08 CC */	stw r0, 0x8cc(r30)
/* 80950DCC  88 1E 05 F0 */	lbz r0, 0x5f0(r30)
/* 80950DD0  2C 00 00 03 */	cmpwi r0, 3
/* 80950DD4  40 82 00 10 */	bne lbl_80950DE4
/* 80950DD8  80 1E 08 A0 */	lwz r0, 0x8a0(r30)
/* 80950DDC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80950DE0  90 1E 08 A0 */	stw r0, 0x8a0(r30)
lbl_80950DE4:
/* 80950DE4  38 00 00 07 */	li r0, 7
/* 80950DE8  98 1E 05 48 */	stb r0, 0x548(r30)
/* 80950DEC  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80950DF0  4B 91 6B 65 */	bl cM_rndF__Ff
/* 80950DF4  FC 00 08 1E */	fctiwz f0, f1
/* 80950DF8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80950DFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80950E00  B0 1E 05 F8 */	sth r0, 0x5f8(r30)
/* 80950E04  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80950E08  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80950E0C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80950E10  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80950E14  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80950E18  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80950E1C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80950E20  EC 01 00 2A */	fadds f0, f1, f0
/* 80950E24  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80950E28  38 61 00 10 */	addi r3, r1, 0x10
/* 80950E2C  4B 6C CE 91 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80950E30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80950E34  41 82 00 50 */	beq lbl_80950E84
/* 80950E38  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80950E3C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80950E40  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80950E44  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80950E48  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80950E4C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80950E50  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80950E54  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80950E58  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80950E5C  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80950E60  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 80950E64  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80950E68  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 80950E6C  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80950E70  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 80950E74  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80950E78  98 1E 04 CE */	stb r0, 0x4ce(r30)
/* 80950E7C  88 1E 04 E3 */	lbz r0, 0x4e3(r30)
/* 80950E80  98 1E 04 CF */	stb r0, 0x4cf(r30)
lbl_80950E84:
/* 80950E84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80950E88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80950E8C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80950E90  3C 80 80 95 */	lis r4, d_a_ni__stringBase0@ha /* 0x8095131C@ha */
/* 80950E94  38 84 13 1C */	addi r4, r4, d_a_ni__stringBase0@l /* 0x8095131C@l */
/* 80950E98  38 84 00 0B */	addi r4, r4, 0xb
/* 80950E9C  4B A1 7A F9 */	bl strcmp
/* 80950EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80950EA4  40 82 00 34 */	bne lbl_80950ED8
/* 80950EA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80950EAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80950EB0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80950EB4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80950EB8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80950EBC  A0 84 04 20 */	lhz r4, 0x420(r4)
/* 80950EC0  4B 6E 3A FD */	bl isEventBit__11dSv_event_cCFUs
/* 80950EC4  2C 03 00 00 */	cmpwi r3, 0
/* 80950EC8  40 82 00 10 */	bne lbl_80950ED8
/* 80950ECC  38 00 00 0A */	li r0, 0xa
/* 80950ED0  B0 1E 05 FA */	sth r0, 0x5fa(r30)
/* 80950ED4  B0 1E 06 04 */	sth r0, 0x604(r30)
lbl_80950ED8:
/* 80950ED8  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 80950EDC  D0 1E 09 F8 */	stfs f0, 0x9f8(r30)
/* 80950EE0  7F C3 F3 78 */	mr r3, r30
/* 80950EE4  4B FF F4 F5 */	bl daNi_Execute__FP8ni_class
lbl_80950EE8:
/* 80950EE8  7F A3 EB 78 */	mr r3, r29
lbl_80950EEC:
/* 80950EEC  39 61 00 40 */	addi r11, r1, 0x40
/* 80950EF0  4B A1 13 35 */	bl _restgpr_28
/* 80950EF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80950EF8  7C 08 03 A6 */	mtlr r0
/* 80950EFC  38 21 00 40 */	addi r1, r1, 0x40
/* 80950F00  4E 80 00 20 */	blr 
