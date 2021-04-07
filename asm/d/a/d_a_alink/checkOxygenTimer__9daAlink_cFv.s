lbl_80101B44:
/* 80101B44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80101B48  7C 08 02 A6 */	mflr r0
/* 80101B4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80101B50  39 61 00 20 */	addi r11, r1, 0x20
/* 80101B54  48 26 06 89 */	bl _savegpr_29
/* 80101B58  7C 7D 1B 78 */	mr r29, r3
/* 80101B5C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80101B60  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80101B64  41 82 00 28 */	beq lbl_80101B8C
/* 80101B68  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 80101B6C  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 80101B70  41 82 00 24 */	beq lbl_80101B94
/* 80101B74  C0 5D 33 B4 */	lfs f2, 0x33b4(r29)
/* 80101B78  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 80101B7C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80101B80  EC 01 00 2A */	fadds f0, f1, f0
/* 80101B84  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80101B88  40 81 00 0C */	ble lbl_80101B94
lbl_80101B8C:
/* 80101B8C  3B C0 00 00 */	li r30, 0
/* 80101B90  48 00 00 08 */	b lbl_80101B98
lbl_80101B94:
/* 80101B94  3B C0 00 01 */	li r30, 1
lbl_80101B98:
/* 80101B98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80101B9C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80101BA0  88 1F 5E B7 */	lbz r0, 0x5eb7(r31)
/* 80101BA4  28 00 00 00 */	cmplwi r0, 0
/* 80101BA8  41 82 00 8C */	beq lbl_80101C34
/* 80101BAC  7F A3 EB 78 */	mr r3, r29
/* 80101BB0  4B FB E2 01 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 80101BB4  2C 03 00 00 */	cmpwi r3, 0
/* 80101BB8  41 82 00 10 */	beq lbl_80101BC8
/* 80101BBC  7F A3 EB 78 */	mr r3, r29
/* 80101BC0  48 00 00 D5 */	bl offOxygenTimer__9daAlink_cFv
/* 80101BC4  48 00 00 B8 */	b lbl_80101C7C
lbl_80101BC8:
/* 80101BC8  2C 1E 00 00 */	cmpwi r30, 0
/* 80101BCC  41 82 00 40 */	beq lbl_80101C0C
/* 80101BD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80101BD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80101BD8  80 83 5D E8 */	lwz r4, 0x5de8(r3)
/* 80101BDC  80 03 5D EC */	lwz r0, 0x5dec(r3)
/* 80101BE0  7C 00 22 14 */	add r0, r0, r4
/* 80101BE4  90 03 5D EC */	stw r0, 0x5dec(r3)
/* 80101BE8  88 7D 2F BE */	lbz r3, 0x2fbe(r29)
/* 80101BEC  28 03 00 5A */	cmplwi r3, 0x5a
/* 80101BF0  40 80 00 10 */	bge lbl_80101C00
/* 80101BF4  38 03 00 01 */	addi r0, r3, 1
/* 80101BF8  98 1D 2F BE */	stb r0, 0x2fbe(r29)
/* 80101BFC  48 00 00 80 */	b lbl_80101C7C
lbl_80101C00:
/* 80101C00  7F A3 EB 78 */	mr r3, r29
/* 80101C04  48 00 00 91 */	bl offOxygenTimer__9daAlink_cFv
/* 80101C08  48 00 00 74 */	b lbl_80101C7C
lbl_80101C0C:
/* 80101C0C  7F A3 EB 78 */	mr r3, r29
/* 80101C10  48 01 40 11 */	bl checkEventRun__9daAlink_cCFv
/* 80101C14  2C 03 00 00 */	cmpwi r3, 0
/* 80101C18  40 82 00 64 */	bne lbl_80101C7C
/* 80101C1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80101C20  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80101C24  80 64 5D EC */	lwz r3, 0x5dec(r4)
/* 80101C28  38 03 FF FF */	addi r0, r3, -1
/* 80101C2C  90 04 5D EC */	stw r0, 0x5dec(r4)
/* 80101C30  48 00 00 4C */	b lbl_80101C7C
lbl_80101C34:
/* 80101C34  2C 1E 00 00 */	cmpwi r30, 0
/* 80101C38  40 82 00 44 */	bne lbl_80101C7C
/* 80101C3C  7F A3 EB 78 */	mr r3, r29
/* 80101C40  4B FB E1 71 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 80101C44  2C 03 00 00 */	cmpwi r3, 0
/* 80101C48  40 82 00 34 */	bne lbl_80101C7C
/* 80101C4C  88 7D 2F BE */	lbz r3, 0x2fbe(r29)
/* 80101C50  28 03 00 00 */	cmplwi r3, 0
/* 80101C54  41 82 00 10 */	beq lbl_80101C64
/* 80101C58  38 03 FF FF */	addi r0, r3, -1
/* 80101C5C  98 1D 2F BE */	stb r0, 0x2fbe(r29)
/* 80101C60  48 00 00 1C */	b lbl_80101C7C
lbl_80101C64:
/* 80101C64  38 00 00 01 */	li r0, 1
/* 80101C68  98 1F 5E B7 */	stb r0, 0x5eb7(r31)
/* 80101C6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80101C70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80101C74  80 03 5D E8 */	lwz r0, 0x5de8(r3)
/* 80101C78  90 03 5D E0 */	stw r0, 0x5de0(r3)
lbl_80101C7C:
/* 80101C7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80101C80  48 26 05 A9 */	bl _restgpr_29
/* 80101C84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80101C88  7C 08 03 A6 */	mtlr r0
/* 80101C8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80101C90  4E 80 00 20 */	blr 
