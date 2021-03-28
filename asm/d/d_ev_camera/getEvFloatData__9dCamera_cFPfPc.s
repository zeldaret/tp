lbl_80088D90:
/* 80088D90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80088D94  7C 08 02 A6 */	mflr r0
/* 80088D98  90 01 00 24 */	stw r0, 0x24(r1)
/* 80088D9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80088DA0  48 2D 94 39 */	bl _savegpr_28
/* 80088DA4  7C 7C 1B 78 */	mr r28, r3
/* 80088DA8  7C 9D 23 78 */	mr r29, r4
/* 80088DAC  7C BE 2B 78 */	mr r30, r5
/* 80088DB0  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 80088DB4  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80088DB8  41 82 00 34 */	beq lbl_80088DEC
/* 80088DBC  7F C4 F3 78 */	mr r4, r30
/* 80088DC0  4B FF FE 65 */	bl searchEventArgData__9dCamera_cFPc
/* 80088DC4  2C 03 FF FF */	cmpwi r3, -1
/* 80088DC8  40 82 00 0C */	bne lbl_80088DD4
/* 80088DCC  38 60 00 00 */	li r3, 0
/* 80088DD0  48 00 00 70 */	b lbl_80088E40
lbl_80088DD4:
/* 80088DD4  1C 03 00 18 */	mulli r0, r3, 0x18
/* 80088DD8  7C 7C 02 14 */	add r3, r28, r0
/* 80088DDC  80 63 05 28 */	lwz r3, 0x528(r3)
/* 80088DE0  C0 03 00 00 */	lfs f0, 0(r3)
/* 80088DE4  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80088DE8  48 00 00 54 */	b lbl_80088E3C
lbl_80088DEC:
/* 80088DEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80088DF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80088DF4  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80088DF8  7F E3 FB 78 */	mr r3, r31
/* 80088DFC  80 9C 04 EC */	lwz r4, 0x4ec(r28)
/* 80088E00  4B FB F3 45 */	bl getMySubstanceNum__16dEvent_manager_cFiPCc
/* 80088E04  2C 03 00 00 */	cmpwi r3, 0
/* 80088E08  41 82 00 24 */	beq lbl_80088E2C
/* 80088E0C  7F E3 FB 78 */	mr r3, r31
/* 80088E10  80 9C 04 EC */	lwz r4, 0x4ec(r28)
/* 80088E14  7F C5 F3 78 */	mr r5, r30
/* 80088E18  38 C0 00 00 */	li r6, 0
/* 80088E1C  4B FB F2 D1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80088E20  C0 03 00 00 */	lfs f0, 0(r3)
/* 80088E24  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80088E28  48 00 00 14 */	b lbl_80088E3C
lbl_80088E2C:
/* 80088E2C  38 00 00 01 */	li r0, 1
/* 80088E30  98 1C 04 F8 */	stb r0, 0x4f8(r28)
/* 80088E34  38 60 00 00 */	li r3, 0
/* 80088E38  48 00 00 08 */	b lbl_80088E40
lbl_80088E3C:
/* 80088E3C  38 60 00 01 */	li r3, 1
lbl_80088E40:
/* 80088E40  39 61 00 20 */	addi r11, r1, 0x20
/* 80088E44  48 2D 93 E1 */	bl _restgpr_28
/* 80088E48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80088E4C  7C 08 03 A6 */	mtlr r0
/* 80088E50  38 21 00 20 */	addi r1, r1, 0x20
/* 80088E54  4E 80 00 20 */	blr 
