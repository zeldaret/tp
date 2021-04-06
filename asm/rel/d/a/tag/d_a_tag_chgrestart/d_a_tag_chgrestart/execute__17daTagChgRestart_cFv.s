lbl_80D568B8:
/* 80D568B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D568BC  7C 08 02 A6 */	mflr r0
/* 80D568C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D568C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D568C8  4B 60 B9 15 */	bl _savegpr_29
/* 80D568CC  7C 7F 1B 78 */	mr r31, r3
/* 80D568D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D568D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D568D8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D568DC  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D568E0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D568E4  7C 05 07 74 */	extsb r5, r0
/* 80D568E8  4B 2D EA 79 */	bl isSwitch__10dSv_info_cCFii
/* 80D568EC  2C 03 00 00 */	cmpwi r3, 0
/* 80D568F0  41 82 00 0C */	beq lbl_80D568FC
/* 80D568F4  38 60 00 01 */	li r3, 1
/* 80D568F8  48 00 01 74 */	b lbl_80D56A6C
lbl_80D568FC:
/* 80D568FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D56900  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D56904  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80D56908  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D5690C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D56910  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D56914  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D56918  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D5691C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D56920  38 61 00 14 */	addi r3, r1, 0x14
/* 80D56924  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80D56928  7C 65 1B 78 */	mr r5, r3
/* 80D5692C  4B 5F 07 89 */	bl PSVECSubtract
/* 80D56930  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D56934  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D56938  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80D5693C  7C 00 00 D0 */	neg r0, r0
/* 80D56940  7C 04 07 34 */	extsh r4, r0
/* 80D56944  4B 2B 5A 99 */	bl mDoMtx_YrotS__FPA4_fs
/* 80D56948  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D5694C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D56950  38 81 00 14 */	addi r4, r1, 0x14
/* 80D56954  7C 85 23 78 */	mr r5, r4
/* 80D56958  4B 5F 04 15 */	bl PSMTXMultVec
/* 80D5695C  C0 1F 05 68 */	lfs f0, 0x568(r31)
/* 80D56960  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80D56964  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D56968  40 80 01 00 */	bge lbl_80D56A68
/* 80D5696C  C0 1F 05 70 */	lfs f0, 0x570(r31)
/* 80D56970  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80D56974  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80D56978  40 80 00 F0 */	bge lbl_80D56A68
/* 80D5697C  C0 1F 05 80 */	lfs f0, 0x580(r31)
/* 80D56980  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D56984  40 81 00 E4 */	ble lbl_80D56A68
/* 80D56988  C0 1F 05 88 */	lfs f0, 0x588(r31)
/* 80D5698C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80D56990  40 81 00 D8 */	ble lbl_80D56A68
/* 80D56994  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80D56998  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D5699C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80D569A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D569A4  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80D569A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D569AC  A8 BF 04 B6 */	lha r5, 0x4b6(r31)
/* 80D569B0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D569B4  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 80D569B8  28 1D 00 FF */	cmplwi r29, 0xff
/* 80D569BC  41 82 00 74 */	beq lbl_80D56A30
/* 80D569C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D569C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D569C8  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 80D569CC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D569D0  7C 04 07 74 */	extsb r4, r0
/* 80D569D4  4B 2C D9 B1 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 80D569D8  81 83 00 00 */	lwz r12, 0(r3)
/* 80D569DC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80D569E0  7D 89 03 A6 */	mtctr r12
/* 80D569E4  4E 80 04 21 */	bctrl 
/* 80D569E8  80 83 00 04 */	lwz r4, 4(r3)
/* 80D569EC  80 03 00 00 */	lwz r0, 0(r3)
/* 80D569F0  7C 09 03 A6 */	mtctr r0
/* 80D569F4  2C 00 00 00 */	cmpwi r0, 0
/* 80D569F8  40 81 00 1C */	ble lbl_80D56A14
lbl_80D569FC:
/* 80D569FC  A8 04 00 1C */	lha r0, 0x1c(r4)
/* 80D56A00  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D56A04  7C 00 E8 00 */	cmpw r0, r29
/* 80D56A08  41 82 00 0C */	beq lbl_80D56A14
/* 80D56A0C  38 84 00 20 */	addi r4, r4, 0x20
/* 80D56A10  42 00 FF EC */	bdnz lbl_80D569FC
lbl_80D56A14:
/* 80D56A14  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80D56A18  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D56A1C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80D56A20  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D56A24  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80D56A28  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D56A2C  A8 A4 00 1A */	lha r5, 0x1a(r4)
lbl_80D56A30:
/* 80D56A30  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D56A34  7C 06 07 74 */	extsb r6, r0
/* 80D56A38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D56A3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D56A40  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 80D56A44  38 81 00 08 */	addi r4, r1, 8
/* 80D56A48  4B 2D E5 39 */	bl setRoom__13dSv_restart_cFRC4cXyzsSc
/* 80D56A4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D56A50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D56A54  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D56A58  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D56A5C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D56A60  7C 05 07 74 */	extsb r5, r0
/* 80D56A64  4B 2D E7 9D */	bl onSwitch__10dSv_info_cFii
lbl_80D56A68:
/* 80D56A68  38 60 00 01 */	li r3, 1
lbl_80D56A6C:
/* 80D56A6C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D56A70  4B 60 B7 B9 */	bl _restgpr_29
/* 80D56A74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D56A78  7C 08 03 A6 */	mtlr r0
/* 80D56A7C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D56A80  4E 80 00 20 */	blr 
