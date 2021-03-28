lbl_80D3A2F0:
/* 80D3A2F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D3A2F4  7C 08 02 A6 */	mflr r0
/* 80D3A2F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D3A2FC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D3A300  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D3A304  7C 7E 1B 78 */	mr r30, r3
/* 80D3A308  3C 80 80 D4 */	lis r4, l_cyl_src@ha
/* 80D3A30C  3B E4 B6 38 */	addi r31, r4, l_cyl_src@l
/* 80D3A310  4B FF FF 59 */	bl initBaseMtx__14daObjWStatue_cFv
/* 80D3A314  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D3A318  38 03 00 24 */	addi r0, r3, 0x24
/* 80D3A31C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D3A320  38 7E 07 64 */	addi r3, r30, 0x764
/* 80D3A324  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80D3A328  FC 40 08 90 */	fmr f2, f1
/* 80D3A32C  4B 33 BC 2C */	b SetWall__12dBgS_AcchCirFff
/* 80D3A330  38 00 00 00 */	li r0, 0
/* 80D3A334  90 01 00 08 */	stw r0, 8(r1)
/* 80D3A338  38 7E 05 8C */	addi r3, r30, 0x58c
/* 80D3A33C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D3A340  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80D3A344  7F C6 F3 78 */	mr r6, r30
/* 80D3A348  38 E0 00 01 */	li r7, 1
/* 80D3A34C  39 1E 07 64 */	addi r8, r30, 0x764
/* 80D3A350  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80D3A354  39 40 00 00 */	li r10, 0
/* 80D3A358  4B 33 BE F0 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80D3A35C  38 7E 07 A4 */	addi r3, r30, 0x7a4
/* 80D3A360  38 80 00 00 */	li r4, 0
/* 80D3A364  38 A0 00 FF */	li r5, 0xff
/* 80D3A368  7F C6 F3 78 */	mr r6, r30
/* 80D3A36C  4B 34 94 F4 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D3A370  38 7E 07 E0 */	addi r3, r30, 0x7e0
/* 80D3A374  38 9F 00 00 */	addi r4, r31, 0
/* 80D3A378  4B 34 A5 3C */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D3A37C  38 1E 07 A4 */	addi r0, r30, 0x7a4
/* 80D3A380  90 1E 08 24 */	stw r0, 0x824(r30)
/* 80D3A384  3C 60 80 D4 */	lis r3, lifeGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80D3A388  38 03 A1 D8 */	addi r0, r3, lifeGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80D3A38C  90 1E 08 D0 */	stw r0, 0x8d0(r30)
/* 80D3A390  3C 60 80 D4 */	lis r3, lifeGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80D3A394  38 03 A1 7C */	addi r0, r3, lifeGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80D3A398  90 1E 08 84 */	stw r0, 0x884(r30)
/* 80D3A39C  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha
/* 80D3A3A0  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l
/* 80D3A3A4  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 80D3A3A8  54 00 10 3A */	slwi r0, r0, 2
/* 80D3A3AC  7C 63 02 14 */	add r3, r3, r0
/* 80D3A3B0  88 03 00 02 */	lbz r0, 2(r3)
/* 80D3A3B4  38 7E 09 04 */	addi r3, r30, 0x904
/* 80D3A3B8  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80D3A3BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3A3C0  3C 00 43 30 */	lis r0, 0x4330
/* 80D3A3C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D3A3C8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80D3A3CC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80D3A3D0  4B 53 4E 30 */	b SetR__8cM3dGCylFf
/* 80D3A3D4  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha
/* 80D3A3D8  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l
/* 80D3A3DC  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 80D3A3E0  54 00 10 3A */	slwi r0, r0, 2
/* 80D3A3E4  7C 63 02 14 */	add r3, r3, r0
/* 80D3A3E8  88 03 00 01 */	lbz r0, 1(r3)
/* 80D3A3EC  38 7E 09 04 */	addi r3, r30, 0x904
/* 80D3A3F0  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80D3A3F4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D3A3F8  3C 00 43 30 */	lis r0, 0x4330
/* 80D3A3FC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80D3A400  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80D3A404  EC 20 08 28 */	fsubs f1, f0, f1
/* 80D3A408  4B 53 4D F0 */	b SetH__8cM3dGCylFf
/* 80D3A40C  38 00 00 0F */	li r0, 0xf
/* 80D3A410  98 1E 04 97 */	stb r0, 0x497(r30)
/* 80D3A414  7F C3 F3 78 */	mr r3, r30
/* 80D3A418  48 00 09 19 */	bl actionInitSwOnWait__14daObjWStatue_cFv
/* 80D3A41C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80D3A420  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80D3A424  3C 60 80 D4 */	lis r3, l_arcName@ha
/* 80D3A428  80 03 B7 3C */	lwz r0, l_arcName@l(r3)
/* 80D3A42C  90 1E 01 00 */	stw r0, 0x100(r30)
/* 80D3A430  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D3A434  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D3A438  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80D3A43C  7F C4 F3 78 */	mr r4, r30
/* 80D3A440  3C A0 80 D4 */	lis r5, l_eventName@ha
/* 80D3A444  38 A5 B7 40 */	addi r5, r5, l_eventName@l
/* 80D3A448  80 A5 00 00 */	lwz r5, 0(r5)
/* 80D3A44C  38 C0 00 FF */	li r6, 0xff
/* 80D3A450  4B 30 D3 08 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D3A454  B0 7E 09 48 */	sth r3, 0x948(r30)
/* 80D3A458  38 60 00 01 */	li r3, 1
/* 80D3A45C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D3A460  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D3A464  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D3A468  7C 08 03 A6 */	mtlr r0
/* 80D3A46C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D3A470  4E 80 00 20 */	blr 
