lbl_804717B4:
/* 804717B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804717B8  7C 08 02 A6 */	mflr r0
/* 804717BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804717C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804717C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804717C8  7C 7E 1B 78 */	mr r30, r3
/* 804717CC  3C 60 80 48 */	lis r3, l_cyl_info@ha /* 0x8047990C@ha */
/* 804717D0  3B E3 99 0C */	addi r31, r3, l_cyl_info@l /* 0x8047990C@l */
/* 804717D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804717D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804717DC  38 80 00 3D */	li r4, 0x3d
/* 804717E0  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 804717E4  7C 05 07 74 */	extsb r5, r0
/* 804717E8  4B BC 3B 79 */	bl isSwitch__10dSv_info_cCFii
/* 804717EC  2C 03 00 00 */	cmpwi r3, 0
/* 804717F0  41 82 00 20 */	beq lbl_80471810
/* 804717F4  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 804717F8  D0 01 00 08 */	stfs f0, 8(r1)
/* 804717FC  C0 1F 0A E4 */	lfs f0, 0xae4(r31)
/* 80471800  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80471804  C0 1F 0A E8 */	lfs f0, 0xae8(r31)
/* 80471808  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8047180C  48 00 00 58 */	b lbl_80471864
lbl_80471810:
/* 80471810  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80471814  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80471818  38 80 00 3E */	li r4, 0x3e
/* 8047181C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80471820  7C 05 07 74 */	extsb r5, r0
/* 80471824  4B BC 3B 3D */	bl isSwitch__10dSv_info_cCFii
/* 80471828  2C 03 00 00 */	cmpwi r3, 0
/* 8047182C  41 82 00 20 */	beq lbl_8047184C
/* 80471830  C0 1F 0A 84 */	lfs f0, 0xa84(r31)
/* 80471834  D0 01 00 08 */	stfs f0, 8(r1)
/* 80471838  C0 1F 0A E4 */	lfs f0, 0xae4(r31)
/* 8047183C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80471840  C0 1F 0A E8 */	lfs f0, 0xae8(r31)
/* 80471844  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80471848  48 00 00 1C */	b lbl_80471864
lbl_8047184C:
/* 8047184C  C0 1F 0A F8 */	lfs f0, 0xaf8(r31)
/* 80471850  D0 01 00 08 */	stfs f0, 8(r1)
/* 80471854  C0 1F 0A F0 */	lfs f0, 0xaf0(r31)
/* 80471858  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8047185C  C0 1F 0A F4 */	lfs f0, 0xaf4(r31)
/* 80471860  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_80471864:
/* 80471864  A0 1E 0D 16 */	lhz r0, 0xd16(r30)
/* 80471868  54 03 C6 BE */	rlwinm r3, r0, 0x18, 0x1a, 0x1f
/* 8047186C  38 80 00 0C */	li r4, 0xc
/* 80471870  38 A1 00 08 */	addi r5, r1, 8
/* 80471874  38 C0 00 00 */	li r6, 0
/* 80471878  4B C2 AB 55 */	bl setPosition__7dTres_cFiUcPC3Veci
/* 8047187C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80471880  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80471884  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80471888  7C 08 03 A6 */	mtlr r0
/* 8047188C  38 21 00 20 */	addi r1, r1, 0x20
/* 80471890  4E 80 00 20 */	blr 
