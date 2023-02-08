lbl_80089154:
/* 80089154  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80089158  7C 08 02 A6 */	mflr r0
/* 8008915C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80089160  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80089164  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80089168  39 61 00 20 */	addi r11, r1, 0x20
/* 8008916C  48 2D 90 6D */	bl _savegpr_28
/* 80089170  7C 7C 1B 78 */	mr r28, r3
/* 80089174  7C 9D 23 78 */	mr r29, r4
/* 80089178  7C BE 2B 78 */	mr r30, r5
/* 8008917C  FF E0 08 90 */	fmr f31, f1
/* 80089180  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 80089184  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80089188  41 82 00 34 */	beq lbl_800891BC
/* 8008918C  7F C4 F3 78 */	mr r4, r30
/* 80089190  4B FF FA 95 */	bl searchEventArgData__9dCamera_cFPc
/* 80089194  2C 03 FF FF */	cmpwi r3, -1
/* 80089198  40 82 00 0C */	bne lbl_800891A4
/* 8008919C  D3 FD 00 00 */	stfs f31, 0(r29)
/* 800891A0  48 00 00 68 */	b lbl_80089208
lbl_800891A4:
/* 800891A4  1C 03 00 18 */	mulli r0, r3, 0x18
/* 800891A8  7C 7C 02 14 */	add r3, r28, r0
/* 800891AC  80 63 05 28 */	lwz r3, 0x528(r3)
/* 800891B0  C0 03 00 00 */	lfs f0, 0(r3)
/* 800891B4  D0 1D 00 00 */	stfs f0, 0(r29)
/* 800891B8  48 00 00 50 */	b lbl_80089208
lbl_800891BC:
/* 800891BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800891C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800891C4  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 800891C8  7F E3 FB 78 */	mr r3, r31
/* 800891CC  80 9C 04 EC */	lwz r4, 0x4ec(r28)
/* 800891D0  4B FB EF 75 */	bl getMySubstanceNum__16dEvent_manager_cFiPCc
/* 800891D4  2C 03 00 00 */	cmpwi r3, 0
/* 800891D8  41 82 00 24 */	beq lbl_800891FC
/* 800891DC  7F E3 FB 78 */	mr r3, r31
/* 800891E0  80 9C 04 EC */	lwz r4, 0x4ec(r28)
/* 800891E4  7F C5 F3 78 */	mr r5, r30
/* 800891E8  38 C0 00 00 */	li r6, 0
/* 800891EC  4B FB EF 01 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 800891F0  C0 03 00 00 */	lfs f0, 0(r3)
/* 800891F4  D0 1D 00 00 */	stfs f0, 0(r29)
/* 800891F8  48 00 00 10 */	b lbl_80089208
lbl_800891FC:
/* 800891FC  D3 FD 00 00 */	stfs f31, 0(r29)
/* 80089200  38 60 00 00 */	li r3, 0
/* 80089204  48 00 00 08 */	b lbl_8008920C
lbl_80089208:
/* 80089208  38 60 00 01 */	li r3, 1
lbl_8008920C:
/* 8008920C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80089210  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80089214  39 61 00 20 */	addi r11, r1, 0x20
/* 80089218  48 2D 90 0D */	bl _restgpr_28
/* 8008921C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80089220  7C 08 03 A6 */	mtlr r0
/* 80089224  38 21 00 30 */	addi r1, r1, 0x30
/* 80089228  4E 80 00 20 */	blr 
