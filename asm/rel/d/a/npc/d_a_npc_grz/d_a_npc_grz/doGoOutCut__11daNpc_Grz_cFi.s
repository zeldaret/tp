lbl_809ED5EC:
/* 809ED5EC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809ED5F0  7C 08 02 A6 */	mflr r0
/* 809ED5F4  90 01 00 64 */	stw r0, 0x64(r1)
/* 809ED5F8  39 61 00 60 */	addi r11, r1, 0x60
/* 809ED5FC  4B 97 4B CD */	bl _savegpr_24
/* 809ED600  7C 7E 1B 78 */	mr r30, r3
/* 809ED604  7C 99 23 78 */	mr r25, r4
/* 809ED608  3C 60 80 9F */	lis r3, m__17daNpc_Grz_Param_c@ha /* 0x809EF1F4@ha */
/* 809ED60C  3B 83 F1 F4 */	addi r28, r3, m__17daNpc_Grz_Param_c@l /* 0x809EF1F4@l */
/* 809ED610  C0 1C 04 20 */	lfs f0, 0x420(r28)
/* 809ED614  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809ED618  C0 1C 00 A8 */	lfs f0, 0xa8(r28)
/* 809ED61C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809ED620  C0 1C 04 24 */	lfs f0, 0x424(r28)
/* 809ED624  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809ED628  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809ED62C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809ED630  3B 7D 4F F8 */	addi r27, r29, 0x4ff8
/* 809ED634  3B E0 00 00 */	li r31, 0
/* 809ED638  3B 40 FF FF */	li r26, -1
/* 809ED63C  3B 00 00 00 */	li r24, 0
/* 809ED640  7F 63 DB 78 */	mr r3, r27
/* 809ED644  3C A0 80 9F */	lis r5, d_a_npc_grz__stringBase0@ha /* 0x809EF638@ha */
/* 809ED648  38 A5 F6 38 */	addi r5, r5, d_a_npc_grz__stringBase0@l /* 0x809EF638@l */
/* 809ED64C  38 A5 00 62 */	addi r5, r5, 0x62
/* 809ED650  38 C0 00 03 */	li r6, 3
/* 809ED654  4B 65 AA 99 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809ED658  28 03 00 00 */	cmplwi r3, 0
/* 809ED65C  41 82 00 08 */	beq lbl_809ED664
/* 809ED660  83 43 00 00 */	lwz r26, 0(r3)
lbl_809ED664:
/* 809ED664  7F 63 DB 78 */	mr r3, r27
/* 809ED668  7F 24 CB 78 */	mr r4, r25
/* 809ED66C  3C A0 80 9F */	lis r5, d_a_npc_grz__stringBase0@ha /* 0x809EF638@ha */
/* 809ED670  38 A5 F6 38 */	addi r5, r5, d_a_npc_grz__stringBase0@l /* 0x809EF638@l */
/* 809ED674  38 A5 00 5C */	addi r5, r5, 0x5c
/* 809ED678  38 C0 00 03 */	li r6, 3
/* 809ED67C  4B 65 AA 71 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809ED680  28 03 00 00 */	cmplwi r3, 0
/* 809ED684  41 82 00 08 */	beq lbl_809ED68C
/* 809ED688  83 03 00 00 */	lwz r24, 0(r3)
lbl_809ED68C:
/* 809ED68C  7F 63 DB 78 */	mr r3, r27
/* 809ED690  7F 24 CB 78 */	mr r4, r25
/* 809ED694  4B 65 A6 B9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809ED698  2C 03 00 00 */	cmpwi r3, 0
/* 809ED69C  41 82 01 B4 */	beq lbl_809ED850
/* 809ED6A0  2C 1A 00 14 */	cmpwi r26, 0x14
/* 809ED6A4  41 82 01 04 */	beq lbl_809ED7A8
/* 809ED6A8  40 80 00 28 */	bge lbl_809ED6D0
/* 809ED6AC  2C 1A 00 01 */	cmpwi r26, 1
/* 809ED6B0  41 82 00 64 */	beq lbl_809ED714
/* 809ED6B4  40 80 00 10 */	bge lbl_809ED6C4
/* 809ED6B8  2C 1A 00 00 */	cmpwi r26, 0
/* 809ED6BC  40 80 00 2C */	bge lbl_809ED6E8
/* 809ED6C0  48 00 01 90 */	b lbl_809ED850
lbl_809ED6C4:
/* 809ED6C4  2C 1A 00 0A */	cmpwi r26, 0xa
/* 809ED6C8  41 82 00 78 */	beq lbl_809ED740
/* 809ED6CC  48 00 01 84 */	b lbl_809ED850
lbl_809ED6D0:
/* 809ED6D0  2C 1A 00 63 */	cmpwi r26, 0x63
/* 809ED6D4  41 82 01 40 */	beq lbl_809ED814
/* 809ED6D8  40 80 01 78 */	bge lbl_809ED850
/* 809ED6DC  2C 1A 00 16 */	cmpwi r26, 0x16
/* 809ED6E0  40 80 01 70 */	bge lbl_809ED850
/* 809ED6E4  48 00 01 20 */	b lbl_809ED804
lbl_809ED6E8:
/* 809ED6E8  3C 60 80 9F */	lis r3, s_sub2__FPvPv@ha /* 0x809EC7BC@ha */
/* 809ED6EC  38 63 C7 BC */	addi r3, r3, s_sub2__FPvPv@l /* 0x809EC7BC@l */
/* 809ED6F0  7F C4 F3 78 */	mr r4, r30
/* 809ED6F4  4B 63 3C 45 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 809ED6F8  7C 64 1B 78 */	mr r4, r3
/* 809ED6FC  38 7E 12 B8 */	addi r3, r30, 0x12b8
/* 809ED700  4B 76 2F BD */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809ED704  7F C3 F3 78 */	mr r3, r30
/* 809ED708  38 80 00 05 */	li r4, 5
/* 809ED70C  4B FF EA 59 */	bl setLookMode__11daNpc_Grz_cFi
/* 809ED710  48 00 01 40 */	b lbl_809ED850
lbl_809ED714:
/* 809ED714  3C 60 80 9F */	lis r3, s_sub3__FPvPv@ha /* 0x809EC808@ha */
/* 809ED718  38 63 C8 08 */	addi r3, r3, s_sub3__FPvPv@l /* 0x809EC808@l */
/* 809ED71C  7F C4 F3 78 */	mr r4, r30
/* 809ED720  4B 63 3C 19 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 809ED724  7C 64 1B 78 */	mr r4, r3
/* 809ED728  38 7E 12 B8 */	addi r3, r30, 0x12b8
/* 809ED72C  4B 76 2F 91 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809ED730  7F C3 F3 78 */	mr r3, r30
/* 809ED734  38 80 00 05 */	li r4, 5
/* 809ED738  4B FF EA 2D */	bl setLookMode__11daNpc_Grz_cFi
/* 809ED73C  48 00 01 14 */	b lbl_809ED850
lbl_809ED740:
/* 809ED740  7F C3 F3 78 */	mr r3, r30
/* 809ED744  38 80 00 09 */	li r4, 9
/* 809ED748  C0 3C 00 BC */	lfs f1, 0xbc(r28)
/* 809ED74C  38 A0 00 00 */	li r5, 0
/* 809ED750  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809ED754  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809ED758  7D 89 03 A6 */	mtctr r12
/* 809ED75C  4E 80 04 21 */	bctrl 
/* 809ED760  7F C3 F3 78 */	mr r3, r30
/* 809ED764  38 80 00 0A */	li r4, 0xa
/* 809ED768  C0 3C 00 BC */	lfs f1, 0xbc(r28)
/* 809ED76C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809ED770  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809ED774  7D 89 03 A6 */	mtctr r12
/* 809ED778  4E 80 04 21 */	bctrl 
/* 809ED77C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050100@ha */
/* 809ED780  38 03 01 00 */	addi r0, r3, 0x0100 /* 0x00050100@l */
/* 809ED784  90 01 00 10 */	stw r0, 0x10(r1)
/* 809ED788  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809ED78C  38 81 00 10 */	addi r4, r1, 0x10
/* 809ED790  38 A0 FF FF */	li r5, -1
/* 809ED794  81 9E 0B 48 */	lwz r12, 0xb48(r30)
/* 809ED798  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809ED79C  7D 89 03 A6 */	mtctr r12
/* 809ED7A0  4E 80 04 21 */	bctrl 
/* 809ED7A4  48 00 00 AC */	b lbl_809ED850
lbl_809ED7A8:
/* 809ED7A8  7F C3 F3 78 */	mr r3, r30
/* 809ED7AC  38 80 00 00 */	li r4, 0
/* 809ED7B0  4B FF E9 B5 */	bl setLookMode__11daNpc_Grz_cFi
/* 809ED7B4  7F C3 F3 78 */	mr r3, r30
/* 809ED7B8  38 80 00 0A */	li r4, 0xa
/* 809ED7BC  C0 3C 00 BC */	lfs f1, 0xbc(r28)
/* 809ED7C0  38 A0 00 00 */	li r5, 0
/* 809ED7C4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809ED7C8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809ED7CC  7D 89 03 A6 */	mtctr r12
/* 809ED7D0  4E 80 04 21 */	bctrl 
/* 809ED7D4  7F C3 F3 78 */	mr r3, r30
/* 809ED7D8  38 80 00 0A */	li r4, 0xa
/* 809ED7DC  C0 3C 00 BC */	lfs f1, 0xbc(r28)
/* 809ED7E0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809ED7E4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809ED7E8  7D 89 03 A6 */	mtctr r12
/* 809ED7EC  4E 80 04 21 */	bctrl 
/* 809ED7F0  38 7C 00 00 */	addi r3, r28, 0
/* 809ED7F4  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 809ED7F8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809ED7FC  93 1E 09 60 */	stw r24, 0x960(r30)
/* 809ED800  48 00 00 50 */	b lbl_809ED850
lbl_809ED804:
/* 809ED804  C0 1C 00 A8 */	lfs f0, 0xa8(r28)
/* 809ED808  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809ED80C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809ED810  48 00 00 40 */	b lbl_809ED850
lbl_809ED814:
/* 809ED814  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809ED818  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 809ED81C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 809ED820  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 809ED824  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 809ED828  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 809ED82C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809ED830  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 809ED834  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809ED838  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 809ED83C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809ED840  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 809ED844  38 00 00 01 */	li r0, 1
/* 809ED848  98 1E 09 F2 */	stb r0, 0x9f2(r30)
/* 809ED84C  93 1E 09 60 */	stw r24, 0x960(r30)
lbl_809ED850:
/* 809ED850  2C 1A 00 14 */	cmpwi r26, 0x14
/* 809ED854  41 82 00 EC */	beq lbl_809ED940
/* 809ED858  40 80 00 28 */	bge lbl_809ED880
/* 809ED85C  2C 1A 00 01 */	cmpwi r26, 1
/* 809ED860  41 82 00 B8 */	beq lbl_809ED918
/* 809ED864  40 80 00 10 */	bge lbl_809ED874
/* 809ED868  2C 1A 00 00 */	cmpwi r26, 0
/* 809ED86C  40 80 00 2C */	bge lbl_809ED898
/* 809ED870  48 00 03 14 */	b lbl_809EDB84
lbl_809ED874:
/* 809ED874  2C 1A 00 0A */	cmpwi r26, 0xa
/* 809ED878  41 82 00 A8 */	beq lbl_809ED920
/* 809ED87C  48 00 03 08 */	b lbl_809EDB84
lbl_809ED880:
/* 809ED880  2C 1A 00 63 */	cmpwi r26, 0x63
/* 809ED884  41 82 00 94 */	beq lbl_809ED918
/* 809ED888  40 80 02 FC */	bge lbl_809EDB84
/* 809ED88C  2C 1A 00 16 */	cmpwi r26, 0x16
/* 809ED890  40 80 02 F4 */	bge lbl_809EDB84
/* 809ED894  48 00 02 44 */	b lbl_809EDAD8
lbl_809ED898:
/* 809ED898  38 7E 12 B8 */	addi r3, r30, 0x12b8
/* 809ED89C  4B 76 2E 51 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809ED8A0  7C 64 1B 78 */	mr r4, r3
/* 809ED8A4  7F C3 F3 78 */	mr r3, r30
/* 809ED8A8  4B 62 CE 69 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809ED8AC  7C 64 1B 78 */	mr r4, r3
/* 809ED8B0  7C 83 07 34 */	extsh r3, r4
/* 809ED8B4  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 809ED8B8  7C 03 00 00 */	cmpw r3, r0
/* 809ED8BC  40 82 00 14 */	bne lbl_809ED8D0
/* 809ED8C0  38 00 00 00 */	li r0, 0
/* 809ED8C4  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 809ED8C8  3B E0 00 01 */	li r31, 1
/* 809ED8CC  48 00 02 BC */	b lbl_809EDB88
lbl_809ED8D0:
/* 809ED8D0  7F C3 F3 78 */	mr r3, r30
/* 809ED8D4  38 A0 00 0A */	li r5, 0xa
/* 809ED8D8  38 C0 00 0D */	li r6, 0xd
/* 809ED8DC  38 E0 00 0F */	li r7, 0xf
/* 809ED8E0  4B 76 67 C5 */	bl step__8daNpcF_cFsiii
/* 809ED8E4  2C 03 00 00 */	cmpwi r3, 0
/* 809ED8E8  41 82 02 A0 */	beq lbl_809EDB88
/* 809ED8EC  38 00 00 00 */	li r0, 0
/* 809ED8F0  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 809ED8F4  7F C3 F3 78 */	mr r3, r30
/* 809ED8F8  38 80 00 00 */	li r4, 0
/* 809ED8FC  C0 3C 00 BC */	lfs f1, 0xbc(r28)
/* 809ED900  38 A0 00 00 */	li r5, 0
/* 809ED904  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809ED908  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809ED90C  7D 89 03 A6 */	mtctr r12
/* 809ED910  4E 80 04 21 */	bctrl 
/* 809ED914  48 00 02 74 */	b lbl_809EDB88
lbl_809ED918:
/* 809ED918  3B E0 00 01 */	li r31, 1
/* 809ED91C  48 00 02 6C */	b lbl_809EDB88
lbl_809ED920:
/* 809ED920  A8 1E 09 E0 */	lha r0, 0x9e0(r30)
/* 809ED924  2C 00 00 09 */	cmpwi r0, 9
/* 809ED928  40 82 02 60 */	bne lbl_809EDB88
/* 809ED92C  A8 1E 09 DA */	lha r0, 0x9da(r30)
/* 809ED930  2C 00 00 00 */	cmpwi r0, 0
/* 809ED934  40 81 02 54 */	ble lbl_809EDB88
/* 809ED938  3B E0 00 01 */	li r31, 1
/* 809ED93C  48 00 02 4C */	b lbl_809EDB88
lbl_809ED940:
/* 809ED940  80 1E 09 60 */	lwz r0, 0x960(r30)
/* 809ED944  2C 00 00 00 */	cmpwi r0, 0
/* 809ED948  40 82 00 18 */	bne lbl_809ED960
/* 809ED94C  7F 63 DB 78 */	mr r3, r27
/* 809ED950  7F 24 CB 78 */	mr r4, r25
/* 809ED954  4B 65 A3 F9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809ED958  2C 03 00 00 */	cmpwi r3, 0
/* 809ED95C  41 82 01 6C */	beq lbl_809EDAC8
lbl_809ED960:
/* 809ED960  38 61 00 20 */	addi r3, r1, 0x20
/* 809ED964  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809ED968  38 A1 00 2C */	addi r5, r1, 0x2c
/* 809ED96C  4B 87 91 C9 */	bl __mi__4cXyzCFRC3Vec
/* 809ED970  38 61 00 20 */	addi r3, r1, 0x20
/* 809ED974  4B 95 97 C5 */	bl PSVECSquareMag
/* 809ED978  C0 1C 00 A8 */	lfs f0, 0xa8(r28)
/* 809ED97C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809ED980  40 81 00 58 */	ble lbl_809ED9D8
/* 809ED984  FC 00 08 34 */	frsqrte f0, f1
/* 809ED988  C8 9C 00 D0 */	lfd f4, 0xd0(r28)
/* 809ED98C  FC 44 00 32 */	fmul f2, f4, f0
/* 809ED990  C8 7C 00 D8 */	lfd f3, 0xd8(r28)
/* 809ED994  FC 00 00 32 */	fmul f0, f0, f0
/* 809ED998  FC 01 00 32 */	fmul f0, f1, f0
/* 809ED99C  FC 03 00 28 */	fsub f0, f3, f0
/* 809ED9A0  FC 02 00 32 */	fmul f0, f2, f0
/* 809ED9A4  FC 44 00 32 */	fmul f2, f4, f0
/* 809ED9A8  FC 00 00 32 */	fmul f0, f0, f0
/* 809ED9AC  FC 01 00 32 */	fmul f0, f1, f0
/* 809ED9B0  FC 03 00 28 */	fsub f0, f3, f0
/* 809ED9B4  FC 02 00 32 */	fmul f0, f2, f0
/* 809ED9B8  FC 44 00 32 */	fmul f2, f4, f0
/* 809ED9BC  FC 00 00 32 */	fmul f0, f0, f0
/* 809ED9C0  FC 01 00 32 */	fmul f0, f1, f0
/* 809ED9C4  FC 03 00 28 */	fsub f0, f3, f0
/* 809ED9C8  FC 02 00 32 */	fmul f0, f2, f0
/* 809ED9CC  FC 21 00 32 */	fmul f1, f1, f0
/* 809ED9D0  FC 20 08 18 */	frsp f1, f1
/* 809ED9D4  48 00 00 88 */	b lbl_809EDA5C
lbl_809ED9D8:
/* 809ED9D8  C8 1C 00 E0 */	lfd f0, 0xe0(r28)
/* 809ED9DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809ED9E0  40 80 00 10 */	bge lbl_809ED9F0
/* 809ED9E4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809ED9E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809ED9EC  48 00 00 70 */	b lbl_809EDA5C
lbl_809ED9F0:
/* 809ED9F0  D0 21 00 08 */	stfs f1, 8(r1)
/* 809ED9F4  80 81 00 08 */	lwz r4, 8(r1)
/* 809ED9F8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809ED9FC  3C 00 7F 80 */	lis r0, 0x7f80
/* 809EDA00  7C 03 00 00 */	cmpw r3, r0
/* 809EDA04  41 82 00 14 */	beq lbl_809EDA18
/* 809EDA08  40 80 00 40 */	bge lbl_809EDA48
/* 809EDA0C  2C 03 00 00 */	cmpwi r3, 0
/* 809EDA10  41 82 00 20 */	beq lbl_809EDA30
/* 809EDA14  48 00 00 34 */	b lbl_809EDA48
lbl_809EDA18:
/* 809EDA18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809EDA1C  41 82 00 0C */	beq lbl_809EDA28
/* 809EDA20  38 00 00 01 */	li r0, 1
/* 809EDA24  48 00 00 28 */	b lbl_809EDA4C
lbl_809EDA28:
/* 809EDA28  38 00 00 02 */	li r0, 2
/* 809EDA2C  48 00 00 20 */	b lbl_809EDA4C
lbl_809EDA30:
/* 809EDA30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809EDA34  41 82 00 0C */	beq lbl_809EDA40
/* 809EDA38  38 00 00 05 */	li r0, 5
/* 809EDA3C  48 00 00 10 */	b lbl_809EDA4C
lbl_809EDA40:
/* 809EDA40  38 00 00 03 */	li r0, 3
/* 809EDA44  48 00 00 08 */	b lbl_809EDA4C
lbl_809EDA48:
/* 809EDA48  38 00 00 04 */	li r0, 4
lbl_809EDA4C:
/* 809EDA4C  2C 00 00 01 */	cmpwi r0, 1
/* 809EDA50  40 82 00 0C */	bne lbl_809EDA5C
/* 809EDA54  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809EDA58  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_809EDA5C:
/* 809EDA5C  C0 1C 00 F8 */	lfs f0, 0xf8(r28)
/* 809EDA60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EDA64  40 81 00 40 */	ble lbl_809EDAA4
/* 809EDA68  38 7C 00 00 */	addi r3, r28, 0
/* 809EDA6C  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 809EDA70  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809EDA74  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 809EDA78  38 81 00 2C */	addi r4, r1, 0x2c
/* 809EDA7C  4B 88 31 89 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809EDA80  7C 64 1B 78 */	mr r4, r3
/* 809EDA84  38 7E 08 F2 */	addi r3, r30, 0x8f2
/* 809EDA88  38 A0 00 04 */	li r5, 4
/* 809EDA8C  38 C0 04 00 */	li r6, 0x400
/* 809EDA90  4B 88 2B 79 */	bl cLib_addCalcAngleS2__FPssss
/* 809EDA94  7F C3 F3 78 */	mr r3, r30
/* 809EDA98  A8 9E 08 F2 */	lha r4, 0x8f2(r30)
/* 809EDA9C  4B 76 67 B5 */	bl setAngle__8daNpcF_cFs
/* 809EDAA0  48 00 00 0C */	b lbl_809EDAAC
lbl_809EDAA4:
/* 809EDAA4  38 00 00 00 */	li r0, 0
/* 809EDAA8  90 1E 09 60 */	stw r0, 0x960(r30)
lbl_809EDAAC:
/* 809EDAAC  38 7E 09 60 */	addi r3, r30, 0x960
/* 809EDAB0  48 00 15 B5 */	bl func_809EF064
/* 809EDAB4  2C 03 00 00 */	cmpwi r3, 0
/* 809EDAB8  40 82 00 D0 */	bne lbl_809EDB88
/* 809EDABC  C0 1C 00 A8 */	lfs f0, 0xa8(r28)
/* 809EDAC0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809EDAC4  48 00 00 C4 */	b lbl_809EDB88
lbl_809EDAC8:
/* 809EDAC8  38 00 00 01 */	li r0, 1
/* 809EDACC  98 1E 09 F2 */	stb r0, 0x9f2(r30)
/* 809EDAD0  3B E0 00 01 */	li r31, 1
/* 809EDAD4  48 00 00 B4 */	b lbl_809EDB88
lbl_809EDAD8:
/* 809EDAD8  80 1E 09 60 */	lwz r0, 0x960(r30)
/* 809EDADC  2C 00 00 00 */	cmpwi r0, 0
/* 809EDAE0  40 82 00 18 */	bne lbl_809EDAF8
/* 809EDAE4  7F 63 DB 78 */	mr r3, r27
/* 809EDAE8  7F 24 CB 78 */	mr r4, r25
/* 809EDAEC  4B 65 A2 61 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809EDAF0  2C 03 00 00 */	cmpwi r3, 0
/* 809EDAF4  41 82 00 7C */	beq lbl_809EDB70
lbl_809EDAF8:
/* 809EDAF8  38 7E 09 60 */	addi r3, r30, 0x960
/* 809EDAFC  48 00 15 69 */	bl func_809EF064
/* 809EDB00  2C 03 00 00 */	cmpwi r3, 0
/* 809EDB04  40 82 00 6C */	bne lbl_809EDB70
/* 809EDB08  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080222@ha */
/* 809EDB0C  38 03 02 22 */	addi r0, r3, 0x0222 /* 0x00080222@l */
/* 809EDB10  90 01 00 0C */	stw r0, 0xc(r1)
/* 809EDB14  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809EDB18  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809EDB1C  80 63 00 00 */	lwz r3, 0(r3)
/* 809EDB20  38 81 00 0C */	addi r4, r1, 0xc
/* 809EDB24  38 A0 00 00 */	li r5, 0
/* 809EDB28  38 C0 00 00 */	li r6, 0
/* 809EDB2C  38 E0 00 00 */	li r7, 0
/* 809EDB30  C0 3C 00 A4 */	lfs f1, 0xa4(r28)
/* 809EDB34  FC 40 08 90 */	fmr f2, f1
/* 809EDB38  C0 7C 00 BC */	lfs f3, 0xbc(r28)
/* 809EDB3C  FC 80 18 90 */	fmr f4, f3
/* 809EDB40  39 00 00 00 */	li r8, 0
/* 809EDB44  4B 8B DE 41 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 809EDB48  C0 3C 00 A8 */	lfs f1, 0xa8(r28)
/* 809EDB4C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 809EDB50  C0 1C 00 A4 */	lfs f0, 0xa4(r28)
/* 809EDB54  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809EDB58  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 809EDB5C  38 7D 5B D4 */	addi r3, r29, 0x5bd4
/* 809EDB60  38 80 00 07 */	li r4, 7
/* 809EDB64  38 A0 00 0F */	li r5, 0xf
/* 809EDB68  38 C1 00 14 */	addi r6, r1, 0x14
/* 809EDB6C  4B 68 1E B9 */	bl StartShock__12dVibration_cFii4cXyz
lbl_809EDB70:
/* 809EDB70  80 1E 09 60 */	lwz r0, 0x960(r30)
/* 809EDB74  2C 00 00 00 */	cmpwi r0, 0
/* 809EDB78  40 82 00 10 */	bne lbl_809EDB88
/* 809EDB7C  3B E0 00 01 */	li r31, 1
/* 809EDB80  48 00 00 08 */	b lbl_809EDB88
lbl_809EDB84:
/* 809EDB84  3B E0 00 01 */	li r31, 1
lbl_809EDB88:
/* 809EDB88  7F E3 FB 78 */	mr r3, r31
/* 809EDB8C  39 61 00 60 */	addi r11, r1, 0x60
/* 809EDB90  4B 97 46 85 */	bl _restgpr_24
/* 809EDB94  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809EDB98  7C 08 03 A6 */	mtlr r0
/* 809EDB9C  38 21 00 60 */	addi r1, r1, 0x60
/* 809EDBA0  4E 80 00 20 */	blr 
