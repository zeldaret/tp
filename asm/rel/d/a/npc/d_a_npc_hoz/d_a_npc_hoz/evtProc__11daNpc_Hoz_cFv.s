lbl_80A026D4:
/* 80A026D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A026D8  7C 08 02 A6 */	mflr r0
/* 80A026DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A026E0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A026E4  4B 95 FA F5 */	bl _savegpr_28
/* 80A026E8  7C 7E 1B 78 */	mr r30, r3
/* 80A026EC  3B E0 00 00 */	li r31, 0
/* 80A026F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A026F4  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A026F8  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 80A026FC  28 00 00 00 */	cmplwi r0, 0
/* 80A02700  41 82 01 D0 */	beq lbl_80A028D0
/* 80A02704  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80A02708  28 00 00 01 */	cmplwi r0, 1
/* 80A0270C  40 82 00 38 */	bne lbl_80A02744
/* 80A02710  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A02714  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 80A02718  7D 89 03 A6 */	mtctr r12
/* 80A0271C  4E 80 04 21 */	bctrl 
/* 80A02720  2C 03 00 00 */	cmpwi r3, 0
/* 80A02724  40 82 00 18 */	bne lbl_80A0273C
/* 80A02728  7F C3 F3 78 */	mr r3, r30
/* 80A0272C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A02730  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80A02734  7D 89 03 A6 */	mtctr r12
/* 80A02738  4E 80 04 21 */	bctrl 
lbl_80A0273C:
/* 80A0273C  3B E0 00 01 */	li r31, 1
/* 80A02740  48 00 00 BC */	b lbl_80A027FC
lbl_80A02744:
/* 80A02744  28 00 00 02 */	cmplwi r0, 2
/* 80A02748  40 82 00 48 */	bne lbl_80A02790
/* 80A0274C  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80A02750  A8 9E 0E 1C */	lha r4, 0xe1c(r30)
/* 80A02754  4B 64 53 25 */	bl endCheck__16dEvent_manager_cFs
/* 80A02758  2C 03 00 00 */	cmpwi r3, 0
/* 80A0275C  41 82 00 34 */	beq lbl_80A02790
/* 80A02760  7F C3 F3 78 */	mr r3, r30
/* 80A02764  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A02768  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80A0276C  7D 89 03 A6 */	mtctr r12
/* 80A02770  4E 80 04 21 */	bctrl 
/* 80A02774  2C 03 00 00 */	cmpwi r3, 0
/* 80A02778  41 82 00 84 */	beq lbl_80A027FC
/* 80A0277C  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80A02780  4B 63 FC E9 */	bl reset__14dEvt_control_cFv
/* 80A02784  38 00 FF FF */	li r0, -1
/* 80A02788  B0 1E 0E 1C */	sth r0, 0xe1c(r30)
/* 80A0278C  48 00 00 70 */	b lbl_80A027FC
lbl_80A02790:
/* 80A02790  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80A02794  4B 64 5C 55 */	bl getRunEventName__16dEvent_manager_cFv
/* 80A02798  3C 80 80 A0 */	lis r4, d_a_npc_hoz__stringBase0@ha /* 0x80A06764@ha */
/* 80A0279C  38 84 67 64 */	addi r4, r4, d_a_npc_hoz__stringBase0@l /* 0x80A06764@l */
/* 80A027A0  38 84 00 84 */	addi r4, r4, 0x84
/* 80A027A4  4B 96 61 F1 */	bl strcmp
/* 80A027A8  2C 03 00 00 */	cmpwi r3, 0
/* 80A027AC  40 82 00 38 */	bne lbl_80A027E4
/* 80A027B0  80 7E 0D 90 */	lwz r3, 0xd90(r30)
/* 80A027B4  3C 03 00 01 */	addis r0, r3, 1
/* 80A027B8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A027BC  41 82 00 28 */	beq lbl_80A027E4
/* 80A027C0  3B BD 4E C8 */	addi r29, r29, 0x4ec8
/* 80A027C4  7F A3 EB 78 */	mr r3, r29
/* 80A027C8  38 80 00 00 */	li r4, 0
/* 80A027CC  4B 64 0E C1 */	bl setPtT__14dEvt_control_cFPv
/* 80A027D0  7F A3 EB 78 */	mr r3, r29
/* 80A027D4  80 9E 0D 90 */	lwz r4, 0xd90(r30)
/* 80A027D8  4B 64 0F 15 */	bl setPtI_Id__14dEvt_control_cFUi
/* 80A027DC  38 00 FF FF */	li r0, -1
/* 80A027E0  90 1E 0D 90 */	stw r0, 0xd90(r30)
lbl_80A027E4:
/* 80A027E4  7F C3 F3 78 */	mr r3, r30
/* 80A027E8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A027EC  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 80A027F0  7D 89 03 A6 */	mtctr r12
/* 80A027F4  4E 80 04 21 */	bctrl 
/* 80A027F8  7C 7F 1B 78 */	mr r31, r3
lbl_80A027FC:
/* 80A027FC  83 9E 0D B4 */	lwz r28, 0xdb4(r30)
/* 80A02800  7F C3 F3 78 */	mr r3, r30
/* 80A02804  38 81 00 0C */	addi r4, r1, 0xc
/* 80A02808  38 A1 00 08 */	addi r5, r1, 8
/* 80A0280C  7F C6 F3 78 */	mr r6, r30
/* 80A02810  88 FE 0E 2D */	lbz r7, 0xe2d(r30)
/* 80A02814  4B 74 6B A5 */	bl ctrlMsgAnm__8daNpcT_cFPiPiP10fopAc_ac_ci
/* 80A02818  2C 03 00 00 */	cmpwi r3, 0
/* 80A0281C  41 82 00 74 */	beq lbl_80A02890
/* 80A02820  88 1E 0E 26 */	lbz r0, 0xe26(r30)
/* 80A02824  28 00 00 00 */	cmplwi r0, 0
/* 80A02828  41 82 00 90 */	beq lbl_80A028B8
/* 80A0282C  83 9E 0B 5C */	lwz r28, 0xb5c(r30)
/* 80A02830  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80A02834  2C 1D 00 00 */	cmpwi r29, 0
/* 80A02838  41 80 00 24 */	blt lbl_80A0285C
/* 80A0283C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A02840  4B 74 30 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A02844  93 9E 0B 5C */	stw r28, 0xb5c(r30)
/* 80A02848  7C 1D E2 14 */	add r0, r29, r28
/* 80A0284C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A02850  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A02854  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A02858  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A0285C:
/* 80A0285C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A02860  83 81 00 08 */	lwz r28, 8(r1)
/* 80A02864  2C 1C 00 00 */	cmpwi r28, 0
/* 80A02868  41 80 00 50 */	blt lbl_80A028B8
/* 80A0286C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A02870  4B 74 30 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A02874  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A02878  7C 1C EA 14 */	add r0, r28, r29
/* 80A0287C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A02880  3C 60 80 A0 */	lis r3, lit_4832@ha /* 0x80A06720@ha */
/* 80A02884  C0 03 67 20 */	lfs f0, lit_4832@l(r3)  /* 0x80A06720@l */
/* 80A02888  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A0288C  48 00 00 2C */	b lbl_80A028B8
lbl_80A02890:
/* 80A02890  2C 1C 00 00 */	cmpwi r28, 0
/* 80A02894  41 82 00 24 */	beq lbl_80A028B8
/* 80A02898  88 1E 0E 26 */	lbz r0, 0xe26(r30)
/* 80A0289C  28 00 00 00 */	cmplwi r0, 0
/* 80A028A0  41 82 00 18 */	beq lbl_80A028B8
/* 80A028A4  7F C3 F3 78 */	mr r3, r30
/* 80A028A8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A028AC  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 80A028B0  7D 89 03 A6 */	mtctr r12
/* 80A028B4  4E 80 04 21 */	bctrl 
lbl_80A028B8:
/* 80A028B8  80 1E 0D 98 */	lwz r0, 0xd98(r30)
/* 80A028BC  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80A028C0  90 1E 0D 98 */	stw r0, 0xd98(r30)
/* 80A028C4  38 00 00 01 */	li r0, 1
/* 80A028C8  98 1E 0E 26 */	stb r0, 0xe26(r30)
/* 80A028CC  48 00 00 30 */	b lbl_80A028FC
lbl_80A028D0:
/* 80A028D0  80 1E 0D AC */	lwz r0, 0xdac(r30)
/* 80A028D4  2C 00 FF FF */	cmpwi r0, -1
/* 80A028D8  41 82 00 14 */	beq lbl_80A028EC
/* 80A028DC  38 00 00 01 */	li r0, 1
/* 80A028E0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A028E4  38 00 FF FF */	li r0, -1
/* 80A028E8  90 1E 0D AC */	stw r0, 0xdac(r30)
lbl_80A028EC:
/* 80A028EC  38 00 00 00 */	li r0, 0
/* 80A028F0  90 1E 0D B4 */	stw r0, 0xdb4(r30)
/* 80A028F4  38 00 00 01 */	li r0, 1
/* 80A028F8  98 1E 0E 26 */	stb r0, 0xe26(r30)
lbl_80A028FC:
/* 80A028FC  7F E3 FB 78 */	mr r3, r31
/* 80A02900  39 61 00 20 */	addi r11, r1, 0x20
/* 80A02904  4B 95 F9 21 */	bl _restgpr_28
/* 80A02908  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A0290C  7C 08 03 A6 */	mtlr r0
/* 80A02910  38 21 00 20 */	addi r1, r1, 0x20
/* 80A02914  4E 80 00 20 */	blr 
