lbl_804D7DF4:
/* 804D7DF4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D7DF8  7C 08 02 A6 */	mflr r0
/* 804D7DFC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D7E00  39 61 00 40 */	addi r11, r1, 0x40
/* 804D7E04  4B E8 A3 D9 */	bl _savegpr_29
/* 804D7E08  7C 7E 1B 78 */	mr r30, r3
/* 804D7E0C  3C 80 80 4E */	lis r4, lit_3942@ha /* 0x804D9E64@ha */
/* 804D7E10  3B E4 9E 64 */	addi r31, r4, lit_3942@l /* 0x804D9E64@l */
/* 804D7E14  A8 03 06 1E */	lha r0, 0x61e(r3)
/* 804D7E18  2C 00 00 01 */	cmpwi r0, 1
/* 804D7E1C  41 82 00 74 */	beq lbl_804D7E90
/* 804D7E20  40 80 00 A8 */	bge lbl_804D7EC8
/* 804D7E24  2C 00 00 00 */	cmpwi r0, 0
/* 804D7E28  40 80 00 08 */	bge lbl_804D7E30
/* 804D7E2C  48 00 00 9C */	b lbl_804D7EC8
lbl_804D7E30:
/* 804D7E30  C0 1E 06 20 */	lfs f0, 0x620(r30)
/* 804D7E34  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 804D7E38  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D7E3C  4C 40 13 82 */	cror 2, 0, 2
/* 804D7E40  40 82 00 88 */	bne lbl_804D7EC8
/* 804D7E44  38 00 00 01 */	li r0, 1
/* 804D7E48  B0 1E 06 1E */	sth r0, 0x61e(r30)
/* 804D7E4C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 804D7E50  D0 1E 06 24 */	stfs f0, 0x624(r30)
/* 804D7E54  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 804D7E58  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D7E5C  40 81 00 10 */	ble lbl_804D7E6C
/* 804D7E60  38 00 00 07 */	li r0, 7
/* 804D7E64  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 804D7E68  48 00 00 0C */	b lbl_804D7E74
lbl_804D7E6C:
/* 804D7E6C  38 00 00 05 */	li r0, 5
/* 804D7E70  B0 1E 06 28 */	sth r0, 0x628(r30)
lbl_804D7E74:
/* 804D7E74  7F C3 F3 78 */	mr r3, r30
/* 804D7E78  38 80 00 05 */	li r4, 5
/* 804D7E7C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804D7E80  38 A0 00 02 */	li r5, 2
/* 804D7E84  FC 40 08 90 */	fmr f2, f1
/* 804D7E88  4B FF EE 1D */	bl anm_init__FP8bd_classifUcf
/* 804D7E8C  48 00 00 3C */	b lbl_804D7EC8
lbl_804D7E90:
/* 804D7E90  A8 1E 06 28 */	lha r0, 0x628(r30)
/* 804D7E94  2C 00 00 00 */	cmpwi r0, 0
/* 804D7E98  40 82 00 30 */	bne lbl_804D7EC8
/* 804D7E9C  C0 3E 06 24 */	lfs f1, 0x624(r30)
/* 804D7EA0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804D7EA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D7EA8  40 80 00 20 */	bge lbl_804D7EC8
/* 804D7EAC  38 80 00 07 */	li r4, 7
/* 804D7EB0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804D7EB4  38 A0 00 00 */	li r5, 0
/* 804D7EB8  FC 40 08 90 */	fmr f2, f1
/* 804D7EBC  4B FF ED E9 */	bl anm_init__FP8bd_classifUcf
/* 804D7EC0  38 00 00 00 */	li r0, 0
/* 804D7EC4  B0 1E 06 1E */	sth r0, 0x61e(r30)
lbl_804D7EC8:
/* 804D7EC8  A8 1E 06 1C */	lha r0, 0x61c(r30)
/* 804D7ECC  2C 00 00 01 */	cmpwi r0, 1
/* 804D7ED0  41 82 00 64 */	beq lbl_804D7F34
/* 804D7ED4  40 80 03 54 */	bge lbl_804D8228
/* 804D7ED8  2C 00 00 00 */	cmpwi r0, 0
/* 804D7EDC  40 80 00 08 */	bge lbl_804D7EE4
/* 804D7EE0  48 00 03 48 */	b lbl_804D8228
lbl_804D7EE4:
/* 804D7EE4  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804D7EE8  4B D8 FA 6D */	bl cM_rndF__Ff
/* 804D7EEC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804D7EF0  EC 00 08 2A */	fadds f0, f0, f1
/* 804D7EF4  FC 00 00 1E */	fctiwz f0, f0
/* 804D7EF8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804D7EFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D7F00  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 804D7F04  38 00 00 00 */	li r0, 0
/* 804D7F08  B0 1E 06 4E */	sth r0, 0x64e(r30)
/* 804D7F0C  38 00 D8 F0 */	li r0, -10000
/* 804D7F10  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 804D7F14  7F C3 F3 78 */	mr r3, r30
/* 804D7F18  38 80 00 05 */	li r4, 5
/* 804D7F1C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804D7F20  38 A0 00 02 */	li r5, 2
/* 804D7F24  FC 40 08 90 */	fmr f2, f1
/* 804D7F28  4B FF ED 7D */	bl anm_init__FP8bd_classifUcf
/* 804D7F2C  38 00 00 01 */	li r0, 1
/* 804D7F30  B0 1E 06 1C */	sth r0, 0x61c(r30)
lbl_804D7F34:
/* 804D7F34  A8 1E 06 4C */	lha r0, 0x64c(r30)
/* 804D7F38  2C 00 00 00 */	cmpwi r0, 0
/* 804D7F3C  40 82 02 00 */	bne lbl_804D813C
/* 804D7F40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D7F44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D7F48  3B A3 4E 00 */	addi r29, r3, 0x4e00
/* 804D7F4C  7F A3 EB 78 */	mr r3, r29
/* 804D7F50  3C 80 80 4E */	lis r4, d_a_bd__stringBase0@ha /* 0x804D9F6C@ha */
/* 804D7F54  38 84 9F 6C */	addi r4, r4, d_a_bd__stringBase0@l /* 0x804D9F6C@l */
/* 804D7F58  38 84 00 03 */	addi r4, r4, 3
/* 804D7F5C  4B E9 0A 39 */	bl strcmp
/* 804D7F60  2C 03 00 00 */	cmpwi r3, 0
/* 804D7F64  40 82 00 AC */	bne lbl_804D8010
/* 804D7F68  7F C3 F3 78 */	mr r3, r30
/* 804D7F6C  4B FF F6 65 */	bl land_check__FP8bd_class
/* 804D7F70  7C 7D 1B 79 */	or. r29, r3, r3
/* 804D7F74  41 80 00 90 */	blt lbl_804D8004
/* 804D7F78  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804D7F7C  4B D8 F9 D9 */	bl cM_rndF__Ff
/* 804D7F80  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 804D7F84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D7F88  4C 40 13 82 */	cror 2, 0, 2
/* 804D7F8C  40 82 00 34 */	bne lbl_804D7FC0
/* 804D7F90  80 7E 06 2C */	lwz r3, 0x62c(r30)
/* 804D7F94  28 03 00 00 */	cmplwi r3, 0
/* 804D7F98  41 82 00 28 */	beq lbl_804D7FC0
/* 804D7F9C  C0 03 00 00 */	lfs f0, 0(r3)
/* 804D7FA0  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 804D7FA4  C0 03 00 04 */	lfs f0, 4(r3)
/* 804D7FA8  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 804D7FAC  C0 03 00 08 */	lfs f0, 8(r3)
/* 804D7FB0  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 804D7FB4  38 00 00 01 */	li r0, 1
/* 804D7FB8  98 1E 06 45 */	stb r0, 0x645(r30)
/* 804D7FBC  48 00 00 34 */	b lbl_804D7FF0
lbl_804D7FC0:
/* 804D7FC0  3C 60 80 4E */	lis r3, land_pos103@ha /* 0x804D9F88@ha */
/* 804D7FC4  38 83 9F 88 */	addi r4, r3, land_pos103@l /* 0x804D9F88@l */
/* 804D7FC8  57 A0 20 36 */	slwi r0, r29, 4
/* 804D7FCC  7C 64 02 14 */	add r3, r4, r0
/* 804D7FD0  C0 03 00 04 */	lfs f0, 4(r3)
/* 804D7FD4  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 804D7FD8  C0 03 00 08 */	lfs f0, 8(r3)
/* 804D7FDC  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 804D7FE0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804D7FE4  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 804D7FE8  7C 04 00 2E */	lwzx r0, r4, r0
/* 804D7FEC  98 1E 06 45 */	stb r0, 0x645(r30)
lbl_804D7FF0:
/* 804D7FF0  38 00 00 03 */	li r0, 3
/* 804D7FF4  B0 1E 06 1A */	sth r0, 0x61a(r30)
/* 804D7FF8  38 00 00 00 */	li r0, 0
/* 804D7FFC  B0 1E 06 1C */	sth r0, 0x61c(r30)
/* 804D8000  48 00 02 28 */	b lbl_804D8228
lbl_804D8004:
/* 804D8004  38 00 00 00 */	li r0, 0
/* 804D8008  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 804D800C  48 00 02 1C */	b lbl_804D8228
lbl_804D8010:
/* 804D8010  7F A3 EB 78 */	mr r3, r29
/* 804D8014  3C 80 80 4E */	lis r4, d_a_bd__stringBase0@ha /* 0x804D9F6C@ha */
/* 804D8018  38 84 9F 6C */	addi r4, r4, d_a_bd__stringBase0@l /* 0x804D9F6C@l */
/* 804D801C  38 84 00 0B */	addi r4, r4, 0xb
/* 804D8020  4B E9 09 75 */	bl strcmp
/* 804D8024  2C 03 00 00 */	cmpwi r3, 0
/* 804D8028  41 82 00 20 */	beq lbl_804D8048
/* 804D802C  7F A3 EB 78 */	mr r3, r29
/* 804D8030  3C 80 80 4E */	lis r4, d_a_bd__stringBase0@ha /* 0x804D9F6C@ha */
/* 804D8034  38 84 9F 6C */	addi r4, r4, d_a_bd__stringBase0@l /* 0x804D9F6C@l */
/* 804D8038  38 84 00 13 */	addi r4, r4, 0x13
/* 804D803C  4B E9 09 59 */	bl strcmp
/* 804D8040  2C 03 00 00 */	cmpwi r3, 0
/* 804D8044  40 82 00 B0 */	bne lbl_804D80F4
lbl_804D8048:
/* 804D8048  7F A3 EB 78 */	mr r3, r29
/* 804D804C  3C 80 80 4E */	lis r4, d_a_bd__stringBase0@ha /* 0x804D9F6C@ha */
/* 804D8050  38 84 9F 6C */	addi r4, r4, d_a_bd__stringBase0@l /* 0x804D9F6C@l */
/* 804D8054  38 84 00 13 */	addi r4, r4, 0x13
/* 804D8058  4B E9 09 3D */	bl strcmp
/* 804D805C  2C 03 00 00 */	cmpwi r3, 0
/* 804D8060  40 82 00 34 */	bne lbl_804D8094
/* 804D8064  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 804D8068  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 804D806C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804D8070  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 804D8074  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 804D8078  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 804D807C  38 60 00 00 */	li r3, 0
/* 804D8080  98 7E 06 45 */	stb r3, 0x645(r30)
/* 804D8084  38 00 00 03 */	li r0, 3
/* 804D8088  B0 1E 06 1A */	sth r0, 0x61a(r30)
/* 804D808C  B0 7E 06 1C */	sth r3, 0x61c(r30)
/* 804D8090  48 00 01 98 */	b lbl_804D8228
lbl_804D8094:
/* 804D8094  7F C3 F3 78 */	mr r3, r30
/* 804D8098  4B FF F5 39 */	bl land_check__FP8bd_class
/* 804D809C  2C 03 00 00 */	cmpwi r3, 0
/* 804D80A0  41 80 00 48 */	blt lbl_804D80E8
/* 804D80A4  3C 80 80 4E */	lis r4, land_pos127@ha /* 0x804DA0C8@ha */
/* 804D80A8  38 84 A0 C8 */	addi r4, r4, land_pos127@l /* 0x804DA0C8@l */
/* 804D80AC  54 60 20 36 */	slwi r0, r3, 4
/* 804D80B0  7C 64 02 14 */	add r3, r4, r0
/* 804D80B4  C0 03 00 04 */	lfs f0, 4(r3)
/* 804D80B8  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 804D80BC  C0 03 00 08 */	lfs f0, 8(r3)
/* 804D80C0  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 804D80C4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804D80C8  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 804D80CC  7C 04 00 2E */	lwzx r0, r4, r0
/* 804D80D0  98 1E 06 45 */	stb r0, 0x645(r30)
/* 804D80D4  38 00 00 03 */	li r0, 3
/* 804D80D8  B0 1E 06 1A */	sth r0, 0x61a(r30)
/* 804D80DC  38 00 00 00 */	li r0, 0
/* 804D80E0  B0 1E 06 1C */	sth r0, 0x61c(r30)
/* 804D80E4  48 00 01 44 */	b lbl_804D8228
lbl_804D80E8:
/* 804D80E8  38 00 00 00 */	li r0, 0
/* 804D80EC  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 804D80F0  48 00 01 38 */	b lbl_804D8228
lbl_804D80F4:
/* 804D80F4  38 00 00 03 */	li r0, 3
/* 804D80F8  B0 1E 06 1A */	sth r0, 0x61a(r30)
/* 804D80FC  38 60 00 00 */	li r3, 0
/* 804D8100  B0 7E 06 1C */	sth r3, 0x61c(r30)
/* 804D8104  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 804D8108  28 00 00 01 */	cmplwi r0, 1
/* 804D810C  41 80 00 28 */	blt lbl_804D8134
/* 804D8110  38 00 00 01 */	li r0, 1
/* 804D8114  98 1E 06 45 */	stb r0, 0x645(r30)
/* 804D8118  C0 1E 06 34 */	lfs f0, 0x634(r30)
/* 804D811C  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 804D8120  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 804D8124  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 804D8128  C0 1E 06 3C */	lfs f0, 0x63c(r30)
/* 804D812C  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 804D8130  48 00 00 F8 */	b lbl_804D8228
lbl_804D8134:
/* 804D8134  98 7E 06 45 */	stb r3, 0x645(r30)
/* 804D8138  48 00 00 F0 */	b lbl_804D8228
lbl_804D813C:
/* 804D813C  A8 1E 06 4E */	lha r0, 0x64e(r30)
/* 804D8140  2C 00 00 00 */	cmpwi r0, 0
/* 804D8144  40 82 00 E4 */	bne lbl_804D8228
/* 804D8148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D814C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D8150  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 804D8154  3C 80 80 4E */	lis r4, d_a_bd__stringBase0@ha /* 0x804D9F6C@ha */
/* 804D8158  38 84 9F 6C */	addi r4, r4, d_a_bd__stringBase0@l /* 0x804D9F6C@l */
/* 804D815C  38 84 00 13 */	addi r4, r4, 0x13
/* 804D8160  4B E9 08 35 */	bl strcmp
/* 804D8164  2C 03 00 00 */	cmpwi r3, 0
/* 804D8168  40 82 00 5C */	bne lbl_804D81C4
/* 804D816C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804D8170  4B D8 F8 1D */	bl cM_rndFX__Ff
/* 804D8174  D0 3E 05 C4 */	stfs f1, 0x5c4(r30)
/* 804D8178  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804D817C  4B D8 F7 D9 */	bl cM_rndF__Ff
/* 804D8180  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 804D8184  EC 00 08 2A */	fadds f0, f0, f1
/* 804D8188  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 804D818C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804D8190  4B D8 F7 FD */	bl cM_rndFX__Ff
/* 804D8194  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 804D8198  EC 00 08 2A */	fadds f0, f0, f1
/* 804D819C  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 804D81A0  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 804D81A4  4B D8 F7 E9 */	bl cM_rndFX__Ff
/* 804D81A8  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 804D81AC  EC 00 08 2A */	fadds f0, f0, f1
/* 804D81B0  FC 00 00 1E */	fctiwz f0, f0
/* 804D81B4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804D81B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D81BC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 804D81C0  48 00 00 48 */	b lbl_804D8208
lbl_804D81C4:
/* 804D81C4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804D81C8  4B D8 F7 C5 */	bl cM_rndFX__Ff
/* 804D81CC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 804D81D0  EC 00 08 2A */	fadds f0, f0, f1
/* 804D81D4  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 804D81D8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804D81DC  4B D8 F7 79 */	bl cM_rndF__Ff
/* 804D81E0  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 804D81E4  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 804D81E8  EC 02 00 2A */	fadds f0, f2, f0
/* 804D81EC  EC 00 08 2A */	fadds f0, f0, f1
/* 804D81F0  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 804D81F4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804D81F8  4B D8 F7 95 */	bl cM_rndFX__Ff
/* 804D81FC  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 804D8200  EC 00 08 2A */	fadds f0, f0, f1
/* 804D8204  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
lbl_804D8208:
/* 804D8208  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 804D820C  4B D8 F7 49 */	bl cM_rndF__Ff
/* 804D8210  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 804D8214  EC 00 08 2A */	fadds f0, f0, f1
/* 804D8218  FC 00 00 1E */	fctiwz f0, f0
/* 804D821C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804D8220  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D8224  B0 1E 06 4E */	sth r0, 0x64e(r30)
lbl_804D8228:
/* 804D8228  3C 60 80 4E */	lis r3, l_HIO@ha /* 0x804DA36C@ha */
/* 804D822C  38 63 A3 6C */	addi r3, r3, l_HIO@l /* 0x804DA36C@l */
/* 804D8230  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804D8234  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804D8238  38 61 00 08 */	addi r3, r1, 8
/* 804D823C  38 9E 05 C4 */	addi r4, r30, 0x5c4
/* 804D8240  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804D8244  4B D8 E8 F1 */	bl __mi__4cXyzCFRC3Vec
/* 804D8248  C0 21 00 08 */	lfs f1, 8(r1)
/* 804D824C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804D8250  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804D8254  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D8258  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 804D825C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 804D8260  A8 1E 06 1E */	lha r0, 0x61e(r30)
/* 804D8264  2C 00 00 00 */	cmpwi r0, 0
/* 804D8268  41 82 00 64 */	beq lbl_804D82CC
/* 804D826C  4B D8 F4 09 */	bl cM_atan2s__Fff
/* 804D8270  7C 64 1B 78 */	mr r4, r3
/* 804D8274  38 7E 04 DE */	addi r3, r30, 0x4de
/* 804D8278  38 A0 00 08 */	li r5, 8
/* 804D827C  38 C0 02 BC */	li r6, 0x2bc
/* 804D8280  4B D9 83 89 */	bl cLib_addCalcAngleS2__FPssss
/* 804D8284  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804D8288  EC 20 00 32 */	fmuls f1, f0, f0
/* 804D828C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804D8290  EC 00 00 32 */	fmuls f0, f0, f0
/* 804D8294  EC 41 00 2A */	fadds f2, f1, f0
/* 804D8298  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D829C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804D82A0  40 81 00 0C */	ble lbl_804D82AC
/* 804D82A4  FC 00 10 34 */	frsqrte f0, f2
/* 804D82A8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804D82AC:
/* 804D82AC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804D82B0  4B D8 F3 C5 */	bl cM_atan2s__Fff
/* 804D82B4  7C 03 00 D0 */	neg r0, r3
/* 804D82B8  7C 04 07 34 */	extsh r4, r0
/* 804D82BC  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 804D82C0  38 A0 00 08 */	li r5, 8
/* 804D82C4  38 C0 02 BC */	li r6, 0x2bc
/* 804D82C8  4B D9 83 41 */	bl cLib_addCalcAngleS2__FPssss
lbl_804D82CC:
/* 804D82CC  39 61 00 40 */	addi r11, r1, 0x40
/* 804D82D0  4B E8 9F 59 */	bl _restgpr_29
/* 804D82D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D82D8  7C 08 03 A6 */	mtlr r0
/* 804D82DC  38 21 00 40 */	addi r1, r1, 0x40
/* 804D82E0  4E 80 00 20 */	blr 
