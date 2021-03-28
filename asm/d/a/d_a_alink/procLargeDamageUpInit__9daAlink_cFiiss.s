lbl_800DA180:
/* 800DA180  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800DA184  7C 08 02 A6 */	mflr r0
/* 800DA188  90 01 00 44 */	stw r0, 0x44(r1)
/* 800DA18C  39 61 00 40 */	addi r11, r1, 0x40
/* 800DA190  48 28 80 3D */	bl _savegpr_25
/* 800DA194  7C 7A 1B 78 */	mr r26, r3
/* 800DA198  7C 9B 23 78 */	mr r27, r4
/* 800DA19C  7C BC 2B 78 */	mr r28, r5
/* 800DA1A0  7C DD 33 78 */	mr r29, r6
/* 800DA1A4  7C FE 3B 78 */	mr r30, r7
/* 800DA1A8  3C 80 80 39 */	lis r4, lit_3757@ha
/* 800DA1AC  3B 24 D6 58 */	addi r25, r4, lit_3757@l
/* 800DA1B0  38 80 00 33 */	li r4, 0x33
/* 800DA1B4  4B FE 8B F1 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800DA1B8  2C 03 00 00 */	cmpwi r3, 0
/* 800DA1BC  40 82 00 0C */	bne lbl_800DA1C8
/* 800DA1C0  38 60 00 00 */	li r3, 0
/* 800DA1C4  48 00 03 78 */	b lbl_800DA53C
lbl_800DA1C8:
/* 800DA1C8  2C 1C 00 00 */	cmpwi r28, 0
/* 800DA1CC  3B F9 0D 14 */	addi r31, r25, 0xd14
/* 800DA1D0  41 82 00 08 */	beq lbl_800DA1D8
/* 800DA1D4  3B F9 0C 58 */	addi r31, r25, 0xc58
lbl_800DA1D8:
/* 800DA1D8  38 00 00 00 */	li r0, 0
/* 800DA1DC  B0 1A 30 0A */	sth r0, 0x300a(r26)
/* 800DA1E0  B0 1A 30 0C */	sth r0, 0x300c(r26)
/* 800DA1E4  93 7A 31 98 */	stw r27, 0x3198(r26)
/* 800DA1E8  7F 43 D3 78 */	mr r3, r26
/* 800DA1EC  48 00 E0 AD */	bl offGoatStopGame__9daAlink_cFv
/* 800DA1F0  38 60 00 00 */	li r3, 0
/* 800DA1F4  B0 7A 30 10 */	sth r3, 0x3010(r26)
/* 800DA1F8  2C 1B FF FC */	cmpwi r27, -4
/* 800DA1FC  40 82 00 88 */	bne lbl_800DA284
/* 800DA200  80 1A 05 78 */	lwz r0, 0x578(r26)
/* 800DA204  60 00 10 00 */	ori r0, r0, 0x1000
/* 800DA208  90 1A 05 78 */	stw r0, 0x578(r26)
/* 800DA20C  B0 7A 30 08 */	sth r3, 0x3008(r26)
/* 800DA210  38 00 00 01 */	li r0, 1
/* 800DA214  B0 1A 30 0A */	sth r0, 0x300a(r26)
/* 800DA218  B0 1A 30 0C */	sth r0, 0x300c(r26)
/* 800DA21C  7F 43 D3 78 */	mr r3, r26
/* 800DA220  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010055@ha */
/* 800DA224  38 84 00 55 */	addi r4, r4, 0x0055 /* 0x00010055@l */
/* 800DA228  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 800DA22C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DA230  7D 89 03 A6 */	mtctr r12
/* 800DA234  4E 80 04 21 */	bctrl 
/* 800DA238  7F 43 D3 78 */	mr r3, r26
/* 800DA23C  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020015@ha */
/* 800DA240  38 84 00 15 */	addi r4, r4, 0x0015 /* 0x00020015@l */
/* 800DA244  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 800DA248  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800DA24C  7D 89 03 A6 */	mtctr r12
/* 800DA250  4E 80 04 21 */	bctrl 
/* 800DA254  7F 43 D3 78 */	mr r3, r26
/* 800DA258  38 80 01 5F */	li r4, 0x15f
/* 800DA25C  4B FD 2D 25 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800DA260  38 00 00 88 */	li r0, 0x88
/* 800DA264  90 1A 32 CC */	stw r0, 0x32cc(r26)
/* 800DA268  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 800DA26C  D0 1A 34 78 */	stfs f0, 0x3478(r26)
/* 800DA270  C0 02 93 7C */	lfs f0, lit_8779(r2)
/* 800DA274  D0 1A 34 80 */	stfs f0, 0x3480(r26)
/* 800DA278  C0 02 93 B8 */	lfs f0, lit_10041(r2)
/* 800DA27C  D0 1A 34 84 */	stfs f0, 0x3484(r26)
/* 800DA280  48 00 02 4C */	b lbl_800DA4CC
lbl_800DA284:
/* 800DA284  2C 1B 00 00 */	cmpwi r27, 0
/* 800DA288  40 80 00 FC */	bge lbl_800DA384
/* 800DA28C  2C 1B FF FD */	cmpwi r27, -3
/* 800DA290  40 82 00 44 */	bne lbl_800DA2D4
/* 800DA294  3B 80 00 87 */	li r28, 0x87
/* 800DA298  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800DA29C  38 A0 FF FF */	li r5, -1
/* 800DA2A0  C0 62 93 3C */	lfs f3, lit_7808(r2)
/* 800DA2A4  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800DA2A8  38 00 FF FF */	li r0, -1
/* 800DA2AC  B0 1A 30 08 */	sth r0, 0x3008(r26)
/* 800DA2B0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 800DA2B4  D0 1A 34 78 */	stfs f0, 0x3478(r26)
/* 800DA2B8  C0 02 93 7C */	lfs f0, lit_8779(r2)
/* 800DA2BC  D0 1A 34 80 */	stfs f0, 0x3480(r26)
/* 800DA2C0  38 00 00 04 */	li r0, 4
/* 800DA2C4  98 1A 2F 9D */	stb r0, 0x2f9d(r26)
/* 800DA2C8  C0 02 93 C0 */	lfs f0, lit_10193(r2)
/* 800DA2CC  D0 1A 34 84 */	stfs f0, 0x3484(r26)
/* 800DA2D0  48 00 00 A0 */	b lbl_800DA370
lbl_800DA2D4:
/* 800DA2D4  2C 1B FF FE */	cmpwi r27, -2
/* 800DA2D8  40 82 00 0C */	bne lbl_800DA2E4
/* 800DA2DC  C0 62 92 C0 */	lfs f3, lit_6108(r2)
/* 800DA2E0  48 00 00 0C */	b lbl_800DA2EC
lbl_800DA2E4:
/* 800DA2E4  38 79 0C 58 */	addi r3, r25, 0xc58
/* 800DA2E8  C0 63 00 20 */	lfs f3, 0x20(r3)
lbl_800DA2EC:
/* 800DA2EC  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 800DA2F0  D0 1A 34 84 */	stfs f0, 0x3484(r26)
/* 800DA2F4  3B 80 00 88 */	li r28, 0x88
/* 800DA2F8  FC 40 00 90 */	fmr f2, f0
/* 800DA2FC  38 A0 FF FF */	li r5, -1
/* 800DA300  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 800DA304  D0 1A 34 78 */	stfs f0, 0x3478(r26)
/* 800DA308  2C 1B FF FB */	cmpwi r27, -5
/* 800DA30C  40 82 00 1C */	bne lbl_800DA328
/* 800DA310  80 1A 06 10 */	lwz r0, 0x610(r26)
/* 800DA314  2C 00 00 00 */	cmpwi r0, 0
/* 800DA318  40 81 00 10 */	ble lbl_800DA328
/* 800DA31C  B0 1A 30 08 */	sth r0, 0x3008(r26)
/* 800DA320  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DA324  48 00 00 38 */	b lbl_800DA35C
lbl_800DA328:
/* 800DA328  2C 1B FF FE */	cmpwi r27, -2
/* 800DA32C  40 82 00 20 */	bne lbl_800DA34C
/* 800DA330  A0 1A 06 04 */	lhz r0, 0x604(r26)
/* 800DA334  2C 00 00 01 */	cmpwi r0, 1
/* 800DA338  40 82 00 14 */	bne lbl_800DA34C
/* 800DA33C  38 00 00 1E */	li r0, 0x1e
/* 800DA340  B0 1A 30 08 */	sth r0, 0x3008(r26)
/* 800DA344  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DA348  48 00 00 14 */	b lbl_800DA35C
lbl_800DA34C:
/* 800DA34C  38 00 FF FF */	li r0, -1
/* 800DA350  B0 1A 30 08 */	sth r0, 0x3008(r26)
/* 800DA354  38 79 0E F4 */	addi r3, r25, 0xef4
/* 800DA358  C0 23 00 50 */	lfs f1, 0x50(r3)
lbl_800DA35C:
/* 800DA35C  38 00 00 01 */	li r0, 1
/* 800DA360  B0 1A 30 0A */	sth r0, 0x300a(r26)
/* 800DA364  B0 1A 30 0C */	sth r0, 0x300c(r26)
/* 800DA368  C0 02 93 7C */	lfs f0, lit_8779(r2)
/* 800DA36C  D0 1A 34 80 */	stfs f0, 0x3480(r26)
lbl_800DA370:
/* 800DA370  7F 43 D3 78 */	mr r3, r26
/* 800DA374  7F 84 E3 78 */	mr r4, r28
/* 800DA378  4B FD 2C 95 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800DA37C  93 9A 32 CC */	stw r28, 0x32cc(r26)
/* 800DA380  48 00 01 4C */	b lbl_800DA4CC
lbl_800DA384:
/* 800DA384  B0 7A 30 08 */	sth r3, 0x3008(r26)
/* 800DA388  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DA38C  D0 21 00 08 */	stfs f1, 8(r1)
/* 800DA390  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DA394  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800DA398  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800DA39C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DA3A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DA3A4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800DA3A8  38 80 00 06 */	li r4, 6
/* 800DA3AC  38 A0 00 1F */	li r5, 0x1f
/* 800DA3B0  38 C1 00 08 */	addi r6, r1, 8
/* 800DA3B4  4B F9 56 71 */	bl StartShock__12dVibration_cFii4cXyz
/* 800DA3B8  7F 43 D3 78 */	mr r3, r26
/* 800DA3BC  3C 80 00 03 */	lis r4, 0x0003 /* 0x0003001A@ha */
/* 800DA3C0  38 84 00 1A */	addi r4, r4, 0x001A /* 0x0003001A@l */
/* 800DA3C4  4B FE 4D D1 */	bl seStartMapInfo__9daAlink_cFUl
/* 800DA3C8  38 00 00 04 */	li r0, 4
/* 800DA3CC  98 1A 2F 9D */	stb r0, 0x2f9d(r26)
/* 800DA3D0  2C 1B 00 84 */	cmpwi r27, 0x84
/* 800DA3D4  40 82 00 40 */	bne lbl_800DA414
/* 800DA3D8  7F 43 D3 78 */	mr r3, r26
/* 800DA3DC  38 80 00 88 */	li r4, 0x88
/* 800DA3E0  38 BF 00 14 */	addi r5, r31, 0x14
/* 800DA3E4  4B FD 2D 11 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800DA3E8  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 800DA3EC  D0 1A 34 78 */	stfs f0, 0x3478(r26)
/* 800DA3F0  38 00 00 01 */	li r0, 1
/* 800DA3F4  B0 1A 30 0A */	sth r0, 0x300a(r26)
/* 800DA3F8  C0 02 93 7C */	lfs f0, lit_8779(r2)
/* 800DA3FC  D0 1A 34 80 */	stfs f0, 0x3480(r26)
/* 800DA400  38 00 00 88 */	li r0, 0x88
/* 800DA404  90 1A 32 CC */	stw r0, 0x32cc(r26)
/* 800DA408  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 800DA40C  D0 1A 34 84 */	stfs f0, 0x3484(r26)
/* 800DA410  48 00 00 AC */	b lbl_800DA4BC
lbl_800DA414:
/* 800DA414  2C 1B 00 85 */	cmpwi r27, 0x85
/* 800DA418  40 82 00 38 */	bne lbl_800DA450
/* 800DA41C  7F 43 D3 78 */	mr r3, r26
/* 800DA420  38 80 00 89 */	li r4, 0x89
/* 800DA424  38 BF 00 28 */	addi r5, r31, 0x28
/* 800DA428  4B FD 2C CD */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800DA42C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 800DA430  D0 1A 34 78 */	stfs f0, 0x3478(r26)
/* 800DA434  C0 02 93 C4 */	lfs f0, lit_10194(r2)
/* 800DA438  D0 1A 34 80 */	stfs f0, 0x3480(r26)
/* 800DA43C  38 00 00 89 */	li r0, 0x89
/* 800DA440  90 1A 32 CC */	stw r0, 0x32cc(r26)
/* 800DA444  C0 02 93 44 */	lfs f0, lit_7977(r2)
/* 800DA448  D0 1A 34 84 */	stfs f0, 0x3484(r26)
/* 800DA44C  48 00 00 70 */	b lbl_800DA4BC
lbl_800DA450:
/* 800DA450  2C 1B 00 86 */	cmpwi r27, 0x86
/* 800DA454  40 82 00 38 */	bne lbl_800DA48C
/* 800DA458  7F 43 D3 78 */	mr r3, r26
/* 800DA45C  38 80 00 8A */	li r4, 0x8a
/* 800DA460  38 BF 00 3C */	addi r5, r31, 0x3c
/* 800DA464  4B FD 2C 91 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800DA468  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 800DA46C  D0 1A 34 78 */	stfs f0, 0x3478(r26)
/* 800DA470  C0 02 93 C4 */	lfs f0, lit_10194(r2)
/* 800DA474  D0 1A 34 80 */	stfs f0, 0x3480(r26)
/* 800DA478  38 00 00 8A */	li r0, 0x8a
/* 800DA47C  90 1A 32 CC */	stw r0, 0x32cc(r26)
/* 800DA480  C0 02 93 44 */	lfs f0, lit_7977(r2)
/* 800DA484  D0 1A 34 84 */	stfs f0, 0x3484(r26)
/* 800DA488  48 00 00 34 */	b lbl_800DA4BC
lbl_800DA48C:
/* 800DA48C  7F 43 D3 78 */	mr r3, r26
/* 800DA490  38 80 00 87 */	li r4, 0x87
/* 800DA494  7F E5 FB 78 */	mr r5, r31
/* 800DA498  4B FD 2C 5D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800DA49C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 800DA4A0  D0 1A 34 78 */	stfs f0, 0x3478(r26)
/* 800DA4A4  C0 02 93 7C */	lfs f0, lit_8779(r2)
/* 800DA4A8  D0 1A 34 80 */	stfs f0, 0x3480(r26)
/* 800DA4AC  38 00 00 87 */	li r0, 0x87
/* 800DA4B0  90 1A 32 CC */	stw r0, 0x32cc(r26)
/* 800DA4B4  C0 02 93 C0 */	lfs f0, lit_10193(r2)
/* 800DA4B8  D0 1A 34 84 */	stfs f0, 0x3484(r26)
lbl_800DA4BC:
/* 800DA4BC  2C 1C 00 00 */	cmpwi r28, 0
/* 800DA4C0  41 82 00 0C */	beq lbl_800DA4CC
/* 800DA4C4  38 00 00 01 */	li r0, 1
/* 800DA4C8  B0 1A 30 10 */	sth r0, 0x3010(r26)
lbl_800DA4CC:
/* 800DA4CC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DA4D0  D0 1A 33 CC */	stfs f0, 0x33cc(r26)
/* 800DA4D4  C0 62 93 14 */	lfs f3, lit_7307(r2)
/* 800DA4D8  C0 5A 34 78 */	lfs f2, 0x3478(r26)
/* 800DA4DC  A8 1A 1F D6 */	lha r0, 0x1fd6(r26)
/* 800DA4E0  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800DA4E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800DA4E8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800DA4EC  3C 00 43 30 */	lis r0, 0x4330
/* 800DA4F0  90 01 00 18 */	stw r0, 0x18(r1)
/* 800DA4F4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800DA4F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 800DA4FC  EC 02 00 28 */	fsubs f0, f2, f0
/* 800DA500  EC 03 00 24 */	fdivs f0, f3, f0
/* 800DA504  D0 1A 34 7C */	stfs f0, 0x347c(r26)
/* 800DA508  7F 43 D3 78 */	mr r3, r26
/* 800DA50C  7F A4 EB 78 */	mr r4, r29
/* 800DA510  38 A0 00 00 */	li r5, 0
/* 800DA514  7F C6 F3 78 */	mr r6, r30
/* 800DA518  4B FD 36 61 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 800DA51C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DA520  D0 1A 33 98 */	stfs f0, 0x3398(r26)
/* 800DA524  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 800DA528  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 800DA52C  7F 43 D3 78 */	mr r3, r26
/* 800DA530  38 80 00 04 */	li r4, 4
/* 800DA534  48 04 6C 8D */	bl setFootEffectProcType__9daAlink_cFi
/* 800DA538  38 60 00 01 */	li r3, 1
lbl_800DA53C:
/* 800DA53C  39 61 00 40 */	addi r11, r1, 0x40
/* 800DA540  48 28 7C D9 */	bl _restgpr_25
/* 800DA544  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800DA548  7C 08 03 A6 */	mtlr r0
/* 800DA54C  38 21 00 40 */	addi r1, r1, 0x40
/* 800DA550  4E 80 00 20 */	blr 
