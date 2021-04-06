lbl_80042468:
/* 80042468  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004246C  7C 08 02 A6 */	mflr r0
/* 80042470  90 01 00 24 */	stw r0, 0x24(r1)
/* 80042474  39 61 00 20 */	addi r11, r1, 0x20
/* 80042478  48 31 FD 65 */	bl _savegpr_29
/* 8004247C  7C 7D 1B 78 */	mr r29, r3
/* 80042480  88 03 00 EC */	lbz r0, 0xec(r3)
/* 80042484  28 00 00 FF */	cmplwi r0, 0xff
/* 80042488  41 82 00 6C */	beq lbl_800424F4
/* 8004248C  80 9D 00 C4 */	lwz r4, 0xc4(r29)
/* 80042490  48 00 0E 5D */	bl convPId__14dEvt_control_cFUi
/* 80042494  7C 7F 1B 78 */	mr r31, r3
/* 80042498  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8004249C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800424A0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800424A4  38 80 00 00 */	li r4, 0
/* 800424A8  88 BD 00 EC */	lbz r5, 0xec(r29)
/* 800424AC  38 C0 FF FF */	li r6, -1
/* 800424B0  48 00 50 65 */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 800424B4  7C 7E 1B 78 */	mr r30, r3
/* 800424B8  7F A3 EB 78 */	mr r3, r29
/* 800424BC  80 9D 00 C8 */	lwz r4, 0xc8(r29)
/* 800424C0  48 00 0E 2D */	bl convPId__14dEvt_control_cFUi
/* 800424C4  7C 69 1B 78 */	mr r9, r3
/* 800424C8  88 1D 00 EC */	lbz r0, 0xec(r29)
/* 800424CC  90 01 00 08 */	stw r0, 8(r1)
/* 800424D0  7F A3 EB 78 */	mr r3, r29
/* 800424D4  38 80 00 02 */	li r4, 2
/* 800424D8  38 A0 00 03 */	li r5, 3
/* 800424DC  38 C0 02 01 */	li r6, 0x201
/* 800424E0  A0 FD 00 DC */	lhz r7, 0xdc(r29)
/* 800424E4  7F E8 FB 78 */	mr r8, r31
/* 800424E8  7F CA F3 78 */	mr r10, r30
/* 800424EC  4B FF F1 7D */	bl order__14dEvt_control_cFUsUsUsUsPvPvsUc
/* 800424F0  93 FD 00 F8 */	stw r31, 0xf8(r29)
lbl_800424F4:
/* 800424F4  A0 1D 00 D8 */	lhz r0, 0xd8(r29)
/* 800424F8  60 00 00 08 */	ori r0, r0, 8
/* 800424FC  B0 1D 00 D8 */	sth r0, 0xd8(r29)
/* 80042500  39 61 00 20 */	addi r11, r1, 0x20
/* 80042504  48 31 FD 25 */	bl _restgpr_29
/* 80042508  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004250C  7C 08 03 A6 */	mtlr r0
/* 80042510  38 21 00 20 */	addi r1, r1, 0x20
/* 80042514  4E 80 00 20 */	blr 
