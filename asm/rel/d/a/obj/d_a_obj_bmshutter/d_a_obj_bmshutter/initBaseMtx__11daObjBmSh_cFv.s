lbl_80BB9A58:
/* 80BB9A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB9A5C  7C 08 02 A6 */	mflr r0
/* 80BB9A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB9A64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB9A68  7C 7F 1B 78 */	mr r31, r3
/* 80BB9A6C  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 80BB9A70  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80BB9A74  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80BB9A78  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80BB9A7C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80BB9A80  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80BB9A84  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80BB9A88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB9A8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB9A90  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BB9A94  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BB9A98  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BB9A9C  7C 05 07 74 */	extsb r5, r0
/* 80BB9AA0  4B 47 B8 C1 */	bl isSwitch__10dSv_info_cCFii
/* 80BB9AA4  2C 03 00 00 */	cmpwi r3, 0
/* 80BB9AA8  41 82 00 14 */	beq lbl_80BB9ABC
/* 80BB9AAC  3C 60 80 BC */	lis r3, lit_3663@ha /* 0x80BBA7F8@ha */
/* 80BB9AB0  C0 03 A7 F8 */	lfs f0, lit_3663@l(r3)  /* 0x80BBA7F8@l */
/* 80BB9AB4  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 80BB9AB8  48 00 00 10 */	b lbl_80BB9AC8
lbl_80BB9ABC:
/* 80BB9ABC  3C 60 80 BC */	lis r3, lit_3664@ha /* 0x80BBA7FC@ha */
/* 80BB9AC0  C0 03 A7 FC */	lfs f0, lit_3664@l(r3)  /* 0x80BBA7FC@l */
/* 80BB9AC4  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
lbl_80BB9AC8:
/* 80BB9AC8  7F E3 FB 78 */	mr r3, r31
/* 80BB9ACC  48 00 00 19 */	bl setBaseMtx__11daObjBmSh_cFv
/* 80BB9AD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB9AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB9AD8  7C 08 03 A6 */	mtlr r0
/* 80BB9ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB9AE0  4E 80 00 20 */	blr 
