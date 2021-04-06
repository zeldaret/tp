lbl_80046480:
/* 80046480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80046484  7C 08 02 A6 */	mflr r0
/* 80046488  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004648C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80046490  93 C1 00 08 */	stw r30, 8(r1)
/* 80046494  7C 7E 1B 78 */	mr r30, r3
/* 80046498  88 8D 87 E4 */	lbz r4, struct_80450D64+0x0(r13)
/* 8004649C  7C 84 07 74 */	extsb r4, r4
/* 800464A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800464A4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800464A8  38 7F 4E C4 */	addi r3, r31, 0x4ec4
/* 800464AC  4B FD DE D9 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 800464B0  81 83 00 00 */	lwz r12, 0(r3)
/* 800464B4  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 800464B8  7D 89 03 A6 */	mtctr r12
/* 800464BC  4E 80 04 21 */	bctrl 
/* 800464C0  80 9E 00 00 */	lwz r4, 0(r30)
/* 800464C4  2C 04 FF FF */	cmpwi r4, -1
/* 800464C8  40 82 00 14 */	bne lbl_800464DC
/* 800464CC  3C 60 80 38 */	lis r3, d_event_d_event_manager__stringBase0@ha /* 0x80379F60@ha */
/* 800464D0  38 63 9F 60 */	addi r3, r3, d_event_d_event_manager__stringBase0@l /* 0x80379F60@l */
/* 800464D4  38 63 00 D6 */	addi r3, r3, 0xd6
/* 800464D8  48 00 00 F8 */	b lbl_800465D0
lbl_800464DC:
/* 800464DC  2C 04 00 C8 */	cmpwi r4, 0xc8
/* 800464E0  40 81 00 6C */	ble lbl_8004654C
/* 800464E4  2C 04 00 D7 */	cmpwi r4, 0xd7
/* 800464E8  40 80 00 64 */	bge lbl_8004654C
/* 800464EC  2C 04 00 CB */	cmpwi r4, 0xcb
/* 800464F0  40 82 00 1C */	bne lbl_8004650C
/* 800464F4  38 7F 4E 20 */	addi r3, r31, 0x4e20
/* 800464F8  81 9F 4E 20 */	lwz r12, 0x4e20(r31)
/* 800464FC  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80046500  7D 89 03 A6 */	mtctr r12
/* 80046504  4E 80 04 21 */	bctrl 
/* 80046508  48 00 00 28 */	b lbl_80046530
lbl_8004650C:
/* 8004650C  2C 04 00 D5 */	cmpwi r4, 0xd5
/* 80046510  40 82 00 20 */	bne lbl_80046530
/* 80046514  4B FE 95 C1 */	bl dComIfGp_SelectWarpPt_get__Fv
/* 80046518  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8004651C  2C 00 00 03 */	cmpwi r0, 3
/* 80046520  41 82 00 08 */	beq lbl_80046528
/* 80046524  48 00 00 0C */	b lbl_80046530
lbl_80046528:
/* 80046528  38 00 00 D6 */	li r0, 0xd6
/* 8004652C  90 1E 00 00 */	stw r0, 0(r30)
lbl_80046530:
/* 80046530  3C 60 80 3B */	lis r3, soecial_names@ha /* 0x803A8270@ha */
/* 80046534  38 63 82 70 */	addi r3, r3, soecial_names@l /* 0x803A8270@l */
/* 80046538  80 1E 00 00 */	lwz r0, 0(r30)
/* 8004653C  54 00 10 3A */	slwi r0, r0, 2
/* 80046540  7C 63 02 14 */	add r3, r3, r0
/* 80046544  80 63 FC DC */	lwz r3, -0x324(r3)
/* 80046548  48 00 00 88 */	b lbl_800465D0
lbl_8004654C:
/* 8004654C  28 03 00 00 */	cmplwi r3, 0
/* 80046550  40 82 00 14 */	bne lbl_80046564
/* 80046554  3C 60 80 38 */	lis r3, d_event_d_event_manager__stringBase0@ha /* 0x80379F60@ha */
/* 80046558  38 63 9F 60 */	addi r3, r3, d_event_d_event_manager__stringBase0@l /* 0x80379F60@l */
/* 8004655C  38 63 00 E4 */	addi r3, r3, 0xe4
/* 80046560  48 00 00 70 */	b lbl_800465D0
lbl_80046564:
/* 80046564  2C 04 00 00 */	cmpwi r4, 0
/* 80046568  41 80 00 10 */	blt lbl_80046578
/* 8004656C  80 03 00 00 */	lwz r0, 0(r3)
/* 80046570  7C 04 00 00 */	cmpw r4, r0
/* 80046574  40 81 00 14 */	ble lbl_80046588
lbl_80046578:
/* 80046578  3C 60 80 38 */	lis r3, d_event_d_event_manager__stringBase0@ha /* 0x80379F60@ha */
/* 8004657C  38 63 9F 60 */	addi r3, r3, d_event_d_event_manager__stringBase0@l /* 0x80379F60@l */
/* 80046580  38 63 00 F0 */	addi r3, r3, 0xf0
/* 80046584  48 00 00 4C */	b lbl_800465D0
lbl_80046588:
/* 80046588  80 63 00 04 */	lwz r3, 4(r3)
/* 8004658C  1C 04 00 1C */	mulli r0, r4, 0x1c
/* 80046590  7C 63 02 14 */	add r3, r3, r0
/* 80046594  88 03 00 00 */	lbz r0, 0(r3)
/* 80046598  2C 00 00 00 */	cmpwi r0, 0
/* 8004659C  41 82 00 18 */	beq lbl_800465B4
/* 800465A0  41 80 00 24 */	blt lbl_800465C4
/* 800465A4  2C 00 00 03 */	cmpwi r0, 3
/* 800465A8  40 80 00 1C */	bge lbl_800465C4
/* 800465AC  38 63 00 0D */	addi r3, r3, 0xd
/* 800465B0  48 00 00 20 */	b lbl_800465D0
lbl_800465B4:
/* 800465B4  3C 60 80 38 */	lis r3, d_event_d_event_manager__stringBase0@ha /* 0x80379F60@ha */
/* 800465B8  38 63 9F 60 */	addi r3, r3, d_event_d_event_manager__stringBase0@l /* 0x80379F60@l */
/* 800465BC  38 63 00 FF */	addi r3, r3, 0xff
/* 800465C0  48 00 00 10 */	b lbl_800465D0
lbl_800465C4:
/* 800465C4  3C 60 80 38 */	lis r3, d_event_d_event_manager__stringBase0@ha /* 0x80379F60@ha */
/* 800465C8  38 63 9F 60 */	addi r3, r3, d_event_d_event_manager__stringBase0@l /* 0x80379F60@l */
/* 800465CC  38 63 01 11 */	addi r3, r3, 0x111
lbl_800465D0:
/* 800465D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800465D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800465D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800465DC  7C 08 03 A6 */	mtlr r0
/* 800465E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800465E4  4E 80 00 20 */	blr 
