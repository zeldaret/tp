lbl_8006C790:
/* 8006C790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006C794  7C 08 02 A6 */	mflr r0
/* 8006C798  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006C79C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006C7A0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006C7A4  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006C7A8  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8006C7AC  38 63 A5 78 */	addi r3, r3, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8006C7B0  38 63 00 10 */	addi r3, r3, 0x10
/* 8006C7B4  38 80 00 53 */	li r4, 0x53
/* 8006C7B8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006C7BC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006C7C0  3C A5 00 02 */	addis r5, r5, 2
/* 8006C7C4  38 C0 00 80 */	li r6, 0x80
/* 8006C7C8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8006C7CC  4B FC FB 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8006C7D0  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 8006C7D4  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 8006C7D8  80 84 10 4C */	lwz r4, 0x104c(r4)
/* 8006C7DC  90 64 00 14 */	stw r3, 0x14(r4)
/* 8006C7E0  38 60 00 00 */	li r3, 0
/* 8006C7E4  7C 65 1B 78 */	mr r5, r3
/* 8006C7E8  38 00 00 64 */	li r0, 0x64
/* 8006C7EC  7C 09 03 A6 */	mtctr r0
lbl_8006C7F0:
/* 8006C7F0  80 9F 10 4C */	lwz r4, 0x104c(r31)
/* 8006C7F4  38 03 00 18 */	addi r0, r3, 0x18
/* 8006C7F8  7C A4 01 AE */	stbx r5, r4, r0
/* 8006C7FC  38 63 00 48 */	addi r3, r3, 0x48
/* 8006C800  42 00 FF F0 */	bdnz lbl_8006C7F0
/* 8006C804  38 00 00 00 */	li r0, 0
/* 8006C808  80 7F 10 4C */	lwz r3, 0x104c(r31)
/* 8006C80C  90 03 00 10 */	stw r0, 0x10(r3)
/* 8006C810  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006C814  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006C818  38 63 09 58 */	addi r3, r3, 0x958
/* 8006C81C  38 80 00 03 */	li r4, 3
/* 8006C820  4B FC 81 15 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8006C824  2C 03 00 00 */	cmpwi r3, 0
/* 8006C828  40 82 00 14 */	bne lbl_8006C83C
/* 8006C82C  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8006C830  80 7F 10 4C */	lwz r3, 0x104c(r31)
/* 8006C834  D0 03 1C 3C */	stfs f0, 0x1c3c(r3)
/* 8006C838  48 00 00 10 */	b lbl_8006C848
lbl_8006C83C:
/* 8006C83C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006C840  80 7F 10 4C */	lwz r3, 0x104c(r31)
/* 8006C844  D0 03 1C 3C */	stfs f0, 0x1c3c(r3)
lbl_8006C848:
/* 8006C848  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006C84C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006C850  7C 08 03 A6 */	mtlr r0
/* 8006C854  38 21 00 10 */	addi r1, r1, 0x10
/* 8006C858  4E 80 00 20 */	blr 
