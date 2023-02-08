lbl_80AF18B0:
/* 80AF18B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF18B4  7C 08 02 A6 */	mflr r0
/* 80AF18B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF18BC  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF18C0  4B 87 09 19 */	bl _savegpr_28
/* 80AF18C4  7C 7D 1B 78 */	mr r29, r3
/* 80AF18C8  3B E0 00 00 */	li r31, 0
/* 80AF18CC  3B C0 00 00 */	li r30, 0
/* 80AF18D0  A0 03 0E 16 */	lhz r0, 0xe16(r3)
/* 80AF18D4  2C 00 00 02 */	cmpwi r0, 2
/* 80AF18D8  41 82 00 48 */	beq lbl_80AF1920
/* 80AF18DC  40 80 01 50 */	bge lbl_80AF1A2C
/* 80AF18E0  2C 00 00 00 */	cmpwi r0, 0
/* 80AF18E4  41 82 00 0C */	beq lbl_80AF18F0
/* 80AF18E8  48 00 01 44 */	b lbl_80AF1A2C
/* 80AF18EC  48 00 01 40 */	b lbl_80AF1A2C
lbl_80AF18F0:
/* 80AF18F0  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 80AF18F4  28 00 00 00 */	cmplwi r0, 0
/* 80AF18F8  40 82 01 34 */	bne lbl_80AF1A2C
/* 80AF18FC  80 9D 0E 10 */	lwz r4, 0xe10(r29)
/* 80AF1900  38 00 00 00 */	li r0, 0
/* 80AF1904  98 1D 09 E9 */	stb r0, 0x9e9(r29)
/* 80AF1908  38 A0 00 00 */	li r5, 0
/* 80AF190C  4B 66 24 11 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80AF1910  38 00 00 00 */	li r0, 0
/* 80AF1914  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80AF1918  38 00 00 02 */	li r0, 2
/* 80AF191C  B0 1D 0E 16 */	sth r0, 0xe16(r29)
lbl_80AF1920:
/* 80AF1920  88 1D 09 EA */	lbz r0, 0x9ea(r29)
/* 80AF1924  28 00 00 00 */	cmplwi r0, 0
/* 80AF1928  41 82 00 0C */	beq lbl_80AF1934
/* 80AF192C  3B C0 00 01 */	li r30, 1
/* 80AF1930  48 00 00 A0 */	b lbl_80AF19D0
lbl_80AF1934:
/* 80AF1934  7F A3 EB 78 */	mr r3, r29
/* 80AF1938  38 80 00 03 */	li r4, 3
/* 80AF193C  4B FF FB 4D */	bl setLookMode__16daNpc_SoldierA_cFi
/* 80AF1940  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80AF1944  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF1948  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF194C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80AF1950  4B 65 ED 6D */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80AF1954  7F A3 EB 78 */	mr r3, r29
/* 80AF1958  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80AF195C  4B 52 8D B5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AF1960  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80AF1964  7C 60 07 34 */	extsh r0, r3
/* 80AF1968  7C 04 00 00 */	cmpw r4, r0
/* 80AF196C  40 82 00 0C */	bne lbl_80AF1978
/* 80AF1970  3B C0 00 01 */	li r30, 1
/* 80AF1974  48 00 00 5C */	b lbl_80AF19D0
lbl_80AF1978:
/* 80AF1978  7F A3 EB 78 */	mr r3, r29
/* 80AF197C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80AF1980  4B 52 8D 91 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AF1984  7C 64 1B 78 */	mr r4, r3
/* 80AF1988  7F A3 EB 78 */	mr r3, r29
/* 80AF198C  38 A0 FF FF */	li r5, -1
/* 80AF1990  38 C0 FF FF */	li r6, -1
/* 80AF1994  38 E0 00 0F */	li r7, 0xf
/* 80AF1998  4B 66 27 0D */	bl step__8daNpcF_cFsiii
/* 80AF199C  2C 03 00 00 */	cmpwi r3, 0
/* 80AF19A0  41 82 00 30 */	beq lbl_80AF19D0
/* 80AF19A4  7F A3 EB 78 */	mr r3, r29
/* 80AF19A8  38 80 00 00 */	li r4, 0
/* 80AF19AC  3C A0 80 AF */	lis r5, lit_5059@ha /* 0x80AF2848@ha */
/* 80AF19B0  C0 25 28 48 */	lfs f1, lit_5059@l(r5)  /* 0x80AF2848@l */
/* 80AF19B4  38 A0 00 00 */	li r5, 0
/* 80AF19B8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AF19BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AF19C0  7D 89 03 A6 */	mtctr r12
/* 80AF19C4  4E 80 04 21 */	bctrl 
/* 80AF19C8  38 00 00 00 */	li r0, 0
/* 80AF19CC  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80AF19D0:
/* 80AF19D0  2C 1E 00 00 */	cmpwi r30, 0
/* 80AF19D4  41 82 00 24 */	beq lbl_80AF19F8
/* 80AF19D8  7F A3 EB 78 */	mr r3, r29
/* 80AF19DC  38 80 00 00 */	li r4, 0
/* 80AF19E0  38 A0 00 01 */	li r5, 1
/* 80AF19E4  38 C0 00 00 */	li r6, 0
/* 80AF19E8  4B 66 23 9D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80AF19EC  2C 03 00 00 */	cmpwi r3, 0
/* 80AF19F0  41 82 00 08 */	beq lbl_80AF19F8
/* 80AF19F4  3B E0 00 01 */	li r31, 1
lbl_80AF19F8:
/* 80AF19F8  2C 1F 00 00 */	cmpwi r31, 0
/* 80AF19FC  41 82 00 30 */	beq lbl_80AF1A2C
/* 80AF1A00  38 00 00 03 */	li r0, 3
/* 80AF1A04  B0 1D 0E 16 */	sth r0, 0xe16(r29)
/* 80AF1A08  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 80AF1A0C  28 00 00 00 */	cmplwi r0, 0
/* 80AF1A10  40 82 00 14 */	bne lbl_80AF1A24
/* 80AF1A14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF1A18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF1A1C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AF1A20  4B 55 0A 49 */	bl reset__14dEvt_control_cFv
lbl_80AF1A24:
/* 80AF1A24  38 00 00 00 */	li r0, 0
/* 80AF1A28  98 1D 09 EC */	stb r0, 0x9ec(r29)
lbl_80AF1A2C:
/* 80AF1A2C  7F E3 FB 78 */	mr r3, r31
/* 80AF1A30  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF1A34  4B 87 07 F1 */	bl _restgpr_28
/* 80AF1A38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF1A3C  7C 08 03 A6 */	mtlr r0
/* 80AF1A40  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF1A44  4E 80 00 20 */	blr 
