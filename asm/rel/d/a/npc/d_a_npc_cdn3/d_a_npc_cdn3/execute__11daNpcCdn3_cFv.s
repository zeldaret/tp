lbl_8097D748:
/* 8097D748  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8097D74C  7C 08 02 A6 */	mflr r0
/* 8097D750  90 01 00 24 */	stw r0, 0x24(r1)
/* 8097D754  39 61 00 20 */	addi r11, r1, 0x20
/* 8097D758  4B 9E 4A 84 */	b _savegpr_29
/* 8097D75C  7C 7F 1B 78 */	mr r31, r3
/* 8097D760  80 03 0A 98 */	lwz r0, 0xa98(r3)
/* 8097D764  2C 00 00 10 */	cmpwi r0, 0x10
/* 8097D768  40 80 00 1C */	bge lbl_8097D784
/* 8097D76C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D770  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D774  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 8097D778  7C 63 02 14 */	add r3, r3, r0
/* 8097D77C  C0 03 02 08 */	lfs f0, 0x208(r3)
/* 8097D780  48 00 00 18 */	b lbl_8097D798
lbl_8097D784:
/* 8097D784  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 8097D788  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 8097D78C  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 8097D790  7C 63 02 14 */	add r3, r3, r0
/* 8097D794  C0 03 FF 38 */	lfs f0, -0xc8(r3)
lbl_8097D798:
/* 8097D798  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 8097D79C  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 8097D7A0  38 7F 08 10 */	addi r3, r31, 0x810
/* 8097D7A4  2C 00 00 10 */	cmpwi r0, 0x10
/* 8097D7A8  40 80 00 1C */	bge lbl_8097D7C4
/* 8097D7AC  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha
/* 8097D7B0  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l
/* 8097D7B4  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 8097D7B8  7C 84 02 14 */	add r4, r4, r0
/* 8097D7BC  C0 24 02 0C */	lfs f1, 0x20c(r4)
/* 8097D7C0  48 00 00 18 */	b lbl_8097D7D8
lbl_8097D7C4:
/* 8097D7C4  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha
/* 8097D7C8  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l
/* 8097D7CC  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 8097D7D0  7C 84 02 14 */	add r4, r4, r0
/* 8097D7D4  C0 24 FF 3C */	lfs f1, -0xc4(r4)
lbl_8097D7D8:
/* 8097D7D8  4B 6F 87 68 */	b SetWallR__12dBgS_AcchCirFf
/* 8097D7DC  7F E3 FB 78 */	mr r3, r31
/* 8097D7E0  48 00 02 DD */	bl checkTimeSchedule__11daNpcCdn3_cFv
/* 8097D7E4  88 1F 0B 95 */	lbz r0, 0xb95(r31)
/* 8097D7E8  28 00 00 00 */	cmplwi r0, 0
/* 8097D7EC  41 82 00 14 */	beq lbl_8097D800
/* 8097D7F0  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8097D7F4  64 00 08 00 */	oris r0, r0, 0x800
/* 8097D7F8  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8097D7FC  48 00 00 10 */	b lbl_8097D80C
lbl_8097D800:
/* 8097D800  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8097D804  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 8097D808  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_8097D80C:
/* 8097D80C  88 1F 0B 95 */	lbz r0, 0xb95(r31)
/* 8097D810  28 00 00 00 */	cmplwi r0, 0
/* 8097D814  41 82 00 38 */	beq lbl_8097D84C
/* 8097D818  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 8097D81C  28 00 00 00 */	cmplwi r0, 0
/* 8097D820  40 82 00 24 */	bne lbl_8097D844
/* 8097D824  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8097D828  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8097D82C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8097D830  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8097D834  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8097D838  41 82 00 0C */	beq lbl_8097D844
/* 8097D83C  7F E3 FB 78 */	mr r3, r31
/* 8097D840  4B 69 C4 3C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8097D844:
/* 8097D844  38 60 00 01 */	li r3, 1
/* 8097D848  48 00 02 5C */	b lbl_8097DAA4
lbl_8097D84C:
/* 8097D84C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8097D850  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8097D854  2C 00 00 FF */	cmpwi r0, 0xff
/* 8097D858  40 82 00 F8 */	bne lbl_8097D950
/* 8097D85C  80 1F 0B 50 */	lwz r0, 0xb50(r31)
/* 8097D860  2C 00 00 00 */	cmpwi r0, 0
/* 8097D864  40 82 00 EC */	bne lbl_8097D950
/* 8097D868  3B C0 00 00 */	li r30, 0
/* 8097D86C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8097D870  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8097D874  3B A3 4E 00 */	addi r29, r3, 0x4e00
/* 8097D878  7F A3 EB 78 */	mr r3, r29
/* 8097D87C  3C 80 80 98 */	lis r4, stringBase0@ha
/* 8097D880  38 84 F5 AC */	addi r4, r4, stringBase0@l
/* 8097D884  38 84 00 9E */	addi r4, r4, 0x9e
/* 8097D888  4B 9E B1 0C */	b strcmp
/* 8097D88C  2C 03 00 00 */	cmpwi r3, 0
/* 8097D890  40 82 00 18 */	bne lbl_8097D8A8
/* 8097D894  38 60 00 00 */	li r3, 0
/* 8097D898  4B 6A F0 E4 */	b getLayerNo__14dComIfG_play_cFi
/* 8097D89C  2C 03 00 01 */	cmpwi r3, 1
/* 8097D8A0  41 81 00 08 */	bgt lbl_8097D8A8
/* 8097D8A4  3B C0 00 01 */	li r30, 1
lbl_8097D8A8:
/* 8097D8A8  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8097D8AC  40 82 00 A4 */	bne lbl_8097D950
/* 8097D8B0  7F A3 EB 78 */	mr r3, r29
/* 8097D8B4  3C 80 80 98 */	lis r4, stringBase0@ha
/* 8097D8B8  38 84 F5 AC */	addi r4, r4, stringBase0@l
/* 8097D8BC  38 84 00 F4 */	addi r4, r4, 0xf4
/* 8097D8C0  4B 9E B0 D4 */	b strcmp
/* 8097D8C4  2C 03 00 00 */	cmpwi r3, 0
/* 8097D8C8  41 82 00 0C */	beq lbl_8097D8D4
/* 8097D8CC  38 00 00 00 */	li r0, 0
/* 8097D8D0  48 00 00 64 */	b lbl_8097D934
lbl_8097D8D4:
/* 8097D8D4  80 7F 0B 78 */	lwz r3, 0xb78(r31)
/* 8097D8D8  2C 03 00 11 */	cmpwi r3, 0x11
/* 8097D8DC  40 82 00 34 */	bne lbl_8097D910
/* 8097D8E0  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 8097D8E4  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 8097D8E8  2C 00 00 04 */	cmpwi r0, 4
/* 8097D8EC  41 82 00 1C */	beq lbl_8097D908
/* 8097D8F0  2C 00 00 05 */	cmpwi r0, 5
/* 8097D8F4  41 82 00 14 */	beq lbl_8097D908
/* 8097D8F8  2C 00 00 06 */	cmpwi r0, 6
/* 8097D8FC  41 82 00 0C */	beq lbl_8097D908
/* 8097D900  2C 00 00 10 */	cmpwi r0, 0x10
/* 8097D904  40 82 00 0C */	bne lbl_8097D910
lbl_8097D908:
/* 8097D908  38 00 00 01 */	li r0, 1
/* 8097D90C  48 00 00 28 */	b lbl_8097D934
lbl_8097D910:
/* 8097D910  2C 03 00 25 */	cmpwi r3, 0x25
/* 8097D914  40 82 00 1C */	bne lbl_8097D930
/* 8097D918  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 8097D91C  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 8097D920  2C 00 00 07 */	cmpwi r0, 7
/* 8097D924  40 82 00 0C */	bne lbl_8097D930
/* 8097D928  38 00 00 01 */	li r0, 1
/* 8097D92C  48 00 00 08 */	b lbl_8097D934
lbl_8097D930:
/* 8097D930  38 00 00 00 */	li r0, 0
lbl_8097D934:
/* 8097D934  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8097D938  40 82 00 18 */	bne lbl_8097D950
/* 8097D93C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8097D940  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8097D944  41 82 00 0C */	beq lbl_8097D950
/* 8097D948  38 60 00 01 */	li r3, 1
/* 8097D94C  48 00 01 58 */	b lbl_8097DAA4
lbl_8097D950:
/* 8097D950  38 00 00 00 */	li r0, 0
/* 8097D954  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8097D958  80 1F 0B 70 */	lwz r0, 0xb70(r31)
/* 8097D95C  2C 00 00 00 */	cmpwi r0, 0
/* 8097D960  40 81 00 0C */	ble lbl_8097D96C
/* 8097D964  38 00 00 0A */	li r0, 0xa
/* 8097D968  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_8097D96C:
/* 8097D96C  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 8097D970  28 00 00 00 */	cmplwi r0, 0
/* 8097D974  41 82 00 28 */	beq lbl_8097D99C
/* 8097D978  4B 7E 1A AC */	b checkNowWolfEyeUp__9daPy_py_cFv
/* 8097D97C  2C 03 00 00 */	cmpwi r3, 0
/* 8097D980  41 82 00 14 */	beq lbl_8097D994
/* 8097D984  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8097D988  64 00 00 C0 */	oris r0, r0, 0xc0
/* 8097D98C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8097D990  48 00 00 0C */	b lbl_8097D99C
lbl_8097D994:
/* 8097D994  38 00 00 00 */	li r0, 0
/* 8097D998  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_8097D99C:
/* 8097D99C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8097D9A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8097D9A4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8097D9A8  28 00 00 00 */	cmplwi r0, 0
/* 8097D9AC  41 82 00 40 */	beq lbl_8097D9EC
/* 8097D9B0  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8097D9B4  28 00 00 02 */	cmplwi r0, 2
/* 8097D9B8  40 82 00 0C */	bne lbl_8097D9C4
/* 8097D9BC  38 00 00 01 */	li r0, 1
/* 8097D9C0  48 00 00 30 */	b lbl_8097D9F0
lbl_8097D9C4:
/* 8097D9C4  28 00 00 01 */	cmplwi r0, 1
/* 8097D9C8  40 82 00 24 */	bne lbl_8097D9EC
/* 8097D9CC  80 1F 0B 50 */	lwz r0, 0xb50(r31)
/* 8097D9D0  2C 00 00 02 */	cmpwi r0, 2
/* 8097D9D4  41 82 00 18 */	beq lbl_8097D9EC
/* 8097D9D8  7F E3 FB 78 */	mr r3, r31
/* 8097D9DC  38 80 00 02 */	li r4, 2
/* 8097D9E0  4B FF B3 F5 */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
/* 8097D9E4  38 00 00 01 */	li r0, 1
/* 8097D9E8  48 00 00 08 */	b lbl_8097D9F0
lbl_8097D9EC:
/* 8097D9EC  38 00 00 00 */	li r0, 0
lbl_8097D9F0:
/* 8097D9F0  2C 00 00 00 */	cmpwi r0, 0
/* 8097D9F4  40 82 00 48 */	bne lbl_8097DA3C
/* 8097D9F8  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 8097D9FC  28 00 00 00 */	cmplwi r0, 0
/* 8097DA00  41 82 00 10 */	beq lbl_8097DA10
/* 8097DA04  4B 7E 1A 20 */	b checkNowWolfEyeUp__9daPy_py_cFv
/* 8097DA08  2C 03 00 00 */	cmpwi r3, 0
/* 8097DA0C  41 82 00 30 */	beq lbl_8097DA3C
lbl_8097DA10:
/* 8097DA10  80 1F 0B 70 */	lwz r0, 0xb70(r31)
/* 8097DA14  2C 00 00 00 */	cmpwi r0, 0
/* 8097DA18  40 81 00 24 */	ble lbl_8097DA3C
/* 8097DA1C  80 7F 05 5C */	lwz r3, 0x55c(r31)
/* 8097DA20  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8097DA24  40 82 00 0C */	bne lbl_8097DA30
/* 8097DA28  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8097DA2C  41 82 00 10 */	beq lbl_8097DA3C
lbl_8097DA30:
/* 8097DA30  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8097DA34  60 00 00 01 */	ori r0, r0, 1
/* 8097DA38  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_8097DA3C:
/* 8097DA3C  7F E3 FB 78 */	mr r3, r31
/* 8097DA40  4B FF B4 01 */	bl callExecute__11daNpcCdn3_cFv
/* 8097DA44  38 7F 0B 64 */	addi r3, r31, 0xb64
/* 8097DA48  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8097DA4C  3C 80 80 98 */	lis r4, lit_5944@ha
/* 8097DA50  C0 44 F5 A0 */	lfs f2, lit_5944@l(r4)
/* 8097DA54  3C 80 80 98 */	lis r4, lit_5945@ha
/* 8097DA58  C0 64 F5 A4 */	lfs f3, lit_5945@l(r4)
/* 8097DA5C  4B 8F 1F E0 */	b cLib_addCalc2__FPffff
/* 8097DA60  7F E3 FB 78 */	mr r3, r31
/* 8097DA64  38 80 FF FF */	li r4, -1
/* 8097DA68  4B 7D B3 C0 */	b animation__10daNpcCd2_cFi
/* 8097DA6C  38 7F 09 B0 */	addi r3, r31, 0x9b0
/* 8097DA70  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8097DA74  4B 8F 17 68 */	b SetC__8cM3dGCylFRC4cXyz
/* 8097DA78  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8097DA7C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8097DA80  40 82 00 18 */	bne lbl_8097DA98
/* 8097DA84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8097DA88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8097DA8C  38 63 23 3C */	addi r3, r3, 0x233c
/* 8097DA90  38 9F 08 8C */	addi r4, r31, 0x88c
/* 8097DA94  4B 8E 71 14 */	b Set__4cCcSFP8cCcD_Obj
lbl_8097DA98:
/* 8097DA98  7F E3 FB 78 */	mr r3, r31
/* 8097DA9C  4B FF F5 DD */	bl setMtx__11daNpcCdn3_cFv
/* 8097DAA0  38 60 00 01 */	li r3, 1
lbl_8097DAA4:
/* 8097DAA4  39 61 00 20 */	addi r11, r1, 0x20
/* 8097DAA8  4B 9E 47 80 */	b _restgpr_29
/* 8097DAAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8097DAB0  7C 08 03 A6 */	mtlr r0
/* 8097DAB4  38 21 00 20 */	addi r1, r1, 0x20
/* 8097DAB8  4E 80 00 20 */	blr 
