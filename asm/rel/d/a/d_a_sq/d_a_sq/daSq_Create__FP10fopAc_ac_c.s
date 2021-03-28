lbl_805A0C30:
/* 805A0C30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805A0C34  7C 08 02 A6 */	mflr r0
/* 805A0C38  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A0C3C  39 61 00 40 */	addi r11, r1, 0x40
/* 805A0C40  4B DC 15 8C */	b _savegpr_25
/* 805A0C44  7C 7B 1B 78 */	mr r27, r3
/* 805A0C48  3C 80 80 5A */	lis r4, lit_3769@ha
/* 805A0C4C  3B E4 11 58 */	addi r31, r4, lit_3769@l
/* 805A0C50  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805A0C54  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805A0C58  40 82 01 3C */	bne lbl_805A0D94
/* 805A0C5C  7F 60 DB 79 */	or. r0, r27, r27
/* 805A0C60  41 82 01 28 */	beq lbl_805A0D88
/* 805A0C64  7C 1A 03 78 */	mr r26, r0
/* 805A0C68  4B A7 7E FC */	b __ct__10fopAc_ac_cFv
/* 805A0C6C  38 7A 06 24 */	addi r3, r26, 0x624
/* 805A0C70  4B CA 92 90 */	b __ct__10dMsgFlow_cFv
/* 805A0C74  38 7A 06 70 */	addi r3, r26, 0x670
/* 805A0C78  4B AD 52 34 */	b __ct__12dBgS_AcchCirFv
/* 805A0C7C  3B 3A 06 B0 */	addi r25, r26, 0x6b0
/* 805A0C80  7F 23 CB 78 */	mr r3, r25
/* 805A0C84  4B AD 54 1C */	b __ct__9dBgS_AcchFv
/* 805A0C88  3C 60 80 5A */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 805A0C8C  38 63 12 EC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 805A0C90  90 79 00 10 */	stw r3, 0x10(r25)
/* 805A0C94  38 03 00 0C */	addi r0, r3, 0xc
/* 805A0C98  90 19 00 14 */	stw r0, 0x14(r25)
/* 805A0C9C  38 03 00 18 */	addi r0, r3, 0x18
/* 805A0CA0  90 19 00 24 */	stw r0, 0x24(r25)
/* 805A0CA4  38 79 00 14 */	addi r3, r25, 0x14
/* 805A0CA8  4B AD 81 C0 */	b SetObj__16dBgS_PolyPassChkFv
/* 805A0CAC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 805A0CB0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 805A0CB4  90 1A 08 A0 */	stw r0, 0x8a0(r26)
/* 805A0CB8  38 7A 08 A4 */	addi r3, r26, 0x8a4
/* 805A0CBC  4B AE 2A A4 */	b __ct__10dCcD_GSttsFv
/* 805A0CC0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 805A0CC4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 805A0CC8  90 7A 08 A0 */	stw r3, 0x8a0(r26)
/* 805A0CCC  38 03 00 20 */	addi r0, r3, 0x20
/* 805A0CD0  90 1A 08 A4 */	stw r0, 0x8a4(r26)
/* 805A0CD4  3B 3A 08 C4 */	addi r25, r26, 0x8c4
/* 805A0CD8  7F 23 CB 78 */	mr r3, r25
/* 805A0CDC  4B AE 2D 4C */	b __ct__12dCcD_GObjInfFv
/* 805A0CE0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805A0CE4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805A0CE8  90 19 01 20 */	stw r0, 0x120(r25)
/* 805A0CEC  3C 60 80 5A */	lis r3, __vt__8cM3dGAab@ha
/* 805A0CF0  38 03 12 E0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805A0CF4  90 19 01 1C */	stw r0, 0x11c(r25)
/* 805A0CF8  3C 60 80 5A */	lis r3, __vt__8cM3dGSph@ha
/* 805A0CFC  38 03 12 D4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805A0D00  90 19 01 34 */	stw r0, 0x134(r25)
/* 805A0D04  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805A0D08  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 805A0D0C  90 79 01 20 */	stw r3, 0x120(r25)
/* 805A0D10  3B C3 00 58 */	addi r30, r3, 0x58
/* 805A0D14  93 D9 01 34 */	stw r30, 0x134(r25)
/* 805A0D18  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805A0D1C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 805A0D20  90 79 00 3C */	stw r3, 0x3c(r25)
/* 805A0D24  3B A3 00 2C */	addi r29, r3, 0x2c
/* 805A0D28  93 B9 01 20 */	stw r29, 0x120(r25)
/* 805A0D2C  3B 83 00 84 */	addi r28, r3, 0x84
/* 805A0D30  93 99 01 34 */	stw r28, 0x134(r25)
/* 805A0D34  3B 3A 09 FC */	addi r25, r26, 0x9fc
/* 805A0D38  7F 23 CB 78 */	mr r3, r25
/* 805A0D3C  4B AE 2C EC */	b __ct__12dCcD_GObjInfFv
/* 805A0D40  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805A0D44  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805A0D48  90 19 01 20 */	stw r0, 0x120(r25)
/* 805A0D4C  3C 60 80 5A */	lis r3, __vt__8cM3dGAab@ha
/* 805A0D50  38 03 12 E0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805A0D54  90 19 01 1C */	stw r0, 0x11c(r25)
/* 805A0D58  3C 60 80 5A */	lis r3, __vt__8cM3dGSph@ha
/* 805A0D5C  38 03 12 D4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805A0D60  90 19 01 34 */	stw r0, 0x134(r25)
/* 805A0D64  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805A0D68  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 805A0D6C  90 19 01 20 */	stw r0, 0x120(r25)
/* 805A0D70  93 D9 01 34 */	stw r30, 0x134(r25)
/* 805A0D74  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805A0D78  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 805A0D7C  90 19 00 3C */	stw r0, 0x3c(r25)
/* 805A0D80  93 B9 01 20 */	stw r29, 0x120(r25)
/* 805A0D84  93 99 01 34 */	stw r28, 0x134(r25)
lbl_805A0D88:
/* 805A0D88  80 1B 04 A0 */	lwz r0, 0x4a0(r27)
/* 805A0D8C  60 00 00 08 */	ori r0, r0, 8
/* 805A0D90  90 1B 04 A0 */	stw r0, 0x4a0(r27)
lbl_805A0D94:
/* 805A0D94  38 7B 05 AC */	addi r3, r27, 0x5ac
/* 805A0D98  3C 80 80 5A */	lis r4, stringBase0@ha
/* 805A0D9C  38 84 11 E4 */	addi r4, r4, stringBase0@l
/* 805A0DA0  4B A8 C1 1C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805A0DA4  7C 7C 1B 78 */	mr r28, r3
/* 805A0DA8  2C 1C 00 04 */	cmpwi r28, 4
/* 805A0DAC  40 82 01 E8 */	bne lbl_805A0F94
/* 805A0DB0  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 805A0DB4  98 1B 05 B4 */	stb r0, 0x5b4(r27)
/* 805A0DB8  88 1B 05 B4 */	lbz r0, 0x5b4(r27)
/* 805A0DBC  28 00 00 01 */	cmplwi r0, 1
/* 805A0DC0  40 82 00 30 */	bne lbl_805A0DF0
/* 805A0DC4  38 60 01 0B */	li r3, 0x10b
/* 805A0DC8  80 9B 00 B0 */	lwz r4, 0xb0(r27)
/* 805A0DCC  38 BB 04 A8 */	addi r5, r27, 0x4a8
/* 805A0DD0  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 805A0DD4  7C 06 07 74 */	extsb r6, r0
/* 805A0DD8  38 FB 04 B4 */	addi r7, r27, 0x4b4
/* 805A0DDC  39 00 00 00 */	li r8, 0
/* 805A0DE0  39 20 FF FF */	li r9, -1
/* 805A0DE4  4B A7 8F B4 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 805A0DE8  38 60 00 05 */	li r3, 5
/* 805A0DEC  48 00 01 AC */	b lbl_805A0F98
lbl_805A0DF0:
/* 805A0DF0  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 805A0DF4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 805A0DF8  98 1B 05 B5 */	stb r0, 0x5b5(r27)
/* 805A0DFC  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 805A0E00  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 805A0E04  98 1B 05 B6 */	stb r0, 0x5b6(r27)
/* 805A0E08  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 805A0E0C  54 00 46 3E */	srwi r0, r0, 0x18
/* 805A0E10  98 1B 05 B7 */	stb r0, 0x5b7(r27)
/* 805A0E14  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 805A0E18  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 805A0E1C  98 1B 05 B9 */	stb r0, 0x5b9(r27)
/* 805A0E20  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 805A0E24  54 00 46 3E */	srwi r0, r0, 0x18
/* 805A0E28  98 1B 05 B8 */	stb r0, 0x5b8(r27)
/* 805A0E2C  A8 1B 04 E0 */	lha r0, 0x4e0(r27)
/* 805A0E30  B0 1B 06 22 */	sth r0, 0x622(r27)
/* 805A0E34  38 00 00 00 */	li r0, 0
/* 805A0E38  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
/* 805A0E3C  B0 1B 04 E0 */	sth r0, 0x4e0(r27)
/* 805A0E40  7F 63 DB 78 */	mr r3, r27
/* 805A0E44  3C 80 80 5A */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 805A0E48  38 84 0A 48 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 805A0E4C  38 A0 17 C0 */	li r5, 0x17c0
/* 805A0E50  4B A7 96 60 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 805A0E54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805A0E58  40 82 00 0C */	bne lbl_805A0E64
/* 805A0E5C  38 60 00 05 */	li r3, 5
/* 805A0E60  48 00 01 38 */	b lbl_805A0F98
lbl_805A0E64:
/* 805A0E64  3C 60 80 5A */	lis r3, data_805A1330@ha
/* 805A0E68  8C 03 13 30 */	lbzu r0, data_805A1330@l(r3)
/* 805A0E6C  28 00 00 00 */	cmplwi r0, 0
/* 805A0E70  40 82 00 20 */	bne lbl_805A0E90
/* 805A0E74  38 00 00 01 */	li r0, 1
/* 805A0E78  98 1B 0B 58 */	stb r0, 0xb58(r27)
/* 805A0E7C  98 03 00 00 */	stb r0, 0(r3)
/* 805A0E80  38 00 FF FF */	li r0, -1
/* 805A0E84  3C 60 80 5A */	lis r3, l_HIO@ha
/* 805A0E88  38 63 13 40 */	addi r3, r3, l_HIO@l
/* 805A0E8C  98 03 00 04 */	stb r0, 4(r3)
lbl_805A0E90:
/* 805A0E90  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 805A0E94  60 00 01 00 */	ori r0, r0, 0x100
/* 805A0E98  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 805A0E9C  38 00 00 00 */	li r0, 0
/* 805A0EA0  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 805A0EA4  B0 1B 05 F8 */	sth r0, 0x5f8(r27)
/* 805A0EA8  80 7B 05 EC */	lwz r3, 0x5ec(r27)
/* 805A0EAC  80 63 00 04 */	lwz r3, 4(r3)
/* 805A0EB0  38 63 00 24 */	addi r3, r3, 0x24
/* 805A0EB4  90 7B 05 04 */	stw r3, 0x504(r27)
/* 805A0EB8  90 01 00 08 */	stw r0, 8(r1)
/* 805A0EBC  38 7B 06 B0 */	addi r3, r27, 0x6b0
/* 805A0EC0  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805A0EC4  38 BB 04 BC */	addi r5, r27, 0x4bc
/* 805A0EC8  7F 66 DB 78 */	mr r6, r27
/* 805A0ECC  38 E0 00 01 */	li r7, 1
/* 805A0ED0  39 1B 06 70 */	addi r8, r27, 0x670
/* 805A0ED4  39 3B 04 F8 */	addi r9, r27, 0x4f8
/* 805A0ED8  39 40 00 00 */	li r10, 0
/* 805A0EDC  4B AD 53 6C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 805A0EE0  38 7B 06 70 */	addi r3, r27, 0x670
/* 805A0EE4  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805A0EE8  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 805A0EEC  4B AD 50 6C */	b SetWall__12dBgS_AcchCirFff
/* 805A0EF0  38 00 00 01 */	li r0, 1
/* 805A0EF4  B0 1B 05 62 */	sth r0, 0x562(r27)
/* 805A0EF8  B0 1B 05 60 */	sth r0, 0x560(r27)
/* 805A0EFC  38 7B 08 88 */	addi r3, r27, 0x888
/* 805A0F00  38 80 00 64 */	li r4, 0x64
/* 805A0F04  38 A0 00 00 */	li r5, 0
/* 805A0F08  7F 66 DB 78 */	mr r6, r27
/* 805A0F0C  4B AE 29 54 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 805A0F10  38 7B 08 C4 */	addi r3, r27, 0x8c4
/* 805A0F14  3C 80 80 5A */	lis r4, cc_sph_src@ha
/* 805A0F18  38 84 12 04 */	addi r4, r4, cc_sph_src@l
/* 805A0F1C  4B AE 3B 18 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805A0F20  38 1B 08 88 */	addi r0, r27, 0x888
/* 805A0F24  90 1B 09 08 */	stw r0, 0x908(r27)
/* 805A0F28  38 7B 09 FC */	addi r3, r27, 0x9fc
/* 805A0F2C  3C 80 80 5A */	lis r4, at_sph_src@ha
/* 805A0F30  38 84 12 44 */	addi r4, r4, at_sph_src@l
/* 805A0F34  4B AE 3B 00 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805A0F38  38 1B 08 88 */	addi r0, r27, 0x888
/* 805A0F3C  90 1B 0A 40 */	stw r0, 0xa40(r27)
/* 805A0F40  38 00 00 07 */	li r0, 7
/* 805A0F44  98 1B 05 48 */	stb r0, 0x548(r27)
/* 805A0F48  88 1B 05 B5 */	lbz r0, 0x5b5(r27)
/* 805A0F4C  28 00 00 FF */	cmplwi r0, 0xff
/* 805A0F50  40 82 00 20 */	bne lbl_805A0F70
/* 805A0F54  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 805A0F58  4B CC 69 FC */	b cM_rndF__Ff
/* 805A0F5C  FC 00 08 1E */	fctiwz f0, f1
/* 805A0F60  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805A0F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A0F68  98 1B 05 F4 */	stb r0, 0x5f4(r27)
/* 805A0F6C  48 00 00 20 */	b lbl_805A0F8C
lbl_805A0F70:
/* 805A0F70  98 1B 05 F4 */	stb r0, 0x5f4(r27)
/* 805A0F74  88 1B 05 F4 */	lbz r0, 0x5f4(r27)
/* 805A0F78  7C 00 07 74 */	extsb r0, r0
/* 805A0F7C  2C 00 00 03 */	cmpwi r0, 3
/* 805A0F80  40 81 00 0C */	ble lbl_805A0F8C
/* 805A0F84  38 00 00 03 */	li r0, 3
/* 805A0F88  98 1B 05 F4 */	stb r0, 0x5f4(r27)
lbl_805A0F8C:
/* 805A0F8C  7F 63 DB 78 */	mr r3, r27
/* 805A0F90  4B FF F8 39 */	bl daSq_Execute__FP8sq_class
lbl_805A0F94:
/* 805A0F94  7F 83 E3 78 */	mr r3, r28
lbl_805A0F98:
/* 805A0F98  39 61 00 40 */	addi r11, r1, 0x40
/* 805A0F9C  4B DC 12 7C */	b _restgpr_25
/* 805A0FA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805A0FA4  7C 08 03 A6 */	mtlr r0
/* 805A0FA8  38 21 00 40 */	addi r1, r1, 0x40
/* 805A0FAC  4E 80 00 20 */	blr 
