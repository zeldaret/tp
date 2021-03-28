lbl_807BE708:
/* 807BE708  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807BE70C  7C 08 02 A6 */	mflr r0
/* 807BE710  90 01 00 34 */	stw r0, 0x34(r1)
/* 807BE714  39 61 00 30 */	addi r11, r1, 0x30
/* 807BE718  4B BA 3A C4 */	b _savegpr_29
/* 807BE71C  7C 7E 1B 78 */	mr r30, r3
/* 807BE720  3C 60 80 7C */	lis r3, lit_1109@ha
/* 807BE724  3B E3 23 A0 */	addi r31, r3, lit_1109@l
/* 807BE728  88 1F 00 C8 */	lbz r0, 0xc8(r31)
/* 807BE72C  7C 00 07 75 */	extsb. r0, r0
/* 807BE730  40 82 00 34 */	bne lbl_807BE764
/* 807BE734  3C 60 80 7C */	lis r3, lit_3929@ha
/* 807BE738  C0 03 1F E4 */	lfs f0, lit_3929@l(r3)
/* 807BE73C  D0 1F 00 CC */	stfs f0, 0xcc(r31)
/* 807BE740  38 7F 00 CC */	addi r3, r31, 0xcc
/* 807BE744  D0 03 00 04 */	stfs f0, 4(r3)
/* 807BE748  D0 03 00 08 */	stfs f0, 8(r3)
/* 807BE74C  3C 80 80 7C */	lis r4, __dt__4cXyzFv@ha
/* 807BE750  38 84 1F 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 807BE754  38 BF 00 BC */	addi r5, r31, 0xbc
/* 807BE758  4B FF EF E1 */	bl __register_global_object
/* 807BE75C  38 00 00 01 */	li r0, 1
/* 807BE760  98 1F 00 C8 */	stb r0, 0xc8(r31)
lbl_807BE764:
/* 807BE764  88 1E 06 F6 */	lbz r0, 0x6f6(r30)
/* 807BE768  28 00 00 00 */	cmplwi r0, 0
/* 807BE76C  40 82 00 C0 */	bne lbl_807BE82C
/* 807BE770  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807BE774  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 807BE778  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807BE77C  38 00 00 FF */	li r0, 0xff
/* 807BE780  90 01 00 08 */	stw r0, 8(r1)
/* 807BE784  38 80 00 00 */	li r4, 0
/* 807BE788  90 81 00 0C */	stw r4, 0xc(r1)
/* 807BE78C  38 00 FF FF */	li r0, -1
/* 807BE790  90 01 00 10 */	stw r0, 0x10(r1)
/* 807BE794  90 81 00 14 */	stw r4, 0x14(r1)
/* 807BE798  90 81 00 18 */	stw r4, 0x18(r1)
/* 807BE79C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807BE7A0  80 9E 0A BC */	lwz r4, 0xabc(r30)
/* 807BE7A4  38 A0 00 00 */	li r5, 0
/* 807BE7A8  3C C0 00 01 */	lis r6, 0x0001 /* 0x000084D1@ha */
/* 807BE7AC  38 C6 84 D1 */	addi r6, r6, 0x84D1 /* 0x000084D1@l */
/* 807BE7B0  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 807BE7B4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807BE7B8  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807BE7BC  39 5F 00 CC */	addi r10, r31, 0xcc
/* 807BE7C0  3D 60 80 7C */	lis r11, lit_3910@ha
/* 807BE7C4  C0 2B 1F C0 */	lfs f1, lit_3910@l(r11)
/* 807BE7C8  4B 88 ED 04 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807BE7CC  90 7E 0A BC */	stw r3, 0xabc(r30)
/* 807BE7D0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807BE7D4  38 00 00 FF */	li r0, 0xff
/* 807BE7D8  90 01 00 08 */	stw r0, 8(r1)
/* 807BE7DC  38 80 00 00 */	li r4, 0
/* 807BE7E0  90 81 00 0C */	stw r4, 0xc(r1)
/* 807BE7E4  38 00 FF FF */	li r0, -1
/* 807BE7E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 807BE7EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 807BE7F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 807BE7F4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807BE7F8  80 9E 0A C0 */	lwz r4, 0xac0(r30)
/* 807BE7FC  38 A0 00 00 */	li r5, 0
/* 807BE800  3C C0 00 01 */	lis r6, 0x0001 /* 0x000084D4@ha */
/* 807BE804  38 C6 84 D4 */	addi r6, r6, 0x84D4 /* 0x000084D4@l */
/* 807BE808  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 807BE80C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807BE810  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807BE814  39 5F 00 CC */	addi r10, r31, 0xcc
/* 807BE818  3D 60 80 7C */	lis r11, lit_3910@ha
/* 807BE81C  C0 2B 1F C0 */	lfs f1, lit_3910@l(r11)
/* 807BE820  4B 88 EC AC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807BE824  90 7E 0A C0 */	stw r3, 0xac0(r30)
/* 807BE828  48 00 00 BC */	b lbl_807BE8E4
lbl_807BE82C:
/* 807BE82C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807BE830  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 807BE834  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807BE838  38 00 00 FF */	li r0, 0xff
/* 807BE83C  90 01 00 08 */	stw r0, 8(r1)
/* 807BE840  38 80 00 00 */	li r4, 0
/* 807BE844  90 81 00 0C */	stw r4, 0xc(r1)
/* 807BE848  38 00 FF FF */	li r0, -1
/* 807BE84C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807BE850  90 81 00 14 */	stw r4, 0x14(r1)
/* 807BE854  90 81 00 18 */	stw r4, 0x18(r1)
/* 807BE858  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807BE85C  80 9E 0A BC */	lwz r4, 0xabc(r30)
/* 807BE860  38 A0 00 00 */	li r5, 0
/* 807BE864  3C C0 00 01 */	lis r6, 0x0001 /* 0x000084D0@ha */
/* 807BE868  38 C6 84 D0 */	addi r6, r6, 0x84D0 /* 0x000084D0@l */
/* 807BE86C  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 807BE870  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807BE874  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807BE878  39 5F 00 CC */	addi r10, r31, 0xcc
/* 807BE87C  3D 60 80 7C */	lis r11, lit_3910@ha
/* 807BE880  C0 2B 1F C0 */	lfs f1, lit_3910@l(r11)
/* 807BE884  4B 88 EC 48 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807BE888  90 7E 0A BC */	stw r3, 0xabc(r30)
/* 807BE88C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807BE890  38 00 00 FF */	li r0, 0xff
/* 807BE894  90 01 00 08 */	stw r0, 8(r1)
/* 807BE898  38 80 00 00 */	li r4, 0
/* 807BE89C  90 81 00 0C */	stw r4, 0xc(r1)
/* 807BE8A0  38 00 FF FF */	li r0, -1
/* 807BE8A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 807BE8A8  90 81 00 14 */	stw r4, 0x14(r1)
/* 807BE8AC  90 81 00 18 */	stw r4, 0x18(r1)
/* 807BE8B0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807BE8B4  80 9E 0A C0 */	lwz r4, 0xac0(r30)
/* 807BE8B8  38 A0 00 00 */	li r5, 0
/* 807BE8BC  3C C0 00 01 */	lis r6, 0x0001 /* 0x000084D3@ha */
/* 807BE8C0  38 C6 84 D3 */	addi r6, r6, 0x84D3 /* 0x000084D3@l */
/* 807BE8C4  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 807BE8C8  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807BE8CC  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807BE8D0  39 5F 00 CC */	addi r10, r31, 0xcc
/* 807BE8D4  3D 60 80 7C */	lis r11, lit_3910@ha
/* 807BE8D8  C0 2B 1F C0 */	lfs f1, lit_3910@l(r11)
/* 807BE8DC  4B 88 EB F0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807BE8E0  90 7E 0A C0 */	stw r3, 0xac0(r30)
lbl_807BE8E4:
/* 807BE8E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807BE8E8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 807BE8EC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807BE8F0  38 63 02 10 */	addi r3, r3, 0x210
/* 807BE8F4  80 9E 0A BC */	lwz r4, 0xabc(r30)
/* 807BE8F8  4B 88 D0 20 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 807BE8FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 807BE900  41 82 00 38 */	beq lbl_807BE938
/* 807BE904  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807BE908  80 63 00 04 */	lwz r3, 4(r3)
/* 807BE90C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807BE910  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807BE914  38 63 01 B0 */	addi r3, r3, 0x1b0
/* 807BE918  38 9F 00 68 */	addi r4, r31, 0x68
/* 807BE91C  38 BF 00 98 */	addi r5, r31, 0x98
/* 807BE920  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 807BE924  4B AC 1E E4 */	b func_80280808
/* 807BE928  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 807BE92C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 807BE930  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 807BE934  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_807BE938:
/* 807BE938  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807BE93C  38 63 02 10 */	addi r3, r3, 0x210
/* 807BE940  80 9E 0A C0 */	lwz r4, 0xac0(r30)
/* 807BE944  4B 88 CF D4 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 807BE948  7C 7F 1B 79 */	or. r31, r3, r3
/* 807BE94C  41 82 00 38 */	beq lbl_807BE984
/* 807BE950  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807BE954  80 63 00 04 */	lwz r3, 4(r3)
/* 807BE958  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807BE95C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807BE960  38 63 01 B0 */	addi r3, r3, 0x1b0
/* 807BE964  38 9F 00 68 */	addi r4, r31, 0x68
/* 807BE968  38 BF 00 98 */	addi r5, r31, 0x98
/* 807BE96C  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 807BE970  4B AC 1E 98 */	b func_80280808
/* 807BE974  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 807BE978  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 807BE97C  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 807BE980  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_807BE984:
/* 807BE984  39 61 00 30 */	addi r11, r1, 0x30
/* 807BE988  4B BA 38 A0 */	b _restgpr_29
/* 807BE98C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807BE990  7C 08 03 A6 */	mtlr r0
/* 807BE994  38 21 00 30 */	addi r1, r1, 0x30
/* 807BE998  4E 80 00 20 */	blr 
