lbl_804716D4:
/* 804716D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804716D8  7C 08 02 A6 */	mflr r0
/* 804716DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804716E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804716E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804716E8  7C 7E 1B 78 */	mr r30, r3
/* 804716EC  3C 60 80 48 */	lis r3, l_cyl_info@ha
/* 804716F0  3B E3 99 0C */	addi r31, r3, l_cyl_info@l
/* 804716F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804716F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804716FC  38 80 00 3D */	li r4, 0x3d
/* 80471700  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80471704  7C 05 07 74 */	extsb r5, r0
/* 80471708  4B BC 3C 58 */	b isSwitch__10dSv_info_cCFii
/* 8047170C  2C 03 00 00 */	cmpwi r3, 0
/* 80471710  41 82 00 20 */	beq lbl_80471730
/* 80471714  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 80471718  D0 01 00 08 */	stfs f0, 8(r1)
/* 8047171C  C0 1F 0A E4 */	lfs f0, 0xae4(r31)
/* 80471720  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80471724  C0 1F 0A E8 */	lfs f0, 0xae8(r31)
/* 80471728  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8047172C  48 00 00 58 */	b lbl_80471784
lbl_80471730:
/* 80471730  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80471734  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80471738  38 80 00 3E */	li r4, 0x3e
/* 8047173C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80471740  7C 05 07 74 */	extsb r5, r0
/* 80471744  4B BC 3C 1C */	b isSwitch__10dSv_info_cCFii
/* 80471748  2C 03 00 00 */	cmpwi r3, 0
/* 8047174C  41 82 00 20 */	beq lbl_8047176C
/* 80471750  C0 1F 0A 84 */	lfs f0, 0xa84(r31)
/* 80471754  D0 01 00 08 */	stfs f0, 8(r1)
/* 80471758  C0 1F 0A E4 */	lfs f0, 0xae4(r31)
/* 8047175C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80471760  C0 1F 0A E8 */	lfs f0, 0xae8(r31)
/* 80471764  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80471768  48 00 00 1C */	b lbl_80471784
lbl_8047176C:
/* 8047176C  C0 1F 0A EC */	lfs f0, 0xaec(r31)
/* 80471770  D0 01 00 08 */	stfs f0, 8(r1)
/* 80471774  C0 1F 0A F0 */	lfs f0, 0xaf0(r31)
/* 80471778  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8047177C  C0 1F 0A F4 */	lfs f0, 0xaf4(r31)
/* 80471780  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80471784:
/* 80471784  A0 1E 0D 16 */	lhz r0, 0xd16(r30)
/* 80471788  54 03 C6 BE */	rlwinm r3, r0, 0x18, 0x1a, 0x1f
/* 8047178C  38 80 00 0C */	li r4, 0xc
/* 80471790  38 A1 00 08 */	addi r5, r1, 8
/* 80471794  38 C0 00 00 */	li r6, 0
/* 80471798  4B C2 AC 34 */	b setPosition__7dTres_cFiUcPC3Veci
/* 8047179C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804717A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804717A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804717A8  7C 08 03 A6 */	mtlr r0
/* 804717AC  38 21 00 20 */	addi r1, r1, 0x20
/* 804717B0  4E 80 00 20 */	blr 
