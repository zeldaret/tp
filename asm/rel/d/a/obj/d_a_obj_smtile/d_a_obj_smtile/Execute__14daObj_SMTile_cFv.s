lbl_80CDD71C:
/* 80CDD71C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CDD720  7C 08 02 A6 */	mflr r0
/* 80CDD724  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CDD728  39 61 00 30 */	addi r11, r1, 0x30
/* 80CDD72C  4B 68 4A A4 */	b _savegpr_26
/* 80CDD730  7C 7E 1B 78 */	mr r30, r3
/* 80CDD734  3C 60 80 CE */	lis r3, m__20daObj_SMTile_Param_c@ha
/* 80CDD738  3B E3 E3 5C */	addi r31, r3, m__20daObj_SMTile_Param_c@l
/* 80CDD73C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CDD740  7C 04 07 74 */	extsb r4, r0
/* 80CDD744  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 80CDD748  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 80CDD74C  7C 00 07 74 */	extsb r0, r0
/* 80CDD750  7C 04 00 00 */	cmpw r4, r0
/* 80CDD754  40 82 03 28 */	bne lbl_80CDDA7C
/* 80CDD758  88 1E 0B 2B */	lbz r0, 0xb2b(r30)
/* 80CDD75C  28 00 00 00 */	cmplwi r0, 0
/* 80CDD760  41 82 00 C0 */	beq lbl_80CDD820
/* 80CDD764  3B 40 00 00 */	li r26, 0
/* 80CDD768  3B A0 00 00 */	li r29, 0
/* 80CDD76C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDD770  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
lbl_80CDD774:
/* 80CDD774  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80CDD778  38 63 02 10 */	addi r3, r3, 0x210
/* 80CDD77C  7F 9E EA 14 */	add r28, r30, r29
/* 80CDD780  80 9C 0A D4 */	lwz r4, 0xad4(r28)
/* 80CDD784  4B 36 E1 94 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80CDD788  28 03 00 00 */	cmplwi r3, 0
/* 80CDD78C  41 82 00 10 */	beq lbl_80CDD79C
/* 80CDD790  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80CDD794  60 00 01 00 */	ori r0, r0, 0x100
/* 80CDD798  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80CDD79C:
/* 80CDD79C  38 60 00 00 */	li r3, 0
/* 80CDD7A0  90 7C 0A D4 */	stw r3, 0xad4(r28)
/* 80CDD7A4  80 9C 0A 80 */	lwz r4, 0xa80(r28)
/* 80CDD7A8  28 04 00 00 */	cmplwi r4, 0
/* 80CDD7AC  41 82 00 14 */	beq lbl_80CDD7C0
/* 80CDD7B0  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 80CDD7B4  60 00 01 00 */	ori r0, r0, 0x100
/* 80CDD7B8  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 80CDD7BC  90 7C 0A 80 */	stw r3, 0xa80(r28)
lbl_80CDD7C0:
/* 80CDD7C0  38 00 00 00 */	li r0, 0
/* 80CDD7C4  90 1C 09 80 */	stw r0, 0x980(r28)
/* 80CDD7C8  90 1C 09 D4 */	stw r0, 0x9d4(r28)
/* 80CDD7CC  90 1C 0A 28 */	stw r0, 0xa28(r28)
/* 80CDD7D0  3B 5A 00 01 */	addi r26, r26, 1
/* 80CDD7D4  2C 1A 00 15 */	cmpwi r26, 0x15
/* 80CDD7D8  3B BD 00 04 */	addi r29, r29, 4
/* 80CDD7DC  41 80 FF 98 */	blt lbl_80CDD774
/* 80CDD7E0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80CDD7E4  D0 1E 05 74 */	stfs f0, 0x574(r30)
/* 80CDD7E8  A8 1E 05 6E */	lha r0, 0x56e(r30)
/* 80CDD7EC  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 80CDD7F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CDD7F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDD7F8  3C 00 43 30 */	lis r0, 0x4330
/* 80CDD7FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CDD800  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80CDD804  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CDD808  D0 1E 05 78 */	stfs f0, 0x578(r30)
/* 80CDD80C  7F C3 F3 78 */	mr r3, r30
/* 80CDD810  48 00 03 39 */	bl setDstPos__14daObj_SMTile_cFv
/* 80CDD814  38 00 00 00 */	li r0, 0
/* 80CDD818  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 80CDD81C  98 1E 0B 2B */	stb r0, 0xb2b(r30)
lbl_80CDD820:
/* 80CDD820  88 1E 0B 29 */	lbz r0, 0xb29(r30)
/* 80CDD824  28 00 00 00 */	cmplwi r0, 0
/* 80CDD828  41 82 02 0C */	beq lbl_80CDDA34
/* 80CDD82C  80 1E 0A 7C */	lwz r0, 0xa7c(r30)
/* 80CDD830  2C 00 00 75 */	cmpwi r0, 0x75
/* 80CDD834  41 82 00 F0 */	beq lbl_80CDD924
/* 80CDD838  40 80 00 34 */	bge lbl_80CDD86C
/* 80CDD83C  2C 00 00 4B */	cmpwi r0, 0x4b
/* 80CDD840  41 82 00 BC */	beq lbl_80CDD8FC
/* 80CDD844  40 80 00 1C */	bge lbl_80CDD860
/* 80CDD848  2C 00 00 32 */	cmpwi r0, 0x32
/* 80CDD84C  41 82 00 9C */	beq lbl_80CDD8E8
/* 80CDD850  40 80 01 6C */	bge lbl_80CDD9BC
/* 80CDD854  2C 00 00 00 */	cmpwi r0, 0
/* 80CDD858  41 82 00 38 */	beq lbl_80CDD890
/* 80CDD85C  48 00 01 60 */	b lbl_80CDD9BC
lbl_80CDD860:
/* 80CDD860  2C 00 00 60 */	cmpwi r0, 0x60
/* 80CDD864  41 82 00 AC */	beq lbl_80CDD910
/* 80CDD868  48 00 01 54 */	b lbl_80CDD9BC
lbl_80CDD86C:
/* 80CDD86C  2C 00 00 9F */	cmpwi r0, 0x9f
/* 80CDD870  41 82 00 DC */	beq lbl_80CDD94C
/* 80CDD874  40 80 00 10 */	bge lbl_80CDD884
/* 80CDD878  2C 00 00 8A */	cmpwi r0, 0x8a
/* 80CDD87C  41 82 00 BC */	beq lbl_80CDD938
/* 80CDD880  48 00 01 3C */	b lbl_80CDD9BC
lbl_80CDD884:
/* 80CDD884  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 80CDD888  41 82 00 D8 */	beq lbl_80CDD960
/* 80CDD88C  48 00 01 30 */	b lbl_80CDD9BC
lbl_80CDD890:
/* 80CDD890  7F C3 F3 78 */	mr r3, r30
/* 80CDD894  38 80 00 03 */	li r4, 3
/* 80CDD898  38 A0 00 00 */	li r5, 0
/* 80CDD89C  48 00 04 8D */	bl setPrtcls__14daObj_SMTile_cFii
/* 80CDD8A0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CDD8A4  D0 3E 05 74 */	stfs f1, 0x574(r30)
/* 80CDD8A8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008028D@ha */
/* 80CDD8AC  38 03 02 8D */	addi r0, r3, 0x028D /* 0x0008028D@l */
/* 80CDD8B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CDD8B4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CDD8B8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CDD8BC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CDD8C0  38 81 00 0C */	addi r4, r1, 0xc
/* 80CDD8C4  38 A0 00 00 */	li r5, 0
/* 80CDD8C8  38 C0 00 00 */	li r6, 0
/* 80CDD8CC  38 E0 00 00 */	li r7, 0
/* 80CDD8D0  FC 40 08 90 */	fmr f2, f1
/* 80CDD8D4  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80CDD8D8  FC 80 18 90 */	fmr f4, f3
/* 80CDD8DC  39 00 00 00 */	li r8, 0
/* 80CDD8E0  4B 5C E0 A4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CDD8E4  48 00 00 D8 */	b lbl_80CDD9BC
lbl_80CDD8E8:
/* 80CDD8E8  7F C3 F3 78 */	mr r3, r30
/* 80CDD8EC  38 80 00 01 */	li r4, 1
/* 80CDD8F0  38 A0 00 00 */	li r5, 0
/* 80CDD8F4  48 00 04 35 */	bl setPrtcls__14daObj_SMTile_cFii
/* 80CDD8F8  48 00 00 C4 */	b lbl_80CDD9BC
lbl_80CDD8FC:
/* 80CDD8FC  7F C3 F3 78 */	mr r3, r30
/* 80CDD900  38 80 00 02 */	li r4, 2
/* 80CDD904  38 A0 00 01 */	li r5, 1
/* 80CDD908  48 00 04 21 */	bl setPrtcls__14daObj_SMTile_cFii
/* 80CDD90C  48 00 00 B0 */	b lbl_80CDD9BC
lbl_80CDD910:
/* 80CDD910  7F C3 F3 78 */	mr r3, r30
/* 80CDD914  38 80 00 02 */	li r4, 2
/* 80CDD918  38 A0 00 02 */	li r5, 2
/* 80CDD91C  48 00 04 0D */	bl setPrtcls__14daObj_SMTile_cFii
/* 80CDD920  48 00 00 9C */	b lbl_80CDD9BC
lbl_80CDD924:
/* 80CDD924  7F C3 F3 78 */	mr r3, r30
/* 80CDD928  38 80 00 02 */	li r4, 2
/* 80CDD92C  38 A0 00 03 */	li r5, 3
/* 80CDD930  48 00 03 F9 */	bl setPrtcls__14daObj_SMTile_cFii
/* 80CDD934  48 00 00 88 */	b lbl_80CDD9BC
lbl_80CDD938:
/* 80CDD938  7F C3 F3 78 */	mr r3, r30
/* 80CDD93C  38 80 00 02 */	li r4, 2
/* 80CDD940  38 A0 00 04 */	li r5, 4
/* 80CDD944  48 00 03 E5 */	bl setPrtcls__14daObj_SMTile_cFii
/* 80CDD948  48 00 00 74 */	b lbl_80CDD9BC
lbl_80CDD94C:
/* 80CDD94C  7F C3 F3 78 */	mr r3, r30
/* 80CDD950  38 80 00 02 */	li r4, 2
/* 80CDD954  38 A0 00 05 */	li r5, 5
/* 80CDD958  48 00 03 D1 */	bl setPrtcls__14daObj_SMTile_cFii
/* 80CDD95C  48 00 00 60 */	b lbl_80CDD9BC
lbl_80CDD960:
/* 80CDD960  3B 40 00 00 */	li r26, 0
/* 80CDD964  3B A0 00 00 */	li r29, 0
/* 80CDD968  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080290@ha */
/* 80CDD96C  3B 63 02 90 */	addi r27, r3, 0x0290 /* 0x00080290@l */
/* 80CDD970  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CDD974  3B 83 13 68 */	addi r28, r3, mAudioMgrPtr__10Z2AudioMgr@l
lbl_80CDD978:
/* 80CDD978  93 61 00 08 */	stw r27, 8(r1)
/* 80CDD97C  80 7C 00 00 */	lwz r3, 0(r28)
/* 80CDD980  38 81 00 08 */	addi r4, r1, 8
/* 80CDD984  38 BD 07 88 */	addi r5, r29, 0x788
/* 80CDD988  7C BE 2A 14 */	add r5, r30, r5
/* 80CDD98C  38 C0 00 00 */	li r6, 0
/* 80CDD990  38 E0 00 00 */	li r7, 0
/* 80CDD994  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CDD998  FC 40 08 90 */	fmr f2, f1
/* 80CDD99C  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80CDD9A0  FC 80 18 90 */	fmr f4, f3
/* 80CDD9A4  39 00 00 00 */	li r8, 0
/* 80CDD9A8  4B 5C DF DC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CDD9AC  3B 5A 00 01 */	addi r26, r26, 1
/* 80CDD9B0  2C 1A 00 15 */	cmpwi r26, 0x15
/* 80CDD9B4  3B BD 00 0C */	addi r29, r29, 0xc
/* 80CDD9B8  41 80 FF C0 */	blt lbl_80CDD978
lbl_80CDD9BC:
/* 80CDD9BC  80 1E 0A 7C */	lwz r0, 0xa7c(r30)
/* 80CDD9C0  2C 00 00 F0 */	cmpwi r0, 0xf0
/* 80CDD9C4  40 81 00 10 */	ble lbl_80CDD9D4
/* 80CDD9C8  38 00 00 00 */	li r0, 0
/* 80CDD9CC  98 1E 0B 29 */	stb r0, 0xb29(r30)
/* 80CDD9D0  48 00 00 64 */	b lbl_80CDDA34
lbl_80CDD9D4:
/* 80CDD9D4  2C 00 00 DC */	cmpwi r0, 0xdc
/* 80CDD9D8  40 81 00 0C */	ble lbl_80CDD9E4
/* 80CDD9DC  38 00 00 01 */	li r0, 1
/* 80CDD9E0  98 1E 0B 2A */	stb r0, 0xb2a(r30)
lbl_80CDD9E4:
/* 80CDD9E4  80 1E 0A 7C */	lwz r0, 0xa7c(r30)
/* 80CDD9E8  20 00 00 F0 */	subfic r0, r0, 0xf0
/* 80CDD9EC  C8 3F 00 18 */	lfd f1, 0x18(r31)
/* 80CDD9F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CDD9F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDD9F8  3C 00 43 30 */	lis r0, 0x4330
/* 80CDD9FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CDDA00  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80CDDA04  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CDDA08  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80CDDA0C  EC 21 00 24 */	fdivs f1, f1, f0
/* 80CDDA10  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80CDDA14  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CDDA18  40 80 00 08 */	bge lbl_80CDDA20
/* 80CDDA1C  FC 20 00 90 */	fmr f1, f0
lbl_80CDDA20:
/* 80CDDA20  7F C3 F3 78 */	mr r3, r30
/* 80CDDA24  48 00 04 D9 */	bl touchPrtcls__14daObj_SMTile_cFf
/* 80CDDA28  80 7E 0A 7C */	lwz r3, 0xa7c(r30)
/* 80CDDA2C  38 03 00 01 */	addi r0, r3, 1
/* 80CDDA30  90 1E 0A 7C */	stw r0, 0xa7c(r30)
lbl_80CDDA34:
/* 80CDDA34  38 7E 05 68 */	addi r3, r30, 0x568
/* 80CDDA38  4B 32 F9 F0 */	b play__14mDoExt_baseAnmFv
/* 80CDDA3C  7F C3 F3 78 */	mr r3, r30
/* 80CDDA40  48 00 07 69 */	bl setMtx__14daObj_SMTile_cFv
/* 80CDDA44  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CDDA48  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80CDDA4C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CDDA50  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80CDDA54  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CDDA58  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80CDDA5C  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80CDDA60  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80CDDA64  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80CDDA68  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80CDDA6C  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 80CDDA70  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80CDDA74  38 60 00 01 */	li r3, 1
/* 80CDDA78  48 00 00 08 */	b lbl_80CDDA80
lbl_80CDDA7C:
/* 80CDDA7C  38 60 00 00 */	li r3, 0
lbl_80CDDA80:
/* 80CDDA80  39 61 00 30 */	addi r11, r1, 0x30
/* 80CDDA84  4B 68 47 98 */	b _restgpr_26
/* 80CDDA88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CDDA8C  7C 08 03 A6 */	mtlr r0
/* 80CDDA90  38 21 00 30 */	addi r1, r1, 0x30
/* 80CDDA94  4E 80 00 20 */	blr 
