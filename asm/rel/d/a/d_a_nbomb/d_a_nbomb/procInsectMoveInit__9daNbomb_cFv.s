lbl_804CA688:
/* 804CA688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CA68C  7C 08 02 A6 */	mflr r0
/* 804CA690  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CA694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CA698  7C 7F 1B 78 */	mr r31, r3
/* 804CA69C  3C 60 80 4D */	lis r3, lit_5987@ha
/* 804CA6A0  38 83 C5 84 */	addi r4, r3, lit_5987@l
/* 804CA6A4  80 64 00 00 */	lwz r3, 0(r4)
/* 804CA6A8  80 04 00 04 */	lwz r0, 4(r4)
/* 804CA6AC  90 7F 0C 38 */	stw r3, 0xc38(r31)
/* 804CA6B0  90 1F 0C 3C */	stw r0, 0xc3c(r31)
/* 804CA6B4  80 04 00 08 */	lwz r0, 8(r4)
/* 804CA6B8  90 1F 0C 40 */	stw r0, 0xc40(r31)
/* 804CA6BC  38 00 00 07 */	li r0, 7
/* 804CA6C0  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 804CA6C4  4B BD 31 C0 */	b getAlinkArcName__9daAlink_cFv
/* 804CA6C8  38 80 00 14 */	li r4, 0x14
/* 804CA6CC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804CA6D0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804CA6D4  3C A5 00 02 */	addis r5, r5, 2
/* 804CA6D8  38 C0 00 80 */	li r6, 0x80
/* 804CA6DC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804CA6E0  4B B7 1C 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804CA6E4  7C 64 1B 78 */	mr r4, r3
/* 804CA6E8  80 7F 0A 3C */	lwz r3, 0xa3c(r31)
/* 804CA6EC  38 A0 00 01 */	li r5, 1
/* 804CA6F0  38 C0 FF FF */	li r6, -1
/* 804CA6F4  3C E0 80 4D */	lis r7, lit_6001@ha
/* 804CA6F8  C0 27 C4 A0 */	lfs f1, lit_6001@l(r7)
/* 804CA6FC  38 E0 00 00 */	li r7, 0
/* 804CA700  39 00 FF FF */	li r8, -1
/* 804CA704  39 20 00 01 */	li r9, 1
/* 804CA708  4B B4 30 D4 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804CA70C  7F E3 FB 78 */	mr r3, r31
/* 804CA710  38 80 00 00 */	li r4, 0
/* 804CA714  4B FF E3 75 */	bl setHitPolygon__9daNbomb_cFi
/* 804CA718  80 1F 07 F8 */	lwz r0, 0x7f8(r31)
/* 804CA71C  60 00 00 01 */	ori r0, r0, 1
/* 804CA720  90 1F 07 F8 */	stw r0, 0x7f8(r31)
/* 804CA724  3C 60 80 4C */	lis r3, daNbomb_coHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 804CA728  38 03 6E 10 */	addi r0, r3, daNbomb_coHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 804CA72C  90 1F 08 BC */	stw r0, 0x8bc(r31)
/* 804CA730  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 804CA734  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804CA738  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 804CA73C  3C 60 80 4D */	lis r3, lit_5880@ha
/* 804CA740  C0 03 C4 94 */	lfs f0, lit_5880@l(r3)
/* 804CA744  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 804CA748  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804CA74C  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 804CA750  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804CA754  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 804CA758  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804CA75C  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 804CA760  38 00 00 05 */	li r0, 5
/* 804CA764  98 1F 0B 52 */	stb r0, 0xb52(r31)
/* 804CA768  38 60 00 01 */	li r3, 1
/* 804CA76C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CA770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CA774  7C 08 03 A6 */	mtlr r0
/* 804CA778  38 21 00 10 */	addi r1, r1, 0x10
/* 804CA77C  4E 80 00 20 */	blr 
