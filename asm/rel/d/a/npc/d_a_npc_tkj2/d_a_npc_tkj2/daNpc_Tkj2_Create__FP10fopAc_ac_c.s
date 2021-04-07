lbl_80B13E68:
/* 80B13E68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B13E6C  7C 08 02 A6 */	mflr r0
/* 80B13E70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B13E74  39 61 00 20 */	addi r11, r1, 0x20
/* 80B13E78  4B 84 E3 61 */	bl _savegpr_28
/* 80B13E7C  7C 7E 1B 78 */	mr r30, r3
/* 80B13E80  3C 80 80 B1 */	lis r4, lit_3648@ha /* 0x80B142DC@ha */
/* 80B13E84  3B E4 42 DC */	addi r31, r4, lit_3648@l /* 0x80B142DC@l */
/* 80B13E88  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B13E8C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B13E90  40 82 00 E8 */	bne lbl_80B13F78
/* 80B13E94  7F C0 F3 79 */	or. r0, r30, r30
/* 80B13E98  41 82 00 D4 */	beq lbl_80B13F6C
/* 80B13E9C  7C 1D 03 78 */	mr r29, r0
/* 80B13EA0  4B 50 4C C5 */	bl __ct__10fopAc_ac_cFv
/* 80B13EA4  38 7D 06 34 */	addi r3, r29, 0x634
/* 80B13EA8  4B 56 20 05 */	bl __ct__12dBgS_AcchCirFv
/* 80B13EAC  3B 9D 06 74 */	addi r28, r29, 0x674
/* 80B13EB0  7F 83 E3 78 */	mr r3, r28
/* 80B13EB4  4B 56 21 ED */	bl __ct__9dBgS_AcchFv
/* 80B13EB8  3C 60 80 B1 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B1447C@ha */
/* 80B13EBC  38 63 44 7C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B1447C@l */
/* 80B13EC0  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80B13EC4  38 03 00 0C */	addi r0, r3, 0xc
/* 80B13EC8  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80B13ECC  38 03 00 18 */	addi r0, r3, 0x18
/* 80B13ED0  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80B13ED4  38 7C 00 14 */	addi r3, r28, 0x14
/* 80B13ED8  4B 56 4F 91 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80B13EDC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B13EE0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B13EE4  90 1D 08 68 */	stw r0, 0x868(r29)
/* 80B13EE8  38 7D 08 6C */	addi r3, r29, 0x86c
/* 80B13EEC  4B 56 F8 75 */	bl __ct__10dCcD_GSttsFv
/* 80B13EF0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B13EF4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B13EF8  90 7D 08 68 */	stw r3, 0x868(r29)
/* 80B13EFC  38 03 00 20 */	addi r0, r3, 0x20
/* 80B13F00  90 1D 08 6C */	stw r0, 0x86c(r29)
/* 80B13F04  3B 9D 08 8C */	addi r28, r29, 0x88c
/* 80B13F08  7F 83 E3 78 */	mr r3, r28
/* 80B13F0C  4B 56 FB 1D */	bl __ct__12dCcD_GObjInfFv
/* 80B13F10  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B13F14  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B13F18  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80B13F1C  3C 60 80 B1 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B14470@ha */
/* 80B13F20  38 03 44 70 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B14470@l */
/* 80B13F24  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80B13F28  3C 60 80 B1 */	lis r3, __vt__8cM3dGSph@ha /* 0x80B14464@ha */
/* 80B13F2C  38 03 44 64 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80B14464@l */
/* 80B13F30  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80B13F34  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80B13F38  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80B13F3C  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80B13F40  38 03 00 58 */	addi r0, r3, 0x58
/* 80B13F44  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80B13F48  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80B13F4C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80B13F50  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80B13F54  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B13F58  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80B13F5C  38 03 00 84 */	addi r0, r3, 0x84
/* 80B13F60  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80B13F64  38 7D 09 E8 */	addi r3, r29, 0x9e8
/* 80B13F68  4B 7A CF FD */	bl __ct__15Z2CreatureEnemyFv
lbl_80B13F6C:
/* 80B13F6C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80B13F70  60 00 00 08 */	ori r0, r0, 8
/* 80B13F74  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80B13F78:
/* 80B13F78  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80B13F7C  3C 80 80 B1 */	lis r4, d_a_npc_tkj2__stringBase0@ha /* 0x80B143AC@ha */
/* 80B13F80  38 84 43 AC */	addi r4, r4, d_a_npc_tkj2__stringBase0@l /* 0x80B143AC@l */
/* 80B13F84  4B 51 8F 39 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80B13F88  7C 7D 1B 78 */	mr r29, r3
/* 80B13F8C  2C 1D 00 04 */	cmpwi r29, 4
/* 80B13F90  40 82 01 70 */	bne lbl_80B14100
/* 80B13F94  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B13F98  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 80B13F9C  38 00 00 00 */	li r0, 0
/* 80B13FA0  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80B13FA4  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80B13FA8  7F C3 F3 78 */	mr r3, r30
/* 80B13FAC  3C 80 80 B1 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80B13BA8@ha */
/* 80B13FB0  38 84 3B A8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80B13BA8@l */
/* 80B13FB4  38 A0 2F 00 */	li r5, 0x2f00
/* 80B13FB8  4B 50 64 F9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B13FBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B13FC0  40 82 00 0C */	bne lbl_80B13FCC
/* 80B13FC4  38 60 00 05 */	li r3, 5
/* 80B13FC8  48 00 01 3C */	b lbl_80B14104
lbl_80B13FCC:
/* 80B13FCC  3C 60 80 B1 */	lis r3, data_80B14500@ha /* 0x80B14500@ha */
/* 80B13FD0  8C 03 45 00 */	lbzu r0, data_80B14500@l(r3)  /* 0x80B14500@l */
/* 80B13FD4  28 00 00 00 */	cmplwi r0, 0
/* 80B13FD8  40 82 00 20 */	bne lbl_80B13FF8
/* 80B13FDC  38 00 00 01 */	li r0, 1
/* 80B13FE0  98 1E 0A 9C */	stb r0, 0xa9c(r30)
/* 80B13FE4  98 03 00 00 */	stb r0, 0(r3)
/* 80B13FE8  38 00 FF FF */	li r0, -1
/* 80B13FEC  3C 60 80 B1 */	lis r3, l_HIO@ha /* 0x80B14510@ha */
/* 80B13FF0  38 63 45 10 */	addi r3, r3, l_HIO@l /* 0x80B14510@l */
/* 80B13FF4  98 03 00 04 */	stb r0, 4(r3)
lbl_80B13FF8:
/* 80B13FF8  38 00 00 00 */	li r0, 0
/* 80B13FFC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80B14000  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80B14004  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 80B14008  80 63 00 04 */	lwz r3, 4(r3)
/* 80B1400C  38 63 00 24 */	addi r3, r3, 0x24
/* 80B14010  90 7E 05 04 */	stw r3, 0x504(r30)
/* 80B14014  90 01 00 08 */	stw r0, 8(r1)
/* 80B14018  38 7E 06 74 */	addi r3, r30, 0x674
/* 80B1401C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B14020  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80B14024  7F C6 F3 78 */	mr r6, r30
/* 80B14028  38 E0 00 01 */	li r7, 1
/* 80B1402C  39 1E 06 34 */	addi r8, r30, 0x634
/* 80B14030  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80B14034  39 40 00 00 */	li r10, 0
/* 80B14038  4B 56 22 11 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B1403C  38 7E 06 34 */	addi r3, r30, 0x634
/* 80B14040  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80B14044  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 80B14048  4B 56 1F 11 */	bl SetWall__12dBgS_AcchCirFff
/* 80B1404C  38 00 00 64 */	li r0, 0x64
/* 80B14050  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80B14054  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 80B14058  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80B1405C  28 00 00 01 */	cmplwi r0, 1
/* 80B14060  40 82 00 0C */	bne lbl_80B1406C
/* 80B14064  7F C3 F3 78 */	mr r3, r30
/* 80B14068  4B FF D3 C5 */	bl CheckRoof__FP14npc_tkj2_class
lbl_80B1406C:
/* 80B1406C  88 1E 06 30 */	lbz r0, 0x630(r30)
/* 80B14070  28 00 00 00 */	cmplwi r0, 0
/* 80B14074  41 82 00 1C */	beq lbl_80B14090
/* 80B14078  38 7E 08 50 */	addi r3, r30, 0x850
/* 80B1407C  38 80 00 FF */	li r4, 0xff
/* 80B14080  38 A0 00 00 */	li r5, 0
/* 80B14084  7F C6 F3 78 */	mr r6, r30
/* 80B14088  4B 56 F7 D9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B1408C  48 00 00 18 */	b lbl_80B140A4
lbl_80B14090:
/* 80B14090  38 7E 08 50 */	addi r3, r30, 0x850
/* 80B14094  38 80 00 64 */	li r4, 0x64
/* 80B14098  38 A0 00 00 */	li r5, 0
/* 80B1409C  7F C6 F3 78 */	mr r6, r30
/* 80B140A0  4B 56 F7 C1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
lbl_80B140A4:
/* 80B140A4  38 7E 08 8C */	addi r3, r30, 0x88c
/* 80B140A8  3C 80 80 B1 */	lis r4, cc_sph_src@ha /* 0x80B143D4@ha */
/* 80B140AC  38 84 43 D4 */	addi r4, r4, cc_sph_src@l /* 0x80B143D4@l */
/* 80B140B0  4B 57 09 85 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80B140B4  38 1E 08 50 */	addi r0, r30, 0x850
/* 80B140B8  90 1E 08 D0 */	stw r0, 0x8d0(r30)
/* 80B140BC  38 00 00 07 */	li r0, 7
/* 80B140C0  98 1E 05 48 */	stb r0, 0x548(r30)
/* 80B140C4  38 7E 09 E8 */	addi r3, r30, 0x9e8
/* 80B140C8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B140CC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80B140D0  38 C0 00 03 */	li r6, 3
/* 80B140D4  38 E0 00 01 */	li r7, 1
/* 80B140D8  4B 7A CF BD */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80B140DC  80 1E 09 28 */	lwz r0, 0x928(r30)
/* 80B140E0  60 00 00 04 */	ori r0, r0, 4
/* 80B140E4  90 1E 09 28 */	stw r0, 0x928(r30)
/* 80B140E8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80B140EC  D0 1E 05 FC */	stfs f0, 0x5fc(r30)
/* 80B140F0  D0 1E 06 00 */	stfs f0, 0x600(r30)
/* 80B140F4  D0 1E 06 04 */	stfs f0, 0x604(r30)
/* 80B140F8  7F C3 F3 78 */	mr r3, r30
/* 80B140FC  4B FF F6 71 */	bl daNpc_Tkj2_Execute__FP14npc_tkj2_class
lbl_80B14100:
/* 80B14100  7F A3 EB 78 */	mr r3, r29
lbl_80B14104:
/* 80B14104  39 61 00 20 */	addi r11, r1, 0x20
/* 80B14108  4B 84 E1 1D */	bl _restgpr_28
/* 80B1410C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B14110  7C 08 03 A6 */	mtlr r0
/* 80B14114  38 21 00 20 */	addi r1, r1, 0x20
/* 80B14118  4E 80 00 20 */	blr 
